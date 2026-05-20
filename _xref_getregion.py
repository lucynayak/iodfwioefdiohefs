"""Find PLT entry for Entity::getRegion() and all callers in liblauncher.so."""
import struct
from pathlib import Path
from capstone import Cs, CS_ARCH_ARM, CS_MODE_THUMB, CS_MODE_ARM

SO = Path(r"c:\Users\triggertrash\Desktop\horrible v2\lib\armeabi-v7a\liblauncher.so")
data = SO.read_bytes()

assert data[:4] == b"\x7fELF"
e_shoff   = struct.unpack_from("<I", data, 0x20)[0]
e_shentsz = struct.unpack_from("<H", data, 0x2E)[0]
e_shnum   = struct.unpack_from("<H", data, 0x30)[0]
e_shstrndx= struct.unpack_from("<H", data, 0x32)[0]

sections = []
for i in range(e_shnum):
    off = e_shoff + i * e_shentsz
    sections.append(struct.unpack_from("<IIIIIIIIII", data, off))

shstr_off = sections[e_shstrndx][4]
def secname(idx):
    n = sections[idx][0]
    e = data.index(b"\x00", shstr_off+n)
    return data[shstr_off+n:e].decode()

def findsec(name):
    for i,s in enumerate(sections):
        if secname(i) == name:
            return s
    return None

dynsym = findsec(".dynsym")
dynstr = findsec(".dynstr")
def get_str(o):
    e = data.index(b"\x00", o)
    return data[o:e].decode()

# index Entity::getRegion in dynsym (it's an UNDEF import)
GETREG_IDX = None
for i in range(dynsym[5] // dynsym[9]):
    off = dynsym[4] + i * dynsym[9]
    name_off, st_value, st_size, st_info, st_other, st_shndx = \
        struct.unpack_from("<IIIBBH", data, off)
    nm = get_str(dynstr[4] + name_off)
    if nm == "_ZNK6Entity9getRegionEv":
        GETREG_IDX = i
        print(f"Entity::getRegion sym idx={i} value=0x{st_value:x} shndx={st_shndx}")
        break
if GETREG_IDX is None:
    print("Not found — listing all UNDEF symbols matching 'Region':")
    for i in range(dynsym[5] // dynsym[9]):
        off = dynsym[4] + i * dynsym[9]
        name_off, st_value, st_size, st_info, st_other, st_shndx = \
            struct.unpack_from("<IIIBBH", data, off)
        nm = get_str(dynstr[4] + name_off)
        if "Region" in nm or "getRegion" in nm:
            print(f"  idx={i:>4} shndx={st_shndx:>4} {nm}")

# search relocs
relplt = findsec(".rel.plt")
if relplt:
    print(f".rel.plt @ off=0x{relplt[4]:x} size=0x{relplt[5]:x}")
    for i in range(relplt[5] // 8):
        off, info = struct.unpack_from("<II", data, relplt[4] + i*8)
        sym = info >> 8
        rtype = info & 0xff
        if sym == GETREG_IDX:
            print(f"  RELOC @ off=0x{off:x} GOT slot for getRegion")
            GOT_SLOT = off
            break

# Find PLT entry that uses GOT_SLOT.
# Thumb PLT entries typically look like: ldr.w pc, [pc, #imm]; .word imm to GOT.
# Easier: scan code for ldr.w pc, [pc, #...] sequences pointing at GOT_SLOT,
# OR scan for "ldr r12, [pc, #x]; add r12, pc; ldr.w pc, [r12]" stub pattern.
# Generic approach: find any 32-bit data word == GOT_SLOT in .plt section,
# then PC of preceding ldr... Actually liblauncher.so uses ARM PLT,
# pattern: PLT entry @ E (8/12 bytes Thumb) does:
#   add r12, pc, #...
#   add r12, r12, #...
#   ldr.w pc, [r12, #imm]!

# Simpler: for each .text instruction "blx <imm>" check if target is
# in .plt range and that PLT loads GOT_SLOT.
plt = findsec(".plt")
if plt:
    print(f".plt @ vaddr=0x{plt[3]:x} foff=0x{plt[4]:x} size=0x{plt[5]:x}")

# Disassemble PLT, look for a sequence loading GOT_SLOT
md_arm = Cs(CS_ARCH_ARM, CS_MODE_ARM)
plt_start = plt[4]
plt_end = plt_start + plt[5]
plt_va_start = plt[3]
plt_va_end = plt_va_start + plt[5]
# Find PLT entry whose constant matches GOT_SLOT
plt_entry_for_getreg = None
# Heuristic: walk in 12-byte ARM PLT entries
for entry_off in range(plt_start + 0x14, plt_end, 0xC):
    # ARM PLT entry: 3 instructions
    insns = list(md_arm.disasm(data[entry_off:entry_off+12], plt_va_start + (entry_off-plt_start)))
    if len(insns) < 3: 
        continue
    # last instruction: ldr pc, [r12, #imm]!
    last = insns[2]
    if "ldr" in last.mnemonic and "pc" in last.op_str and "r12" in last.op_str:
        # compute target GOT slot. add r12, pc, #imm; add r12, r12, #imm; ldr pc, [r12, #imm]!
        try:
            i1 = insns[0]; i2 = insns[1]; i3 = insns[2]
            imm1 = int(i1.op_str.split("#")[-1], 0)
            imm2 = int(i2.op_str.split("#")[-1], 0)
            imm3 = int(i3.op_str.split("#")[-1].rstrip("]!"), 0) if "#" in i3.op_str else 0
            target = (i1.address + 8 + imm1 + imm2 + imm3)
            if target == GOT_SLOT:
                plt_entry_for_getreg = plt_va_start + (entry_off - plt_start)
                print(f"PLT entry for getRegion: 0x{plt_entry_for_getreg:x}")
                break
        except Exception as e:
            pass

if plt_entry_for_getreg:
    # Now find xrefs (blx targets) to this PLT entry from .text
    text = findsec(".text")
    print(f".text @ vaddr=0x{text[3]:x} foff=0x{text[4]:x} size=0x{text[5]:x}")
    md = Cs(CS_ARCH_ARM, CS_MODE_THUMB)
    md.detail = False
    callers = []
    text_data = data[text[4]:text[4]+text[5]]
    for ins in md.disasm(text_data, text[3]):
        if ins.mnemonic in ("blx", "bl") and ins.op_str.startswith("#"):
            try:
                tgt = int(ins.op_str[1:], 0)
                if tgt == plt_entry_for_getreg:
                    callers.append(ins.address)
            except:
                pass
    print(f"Found {len(callers)} callers of Entity::getRegion:")
    for c in callers:
        print(f"  0x{c:08x}")
