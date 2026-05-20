"""Dump the existing JNI helper thunks in liblauncher.so that already work:
  Block_getID            0x166d4  size 0x60
  Level_getAllPlayers    0x168d4  size 0xb4   <-- TEMPLATE for getAll
  LocalPlayer_getUniqueID 0x1466c size 0x30
  LocalPlayer_isInGame    0x152f4 size 0x10

Resolve every PC-relative literal — these will reveal:
  * GOT slots used (which libmcpe imports they call)
  * Global pointer holding ClientInstance / Level (the one we need!)
"""
import struct
from pathlib import Path
from capstone import Cs, CS_ARCH_ARM, CS_MODE_THUMB

LAU = Path(r"c:\Users\triggertrash\Desktop\horrible v2\lib\armeabi-v7a\liblauncher.so")
data = LAU.read_bytes()
md = Cs(CS_ARCH_ARM, CS_MODE_THUMB); md.detail = True

# Map vaddr->file offset. PT_LOAD #1: file[0..0x6bee0) vaddr[0..0x6bee0) R-X (1:1)
#                       PT_LOAD #2: file[0x6ccc8..0x7017c) vaddr[0x6dcc8..0x77955) RW-
def va2off(va):
    if va < 0x6bee0:
        return va
    if 0x6dcc8 <= va < 0x77955:
        return va - 0x6dcc8 + 0x6ccc8
    return None

def show(label, va, sz):
    print(f"\n========== {label} @ 0x{va:x} sz=0x{sz:x} ==========")
    off = va2off(va)
    if off is None:
        print("  <vaddr not in any PT_LOAD>"); return
    chunk = data[off:off+sz+8]
    for ins in md.disasm(chunk, va):
        if ins.address >= va+sz: break
        line = f"  0x{ins.address:08x}: {ins.bytes.hex():<10} {ins.mnemonic:8s} {ins.op_str}"
        # PC-relative literal resolution
        if ins.mnemonic == "ldr" and "[pc" in ins.op_str:
            try:
                op = ins.operands[1]
                base = (ins.address + 4) & ~3
                lit_va = base + op.mem.disp
                lit_off = va2off(lit_va)
                if lit_off is not None:
                    lit = struct.unpack_from("<I", data, lit_off)[0]
                    line += f"   ; lit@0x{lit_va:x} = 0x{lit:08x}"
            except Exception:
                pass
        # BL/BLX target
        if ins.mnemonic in ("bl","blx"):
            try:
                tgt = int(ins.op_str.strip("# "), 0)
                line += f"   ; -> 0x{tgt:x}"
            except: pass
        print(line)

show("Block_getID",             0x166d4, 0x60)
show("Level_getAllPlayers",     0x168d4, 0xb4)
show("LocalPlayer_getUniqueID", 0x1466c, 0x30)
show("LocalPlayer_isInGame",    0x152f4, 0x10)
