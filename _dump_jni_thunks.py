"""Dump disassembly of the player JNI thunks to find missing null-checks."""
from pathlib import Path
from capstone import Cs, CS_ARCH_ARM, CS_MODE_THUMB

SO = Path(r"c:\Users\triggertrash\Desktop\horrible v2\lib\armeabi-v7a\liblauncher.so")
data = SO.read_bytes()
md = Cs(CS_ARCH_ARM, CS_MODE_THUMB)

# liblauncher.so is loaded with file_offset == vaddr for these locations.
# Verify by reading PT_LOAD; for our purposes vaddr seems to map directly.
THUNKS = [
    (0x166d4, 0x60, "Block_getID"),
    (0x168d4, 0xb4, "Level_getAllPlayers"),
    (0x15634, 0x98, "Player_getCollisionSize"),
    (0x1538c, 0x48, "Player_getNameTag"),
]
for addr, size, label in THUNKS:
    print(f"\n========== {label} @ 0x{addr:x} ==========")
    for ins in md.disasm(data[addr:addr+size+8], addr):
        print(f"  0x{ins.address:08x}: {ins.bytes.hex():<10} {ins.mnemonic:8s} {ins.op_str}")
