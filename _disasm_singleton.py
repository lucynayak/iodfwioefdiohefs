"""Dump MinecraftGame::getPrimaryClientInstance and ClientInstance::getLocalPlayer
to understand the singleton chain inside libmcpe."""
from pathlib import Path
from capstone import Cs, CS_ARCH_ARM, CS_MODE_THUMB

MCPE = Path(r"c:\Users\triggertrash\Desktop\horrible v2\lib\armeabi-v7a\libminecraftpe.so")
data = MCPE.read_bytes()
md = Cs(CS_ARCH_ARM, CS_MODE_THUMB)

def show(label, va, sz):
    print(f"\n========== {label} @ 0x{va:x} sz=0x{sz:x} ==========")
    chunk = data[va:va+sz+8]
    for ins in md.disasm(chunk, va):
        print(f"  0x{ins.address:08x}: {ins.bytes.hex():<10} {ins.mnemonic:8s} {ins.op_str}")
        if ins.address >= va+sz: break

show("MinecraftGame::getPrimaryClientInstance", 0xb75764, 0x8)
show("ClientInstance::getLocalPlayer",          0xb6dcae, 0x4)
show("ClientInstance::getLevel",                0xb70a76 if 0 else 0xb70a86 - 0x10, 0x18)
# also: Entity::getRegion
# We saw GOT->_ZNK6Entity9getRegionEv. find it via dynsym? let's try common addr nearby
print("\n=== Entity::getRegion (find via xref likely 0x154dexx) ===")
import struct
# parse dynsym quickly
e_shoff   = struct.unpack_from("<I", data, 0x20)[0]
e_shentsz = struct.unpack_from("<H", data, 0x2E)[0]
e_shnum   = struct.unpack_from("<H", data, 0x30)[0]
e_shstrndx= struct.unpack_from("<H", data, 0x32)[0]
sections = [struct.unpack_from("<IIIIIIIIII", data, e_shoff+i*e_shentsz) for i in range(e_shnum)]
shstr_off = sections[e_shstrndx][4]
def secname(s):
    n=s[0]; e=data.index(b"\x00", shstr_off+n); return data[shstr_off+n:e].decode()
sec = {secname(s): s for s in sections}
ds = sec['.dynsym']; ts = sec['.dynstr']
for i in range(ds[5]//ds[9]):
    off = ds[4]+i*ds[9]
    name_off, st_value, st_size, *_ = struct.unpack_from("<IIIBBH", data, off)
    if name_off==0: continue
    e=data.index(b"\x00", ts[4]+name_off)
    name=data[ts[4]+name_off:e].decode(errors='ignore')
    if name == "_ZNK6Entity9getRegionEv":
        show("Entity::getRegion", st_value & ~1, st_size)
        break
