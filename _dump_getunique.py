"""Dump NativeLocalPlayer.getUniqueID thunk."""
from pathlib import Path
from capstone import Cs, CS_ARCH_ARM, CS_MODE_THUMB

SO = Path(r"c:\Users\triggertrash\Desktop\horrible v2\lib\armeabi-v7a\liblauncher.so")
data = SO.read_bytes()
md = Cs(CS_ARCH_ARM, CS_MODE_THUMB)

print("=== NativeLocalPlayer.getUniqueID thunk @ 0x1466c (size 0x30) ===")
for ins in md.disasm(data[0x1466c:0x1466c+0x30], 0x1466c):
    print(f"  0x{ins.address:08x}: {ins.bytes.hex():<10} {ins.mnemonic:8s} {ins.op_str}")
