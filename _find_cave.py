"""Find suitable code-cave (zero-padded region) in liblauncher.so .text section."""
import struct
from pathlib import Path

SO = Path(r"c:\Users\triggertrash\Desktop\horrible v2\lib\armeabi-v7a\liblauncher.so")
data = SO.read_bytes()

# Sections
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

# Look for caves of >=16 zero bytes in any executable section
print("=== Caves (zero runs) in executable sections ===")
for i,s in enumerate(sections):
    name = secname(i)
    flags = s[2]
    # SHF_EXECINSTR = 4
    if not (flags & 4): continue
    foff = s[4]; size = s[5]; va = s[3]
    if size < 16: continue
    sec_data = data[foff:foff+size]
    # find runs of >=16 zero bytes
    in_run = False
    run_start = 0
    for j,b in enumerate(sec_data):
        if b == 0:
            if not in_run:
                in_run = True
                run_start = j
        else:
            if in_run:
                run_len = j - run_start
                if run_len >= 12:
                    print(f"  {name:>12s} cave: foff=0x{foff+run_start:x} va=0x{va+run_start:x} len={run_len}")
                in_run = False
    if in_run:
        run_len = len(sec_data) - run_start
        if run_len >= 12:
            print(f"  {name:>12s} END-cave: foff=0x{foff+run_start:x} va=0x{va+run_start:x} len={run_len}")

# Also list zero runs in NON-executable sections (e.g. .rodata may have padding)
print("\n=== Caves in NON-executable sections (>=20 bytes) ===")
for i,s in enumerate(sections):
    name = secname(i)
    flags = s[2]
    if flags & 4: continue   # skip exec
    if not (flags & 2): continue  # need SHF_ALLOC
    foff = s[4]; size = s[5]; va = s[3]
    if size < 20: continue
    sec_data = data[foff:foff+size]
    in_run = False; run_start = 0
    for j,b in enumerate(sec_data):
        if b == 0:
            if not in_run:
                in_run = True; run_start = j
        else:
            if in_run:
                rl = j - run_start
                if rl >= 20:
                    print(f"  {name:>14s} cave: foff=0x{foff+run_start:x} va=0x{va+run_start:x} len={rl}")
                in_run = False
