"""Disassemble entity-cap functions, find xrefs to them."""
from capstone import Cs, CS_ARCH_ARM, CS_MODE_THUMB, CS_MODE_LITTLE_ENDIAN
import struct

d = open(r'lib/armeabi-v7a/libminecraftpe.so', 'rb').read()
md = Cs(CS_ARCH_ARM, CS_MODE_THUMB | CS_MODE_LITTLE_ENDIAN)
md.detail = True


def find_func_end(start, max_len=0x800):
    """Naive: find next pop {... pc} or bx lr."""
    end = start
    for ins in md.disasm(d[start:start + max_len], start):
        end = ins.address + ins.size
        if 'pop' in ins.mnemonic and 'pc' in ins.op_str:
            return end
        if ins.mnemonic == 'bx' and 'lr' in ins.op_str:
            return end
    return end


def find_bl_blx_xrefs(target):
    """Find all BL/BLX 32-bit Thumb instructions targeting `target` (or target+1)."""
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
    return xrefs


# 1. Find xrefs to each entity-cap function
funcs = [0x01597928, 0x015A85C0, 0x017FD3F4]
for fs in funcs:
    refs = find_bl_blx_xrefs(fs)
    print(f'=== xrefs to function 0x{fs:08x}: {len(refs)} ===')
    for off, tgt, kind in refs:
        print(f'  call @ 0x{off:08x} ({kind})')

# 2. Disassemble entity attack function 0x017FD3F4 in full
print()
print('=== Disasm 0x017FD3F4 (full function) ===')
fend = find_func_end(0x017FD3F4)
print(f'(approx end: 0x{fend:08x}, size {fend - 0x017FD3F4} bytes)')
for ins in md.disasm(d[0x017FD3F4:fend + 0x40], 0x017FD3F4):
    tag = ''
    if ins.mnemonic == 'blx' and ins.op_str.startswith('#'):
        tag = ' <CALL>'
    if 'pop' in ins.mnemonic and 'pc' in ins.op_str:
        tag = ' [RET]'
    if 'vldr' in ins.mnemonic and 'pc' in ins.op_str:
        # Compute literal target
        try:
            imm = int(ins.op_str.split('#')[-1].rstrip(']'), 0)
            lit_addr = ((ins.address + 4) & ~3) + imm
            lit = struct.unpack('<f', d[lit_addr:lit_addr + 4])[0]
            tag = f' <- lit @ 0x{lit_addr:08x} = {lit}'
        except Exception:
            pass
    print(f'  0x{ins.address:08x}: {ins.bytes.hex():<10} {ins.mnemonic:<12} {ins.op_str}{tag}')
    if ins.address >= fend:
        break

# 3. Also disassemble 0x01597928 and 0x015A85C0 briefly (first 100 bytes)
for fs in [0x01597928, 0x015A85C0]:
    print()
    print(f'=== Disasm head of 0x{fs:08x} (first 0xC0 bytes) ===')
    for ins in md.disasm(d[fs:fs + 0xC0], fs):
        tag = ''
        if ins.mnemonic == 'blx' and ins.op_str.startswith('#'):
            tag = ' <CALL>'
        print(f'  0x{ins.address:08x}: {ins.bytes.hex():<10} {ins.mnemonic:<12} {ins.op_str}{tag}')
