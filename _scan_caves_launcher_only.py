"""Scan liblauncher.so for RX caves, classified by section, excluding .hash
(which would break dlsym if overwritten). We need a contiguous cave of
~120 bytes for the Block.getData thunk."""
import struct
from pathlib import Path

LAU = Path(r"c:\Users\triggertrash\Desktop\horrible v2\lib\armeabi-v7a\liblauncher.so")
d = LAU.read_bytes()

e_shoff   = struct.unpack_from("<I", d, 0x20)[0]
e_shentsz = struct.unpack_from("<H", d, 0x2E)[0]
e_shnum   = struct.unpack_from("<H", d, 0x30)[0]
e_shstrndx= struct.unpack_from("<H", d, 0x32)[0]
sections = [struct.unpack_from("<IIIIIIIIII", d, e_shoff+i*e_shentsz) for i in range(e_shnum)]
shstr_off = sections[e_shstrndx][4]
def secname(s):
    n=s[0]
    if n == 0: return ""
    e=d.index(b"\x00", shstr_off+n); return d[shstr_off+n:e].decode()

# liblauncher PT_LOAD #1 is RX from 0..0x6bee0
RX_END = 0x6bee0

# List sections inside RX range
print(f"Sections in RX range (0..0x{RX_END:x}):")
for s in sections:
    nm = secname(s)
    sh_addr = s[3]; sh_size = s[5]; sh_type = s[1]; sh_flags = s[2]
    if sh_addr == 0 or sh_size == 0: continue
    if sh_addr + sh_size > RX_END: continue
    flags = ""
    if sh_flags & 2: flags += "A"
    if sh_flags & 4: flags += "X"
    if sh_flags & 1: flags += "W"
    print(f"  {nm:<24} va=0x{sh_addr:08x} size=0x{sh_size:x} flags={flags}")

# Find runs of 0x00 (or 0xCC/0x90 padding) in RX range, ≥ 16 bytes
print("\nCaves (runs of zero bytes ≥16 bytes) inside RX:")
runs = []
i = 0
while i < RX_END:
    if d[i] == 0:
        j = i
        while j < RX_END and d[j] == 0:
            j += 1
        if j - i >= 16:
            runs.append((i, j-i))
        i = j
    else:
        i += 1

# Annotate which section each cave belongs to
def section_of(va):
    for s in sections:
        sh_addr = s[3]; sh_size = s[5]
        if sh_addr <= va < sh_addr + sh_size:
            return secname(s)
    return "?"

# Sort caves by size desc, show top 20
runs.sort(key=lambda r: -r[1])
for va, sz in runs[:30]:
    sect = section_of(va)
    danger = " <-- AVOID" if sect in (".hash",".gnu.hash",".dynsym",".dynstr",".rel.plt",".rel.dyn") else ""
    print(f"  va=0x{va:08x} size={sz:4d} section={sect}{danger}")

# Also find runs in the very end of .text (before next section)
# This is the most reliable safe cave.
text = next((s for s in sections if secname(s)==".text"), None)
if text:
    text_end = text[3] + text[5]
    print(f"\n.text ends at 0x{text_end:x}; next section ≥ that.")
    # Find next section start after .text
    nexts = sorted([(s[3], secname(s)) for s in sections if s[3] > text[3] and s[5]>0])
    after = next(((va,nm) for va,nm in nexts if va >= text_end and nm != ".text"), None)
    print(f".text neighbours: {nexts[:5]}")
    if after:
        gap = after[0] - text_end
        print(f"Gap between .text and {after[1]} (0x{after[0]:x}): {gap} bytes")
