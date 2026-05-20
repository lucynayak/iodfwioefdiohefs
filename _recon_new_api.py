"""Reconnaissance for new API methods (getData/getAll/findAll).

We need to locate:
  In liblauncher.so:
    - existing helpers: get_blocksource(), get_local_player(), get_level()
      (probably the static functions called by existing thunks).
    - PLT/import stubs for libmcpe symbols already imported.
  In libminecraftpe.so:
    - BlockSource::getData(int,int,int)    -> meta value
    - Level::getEntities() or runtime entity list accessor
    - Level::getRuntimeActorList()
    - Entity::getUniqueID()
    - Actor::getUniqueID()  (newer name)
"""
import struct, re
from pathlib import Path

LAUNCH = Path(r"c:\Users\triggertrash\Desktop\horrible v2\lib\armeabi-v7a\liblauncher.so")
MCPE   = Path(r"c:\Users\triggertrash\Desktop\horrible v2\lib\armeabi-v7a\libminecraftpe.so")

def parse(p):
    d = p.read_bytes()
    e_shoff   = struct.unpack_from("<I", d, 0x20)[0]
    e_shentsz = struct.unpack_from("<H", d, 0x2E)[0]
    e_shnum   = struct.unpack_from("<H", d, 0x30)[0]
    e_shstrndx= struct.unpack_from("<H", d, 0x32)[0]
    sections = []
    for i in range(e_shnum):
        off = e_shoff + i*e_shentsz
        sections.append(struct.unpack_from("<IIIIIIIIII", d, off))
    shstr_off = sections[e_shstrndx][4]
    def secname(s):
        n = s[0]; e = d.index(b"\x00", shstr_off+n)
        return d[shstr_off+n:e].decode()
    sec = {secname(s): s for s in sections}
    # dynsym
    ds = sec['.dynsym']; ts = sec['.dynstr']
    syms = {}
    for i in range(ds[5]//ds[9]):
        off = ds[4]+i*ds[9]
        name_off, st_value, st_size, st_info, st_other, st_shndx = \
            struct.unpack_from("<IIIBBH", d, off)
        if name_off==0: continue
        e = d.index(b"\x00", ts[4]+name_off)
        name = d[ts[4]+name_off:e].decode(errors='ignore')
        syms[name] = (st_value, st_size, st_shndx)
    return d, sec, syms

ld, lsec, lsyms = parse(LAUNCH)
md, msec, msyms = parse(MCPE)

print("====== liblauncher.so: existing JNI thunks of interest ======")
for k in sorted(lsyms):
    if "Java_dev_virus" in k and any(x in k for x in ("Block_getID","Level_getAllPlayers","LocalPlayer_isInGame","Player_getPositionX","LocalPlayer_getUniqueID")):
        v, sz, _ = lsyms[k]
        print(f"  {k}  va=0x{v&~1:x} size=0x{sz:x}")

# Imports needed
print("\n====== libmcpe.so: candidate symbols ======")
needles = [
    "Level10getEntities",  # Level::getEntities()
    "Level18getRuntimeActorList",
    "Level17getRuntimeEntityList",
    "Level11fetchEntity",
    "BlockSource",
    "11BlockSource7getData",
    "11BlockSource10getBlockID",
    "Entity11getUniqueID",
    "Actor11getUniqueID",
    "LocalPlayer",
    "Mob11getUniqueID",
]
found = {}
for sym in msyms:
    for n in needles:
        if n in sym:
            found.setdefault(n, []).append(sym)
for n, lst in found.items():
    print(f"\n  pattern={n!r}: {len(lst)} matches")
    for s in lst[:8]:
        v, sz, _ = msyms[s]
        print(f"     va=0x{v&~1:x} size=0x{sz:x}  {s}")

# Check liblauncher PLT imports (relocations) for which libmcpe symbols are already
# available via PLT stubs.
print("\n====== liblauncher.so PLT imports from libmcpe ======")
# parse .rel.plt
relplt = lsec.get('.rel.plt')
dynsym_off = lsec['.dynsym'][4]
dynstr_off = lsec['.dynstr'][4]
def ldstr(o):
    e = ld.index(b"\x00", o); return ld[o:e].decode(errors='ignore')
if relplt:
    nrel = relplt[5]//8
    wanted = ["getBlockID","getData","getEntities","getRuntimeActorList","fetchEntity","getUniqueID","getRegion","getPos","Pos","Player","Level"]
    for i in range(nrel):
        off, info = struct.unpack_from("<II", ld, relplt[4]+i*8)
        sym_idx = info >> 8
        rel_type = info & 0xFF
        soff = dynsym_off + sym_idx*16
        name_off = struct.unpack_from("<I", ld, soff)[0]
        n = ldstr(dynstr_off + name_off)
        if any(w in n for w in wanted):
            # PLT entry for this is at .plt + something — but we mostly need GOT location.
            # `off` is the GOT entry vaddr.
            print(f"  GOT vaddr=0x{off:x}  -> {n}")
