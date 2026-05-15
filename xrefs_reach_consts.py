from pathlib import Path
from capstone import Cs, CS_ARCH_ARM, CS_MODE_THUMB, CS_MODE_LITTLE_ENDIAN
from capstone.arm import ARM_OP_MEM, ARM_REG_PC
root=Path(r'C:/Users/triggertrash/Desktop/horrible v2')
data=(root/'lib/armeabi-v7a/libminecraftpe.so').read_bytes()
md=Cs(CS_ARCH_ARM, CS_MODE_THUMB|CS_MODE_LITTLE_ENDIAN); md.detail=True
TARGETS={
    0x22c8d8c:'22c8d8c',0x22c8d90:'22c8d90',0x22c8d94:'22c8d94',
    0x22c8d98:'22c8d98',0x22c8d9c:'22c8d9c',0x22c8da0:'22c8da0',0x22c8da4:'22c8da4',
    0x15dd324:'15dd324',0x15dd328:'15dd328',0x15dd32c:'15dd32c'
}
rx_end=0x235a148
hits=[]
# disassemble in chunks, resync every 2 bytes is too slow; capstone linear is enough for literal xrefs in code areas.
for ins in md.disasm(data[:rx_end],0):
    for op in ins.operands:
        if op.type==ARM_OP_MEM and op.mem.base==ARM_REG_PC:
            tgt=((ins.address+4)&~3)+op.mem.disp
            if tgt in TARGETS:
                hits.append((tgt,ins.address,ins.mnemonic,ins.op_str,ins.bytes.hex()))
for tgt in sorted(TARGETS):
    print(f'\nTARGET 0x{tgt:08x} {TARGETS[tgt]}')
    rows=[h for h in hits if h[0]==tgt]
    print('hits',len(rows))
    for _,addr,m,o,b in rows[:80]:
        print(f'  0x{addr:08x}: {b:<10} {m:<8} {o}')
