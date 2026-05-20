"""Dump Entity::getRegion() at 0x154ed8c in libminecraftpe.so for patching."""
from pathlib import Path
from capstone import Cs, CS_ARCH_ARM, CS_MODE_THUMB

SO = Path(r"c:\Users\triggertrash\Desktop\horrible v2\lib\armeabi-v7a\libminecraftpe.so")
data = SO.read_bytes()
md = Cs(CS_ARCH_ARM, CS_MODE_THUMB)

ADDR = 0x154ed8c
print(f"=== Entity::getRegion @ 0x{ADDR:x} ===")
for ins in md.disasm(data[ADDR:ADDR+0x40], ADDR):
    print(f"  0x{ins.address:08x}: {ins.bytes.hex():<10} {ins.mnemonic:8s} {ins.op_str}")
