"""Find Level::getEntities / actor list accessors in libminecraftpe.so."""
import struct
from pathlib import Path

MCPE = Path(r"c:\Users\triggertrash\Desktop\horrible v2\lib\armeabi-v7a\libminecraftpe.so")

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
    ds = sec['.dynsym']; ts = sec['.dynstr']
    syms = []
    for i in range(ds[5]//ds[9]):
        off = ds[4]+i*ds[9]
        name_off, st_value, st_size, st_info, st_other, st_shndx = \
            struct.unpack_from("<IIIBBH", d, off)
        if name_off==0: continue
        e = d.index(b"\x00", ts[4]+name_off)
        name = d[ts[4]+name_off:e].decode(errors='ignore')
        syms.append((name, st_value, st_size))
    return d, syms

d, syms = parse(MCPE)

print("=== Level:: methods that look like entity/actor accessors ===")
for n, v, sz in syms:
    if '5Level' in n and any(w in n for w in ('Entit','Actor','ForEach','Runtime','getAll','vector')) and sz > 0:
        print(f"  va=0x{v&~1:x} sz=0x{sz:x}  {n}")

print("\n=== Dimension:: methods ===")
for n, v, sz in syms:
    if '9Dimension' in n and any(w in n for w in ('Entit','Actor','Runtime')) and sz > 0:
        print(f"  va=0x{v&~1:x} sz=0x{sz:x}  {n}")

print("\n=== EntityRegistry / ActorManager ===")
for n, v, sz in syms:
    if any(k in n for k in ('EntityRegistry','ActorManager','EntitySystem')) and sz > 0:
        print(f"  va=0x{v&~1:x} sz=0x{sz:x}  {n}")

print("\n=== Anything *Entities*v$ (no-arg getter that returns container) ===")
for n, v, sz in syms:
    if 'Entities' in n and n.endswith('Ev') and sz > 0 and sz < 0x80:
        print(f"  va=0x{v&~1:x} sz=0x{sz:x}  {n}")

# Pattern: vector access on Level - find what holds entity list
# Level::getRuntimeIDs / Level::getEntities0
print("\n=== Anything ActorList / RuntimeID ===")
for n, v, sz in syms:
    if any(k in n for k in ('11getActorList','getRuntimeID','getRuntimeEntities','getActors')) and sz > 0:
        print(f"  va=0x{v&~1:x} sz=0x{sz:x}  {n}")
