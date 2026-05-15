"""Dump 0x80 bytes of disasm around each suspicious cap loader."""
from pathlib import Path
from capstone import Cs, CS_ARCH_ARM, CS_MODE_THUMB

SO = Path(r"c:\Users\triggertrash\Desktop\horrible v2\Minecraft PE 1.1.5_src\lib\armeabi-v7a\libminecraftpe.so")
data = SO.read_bytes()
md = Cs(CS_ARCH_ARM, CS_MODE_THUMB)

SITES = [
    (0x018d716a, "49.0 (7^2) sole loader"),
    (0x00e783ce, "36.0 site #1"),
    (0x00e78e0c, "36.0 site #2"),
    (0x00ff3628, "36.0 site #3"),
    (0x00ff36ac, "36.0 site #4"),
    (0x0148b408, "36.0 site #5"),
    (0x017fc9d8, "36.0 site #6"),
    (0x017fe0fe, "36.0 site #7"),
]

for addr, label in SITES:
    print(f"\n========== {label} @ 0x{addr:08x} ==========")
    # show 0x40 before and 0x80 after
    start = max(0, addr - 0x40)
    end = min(len(data), addr + 0x80)
    for ins in md.disasm(data[start:end], start):
        marker = " <-- HERE" if ins.address == addr else ""
        print(f"  0x{ins.address:08x}: {ins.mnemonic:8s} {ins.op_str}{marker}")
