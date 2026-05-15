"""Dump entity check function fully with all literals."""
from capstone import Cs, CS_ARCH_ARM, CS_MODE_THUMB, CS_MODE_LITTLE_ENDIAN
import struct

d = open(r'lib/armeabi-v7a/libminecraftpe.so', 'rb').read()


def dump_func(start, max_len=0x500, label=''):
    md = Cs(CS_ARCH_ARM, CS_MODE_THUMB | CS_MODE_LITTLE_ENDIAN)
    print(f'\n========== {label} 0x{start:08x} ==========')
    lits = []
    insns = list(md.disasm(d[start:start + max_len], start))
    for ins in insns:
        tag = ''
        if 'vldr' in ins.mnemonic and 'pc' in ins.op_str:
            try:
                imm = int(ins.op_str.split('#')[-1].rstrip(']'), 0)
                lit_addr = ((ins.address + 4) & ~3) + imm
                if lit_addr + 4 <= len(d):
                    lit_f = struct.unpack('<f', d[lit_addr:lit_addr + 4])[0]
                    sq = lit_f ** 0.5 if lit_f > 0 else 0
                    tag = f'   <- 0x{lit_addr:08x} = {lit_f}  sqrt={sq:.3f}'
                    lits.append((lit_addr, lit_f, ins.address))
            except Exception as e:
                tag = f'   <-? {e}'
        if ins.mnemonic == 'blx' and ins.op_str.startswith('#'):
            tag += '  <CALL>'
        if 'pop' in ins.mnemonic and 'pc' in ins.op_str:
            tag += '  [RET]'
        print(f'  0x{ins.address:08x}: {ins.bytes.hex():<10} {ins.mnemonic:<14} {ins.op_str}{tag}')
        if 'pop' in ins.mnemonic and 'pc' in ins.op_str:
            break
        if ins.mnemonic == 'bx' and 'lr' in ins.op_str:
            break
    print()
    if lits:
        print(f'  All literal refs ({len(lits)}):')
        for la, lv, ia in lits:
            sq = lv ** 0.5 if lv > 0 else 0
            print(f'    @ 0x{la:08x} = {lv}  sqrt={sq:.3f}  at 0x{ia:08x}')


dump_func(0x015A85C0, 0x300, label='entity-dist func A')
dump_func(0x01597928, 0x500, label='entity-dist func B')
dump_func(0x017FD3F4, 0x60, label='in-range flag func')
