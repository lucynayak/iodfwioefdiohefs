"""Inspect how JNI resolution works in liblauncher.so:
- Does JNI_OnLoad exist?
- What's the hash style (.hash / .gnu.hash)?
- Where is dynstr / dynsym?
- How many existing Java_* symbols?
- Are there any existing JNINativeMethod-like structures in .rodata?
- Find code-cave headroom near .dynstr / .dynsym for safe append.
"""
import struct
from pathlib import Path

SO = Path(r"c:\Users\triggertrash\Desktop\horrible v2\lib\armeabi-v7a\liblauncher.so")
data = SO.read_bytes()
assert data[:4] == b"\x7fELF"

e_phoff   = struct.unpack_from("<I", data, 0x1C)[0]
e_phentsz = struct.unpack_from("<H", data, 0x2A)[0]
e_phnum   = struct.unpack_from("<H", data, 0x2C)[0]
e_shoff   = struct.unpack_from("<I", data, 0x20)[0]
e_shentsz = struct.unpack_from("<H", data, 0x2E)[0]
e_shnum   = struct.unpack_from("<H", data, 0x30)[0]
e_shstrndx= struct.unpack_from("<H", data, 0x32)[0]

sections = []
for i in range(e_shnum):
    off = e_shoff + i * e_shentsz
    name, type_, flags, addr, foff, size, link, info, align, entsize = \
        struct.unpack_from("<IIIIIIIIII", data, off)
    sections.append(dict(idx=i,name_off=name,type=type_,flags=flags,addr=addr,
                         foff=foff,size=size,link=link,info=info,
                         align=align,entsize=entsize))
shstr_off = sections[e_shstrndx]["foff"]
def sname(s):
    n = s["name_off"]
    e = data.index(b"\x00", shstr_off+n)
    return data[shstr_off+n:e].decode()

print("=== Section overview ===")
for s in sections:
    nm = sname(s)
    if nm in (".dynsym",".dynstr",".hash",".gnu.hash",".rodata",".text",".plt",".dynamic"):
        print(f"  {nm:12s} addr=0x{s['addr']:08x} foff=0x{s['foff']:08x} size=0x{s['size']:x} entsize=0x{s['entsize']:x} link=0x{s['link']:x}")

# PT_LOAD segments
print("\n=== PT_LOAD segments ===")
for i in range(e_phnum):
    off = e_phoff + i*e_phentsz
    p_type, p_off, p_vaddr, p_paddr, p_filesz, p_memsz, p_flags, p_align = \
        struct.unpack_from("<IIIIIIII", data, off)
    if p_type == 1:  # PT_LOAD
        print(f"  off=0x{p_off:x} vaddr=0x{p_vaddr:x} filesz=0x{p_filesz:x} memsz=0x{p_memsz:x} flags={p_flags:o}")

dynsym = next(s for s in sections if sname(s)==".dynsym")
dynstr = next(s for s in sections if sname(s)==".dynstr")
print(f"\n.dynsym: {dynsym['size']//dynsym['entsize']} entries (entsize={dynsym['entsize']})")
print(f".dynstr: {dynstr['size']} bytes")

# Find JNI_OnLoad and Java_* symbols
def get_str(o):
    e = data.index(b"\x00", o)
    return data[o:e].decode()

has_onload = False
java_syms = []
for i in range(dynsym['size']//dynsym['entsize']):
    off = dynsym['foff'] + i*dynsym['entsize']
    name_off, st_value, st_size, st_info, st_other, st_shndx = \
        struct.unpack_from("<IIIBBH", data, off)
    if name_off == 0: continue
    n = get_str(dynstr['foff']+name_off)
    if n == "JNI_OnLoad":
        has_onload = True
        print(f"\n[!] JNI_OnLoad found: vaddr=0x{st_value&~1:x} size=0x{st_size:x} thumb={bool(st_value&1)}")
    if n.startswith("Java_"):
        java_syms.append((n, st_value&~1, st_size))

print(f"\nJNI_OnLoad present: {has_onload}")
print(f"Java_* symbols: {len(java_syms)}")

# Show last 5 dynsym entries (for understanding tail)
print("\n=== Last 5 dynsym entries (tail) ===")
ne = dynsym['size']//dynsym['entsize']
for i in range(max(0,ne-5), ne):
    off = dynsym['foff'] + i*dynsym['entsize']
    name_off, st_value, st_size, st_info, st_other, st_shndx = \
        struct.unpack_from("<IIIBBH", data, off)
    n = get_str(dynstr['foff']+name_off) if name_off else "<no-name>"
    print(f"  [{i}] name='{n}' val=0x{st_value:x} size=0x{st_size:x} info=0x{st_info:x} shndx={st_shndx}")

# Tail of .dynstr (for headroom check)
tail_off = dynstr['foff'] + dynstr['size']
print(f"\n.dynstr tail offset in file: 0x{tail_off:x}")
print(f"Last 80 bytes of .dynstr: {data[tail_off-80:tail_off]!r}")

# What follows .dynstr in file?
next_section_off = min((s['foff'] for s in sections if s['foff']>dynstr['foff'] and s['size']>0),
                       default=len(data))
print(f"Next section starts at file offset: 0x{next_section_off:x}")
print(f"Room after .dynstr (in file): {next_section_off - tail_off} bytes")
print(f"  bytes immediately after: {data[tail_off:tail_off+32].hex()}")
