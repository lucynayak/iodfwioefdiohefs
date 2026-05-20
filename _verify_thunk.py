"""Verify the installed null-check thunk + patched call sites."""
from pathlib import Path
from capstone import Cs, CS_ARCH_ARM, CS_MODE_THUMB

SO = Path(r"c:\Users\triggertrash\Desktop\horrible v2\lib\armeabi-v7a\liblauncher.so")
data = SO.read_bytes()
md = Cs(CS_ARCH_ARM, CS_MODE_THUMB)

print("=== Thunk @ 0x5f9ec ===")
for ins in md.disasm(data[0x5f9ec:0x5f9ec+12], 0x5f9ec):
    print(f"  0x{ins.address:08x}: {ins.bytes.hex():<10} {ins.mnemonic:8s} {ins.op_str}")

for site in [0x000127bc, 0x000166fc, 0x00016754]:
    print(f"\n=== Call site 0x{site:08x} (patched instr) ===")
    # disasm only the 4-byte patched instruction
    for ins in md.disasm(data[site:site+4], site):
        print(f"  0x{ins.address:08x}: {ins.bytes.hex():<10} {ins.mnemonic:8s} {ins.op_str}")
