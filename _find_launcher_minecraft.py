"""Find 'launcher_minecraft' (and friends) in BOTH liblauncher.so and libminecraftpe.so.

This is the global pointer that holds ClientInstance*. Existing JNI helpers
read it via GOT[0x70614]. We need to know:
  - Is it defined in liblauncher.so itself? (then it lives in liblauncher RW data)
  - Or in libminecraftpe.so? (then libmcpe thunks can reach it via PC-relative)
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
            out.append(("", st_value, st_size, st_info, st_shndx))
            continue
        e=d.index(b"\x00", ts[4]+name_off)
        name=d[ts[4]+name_off:e].decode(errors='ignore')
        out.append((name, st_value, st_size, st_info, st_shndx))
    return out

NEEDLES = ("launcher_minecraft","launcher_clientInputCallbacks",
           "launcher_gameMode","launcher_moveInputHandler")

for label, p in (("liblauncher.so", LAU), ("libminecraftpe.so", MCPE)):
    print(f"\n=== {label} ===")
    d, sec = parse_elf(p)
    for nm, val, sz, info, shndx in syms(d, sec):
        if nm in NEEDLES:
            stt = info & 0xf; stb = info >> 4
            print(f"  va=0x{val:08x} sz=0x{sz:x} type={stt} bind={stb} shndx={shndx}  {nm}")
            # Show the section name for shndx
            shstr_off = struct.unpack_from("<IIIIIIIIII", d,
                struct.unpack_from("<I",d,0x20)[0] +
                struct.unpack_from("<H",d,0x32)[0]*struct.unpack_from("<H",d,0x2E)[0]
            )[4]
            # crude: dump first byte of value
            if shndx not in (0,):
                # try to read the data at val
                # For OBJECT symbols in RW data we want the file offset
                pass
