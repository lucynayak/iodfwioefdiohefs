"""Find JNI thunk addresses in liblauncher.so by parsing ELF dynsym."""
import struct
from pathlib import Path

SO = Path(r"c:\Users\triggertrash\Desktop\horrible v2\lib\armeabi-v7a\liblauncher.so")
data = SO.read_bytes()

# ELF32 little-endian
assert data[:4] == b"\x7fELF"
e_shoff   = struct.unpack_from("<I", data, 0x20)[0]
e_shentsz = struct.unpack_from("<H", data, 0x2E)[0]
e_shnum   = struct.unpack_from("<H", data, 0x30)[0]
e_shstrndx= struct.unpack_from("<H", data, 0x32)[0]

# parse section headers
sections = []
for i in range(e_shnum):
    off = e_shoff + i * e_shentsz
    name, type_, flags, addr, foff, size, link, info, align, entsize = \
        struct.unpack_from("<IIIIIIIIII", data, off)
    sections.append((name, type_, foff, size, link, entsize))

shstr_off = sections[e_shstrndx][2]
def secname(idx): 
    n = sections[idx][0]
    e = data.index(b"\x00", shstr_off+n)
    return data[shstr_off+n:e].decode()

dynsym_idx = next(i for i,s in enumerate(sections) if secname(i)==".dynsym")
dynstr_idx = sections[dynsym_idx][4]
dynsym_off, dynsym_size, _, dynsym_entsz = sections[dynsym_idx][2:6]
dynstr_off = sections[dynstr_idx][2]

def get_str(o):
    e = data.index(b"\x00", o)
    return data[o:e].decode()

print("=== JNI thunks for player position / fetchEntity callers ===")
WANTED = [
    "Java_dev_virus_variable_launcher_api_NativePlayer_getPositionX",
    "Java_dev_virus_variable_launcher_api_NativePlayer_getPositionY",
    "Java_dev_virus_variable_launcher_api_NativePlayer_getPositionZ",
    "Java_dev_virus_variable_launcher_api_NativePlayer_getYaw",
    "Java_dev_virus_variable_launcher_api_NativePlayer_getPitch",
    "Java_dev_virus_variable_launcher_api_NativePlayer_isAlive",
    "Java_dev_virus_variable_launcher_api_NativePlayer_getCollisionSize",
    "Java_dev_virus_variable_launcher_api_NativePlayer_getNameTag",
    "Java_dev_virus_variable_launcher_api_NativePlayer_isInvisible",
    "Java_dev_virus_variable_launcher_api_NativePlayer_canShowNameTag",
    "Java_dev_virus_variable_launcher_api_NativeLevel_getAllPlayers",
    "Java_dev_virus_variable_launcher_api_NativeBlock_getID",
    "Java_dev_virus_variable_launcher_api_NativeBlock_isSolid",
    "Java_dev_virus_variable_launcher_api_NativeLocalPlayer_isInGame",
    "Java_dev_virus_variable_launcher_api_NativeLocalPlayer_getUniqueID",
    "_ZN5Level11fetchEntityE14EntityUniqueIDb",
    "_ZN6Entity9getRegionEv",
]

for i in range(dynsym_size // dynsym_entsz):
    off = dynsym_off + i * dynsym_entsz
    name_off, st_value, st_size, st_info, st_other, st_shndx = \
        struct.unpack_from("<IIIBBH", data, off)
    name = get_str(dynstr_off + name_off)
    if name in WANTED:
        # Thumb function low bit
        addr = st_value
        thumb = bool(addr & 1)
        addr_clean = addr & ~1
        print(f"  {name}  @ vaddr=0x{addr_clean:x}  size=0x{st_size:x}  thumb={thumb}")
