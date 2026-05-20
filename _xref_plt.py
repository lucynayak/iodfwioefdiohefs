"""Find all callers of PLT entry 0xfaac (Entity::getRegion) in liblauncher.so."""
import struct
from pathlib import Path
from capstone import Cs, CS_ARCH_ARM, CS_MODE_THUMB

SO = Path(r"c:\Users\triggertrash\Desktop\horrible v2\lib\armeabi-v7a\liblauncher.so")
data = SO.read_bytes()

# Section walk
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

text = findsec(".text")
text_off  = text[4]
text_size = text[5]
text_va   = text[3]

PLT_GETREG = 0xfad0  # corrected: was 0xfaac (which is memcpy/string lib)

md = Cs(CS_ARCH_ARM, CS_MODE_THUMB)
text_data = data[text_off:text_off+text_size]

# Brute-force: try disasm at every 2-byte offset (recovers calls
# that linear sweep misses due to alignment/data interleaving).
callers = set()
for start in range(0, len(text_data) - 4, 2):
    insns = list(md.disasm(text_data[start:start+8], text_va + start, count=1))
    if not insns:
        continue
    ins = insns[0]
    if ins.mnemonic in ("bl", "blx") and ins.op_str.startswith("#"):
        try:
            tgt = int(ins.op_str[1:], 0)
            if tgt == PLT_GETREG:
                callers.add(ins.address)
        except Exception:
            pass
callers = sorted(callers)

print(f"Found {len(callers)} callers of Entity::getRegion (PLT 0xfaac):")
for c in callers:
    print(f"  caller @ 0x{c:08x}")

# For each caller, dump 0x40 bytes context (8 before, 0x38 after)
print("\n=== context dumps ===")
for c in callers:
    start = max(text_va, c - 0x10)
    end = c + 0x40
    print(f"\n-- caller 0x{c:08x} --")
    for ins in md.disasm(text_data[start - text_va: end - text_va], start):
        marker = " <-- BL getRegion" if ins.address == c else ""
        print(f"  0x{ins.address:08x}: {ins.bytes.hex():<10} {ins.mnemonic:8s} {ins.op_str}{marker}")
