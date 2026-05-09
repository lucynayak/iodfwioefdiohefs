import struct
path = r'c:\Users\triggertrash\Desktop\horrible\Minecraft PE 1.1.5_src\lib\armeabi-v7a\libminecraftpe.so'
data = bytearray(open(path, 'rb').read())
off = 0xE7DAB0
orig = struct.unpack_from('<H', data, off)[0]
print(f'bobHurt @ 0x{off:X}: 0x{orig:04X}')
if orig == 0xB570:
    struct.pack_into('<H', data, off, 0x4770)
    open(path, 'wb').write(bytes(data))
    verify = struct.unpack_from('<H', data, off)[0]
    print(f'Patched to 0x{verify:04X} (BX LR) - NoHurtCam ON')
elif orig == 0x4770:
    print('Already patched (BX LR)')
else:
    print(f'Unexpected bytes: 0x{orig:04X}')
