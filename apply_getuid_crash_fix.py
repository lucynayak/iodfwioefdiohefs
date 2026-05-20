"""
Patch the Radar SIGSEGV at Entity::getUniqueID()+6 in liblauncher.so.

The JNI thunk Java_..._NativeLocalPlayer_getUniqueID @ 0x1466c does:

    0x1466c: push {r4, lr}
    ...
    0x14680: blx #0xf9c8        ; helper returns LocalPlayer* (may be null!)
    0x14684: blx #0xf9f8        ; <-- Entity::getUniqueID(localPlayer), CRASH if null
    0x14688: ldrd r0, r1, [r0]  ; deref returned ref to load 64-bit UID
    0x1468c: pop {r4, pc}
    0x1468e: mov.w r0, #-1      ; fail path (existing)
    0x14692: mov.w r1, #-1
    0x14696: pop {r4, pc}

We install a Thumb thunk at 0x5f9f6 (18 bytes, fits in remaining .text cave):

    thunk:
        cbz r0, ret_neg     ; if LocalPlayer* is null, take null-path
        push {lr}
        blx #0xf9f8          ; original Entity::getUniqueID PLT
        pop {pc}             ; return into JNI-thunk @ 0x14688 (ldrd)
    ret_neg:
        movs r0, #0
        subs r0, #1          ; r0 = -1
        mov r1, r0           ; r1 = -1
        pop {r4, pc}         ; SHORTCUT: pop the JNI-thunk's saved {r4, lr}
                             ; (we did not push in this path), returning all the
                             ; way to the Java caller, bypassing the crashing ldrd.

Then rewrite the call site `blx #0xf9f8` at 0x14684 to `bl thunk`.
"""
import os
import shutil
import struct

TARGET = "lib/armeabi-v7a/liblauncher.so"

THUNK_OFF       = 0x5f9f6
PLT_GETUNIQUEID = 0xf9f8
CALL_SITE       = 0x14684

# Thunk instruction encodings (manually pre-computed; verified after install)
THUNK_BYTES = bytes.fromhex(
    "18b1"      # cbz r0, +6  (target 0x5fa00)
    "00b5"      # push {lr}
    "00000000"  # blx #0xf9f8 — placeholder, filled in below
    "00bd"      # pop {pc}
    "0020"      # movs r0, #0     (ret_neg @ 0x5fa00)
    "0138"      # subs r0, #1
    "0146"      # mov r1, r0
    "10bd"      # pop {r4, pc}
)


def encode_thumb_bl_blx(ins_addr: int, target: int, *, to_arm: bool) -> bytes:
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
        # BLX immediate: hw2 = 1110_1_J1_0_J2_imm10L_H(=0)
        imm10L = (val >> 2) & 0x3FF
        hw2 = (0b11 << 14) | (J1 << 13) | (0 << 12) | (J2 << 11) | (imm10L << 1)
    else:
        # BL immediate: hw2 = 1110_1_J1_1_J2_imm11
        imm11 = (val >> 1) & 0x7FF
        hw2 = (0b11 << 14) | (J1 << 13) | (1 << 12) | (J2 << 11) | imm11
    hw1 = (0b11110 << 11) | (S << 10) | imm10H
    return struct.pack("<HH", hw1, hw2)


if not os.path.exists(TARGET):
    raise SystemExit(f"file not found: {TARGET}")

bak = TARGET + ".getuid_crash_backup"
if not os.path.exists(bak):
    print(f"backup -> {bak}")
    shutil.copy2(TARGET, bak)

with open(TARGET, "rb") as f:
    data = bytearray(f.read())
print(f"=== {TARGET} ({len(data)} bytes) ===")

# Fill in BLX in the thunk template
blx_in_thunk = encode_thumb_bl_blx(THUNK_OFF + 4, PLT_GETUNIQUEID, to_arm=True)
thunk = bytearray(THUNK_BYTES)
thunk[4:8] = blx_in_thunk
thunk = bytes(thunk)
assert len(thunk) == 18, f"thunk wrong size: {len(thunk)}"

# Verify cave is zero (or already patched)
cave = bytes(data[THUNK_OFF:THUNK_OFF + 18])
if cave == thunk:
    print(f"  thunk already at 0x{THUNK_OFF:x}")
elif cave == b"\x00" * 18:
    print(f"  installing thunk at 0x{THUNK_OFF:x} (18 bytes)")
    for i, b in enumerate(thunk):
        data[THUNK_OFF + i] = b
else:
    raise SystemExit(f"!! cave at 0x{THUNK_OFF:x} not empty/expected: {cave.hex()}")

# Patch call site at 0x14684
original_blx = encode_thumb_bl_blx(CALL_SITE, PLT_GETUNIQUEID, to_arm=True)
new_bl       = encode_thumb_bl_blx(CALL_SITE, THUNK_OFF, to_arm=False)
existing = bytes(data[CALL_SITE:CALL_SITE + 4])
if existing == new_bl:
    print(f"  0x{CALL_SITE:08x}: already patched")
elif existing == original_blx:
    for i, b in enumerate(new_bl):
        data[CALL_SITE + i] = b
    print(f"  0x{CALL_SITE:08x}: blx 0x{PLT_GETUNIQUEID:x} -> bl 0x{THUNK_OFF:x}  [PATCH]")
else:
    raise SystemExit(f"!! 0x{CALL_SITE:08x}: unexpected bytes {existing.hex()} (expected {original_blx.hex()})")

with open(TARGET, "wb") as f:
    f.write(bytes(data))
print(f"  wrote {len(data)} bytes")
print("\nDone. Rebuild APK to apply.")
