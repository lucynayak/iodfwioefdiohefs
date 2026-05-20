"""Phase 0.5 disassembly — all targets in one go.

Targets:
  liblauncher.so:
    - Java_..._NativeBlock_getID        @ 0x166d4 size 0x60  (FULL helper pattern)
  libminecraftpe.so:
    - BlockSource::getBlockID(i,i,i)    @ 0x1701c14 size 0x1a
    - BlockSource::getData(i,i,i)       @ 0x1703744 size 0x16
    - Entity::getUniqueID               @ 0x154df1c size 0x2a
    - Level::getGlobalEntities          @ 0x1728fb8 size 0x6
"""
from pathlib import Path
from capstone import Cs, CS_ARCH_ARM, CS_MODE_THUMB, CS_MODE_ARM

LAUNCH = Path(r"c:\Users\triggertrash\Desktop\horrible v2\lib\armeabi-v7a\liblauncher.so")
MCPE   = Path(r"c:\Users\triggertrash\Desktop\horrible v2\lib\armeabi-v7a\libminecraftpe.so")

ldata = LAUNCH.read_bytes()
mdata = MCPE.read_bytes()

md_t = Cs(CS_ARCH_ARM, CS_MODE_THUMB)

def show(label, data, va, sz, file_off=None):
    if file_off is None: file_off = va
    print(f"\n========== {label} @ va=0x{va:x} size=0x{sz:x} ==========")
    chunk = data[file_off:file_off+sz+8]
    for ins in md_t.disasm(chunk, va):
        print(f"  0x{ins.address:08x}: {ins.bytes.hex():<10} {ins.mnemonic:8s} {ins.op_str}")
        if ins.address >= va+sz: break

show("liblauncher Block_getID", ldata, 0x166d4, 0x60)

show("libmcpe BlockSource::getBlockID(i,i,i)", mdata, 0x1701c14, 0x1a)
show("libmcpe BlockSource::getData(i,i,i)",    mdata, 0x1703744, 0x16)
show("libmcpe Entity::getUniqueID",            mdata, 0x154df1c, 0x2a)
show("libmcpe Level::getGlobalEntities",       mdata, 0x1728fb8, 0x6)

# Also dump the helper that Block_getID calls (the cross-PLT call into libmcpe)
# And dump 16 bytes after Block_getID to see if anything follows.
print("\n========== bytes after Block_getID ==========")
for ins in md_t.disasm(ldata[0x16734:0x16760], 0x16734):
    print(f"  0x{ins.address:08x}: {ins.bytes.hex():<10} {ins.mnemonic:8s} {ins.op_str}")
