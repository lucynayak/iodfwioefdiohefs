"""Find xrefs to Player::getReach (0x15dd2a8) and to reach data slots."""
from capstone import Cs, CS_ARCH_ARM, CS_MODE_THUMB, CS_MODE_LITTLE_ENDIAN
import struct

d = open(r'lib/armeabi-v7a/libminecraftpe.so', 'rb').read()
md = Cs(CS_ARCH_ARM, CS_MODE_THUMB | CS_MODE_LITTLE_ENDIAN)


def find_func_start(addr, max_back=0x800):
    for off in range(addr & ~1, max(0, addr - max_back), -2):
        hw = d[off] | (d[off + 1] << 8)
        if 0xB500 <= hw <= 0xB5FF:
            return off
        if hw == 0xE92D:
            return off
    return None


# 1. Function start for entity-cap sites
sites = [0x01597BCC, 0x015A87BC, 0x017FD416]
print('=== Function start for entity-cap sites ===')
for s in sites:
    fs = find_func_start(s, 0x2000)
    print(f'  cap @ 0x{s:08x} -> function start ~ 0x{fs:08x}' if fs else f'  cap @ 0x{s:08x} -> ?')

# 2. BL/BLX xrefs to 0x15dd2a8
print()
print('=== BL/BLX xrefs to Player::getReach (0x15dd2a8) ===')
target = 0x15dd2a8
xrefs = []
for off in range(0x100000, 0x2000000, 2):
    b0, b1, b2, b3 = d[off], d[off + 1], d[off + 2], d[off + 3]
    hw1 = b0 | (b1 << 8)
    hw2 = b2 | (b3 << 8)
    if (hw1 & 0xF800) != 0xF000:
        continue
    if (hw2 & 0xC000) != 0xC000:
        continue
    S = (hw1 >> 10) & 1
    imm10 = hw1 & 0x3FF
    J1 = (hw2 >> 13) & 1
    J2 = (hw2 >> 11) & 1
    imm11 = hw2 & 0x7FF
    I1 = 1 - (J1 ^ S)
    I2 = 1 - (J2 ^ S)
    imm32 = (S << 24) | (I1 << 23) | (I2 << 22) | (imm10 << 12) | (imm11 << 1)
    if S:
        imm32 |= 0xFE000000
    imm32 = imm32 & 0xFFFFFFFF
    if imm32 >= 0x80000000:
        imm32 -= 0x100000000
    tgt = (off + 4 + imm32) & 0xFFFFFFFF
    if tgt == target or tgt == target + 1:
        kind = 'BL' if (hw2 >> 12) & 1 else 'BLX'
        xrefs.append((off, tgt, kind))

print(f'Found {len(xrefs)} BL/BLX:')
for off, tgt, kind in xrefs[:30]:
    fs = find_func_start(off, max_back=0x2000)
    print(f'  call @ 0x{off:08x} ({kind}) in function ~0x{fs:08x}' if fs else f'  call @ 0x{off:08x} ({kind})')

# 3. vldr refs to reach data slots
print()
print('=== vldr refs to reach data 0x15dd324/8/c ===')
targets = {0x15dd324, 0x15dd328, 0x15dd32c}
vldr_refs = []
for off in range(0x100000, 0x2000000, 2):
    b0, b1, b2, b3 = d[off], d[off + 1], d[off + 2], d[off + 3]
    if b1 != 0xED:
        continue
    if b0 not in (0x9F, 0xDF):
        continue
    if (b3 & 0x0F) != 0x0A:
        continue
    imm8 = b2
    Vd_h = (b3 >> 4) & 0xF
    D = 1 if b0 == 0xDF else 0
    Sd = (Vd_h << 1) | D
    tgt = ((off + 4) & ~3) + imm8 * 4
    if tgt in targets:
        fs = find_func_start(off, max_back=0x2000)
        vldr_refs.append((off, tgt, Sd, fs))
print(f'Found {len(vldr_refs)} vldr refs:')
for off, tgt, sd, fs in vldr_refs[:30]:
    print(f'  vldr @ 0x{off:08x} s{sd} <- 0x{tgt:08x} function ~0x{fs:08x}' if fs else f'  vldr @ 0x{off:08x} s{sd} <- 0x{tgt:08x}')
