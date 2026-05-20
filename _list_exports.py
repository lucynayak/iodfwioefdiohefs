"""List exported symbols from libminecraftpe.so"""
import struct
from pathlib import Path

mcpe = Path(r"c:\Users\triggertrash\Desktop\horrible v2\lib\armeabi-v7a\libminecraftpe.so")
data = mcpe.read_bytes()

# Parse ELF header
e_shoff = struct.unpack_from("<I", data, 0x20)[0]
e_shentsize = struct.unpack_from("<H", data, 0x2E)[0]
e_shnum = struct.unpack_from("<H", data, 0x30)[0]

# Find .dynsym (SHT_DYNSYM=11) and .dynstr (SHT_STRTAB=3)
dynsym_sz = None
dynsym_file_off = None
dynstr_file_off = None
dynsym_entsize = None

for i in range(e_shnum):
    off = e_shoff + i * e_shentsize
    sh_type = struct.unpack_from("<I", data, off + 4)[0]
    sh_size = struct.unpack_from("<I", data, off + 20)[0]
    sh_offset = struct.unpack_from("<I", data, off + 16)[0]
    sh_entsize = struct.unpack_from("<I", data, off + 36)[0]
    sh_link = struct.unpack_from("<I", data, off + 24)[0]
    
    if sh_type == 11:  # SHT_DYNSYM
        dynsym_sz = sh_size
        dynsym_file_off = sh_offset
        dynsym_entsize = sh_entsize
        # Find linked .dynstr section
        str_off = e_shoff + sh_link * e_shentsize
        dynstr_file_off = struct.unpack_from("<I", data, str_off + 16)[0]

if dynsym_file_off is None:
    print("No .dynsym found")
    exit()

print(f".dynsym: file_off=0x{dynsym_file_off:x} sz=0x{dynsym_sz:x} entsize={dynsym_entsize}")
print(f".dynstr: file_off=0x{dynstr_file_off:x}")

# List exported symbols
count = 0
for i in range(dynsym_sz // dynsym_entsize):
    off = dynsym_file_off + i * dynsym_entsize
    st_name = struct.unpack_from("<I", data, off)[0]
    st_value = struct.unpack_from("<I", data, off + 4)[0]
    st_size = struct.unpack_from("<I", data, off + 8)[0]
    st_info = data[off + 12]
    
    bind = st_info >> 4
    if bind == 1 and st_value != 0:
        try:
            name = data[dynstr_file_off + st_name:].split(b"\x00")[0].decode()
        except:
            name = "<err>"
        if count < 80:
            print(f"  0x{st_value:08x} sz=0x{st_size:04x} {name}")
        count += 1

print(f"\nTotal exported: {count}")
