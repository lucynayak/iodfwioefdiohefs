"""Find the gMcGame global pointer xref inside libminecraftpe.so.

Strategy:
  - We know MinecraftGame::getPrimaryClientInstance @ 0xb75764 reads [[this+0xa8]].
  - So callers of 0xb75764 must put MinecraftGame* into r0 first.
  - Scan all BL/BLX targets pointing at 0xb75764, then disasm a small window
    BEFORE each call site, looking for a PC-relative ldr that fetches a global
    address (typically `ldr r0, [pc, #imm]` followed by `ldr r0, [r0]`).
  - The literal pool at that PC+offset gives us the static VA of `gMcGame`.

If gMcGame is not directly used (e.g. MinecraftGame* lives in a per-instance
field), still print the call-site context so we can pick a different anchor.
"""
import struct
from pathlib import Path
from capstone import Cs, CS_ARCH_ARM, CS_MODE_THUMB

MCPE = Path(r"c:\Users\triggertrash\Desktop\horrible v2\lib\armeabi-v7a\libminecraftpe.so")
TARGET = 0xb75764  # MinecraftGame::getPrimaryClientInstance, Thumb

data = MCPE.read_bytes()
md = Cs(CS_ARCH_ARM, CS_MODE_THUMB)
md.detail = True

# --- locate executable text (PT_LOAD #1: 0..0x235a148) ---
TEXT_START = 0x0
TEXT_END   = 0x235a148

def thumb_bl_targets(start, end):
    """Yield (call_site_va, target_va) for every BL/BLX in window."""
    # Walk in 2-byte steps (Thumb instructions are 16 or 32 bits).
    # Use capstone but advance by ins.size; restart on errors every 2 bytes.
    pc = start
    while pc < end - 4:
        block = data[pc:pc+0x40]
        any_decoded = False
        for ins in md.disasm(block, pc):
            any_decoded = True
            if ins.mnemonic in ("bl", "blx"):
                try:
                    tgt = int(ins.op_str.strip("# "), 0)
                    yield ins.address, tgt, ins
                except ValueError:
                    pass
            pc = ins.address + ins.size
            if pc - start > 0x40:
                break
        if not any_decoded:
            pc += 2

# Faster: scan only call sites by pattern. BL encoding in Thumb is
# 0xF000-0xF7FF / 0xE800-0xEFFF for the second halfword; checking every
# offset is fine but slow. We'll instead use capstone in big chunks.

print(f"Scanning {TEXT_END-TEXT_START:#x} bytes of .text for callers of 0x{TARGET:x} ...")

CHUNK = 0x10000
hits = []
pc = TEXT_START
while pc < TEXT_END:
    end = min(pc + CHUNK, TEXT_END)
    block = data[pc:end]
    for ins in md.disasm(block, pc):
        if ins.mnemonic in ("bl", "blx"):
            try:
                tgt = int(ins.op_str.strip("# "), 0) & ~1
            except ValueError:
                continue
            if tgt == (TARGET & ~1):
                hits.append(ins.address)
    pc = end

print(f"Found {len(hits)} call sites to MinecraftGame::getPrimaryClientInstance.")
for h in hits[:30]:
    print(f"  call_site=0x{h:08x}")

# For each hit, disasm 0x20 bytes before it and show.
def disasm_window(va_call):
    win_start = max(TEXT_START, va_call - 0x20) & ~1
    print(f"\n--- caller context @ 0x{va_call:x} ---")
    block = data[win_start:va_call+8]
    for ins in md.disasm(block, win_start):
        marker = "  >>>" if ins.address == va_call else "     "
        print(f"{marker} 0x{ins.address:08x}: {ins.bytes.hex():<10} {ins.mnemonic:8s} {ins.op_str}")
        # Resolve PC-relative ldr literal
        if ins.mnemonic == "ldr" and "[pc" in ins.op_str:
            # capstone gives ins.operands; literal addr is in ins.operands[1].mem.disp
            try:
                op = ins.operands[1]
                # In Thumb, PC = (current_PC + 4) & ~3
                base = (ins.address + 4) & ~3
                lit_va = base + op.mem.disp
                lit = struct.unpack_from("<I", data, lit_va)[0]
                print(f"          -> literal @0x{lit_va:x} = 0x{lit:08x}")
            except Exception as e:
                print(f"          (literal resolve failed: {e})")

for h in hits[:8]:
    disasm_window(h)
