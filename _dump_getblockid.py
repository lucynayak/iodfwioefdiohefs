"""Dump BlockSource::getBlockID variants in libminecraftpe.so.

Crash backtrace:
  #00 BlockSource::getBlockID(BlockPos const&)+16  -> at 0x1700570 (Thumb-1)
  #01 BlockSource::getBlockID(int,int,int)+20      -> at 0x1701c14 (or thereabouts)
"""
from pathlib import Path
from capstone import Cs, CS_ARCH_ARM, CS_MODE_THUMB

SO = Path(r"c:\Users\triggertrash\Desktop\horrible v2\lib\armeabi-v7a\libminecraftpe.so")
data = SO.read_bytes()
md = Cs(CS_ARCH_ARM, CS_MODE_THUMB)

# Note: crash PCs were 0x1700580 (= start+0x10) and 0x1701c29 (LR after bl).
# Thumb instruction at PC has lowest bit cleared, so actual instruction address
# in our file is the same.

print("=== BlockSource::getBlockID(BlockPos const&) starting around 0x1700570 ===")
for ins in md.disasm(data[0x1700570:0x1700570+0x60], 0x1700570):
    print(f"  0x{ins.address:08x}: {ins.bytes.hex():<10} {ins.mnemonic:8s} {ins.op_str}")

print("\n=== BlockSource::getBlockID(int,int,int) — find by working backward from 0x1701c29 ===")
# +20 means caller LR is start+20. PLT-style: bl from start+16 puts LR at start+20.
# So caller is bl/blx at start+16, i.e. instruction at ~0x1701c14.
# The function start may be a few bytes earlier; dump 0x1701bf0..0x1701c40
for ins in md.disasm(data[0x1701bf0:0x1701c40], 0x1701bf0):
    print(f"  0x{ins.address:08x}: {ins.bytes.hex():<10} {ins.mnemonic:8s} {ins.op_str}")
