"""Find code caves in libminecraftpe.so .text section."""
import struct
from pathlib import Path

SO = Path(r"c:\Users\triggertrash\Desktop\horrible v2\lib\armeabi-v7a\libminecraftpe.so")
data = SO.read_bytes()

e_shoff   = struct.unpack_from("<I", data, 0x20)[0]
e_shentsz = struct.unpack_from("<H", data, 0x2E)[0]
e_shnum   = struct.unpack_from("<H", data, 0x30)[0]
e_shstrndx= struct.unpack_from("<H", data, 0x32)[0]
sections = []
for i in range(e_shnum):
    off = e_shoff + i * e_shentsz
    sections.append(struct.unpack_from("<IIIIIIIIII", data, off))
shstr_off = sections[e_shstrndx][4]
def secname(idx):
    n = sections[idx][0]
    e = data.index(b"\x00", shstr_off+n)
    return data[shstr_off+n:e].decode()

print("=== Executable section bounds ===")
for i,s in enumerate(sections):
    name = secname(i)
    flags = s[2]
    if flags & 4:
        print(f"  {name:>16s}: foff=0x{s[4]:x} va=0x{s[3]:x} size=0x{s[5]:x} end_va=0x{s[3]+s[5]:x}")

# Find caves >= 30 bytes (we need ~24 for thunk + safety margin)
print("\n=== Caves >=30 bytes in .text ===")
for i,s in enumerate(sections):
    name = secname(i)
    flags = s[2]
    if not (flags & 4): continue
    foff = s[4]; size = s[5]; va = s[3]
    sec_data = data[foff:foff+size]
    in_run = False; run_start = 0
    runs = []
    for j,b in enumerate(sec_data):
        if b == 0:
            if not in_run:
                in_run = True; run_start = j
        else:
            if in_run:
                rl = j - run_start
                if rl >= 30:
                    runs.append((va+run_start, rl))
                in_run = False
    print(f"  {name}: {len(runs)} caves >=30 (showing first 10)")
    for addr, rl in runs[:10]:
        print(f"      va=0x{addr:x} len={rl}")
