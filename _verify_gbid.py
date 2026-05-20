from pathlib import Path
from capstone import Cs, CS_ARCH_ARM, CS_MODE_THUMB

SO = Path(r"c:\Users\triggertrash\Desktop\horrible v2\lib\armeabi-v7a\libminecraftpe.so")
data = SO.read_bytes()
md = Cs(CS_ARCH_ARM, CS_MODE_THUMB)

print("=== Wrapper @ 0x1701c14 (after patch) ===")
for ins in md.disasm(data[0x1701c14:0x1701c14+0x20], 0x1701c14):
    print(f"  0x{ins.address:08x}: {ins.bytes.hex():<10} {ins.mnemonic:8s} {ins.op_str}")

print("\n=== Thunk @ 0xbb2128 ===")
for ins in md.disasm(data[0xbb2128:0xbb2128 + 0x24], 0xbb2128):
    print(f"  0x{ins.address:08x}: {ins.bytes.hex():<10} {ins.mnemonic:8s} {ins.op_str}")
