from pathlib import Path
from capstone import Cs, CS_ARCH_ARM, CS_MODE_THUMB

SO = Path(r"c:\Users\triggertrash\Desktop\horrible v2\lib\armeabi-v7a\liblauncher.so")
data = SO.read_bytes()
md = Cs(CS_ARCH_ARM, CS_MODE_THUMB)

print("=== Both thunks at 0x5f9ec (combined region) ===")
for ins in md.disasm(data[0x5f9ec:0x5f9ec+0x20], 0x5f9ec):
    print(f"  0x{ins.address:08x}: {ins.bytes.hex():<10} {ins.mnemonic:8s} {ins.op_str}")

print("\n=== JNI thunk NativeLocalPlayer.getUniqueID after patch (around 0x14684) ===")
for ins in md.disasm(data[0x1466c:0x1466c+0x30], 0x1466c):
    marker = "  <-- patched" if ins.address == 0x14684 else ""
    print(f"  0x{ins.address:08x}: {ins.bytes.hex():<10} {ins.mnemonic:8s} {ins.op_str}{marker}")
