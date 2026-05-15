from capstone import Cs, CS_ARCH_ARM, CS_MODE_THUMB, CS_MODE_LITTLE_ENDIAN

md = Cs(CS_ARCH_ARM, CS_MODE_THUMB | CS_MODE_LITTLE_ENDIAN)


def encode_bl(src_va, dst_va):
    pc = src_va + 4
    offset = dst_va - pc
    assert offset % 2 == 0
    assert -(1 << 24) <= offset < (1 << 24)
    imm = offset & ((1 << 25) - 1)
    s = (imm >> 24) & 1
    i1 = (imm >> 23) & 1
    i2 = (imm >> 22) & 1
    imm10 = (imm >> 12) & 0x3FF
    imm11 = (imm >> 1) & 0x7FF
    j1 = (1 ^ i1) ^ s
    j2 = (1 ^ i2) ^ s
    high = (0b11110 << 11) | (s << 10) | imm10
    low = (0b11 << 14) | (j1 << 13) | (1 << 12) | (j2 << 11) | imm11
    return high.to_bytes(2, "little") + low.to_bytes(2, "little")


S6_THUNK = 0x00FA8C34
S8_THUNK = 0x00FA8C3A
LITERAL = 0x00FA8C40
THUNK = bytes.fromhex("9fed023a70479fed014a704700004041")

print(f"shared thunk/literal @ 0x{S6_THUNK:08x}: {THUNK.hex()}")
print(f"slider literal: 0x{LITERAL:08x}")
for ins in md.disasm(THUNK, S6_THUNK):
    print(f"  0x{ins.address:08x}: {ins.mnemonic} {ins.op_str}")

for label, src, dst in [
    ("LivingRoom", 0x0117CA72, S6_THUNK),
    ("PlayScreen", 0x0117FE92, S6_THUNK),
    ("RealityMode", 0x01183D46, S8_THUNK),
]:
    bl = encode_bl(src, dst)
    print(f"\nBL @ 0x{src:08x} -> 0x{dst:08x} ({label}): {bl.hex()}")
    for ins in md.disasm(bl, src):
        print(f"  decoded: {ins.mnemonic} {ins.op_str}")
