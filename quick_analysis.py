#!/usr/bin/env python3
import os
import struct

files = [
    r'C:\Users\triggertrash\Desktop\horrible\Minecraft PE 1.1.5_src\lib\armeabi-v7a\libminecraftpe.so',
    r'C:\Users\triggertrash\Desktop\horrible\lib\armeabi-v7a\libcallfunction.so',
    r'C:\Users\triggertrash\Desktop\horrible\lib\armeabi-v7a\liblauncher.so',
    r'C:\Users\triggertrash\Desktop\horrible\lib\armeabi-v7a\libfmod.so',
    r'C:\Users\triggertrash\Desktop\horrible\lib\armeabi-v7a\libminecraftpe.so',
    r'C:\Users\triggertrash\Desktop\horrible\lib\armeabi-v7a\libsubstrate.so',
]

print("=" * 80)
print("MINECRAFT PE NATIVE LIBRARY ANALYSIS")
print("=" * 80)

for fpath in files:
    if os.path.exists(fpath):
        fname = os.path.basename(fpath)
        fsize = os.path.getsize(fpath)
        print(f"\n{fname}:")
        print(f"  Size: {fsize:,} bytes ({fsize/(1024*1024):.3f} MB)")
        
        # Read first bytes to check if valid ELF
        with open(fpath, 'rb') as f:
            header = f.read(64)
            if header[:4] == b'\x7fELF':
                print(f"  ELF Valid: YES")
                ei_class = header[4]  # 1=32-bit, 2=64-bit
                print(f"  Architecture: {'32-bit' if ei_class == 1 else '64-bit' if ei_class == 2 else 'Unknown'}")
                
                # Extract some strings to check for issues
                with open(fpath, 'rb') as f2:
                    data = f2.read()
                    
                # Look for debug markers
                if b'debug' in data.lower() or b'DLOG' in data or b'TRACE' in data:
                    print(f"  ⚠️  Contains debug symbols/strings")
                
                # Look for hardcoded URLs
                if b'http' in data:
                    print(f"  🔴 Contains hardcoded URLs/IPs")
                
                # Look for dangerous functions
                dangerous = [b'strcpy', b'sprintf', b'gets', b'strcat']
                found_dangerous = [d.decode() for d in dangerous if d in data]
                if found_dangerous:
                    print(f"  ⚠️  Contains unsafe functions: {', '.join(found_dangerous)}")
                    
                # Look for dlopen (dynamic loading)
                if b'dlopen' in data or b'dlsym' in data:
                    print(f"  ℹ️  Uses dynamic library loading")
            else:
                print(f"  ELF Valid: NO")
    else:
        print(f"\n❌ File not found: {fpath}")

print("\n" + "=" * 80)
print("Analysis complete")
