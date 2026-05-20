"""Resolve which symbol liblauncher's GOT slot 0x70614 points to.

The existing helper thunks (Block_getID, LocalPlayer_*) all use this slot to
get a libmcpe global that holds the ClientInstance/LocalPlayer pointer.
Once we know the symbol name and its static VA in libmcpe, we can replicate
the same access pattern from a libmcpe-resident thunk via DIRECT PC-relative
addressing (since both global and thunk are in libmcpe).
"""
import struct
from pathlib import Path

LAU = Path(r"c:\Users\triggertrash\Desktop\horrible v2\lib\armeabi-v7a\liblauncher.so")
MCPE = Path(r"c:\Users\triggertrash\Desktop\horrible v2\lib\armeabi-v7a\libminecraftpe.so")

def parse_elf(p):
    d = p.read_bytes()
    e_shoff   = struct.unpack_from("<I", d, 0x20)[0]
    e_shentsz = struct.unpack_from("<H", d, 0x2E)[0]
    e_shnum   = struct.unpack_from("<H", d, 0x30)[0]
    e_shstrndx= struct.unpack_from("<H", d, 0x32)[0]
    sections = [struct.unpack_from("<IIIIIIIIII", d, e_shoff+i*e_shentsz) for i in range(e_shnum)]
    shstr_off = sections[e_shstrndx][4]
    def secname(s):
        n=s[0]; e=d.index(b"\x00", shstr_off+n); return d[shstr_off+n:e].decode()
    sec = {secname(s): s for s in sections}
    return d, sec

def syms(d, sec):
    ds = sec['.dynsym']; ts = sec['.dynstr']
    out = []
    for i in range(ds[5]//ds[9]):
        off = ds[4]+i*ds[9]
        name_off, st_value, st_size, st_info, st_other, st_shndx = \
            struct.unpack_from("<IIIBBH", d, off)
        if name_off==0:
            out.append((i, "", st_value, st_size, st_info, st_shndx))
            continue
        e=d.index(b"\x00", ts[4]+name_off)
        name=d[ts[4]+name_off:e].decode(errors='ignore')
        out.append((i, name, st_value, st_size, st_info, st_shndx))
    return out

ld, lsec = parse_elf(LAU)
md_, msec = parse_elf(MCPE)

lsyms = syms(ld, lsec)
msyms = syms(md_, msec)

# --- find dynamic relocation that targets file_offset 0x70614 in liblauncher ---
# .rel.dyn or .rel.plt
GOT_VA = 0x70614

def reloc_for(d, sec, name):
    if name not in sec: return []
    r = sec[name]
    out = []
    for i in range(r[5]//r[9]):
        off = r[4]+i*r[9]
        r_offset, r_info = struct.unpack_from("<II", d, off)
        out.append((r_offset, r_info))
    return out

print(f"Looking for relocation targeting va 0x{GOT_VA:x} in liblauncher.so ...")
for relname in ('.rel.dyn','.rel.plt','.rela.dyn'):
    for r_offset, r_info in reloc_for(ld, lsec, relname):
        if r_offset == GOT_VA:
            sym_idx = r_info >> 8
            r_type  = r_info & 0xff
            sym = lsyms[sym_idx]
            print(f"  in {relname}: r_offset=0x{r_offset:x} type={r_type} sym=#{sym_idx} '{sym[1]}' value=0x{sym[2]:x}")

# Also dump all relocations near 0x70614 for context
print("\nNeighbor relocations in .rel.dyn (0x70600..0x70620):")
for r_offset, r_info in reloc_for(ld, lsec, '.rel.dyn'):
    if 0x70600 <= r_offset <= 0x70680:
        sym_idx = r_info >> 8
        r_type  = r_info & 0xff
        sym = lsyms[sym_idx] if sym_idx < len(lsyms) else (None,"?",0,0,0,0)
        print(f"  off=0x{r_offset:x} type={r_type} sym='{sym[1]}'")

# --- having found the symbol name, look it up in libmcpe.so ---
# First print what we found above so user can see; then for any name match try to find it.
print("\nNow scan libmcpe.so for the matching exported symbol:")
# Re-collect: symbol at GOT_VA
target_name = None
for relname in ('.rel.dyn','.rel.plt'):
    for r_offset, r_info in reloc_for(ld, lsec, relname):
        if r_offset == GOT_VA:
            sym_idx = r_info >> 8
            target_name = lsyms[sym_idx][1]
            break
    if target_name: break

if not target_name:
    print("  (symbol not found via reloc — maybe slot is statically initialized)")
else:
    print(f"  Target symbol: '{target_name}'")
    for s in msyms:
        if s[1] == target_name:
            print(f"  found in libmcpe.so: vaddr=0x{s[2]:x} size=0x{s[3]:x} shndx={s[5]}")
