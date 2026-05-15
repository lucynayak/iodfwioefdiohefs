"""Dump full function 0x015A85C0 and 0x01597928, listing every literal-pool reference."""
from capstone import Cs, CS_ARCH_ARM, CS_MODE_THUMB, CS_MODE_LITTLE_ENDIAN
import struct

d = open(r'lib/armeabi-v7a/libminecraftpe.so', 'rb').read()
md = Cs(CS_ARCH_ARM, CS_MODE_THUMB | CS_MODE_LITTLE_ENDIAN)
md.detail = True


def dump(start, end_hint):
    print(f'\n========== Function 0x{start:08x} ==========')
    lit_refs = {}
    for ins in md.disasm(d[start:end_hint], start):
        tag = ''
        if 'vldr' in ins.mnemonic and 'pc' in ins.op_str:
            try:
                imm = int(ins.op_str.split('#')[-1].rstrip(']'), 0)
                lit_addr = ((ins.address + 4) & ~3) + imm
                lit_f = struct.unpack('<f', d[lit_addr:lit_addr + 4])[0]
                lit_i = struct.unpack('<I', d[lit_addr:lit_addr + 4])[0]
                tag = f'   <- 0x{lit_addr:08x} = {lit_f}  (int=0x{lit_i:08x}, sqrt={lit_f ** 0.5 if lit_f > 0 else 0:.3f})'
                lit_refs[lit_addr] = (lit_f, ins.address)
            except Exception:
                pass
        if ins.mnemonic == 'blx' and ins.op_str.startswith('#'):
            tag += '  <CALL>'
        if 'pop' in ins.mnemonic and 'pc' in ins.op_str:
            tag += '  [RET]'
        print(f'  0x{ins.address:08x}: {ins.bytes.hex():<10} {ins.mnemonic:<14} {ins.op_str}{tag}')
        if 'pop' in ins.mnemonic and 'pc' in ins.op_str:
            break
    print()
    print(f'  Literal references collected:')
    for la, (lv, ia) in sorted(lit_refs.items()):
        print(f'    @ 0x{la:08x} = {lv}  (sqrt={lv ** 0.5 if lv > 0 else 0:.3f})  used at 0x{ia:08x}')


# Dump key entity-related functions completely
dump(0x015A85C0, 0x500)
dump(0x01597928, 0x500)
dump(0x017FD3F4, 0x80)

# Also probe whether there's a "GameMode::attack" or similar near the touch input
# Find ALL functions that compute (px-ex)^2 + (py-ey)^2 + (pz-ez)^2 pattern (vsub vmul vadd chain)
print()
print('========== Searching for entity-distance-compute pattern: vsub/vsub/vsub vmul/vmul/vmul vadd/vadd ==========')
# Heuristic: look for byte sequence containing the squared-distance-sum pattern
# Pattern: 3x vsub.f32 + 3x vmul.f32 + 2x vadd.f32 nearby
# Easier: search for `vsub.f32` `vmul.f32` `vadd.f32` chains
# Just look for sequences with high density of these ops in a 0x30 window
def is_vsub_f32(b):
    # vsub.f32 sX, sY, sZ encoding: 0xEE3? ...0A40 or similar. Simpler: check for 'ee 30' or 'ee 40' bytes
    pass

# More direct: scan for the specific signature byte pattern that appears in 0x015a8614-0x015a8638
sig = b'\x30\xee\x43\x0a'  # vsub.f32 s0,s0,s6 (from disasm at 0x015a8614)
# Actually let's use simpler: scan for vmul.f32 sX,sX,sX (squaring) — common in dist^2
# vmul.f32 sX, sX, sX: opcode pattern includes Vn=Vm=Vd
# Let me use the actual sequence: 3x consecutive `vmul.f32 sX, sX, sX` (squaring) within 16 bytes
sq_pattern = []
for off in range(0x100000, 0x2000000, 2):
    # Look for `??ee??0a` 'vmul.f32 sX,sX,sX' three times near each other
    # 0x015a8628..0x015a8630 in disasm:
    # 0x015a8628: 20 ee 00 0a   vmul.f32 s0, s0, s0
    # 0x015a862c: 21 ee 01 1a   vmul.f32 s2, s2, s2
    # 0x015a8630: 22 ee 02 2a   vmul.f32 s4, s4, s4
    # Pattern: bytes 0-3 = 20ee000a, 4-7=21ee011a, 8-11=22ee022a (varies by Vd)
    # Generic: byte at i+1 == 0xEE and byte at i+3 == 0x0a (for the first vmul)
    b1 = d[off + 1]; b3 = d[off + 3]
    if b1 != 0xEE or b3 != 0x0A: continue
    # Need this to be a vmul where Vd==Vn==Vm. vmul.f32 sd,sn,sm encoding:
    # 1110 1110 0010 Vn Vd 101 sz N 0 M 0 Vm
    # Bytes (LE): byte0=Vn<<4|imm4H_thing, byte1=0xEE+D bit, byte2=Vm[3:0]|0x?0, byte3=Vd[3:1]|0x?A
    # Simpler heuristic: just look for 3 consecutive 4-byte VFP ops with bytes pattern XX_ee_XX_X(a)
    # and check that they're a vmul-vmul-vmul or vmul-vmul-vadd type
    cnt = 0
    for j in range(0, 24, 4):
        if d[off + j + 1] == 0xEE and (d[off + j + 3] & 0x0F) == 0x0A:
            cnt += 1
        else:
            break
    if cnt >= 6:
        # Disassemble & check
        sq_pattern.append(off)

print(f'Found {len(sq_pattern)} dense-vfp-chain sites (heuristic). First 20:')
for off in sq_pattern[:20]:
    print(f'  0x{off:08x}')
