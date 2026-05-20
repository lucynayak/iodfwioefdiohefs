"""
Patch BlockSource::getBlockID(int,int,int) wrapper in libminecraftpe.so to be
null-tolerant on its `BlockSource*` argument (passed in r1 by the JNI thunk
which has the form: r0=&result_buffer, r1=BlockSource*, r2=x, r3=y, [sp]=z).

Without the patch, when our liblauncher null-tolerant getRegion thunk returns
NULL, the JNI thunk passes that NULL to this wrapper, which dereferences it
inside the inner getBlockID(BlockPos const&) at +0x18 and crashes with fault
addr 0x18.

Strategy:
  1. Install a copy of the 24-byte wrapper at code-cave 0xbb2128 with a
     leading `cbz r1, ret_zero` null-check. The null path writes a 0 byte
     to *r0 (result buffer) and returns directly via `bx lr` (no stack
     manipulation since we never pushed).
  2. Replace the first 4 bytes of the original wrapper at 0x1701c14 with
     `b.w 0xbb2128`, redirecting all callers through our null-checked thunk.
"""
import os
import shutil
import struct

TARGET = "lib/armeabi-v7a/libminecraftpe.so"

WRAPPER       = 0x1701c14   # BlockSource::getBlockID(int,int,int) start
INNER_PLT     = 0x744ee0    # PLT entry for inner getBlockID(BlockPos const&)
THUNK_OFF     = 0xbb2128    # 64-byte cave in .text


def encode_thumb_branch(ins_addr: int, target: int, *, kind: str) -> bytes:
    """Encode Thumb 32-bit BL / BLX-immediate / B.W.
    kind: 'bl' (Thumb→Thumb, link) | 'blx' (Thumb→ARM, link) | 'bw' (Thumb→Thumb, no link)
    """
    if kind == "blx":
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
    if kind == "blx":
        imm10L = (val >> 2) & 0x3FF
        # HW2: 11_J1_0_J2_imm10L_0
        hw2 = (0b11 << 14) | (J1 << 13) | (0 << 12) | (J2 << 11) | (imm10L << 1)
    elif kind == "bl":
        imm11 = (val >> 1) & 0x7FF
        # HW2: 11_J1_1_J2_imm11
        hw2 = (0b11 << 14) | (J1 << 13) | (1 << 12) | (J2 << 11) | imm11
    elif kind == "bw":
        imm11 = (val >> 1) & 0x7FF
        # HW2: 10_J1_1_J2_imm11
        hw2 = (0b10 << 14) | (J1 << 13) | (1 << 12) | (J2 << 11) | imm11
    else:
        raise ValueError(kind)
    hw1 = (0b11110 << 11) | (S << 10) | imm10H
    return struct.pack("<HH", hw1, hw2)


def encode_cbz(ins_addr: int, target: int, rn: int, op_cbnz: bool = False) -> bytes:
    """16-bit Thumb CBZ/CBNZ Rn, label. Forward only, range 4..130 from PC=ins+4."""
    pc = ins_addr + 4
    diff = target - pc
    assert diff > 0 and diff <= 0x7e and (diff & 1) == 0, f"cbz out of range: diff={diff}"
    val = diff >> 1
    i    = (val >> 5) & 1
    imm5 =  val       & 0x1f
    op   = 1 if op_cbnz else 0
    word = (0b1011 << 12) | (op << 11) | (0 << 10) | (i << 9) | (1 << 8) | (imm5 << 3) | rn
    return struct.pack("<H", word)


