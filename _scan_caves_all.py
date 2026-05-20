"""Aggressive cave scan in both libraries.

Goal: figure out where to host:
- thunks for getData / findAll / getAll (~100-300 bytes each)
- JNINativeMethod table (~36 bytes)
- C-string pool (~150 bytes)

We need RX caves for thunks. R caves OK for strings/table.
"""
import struct
from pathlib import Path

def parse_elf(path):
    data = path.read_bytes()
    e_shoff   = struct.unpack_from("<I", data, 0x20)[0]
    e_shentsz = struct.unpack_from("<H", data, 0x2E)[0]
    e_shnum   = struct.unpack_from("<H", data, 0x30)[0]
    e_shstrndx= struct.unpack_from("<H", data, 0x32)[0]
    sections = []
    for i in range(e_shnum):
        off = e_shoff + i*e_shentsz
        sections.append(struct.unpack_from("<IIIIIIIIII", data, off))
    shstr_off = sections[e_shstrndx][4]
    def secname(idx):
        n = sections[idx][0]
        e = data.index(b"\x00", shstr_off+n)
        return data[shstr_off+n:e].decode()

    # PT_LOAD segments
    e_phoff   = struct.unpack_from("<I", data, 0x1C)[0]
    e_phentsz = struct.unpack_from("<H", data, 0x2A)[0]
    e_phnum   = struct.unpack_from("<H", data, 0x2C)[0]
    loads = []
    for i in range(e_phnum):
        off = e_phoff + i*e_phentsz
        p_type, p_off, p_vaddr, p_paddr, p_filesz, p_memsz, p_flags, p_align = \
            struct.unpack_from("<IIIIIIII", data, off)
        if p_type == 1:
            loads.append((p_off, p_vaddr, p_filesz, p_memsz, p_flags))
    return data, sections, secname, loads

def in_load(loads, vaddr, need_x):
    for off, va, fs, ms, fl in loads:
        if va <= vaddr < va+ms:
            if not need_x:
                return True
            return bool(fl & 1)  # PF_X
    return False

def find_caves(data, start, size, foff_base, vaddr_base, min_len=24, pad_byte=0):
    """Find runs of pad_byte >= min_len."""
    caves = []
    in_run = False; run_start = 0
    # Clamp size to actual file bytes available
    avail = max(0, len(data) - foff_base)
    size = min(size, avail)
    for j in range(size):
        if data[foff_base+j] == pad_byte:
            if not in_run:
                in_run = True; run_start = j
        else:
            if in_run:
                rl = j - run_start
                if rl >= min_len:
                    caves.append((foff_base+run_start, vaddr_base+run_start, rl))
                in_run = False
    if in_run:
        rl = size - run_start
        if rl >= min_len:
            caves.append((foff_base+run_start, vaddr_base+run_start, rl))
    return caves

for path_str, label in [
    (r"c:\Users\triggertrash\Desktop\horrible v2\lib\armeabi-v7a\liblauncher.so", "liblauncher"),
    (r"c:\Users\triggertrash\Desktop\horrible v2\lib\armeabi-v7a\libminecraftpe.so", "libmcpe"),
]:
    print(f"\n############ {label} ############")
    data, sections, secname, loads = parse_elf(Path(path_str))
    print("PT_LOAD segments:")
    for off, va, fs, ms, fl in loads:
        x = "X" if fl & 1 else "-"
        w = "W" if fl & 2 else "-"
        r = "R" if fl & 4 else "-"
        print(f"  file[0x{off:x}..0x{off+fs:x}) -> vaddr[0x{va:x}..0x{va+ms:x}) [{r}{w}{x}]")

    # Find caves in all allocated sections (zero-padded)
    rx_caves_total = 0
    r_caves_total  = 0
    print("\nCaves (>=32 bytes) within RX-mapped regions:")
    for i, s in enumerate(sections):
        name = secname(i)
        flags = s[2]; addr = s[3]; foff = s[4]; size = s[5]
        if not (flags & 2): continue  # need SHF_ALLOC
        if size < 32: continue
        # Decide RX or R based on PT_LOAD flag
        is_rx = in_load(loads, addr, need_x=True)
        caves = find_caves(data, foff, size, foff, addr, min_len=32, pad_byte=0)
        if not caves: continue
        total = sum(c[2] for c in caves)
        biggest = max(c[2] for c in caves)
        marker = "RX" if is_rx else "R "
        print(f"  [{marker}] {name:>20s}: {len(caves)} caves, total={total}, biggest={biggest}")
        if is_rx: rx_caves_total += total
        else: r_caves_total += total
        # Print top 3
        for foff_c, va_c, rl in sorted(caves, key=lambda x:-x[2])[:3]:
            print(f"        @ va=0x{va_c:x} foff=0x{foff_c:x} len={rl}")
    print(f"  TOTAL: RX_caves={rx_caves_total} bytes, R_caves={r_caves_total} bytes")
