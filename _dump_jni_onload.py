"""Dump JNI_OnLoad + surrounding bytes + check PLT for JNI helpers we need
(RegisterNatives, FindClass) and find caves big enough for our thunks."""
import struct
from pathlib import Path
from capstone import Cs, CS_ARCH_ARM, CS_MODE_THUMB

SO = Path(r"c:\Users\triggertrash\Desktop\horrible v2\lib\armeabi-v7a\liblauncher.so")
data = SO.read_bytes()
md = Cs(CS_ARCH_ARM, CS_MODE_THUMB)
md.detail = True

# JNI_OnLoad @ 0x131b0, size 0x14 (Thumb)
addr = 0x131b0
print(f"=== JNI_OnLoad @ 0x{addr:x} ===")
for ins in md.disasm(data[addr:addr+0x40], addr):
    print(f"  0x{ins.address:08x}: {ins.bytes.hex():<10} {ins.mnemonic:8s} {ins.op_str}")

# Scan for caves >= 256 bytes in executable region (.text 0x10a30..0x5fa07)
print("\n=== Caves in .text >= 200 bytes ===")
TEXT_START = 0x10a30
TEXT_END   = 0x5fa07
# Find runs of zero or 0xCC bytes
i = TEXT_START
caves = []
while i < TEXT_END:
    if data[i] == 0:
        j = i
        while j < TEXT_END and data[j] == 0:
            j += 1
        if j - i >= 64:
            caves.append((i, j-i))
        i = j
    else:
        i += 1
for off, sz in sorted(caves, key=lambda x: -x[1])[:10]:
    print(f"  cave @ 0x{off:x}  size={sz}")

# Search .rodata for existing JNINativeMethod-like tables (pattern of cstring-ptr/cstring-ptr/funcptr)
# Also scan for "GetEnv", "RegisterNatives" usage references
print("\n=== Strings in .dynstr / .rodata for JNI helpers ===")
for needle in [b"GetEnv\x00", b"RegisterNatives\x00", b"FindClass\x00"]:
    i = data.find(needle)
    print(f"  {needle!r} @ file_off=0x{i:x}")

# Verify how JNI_OnLoad references env operations - read fully
print(f"\nRaw bytes around JNI_OnLoad: {data[addr-8:addr+0x28].hex()}")
