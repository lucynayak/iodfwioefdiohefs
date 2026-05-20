"""Dump first few PLT entries to understand format."""
from pathlib import Path
from capstone import Cs, CS_ARCH_ARM, CS_MODE_ARM

SO = Path(r"c:\Users\triggertrash\Desktop\horrible v2\lib\armeabi-v7a\liblauncher.so")
data = SO.read_bytes()
md = Cs(CS_ARCH_ARM, CS_MODE_ARM)

# .plt @ vaddr=0xf99c size=0x1094 — first 0x14 is header, then entries
PLT_OFF = 0xf99c
PLT_SIZE = 0x1094

print("=== PLT header (first 0x14) ===")
for ins in md.disasm(data[PLT_OFF:PLT_OFF+0x14], PLT_OFF):
    print(f"  0x{ins.address:08x}: {ins.bytes.hex():<10} {ins.mnemonic:8s} {ins.op_str}")

print("\n=== first 4 PLT entries (each 0x0c) ===")
for n in range(4):
    e = PLT_OFF + 0x14 + n*0xC
    print(f"-- entry #{n} @ 0x{e:x} --")
    for ins in md.disasm(data[e:e+12], e):
        print(f"  0x{ins.address:08x}: {ins.bytes.hex():<10} {ins.mnemonic:8s} {ins.op_str}")

# Also: GOT slot for getRegion is at 0x70ae0. Let's check what the PLT entry 
# computing this slot looks like.
# An ARM PLT entry typically:
#   add r12, pc, #high
#   add r12, r12, #mid
#   ldr pc, [r12, #low]!
# target = entry+8 + high + mid + low
# 0x70ae0 = entry+8 + delta -> delta = 0x70ae0 - (entry+8)
# We need entry such that delta is encodable.
# Just brute-force: for each 12-byte aligned entry, decode and compute target.
print("\n=== scan all PLT entries for GOT slot 0x70ae0 ===")
GOT = 0x70ae0
for n in range((PLT_SIZE-0x14)//0xC):
    e = PLT_OFF + 0x14 + n*0xC
    insns = list(md.disasm(data[e:e+12], e))
    if len(insns) != 3:
        continue
    try:
        i1, i2, i3 = insns
        # parse imms
        def imm(ins):
            s = ins.op_str
            if "#" not in s: return 0
            tok = s.split("#")[-1].rstrip("]!").rstrip("]").split(",")[0]
            return int(tok, 0)
        h = imm(i1); m = imm(i2); l = imm(i3)
        target = (i1.address + 8) + h + m + l
        if target == GOT:
            print(f"  PLT entry @ 0x{e:x} -> GOT 0x{GOT:x}  (h={h:x} m={m:x} l={l:x})")
            print(f"     {i1.mnemonic} {i1.op_str}")
            print(f"     {i2.mnemonic} {i2.op_str}")
            print(f"     {i3.mnemonic} {i3.op_str}")
            break
    except Exception:
        continue
