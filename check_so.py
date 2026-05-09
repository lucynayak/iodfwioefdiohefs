import struct

data = open(r'c:\Users\triggertrash\Desktop\horrible\lib\armeabi-v7a\libcallfunction.so','rb').read()

# Find .dynamic section in second LOAD (offset 0x1000)
print('Dynamic entries:')
off = 0x1000
strtab_off = None
symtab_off = None
hash_off = None
for i in range(7):
    tag = struct.unpack_from('<i', data, off + i*8)[0]
    val = struct.unpack_from('<I', data, off + i*8 + 4)[0]
    tags = {0:'NULL',4:'HASH',5:'STRTAB',6:'SYMTAB',10:'STRSZ',11:'SYMENT'}
    tname = tags.get(tag, hex(tag))
    print(f'  [{i}] tag={tname}({tag}) val=0x{val:X}')
    if tag == 5: strtab_off = val
    elif tag == 6: symtab_off = val
    elif tag == 4: hash_off = val
    if tag == 0: break

print(f'\nSTRTAB at 0x{strtab_off:X}')
print(f'SYMTAB at 0x{symtab_off:X}')
print(f'HASH at 0x{hash_off:X}')

# Dump dynsym
print('\nDynsym entries:')
for i in range(3):
    sym_off = symtab_off + i * 16
    if sym_off + 16 > len(data): break
    st_name = struct.unpack_from('<I', data, sym_off)[0]
    st_value = struct.unpack_from('<I', data, sym_off+4)[0]
    st_size = struct.unpack_from('<I', data, sym_off+8)[0]
    st_info = data[sym_off+12]
    st_other = data[sym_off+13]
    st_shndx = struct.unpack_from('<H', data, sym_off+14)[0]
    name_off = strtab_off + st_name
    end = data.index(b'\x00', name_off)
    name = data[name_off:end].decode('ascii','replace')
    print(f'  [{i}] name="{name}" value=0x{st_value:X} size={st_size} info=0x{st_info:X} shndx={st_shndx}')
    if st_value > 0:
        actual = st_value & ~1
        code = data[actual:actual+16]
        print(f'       Code: {code.hex()}')
        # Decode as Thumb
        for j in range(0, 16, 2):
            hw = struct.unpack_from('<H', code, j)[0]
            print(f'         +{j}: 0x{hw:04X}')

# Hash table
print(f'\nHash table at 0x{hash_off:X}:')
nbucket = struct.unpack_from('<I', data, hash_off)[0]
nchain = struct.unpack_from('<I', data, hash_off+4)[0]
print(f'  nbucket={nbucket} nchain={nchain}')
for i in range(nbucket):
    b = struct.unpack_from('<I', data, hash_off+8+i*4)[0]
    print(f'  bucket[{i}]={b}')
for i in range(nchain):
    c = struct.unpack_from('<I', data, hash_off+8+nbucket*4+i*4)[0]
    print(f'  chain[{i}]={c}')
