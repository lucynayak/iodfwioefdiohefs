"""Scan liblauncher.so for JNI thunk symbols + nearby code clues."""
import re
from pathlib import Path

SO = Path(r"c:\Users\triggertrash\Desktop\horrible v2\lib\armeabi-v7a\liblauncher.so")
data = SO.read_bytes()

# 1. List all NativePlayer / NativeLevel JNI symbols
sym_re = re.compile(rb"Java_dev_virus_variable_launcher_api_(Native[A-Za-z]+)_([A-Za-z]+)")
syms = sorted(set((m.group(1).decode(), m.group(2).decode(), m.start()) for m in sym_re.finditer(data)))
print("=== JNI symbols ===")
for cls, meth, off in syms:
    print(f"  {cls}.{meth}  @ str_off=0x{off:x}")

# 2. Look for getRegion / fetchEntity import strings  
for needle in [b"fetchEntity", b"getRegion", b"getEntity", b"_ZN6Entity9getRegion", b"_ZN5Level11fetchEntity"]:
    i = data.find(needle)
    if i >= 0:
        print(f"\nFound {needle!r} at 0x{i:x}")
        # show 32 bytes context
        print("  context:", data[max(0,i-8):i+len(needle)+24])