# Build the thunk
def build_thunk(thunk_addr: int) -> bytes:
    """Build null-tolerant copy of the wrapper at thunk_addr.

    Layout (relative to thunk_addr):
        +0x00: cbz r1, ret_zero  (2)
        +0x02: push {r7, lr}     (2)         -- copy of original
        +0x04: sub sp, #0x10     (2)
        +0x06: add.w lr, sp, #4  (4)
        +0x0a: ldr.w ip, [sp,#0x18] (4)
        +0x0e: stm.w lr, {r2,r3,ip} (4)
        +0x12: add r2, sp, #4    (2)
        +0x14: blx #INNER_PLT    (4)         -- re-encoded for new addr
        +0x18: add sp, #0x10     (2)
        +0x1a: pop {r7, pc}      (2)
        +0x1c: ret_zero:                     -- cbz target
               movs r1, #0       (2)
               strb r1, [r0]     (2)         -- *result_buffer = 0
               bx lr             (2)
    """
    out = bytearray()
    # cbz r1, ret_zero (target = thunk_addr + 0x1c)
    out += encode_cbz(thunk_addr + 0x00, thunk_addr + 0x1c, rn=1)
    # 9 instructions copied verbatim from 0x1701c14..0x1701c2d, except the BLX
    out += b"\x80\xb5"                                                # push {r7, lr}
    out += b"\x84\xb0"                                                # sub sp, #0x10
    out += b"\x0d\xf1\x04\x0e"                                        # add.w lr, sp, #4
    out += b"\xdd\xf8\x18\xc0"                                        # ldr.w ip, [sp, #0x18]
    out += b"\x8e\xe8\x0c\x10"                                        # stm.w lr, {r2, r3, ip}
    out += b"\x01\xaa"                                                # add r2, sp, #4
    out += encode_thumb_branch(thunk_addr + 0x14, INNER_PLT, kind="blx")  # blx #INNER_PLT
    out += b"\x04\xb0"                                                # add sp, #0x10
    out += b"\x80\xbd"                                                # pop {r7, pc}
    # ret_zero:
    out += b"\x00\x21"                                                # movs r1, #0
    out += b"\x01\x70"                                                # strb r1, [r0]
    out += b"\x70\x47"                                                # bx lr
    assert len(out) == 0x22, f"thunk wrong size {len(out)}"
    return bytes(out)


if not os.path.exists(TARGET):
    raise SystemExit(f"file not found: {TARGET}")

bak = TARGET + ".getblockid_crash_backup"
if not os.path.exists(bak):
    print(f"backup -> {bak}")
    shutil.copy2(TARGET, bak)

with open(TARGET, "rb") as f:
    data = bytearray(f.read())
print(f"=== {TARGET} ({len(data)} bytes) ===")

thunk = build_thunk(THUNK_OFF)

# Verify cave is empty (or matches our thunk if re-running)
existing_cave = bytes(data[THUNK_OFF:THUNK_OFF + len(thunk)])
if existing_cave == thunk:
    print(f"  thunk already present at 0x{THUNK_OFF:x}")
elif existing_cave == b"\x00" * len(thunk):
    for i, b in enumerate(thunk):
        data[THUNK_OFF + i] = b
    print(f"  installed thunk at 0x{THUNK_OFF:x} ({len(thunk)} bytes)")
else:
    raise SystemExit(f"!! cave at 0x{THUNK_OFF:x} not empty/expected: {existing_cave.hex()}")

# Patch wrapper start: replace first 4 bytes (push {r7,lr} + sub sp,#0x10)
# with b.w 0xbb2128. The remaining 20 bytes become dead code (never executed
# because b.w is unconditional).
new_bw = encode_thumb_branch(WRAPPER, THUNK_OFF, kind="bw")
existing_head = bytes(data[WRAPPER:WRAPPER + 4])
expected_head = b"\x80\xb5\x84\xb0"   # push {r7,lr}; sub sp,#0x10
if existing_head == new_bw:
    print(f"  wrapper already redirected at 0x{WRAPPER:x}")
elif existing_head == expected_head:
    for i, b in enumerate(new_bw):
        data[WRAPPER + i] = b
    print(f"  0x{WRAPPER:08x}: push;sub -> b.w 0x{THUNK_OFF:x}  [PATCH]")
else:
    raise SystemExit(f"!! wrapper bytes mismatch: {existing_head.hex()} (expected {expected_head.hex()})")

with open(TARGET, "wb") as f:
    f.write(bytes(data))
print(f"  wrote {len(data)} bytes")
print("\nDone. Rebuild APK to apply.")
