"""Inspect liblauncher.so .text region around existing JNI helper thunks
to find free space for new ones.

Layout we know:
  Block_getID            0x166d4  size 0x60
  Level_getAllPlayers    0x168d4  size 0xb4
  LocalPlayer_getUniqueID 0x1466c size 0x30
  LocalPlayer_isInGame    0x152f4 size 0x10

We disasm 0x14000..0x17000 fully and look for runs of NOP/UDF/zero between
function ends.
"""
import struct
from pathlib import Path
from capstone import Cs, CS_ARCH_ARM, CS_MODE_THUMB

LAU = Path(r"c:\Users\triggertrash\Desktop\horrible v2\lib\armeabi-v7a\liblauncher.so")
d = LAU.read_bytes()
md = Cs(CS_ARCH_ARM, CS_MODE_THUMB)

START = 0x14000
END   = 0x17000

# 1) Find all bytes that are 0x00 in this range, and group into runs
print(f"Zero-runs in [0x{START:x}..0x{END:x}):")
runs=[]; i=START
while i<END:
    if d[i]==0:
        j=i
        while j<END and d[j]==0: j+=1
        if j-i>=4: runs.append((i,j-i))
        i=j
    else:
        i+=1
for va,sz in runs:
    print(f"  0x{va:08x}  size={sz}")

# 2) Look for known NOP/UDF padding patterns between function-shaped blobs
# Thumb 'nop' = 0x00BF; ARM filler often 0xCCCC or 0xFEDE.
print("\n0x00BF (thumb nop) runs:")
i=START
while i<END-1:
    if d[i]==0xbf and d[i+1]==0x00:  # endian: bytes are 0x00 0xBF
        # check
        pass
    if d[i:i+2]==b'\x00\xbf':
        j=i
        while j<END-1 and d[j:j+2]==b'\x00\xbf': j+=2
        if j-i>=4:
            print(f"  0x{i:08x}  size={j-i}")
        i=j
    else:
        i+=2

# 3) Disasm the inter-helper gap (0x16734..0x168d4)
print("\n--- Disasm gap 0x16734..0x168d4 (between Block_getID and Level_getAllPlayers) ---")
gap_start = 0x16734
gap_end   = 0x168d4
chunk = d[gap_start:gap_end]
last = gap_start
for ins in md.disasm(chunk, gap_start):
    if ins.address < last: continue
    print(f"  0x{ins.address:08x}: {ins.bytes.hex():<10} {ins.mnemonic:8s} {ins.op_str}")
    last = ins.address + ins.size

# 4) Also dump 0x14600..0x14700 around LocalPlayer_getUniqueID neighbourhood
print("\n--- Disasm 0x14620..0x146d0 ---")
chunk = d[0x14620:0x146d0]
for ins in md.disasm(chunk, 0x14620):
    print(f"  0x{ins.address:08x}: {ins.bytes.hex():<10} {ins.mnemonic:8s} {ins.op_str}")
