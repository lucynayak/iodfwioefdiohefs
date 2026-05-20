"""
Patch the Radar/Tracers SIGSEGV at Entity::getRegion()+0 in liblauncher.so.

Three call-sites in liblauncher.so do:
    blx #0xf9c8       ; some helper that may return null
    blx #0xfad0       ; <-- Entity::getRegion(this), CRASHES if this==null

There is no `cbz r0, ...` between them. This patch:

  1. Installs a small Thumb thunk in the .text code-cave at 0x5f9ec:

        thunk:
            push {lr}            ; save caller's LR
            cbz  r0, ret_null    ; if this==null, skip getRegion
            blx  #0xfad0         ; call original PLT for Entity::getRegion
        ret_null:
            pop  {pc}            ; return r0 (0 if null path)

  2. Rewrites each `blx #0xfad0` call-site to `bl thunk` (same 4 bytes).
     `bl` keeps the CPU in Thumb mode (we land on the thunk which is Thumb).

After patch, calls to Entity::getRegion go through our null-check.
"""
import os
import shutil
import struct

TARGETS = [
    "lib/armeabi-v7a/liblauncher.so",
]

# ---- offsets ----
CAVE_OFF = 0x5f9ec        # 27 zero bytes at .text end
PLT_GETREGION = 0xfad0    # original PLT entry for Entity::getRegion
CALL_SITES = [0x000127bc, 0x000166fc, 0x00016754]


def encode_cbz_r0(ins_addr: int, target: int) -> bytes:
    """16-bit Thumb CBZ Rn, label. Forward-only, range 4..130 from PC=ins+4."""
    pc = ins_addr + 4
    diff = target - pc
    assert diff > 0 and diff <= 0x7e and (diff & 1) == 0, f"cbz out of range: diff={diff}"
    # offset = i:imm5:'0' (so diff/2 = i:imm5)
    val = diff >> 1
    i    = (val >> 5) & 1
    imm5 =  val       & 0x1f
    rn = 0  # r0
    word = (0b1011 << 12) | (0 << 11) | (0 << 10) | (i << 9) | (1 << 8) | (imm5 << 3) | rn
    return struct.pack("<H", word)


def encode_thumb_bl_or_blx(ins_addr: int, target: int, *, link: bool, to_arm: bool) -> bytes:
    """Encode 32-bit Thumb BL or BLX-immediate.

    BL : target = (ins_addr + 4) + imm32                          (Thumb→Thumb)
    BLX: target = Align(ins_addr + 4, 4) + imm32                  (Thumb→ARM)
    """
    if to_arm:
        assert target % 4 == 0, f"BLX target must be 4-aligned: 0x{target:x}"
        pc = (ins_addr + 4) & ~3
    else:
        pc = ins_addr + 4
    imm32 = target - pc
    if imm32 < -0x1000000 or imm32 >= 0x1000000:
        raise ValueError(f"branch out of range: 0x{imm32:x}")
    val = imm32 & 0x1FFFFFF
    S   = (val >> 24) & 1
    I1  = (val >> 23) & 1
    I2  = (val >> 22) & 1
    imm10H = (val >> 12) & 0x3FF
    J1 = 1 - (I1 ^ S)
    J2 = 1 - (I2 ^ S)
    if to_arm:
        imm10L = (val >> 2) & 0x3FF
        hw2 = (0b11 << 14) | (J1 << 13) | (0 << 12) | (J2 << 11) | (imm10L << 1)
    else:
        imm11 = (val >> 1) & 0x7FF
        hw2 = (0b11 << 14) | (J1 << 13) | (1 << 12) | (J2 << 11) | imm11
    hw1 = (0b11110 << 11) | (S << 10) | imm10H
    return struct.pack("<HH", hw1, hw2)


def build_thunk(thunk_addr: int) -> bytes:
    """Build the Thumb thunk at thunk_addr."""
    push_lr = b"\x00\xb5"                      # push {lr}
    # cbz r0, ret_null  — ret_null is at thunk+8 (after push, cbz, blx)
    cbz = encode_cbz_r0(thunk_addr + 2, thunk_addr + 8)
    # blx #PLT_GETREGION
    blx = encode_thumb_bl_or_blx(thunk_addr + 4, PLT_GETREGION, link=True, to_arm=True)
    pop_pc = b"\x00\xbd"                       # pop {pc}
    return push_lr + cbz + blx + pop_pc        # 2 + 2 + 4 + 2 = 10 bytes


for path in TARGETS:
    if not os.path.exists(path):
        print(f"!! file not found: {path}")
        continue
    bak = path + ".radar_crash_backup"
    if not os.path.exists(bak):
        print(f"backup: {bak}")
        shutil.copy2(path, bak)

    with open(path, "rb") as f:
        data = bytearray(f.read())

    print(f"\n=== {path} ({len(data)} bytes) ===")

    # Verify cave is still zero (or already patched with our thunk)
    cave_window = bytes(data[CAVE_OFF:CAVE_OFF + 16])
    thunk_bytes = build_thunk(CAVE_OFF)

    if cave_window[:len(thunk_bytes)] == thunk_bytes:
        print(f"  thunk already at 0x{CAVE_OFF:x} [already patched]")
        thunk_addr = CAVE_OFF
    elif cave_window[:len(thunk_bytes)] == b"\x00" * len(thunk_bytes):
        print(f"  installing thunk at cave 0x{CAVE_OFF:x} ({len(thunk_bytes)} bytes)")
        for i, b in enumerate(thunk_bytes):
            data[CAVE_OFF + i] = b
        thunk_addr = CAVE_OFF
    else:
        print(f"  !! cave at 0x{CAVE_OFF:x} not empty: {cave_window.hex()}")
        continue

    # Now rewrite each call site
    for site in CALL_SITES:
        original = bytes(data[site:site+4])
        # Original: blx #0xfad0
        original_blx = encode_thumb_bl_or_blx(site, PLT_GETREGION, link=True, to_arm=True)
        # New: bl <thunk> (Thumb→Thumb to keep state)
        new_bl = encode_thumb_bl_or_blx(site, thunk_addr, link=True, to_arm=False)

        if original == new_bl:
            print(f"  0x{site:08x}: already patched")
            continue
        if original != original_blx:
            print(f"  !! 0x{site:08x}: unexpected bytes {original.hex()} (expected {original_blx.hex()})")
            continue
        for i, b in enumerate(new_bl):
            data[site + i] = b
        print(f"  0x{site:08x}: blx 0x{PLT_GETREGION:x} -> bl 0x{thunk_addr:x}  [PATCH]")

    with open(path, "wb") as f:
        f.write(bytes(data))
    print(f"  wrote {len(data)} bytes")

print("\nDone. Rebuild APK to apply.")
