"""
Scan libminecraftpe.so for float literals that look like distance caps:
9.0, 16.0, 25.0, 36.0, 49.0, 64.0 (= 3..8 squared)
3.0, 4.0, 5.0, 6.0, 7.0, 8.0 (= raw reach)
For each match, print address and disassembly of the nearest preceding code.

Then for each match, find PC-relative loads (ldr/vldr) that reference it.
"""
import struct, sys
from pathlib import Path

try:
    from capstone import Cs, CS_ARCH_ARM, CS_MODE_THUMB
except ImportError:
    print("pip install capstone", file=sys.stderr); sys.exit(1)

SO = Path(r"c:\Users\triggertrash\Desktop\horrible v2\Minecraft PE 1.1.5_src\lib\armeabi-v7a\libminecraftpe.so")
data = SO.read_bytes()

TARGETS = {
    # name : float value
    "3.0":   3.0,  "4.0":  4.0,  "5.0":  5.0,
    "6.0":   6.0,  "7.0":  7.0,
    "9.0":   9.0,  "16.0": 16.0, "25.0": 25.0,
    "36.0":  36.0, "49.0": 49.0,
}

# pack as little-endian float bytes
packed = {name: struct.pack("<f", v) for name, v in TARGETS.items()}

# scan for occurrences
hits = {name: [] for name in TARGETS}
for name, pat in packed.items():
    off = 0
    while True:
        i = data.find(pat, off)
        if i < 0: break
        # require 4-byte alignment (literal pool entries are aligned)
        if i % 4 == 0:
            hits[name].append(i)
        off = i + 1

# For each cap value, find PC-relative loads referencing it.
# Thumb vldr literal encoding: 1110 1101 U001 1111 Vd:Vd Vd:Vd imm8
# Easier: scan all instructions and let capstone resolve operand.
md = Cs(CS_ARCH_ARM, CS_MODE_THUMB)
md.detail = True

# Build a lookup: literal address -> name
lit2name = {}
for name, addrs in hits.items():
    for a in addrs:
        lit2name[a] = name

print(f"Loaded {len(data):,} bytes. Looking for PC-relative loads of cap-like literals...")

# Disassembling 38MB of Thumb code is huge. Instead: find all candidate vldr.32 sN, [pc, #imm]
# vldr instr is 32-bit: encoding 0xED9F xAxx (where x bits include Vd and imm)
# Pattern (little-endian): 9f ed XX XA  where A == 0,1,2,3 (vldr literal)
# This catches many false positives; we filter by resolving target address.

results = []
for i in range(0, len(data) - 4, 2):
    w = data[i] | (data[i+1] << 8)
    # vldr.32 sN, [pc, #+/-imm8*4]   -- T2 encoding: 1110 1101 U_D 01 1111 Vd 1010 imm8
    if (w & 0xFF7F) == 0xED1F:
        # 32-bit Thumb: low half = w, high half = next 2 bytes
        w2 = data[i+2] | (data[i+3] << 8)
        if (w2 & 0x0F00) != 0x0A00:  # not single-precision
            continue
        U = (w >> 7) & 1
        imm8 = w2 & 0xFF
        offset = imm8 * 4
        pc = (i + 4) & ~3
        target = pc + offset if U else pc - offset
        if target in lit2name:
            results.append((i, target, lit2name[target]))
    # ldr literal (T1: 01001 Rt imm8) -> 16-bit Thumb
    elif (w & 0xF800) == 0x4800:
        rt = (w >> 8) & 7
        imm8 = w & 0xFF
        pc = (i + 4) & ~3
        target = pc + imm8 * 4
        if target in lit2name:
            results.append((i, target, lit2name[target]))

print(f"\nTotal cap-like literal entries in pool: {sum(len(v) for v in hits.values())}")
for name in sorted(TARGETS, key=lambda k: TARGETS[k]):
    print(f"  {name:>5}: {len(hits[name])} occurrences in pool")

print(f"\nPC-relative loads referencing these caps: {len(results)}")
# Group by name
by_name = {}
for ins_off, target, name in results:
    by_name.setdefault(name, []).append((ins_off, target))

for name in sorted(by_name, key=lambda k: TARGETS[k]):
    arr = by_name[name]
    print(f"\n=== {name} ({TARGETS[name]}) -- {len(arr)} loaders ===")
    for ins_off, target in arr[:200]:
        # disassemble a 12-byte window starting at ins_off
        window = data[ins_off:ins_off+12]
        insns = list(md.disasm(window, ins_off))
        if insns:
            ins = insns[0]
            print(f"  0x{ins_off:08x}: {ins.mnemonic:8s} {ins.op_str}   -> lit @ 0x{target:08x}")
        else:
            print(f"  0x{ins_off:08x}: <bad>                          -> lit @ 0x{target:08x}")
