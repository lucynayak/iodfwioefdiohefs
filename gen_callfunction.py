"""
Generate a proper ARM ELF shared library (libcallfunction.so)
Implements: Java_dev_virus_variable_launcher_api_NativeMemory_callFunction(JNIEnv*, jclass, jint addr, jlong thisPtr, jboolean arg)

The function calls: addr(thisPtr, arg) using ARM Thumb ABI
"""
import struct, os

JNI_FUNC = b"Java_dev_virus_variable_launcher_api_NativeMemory_callFunction"
SONAME = b"libcallfunction.so"

PAGE = 0x1000  # 4KB alignment

def elf_hash(name):
    h = 0
    for c in name:
        h = ((h << 4) + c) & 0xFFFFFFFF
        g = h & 0xF0000000
        if g:
            h ^= g >> 24
        h &= ~g & 0xFFFFFFFF
    return h

# ============================================================
# Build string tables
# ============================================================
# .dynstr: \0 + JNI_FUNC + \0 + SONAME + \0
dynstr = b'\x00' + JNI_FUNC + b'\x00' + SONAME + b'\x00'
jni_name_idx = 1
soname_idx = 1 + len(JNI_FUNC) + 1

# .shstrtab: section name strings
shstrtab_names = [b'\x00', b'.text\x00', b'.dynstr\x00', b'.dynsym\x00', b'.hash\x00', b'.dynamic\x00', b'.shstrtab\x00']
shstrtab = b''.join(shstrtab_names)
# Name offsets
sh_idx = {}
pos = 0
for n in shstrtab_names:
    name = n.rstrip(b'\x00').decode()
    if name:
        sh_idx[name] = pos
    pos += len(n)

# ============================================================
# Layout plan  (single LOAD segment, page-aligned)
# ============================================================
ELF_HDR_SIZE = 52
PHDR_SIZE = 32
NUM_PHDRS = 4  # PT_LOAD, PT_DYNAMIC, GNU_STACK, GNU_RELRO

# Offsets after ELF header + program headers
data_start = ELF_HDR_SIZE + PHDR_SIZE * NUM_PHDRS  # 0x34 + 0x60 = 0x94

# Align data sections
hash_off = (data_start + 3) & ~3
# Hash: 2 ints (nbucket, nchain) + 1 bucket + 2 chains = 5 ints = 20 bytes
hash_size = 20

dynsym_off = hash_off + hash_size
dynsym_off = (dynsym_off + 3) & ~3
# 2 entries (null + func) * 16 bytes = 32
dynsym_size = 32

dynstr_off = dynsym_off + dynsym_size
dynstr_size = len(dynstr)

# .text - align to 4
text_off = (dynstr_off + dynstr_size + 3) & ~3
text_size = 16  # 8 Thumb instructions

# .dynamic - align to 4
dynamic_off = (text_off + text_size + 3) & ~3
# 8 entries: HASH, STRTAB, SYMTAB, STRSZ, SYMENT, SONAME, FLAGS_1(BIND_NOW), NULL = 8 * 8 = 64
dynamic_size = 64

# .shstrtab
shstrtab_off = dynamic_off + dynamic_size
shstrtab_size = len(shstrtab)

# Section headers (6 sections + null = 7)
NUM_SHDRS = 7
shdr_off = (shstrtab_off + shstrtab_size + 3) & ~3
shdr_size = 40 * NUM_SHDRS

total_file_size = shdr_off + shdr_size
# Pad to page size
load_memsz = (total_file_size + PAGE - 1) & ~(PAGE - 1)

print(f"Layout:")
print(f"  hash:     0x{hash_off:04X} ({hash_size})")
print(f"  dynsym:   0x{dynsym_off:04X} ({dynsym_size})")
print(f"  dynstr:   0x{dynstr_off:04X} ({dynstr_size})")
print(f"  text:     0x{text_off:04X} ({text_size})")
print(f"  dynamic:  0x{dynamic_off:04X} ({dynamic_size})")
print(f"  shstrtab: 0x{shstrtab_off:04X} ({shstrtab_size})")
print(f"  shdrs:    0x{shdr_off:04X} ({shdr_size})")
print(f"  total:    {total_file_size} bytes")

data = bytearray(total_file_size)

# ============================================================
# ELF Header
# ============================================================
data[0:4] = b'\x7fELF'
data[4] = 1   # ELFCLASS32
data[5] = 1   # ELFDATA2LSB
data[6] = 1   # EV_CURRENT
data[7] = 0   # ELFOSABI_NONE

struct.pack_into('<HHIIIIIHHHHHH', data, 0x10,
    3,              # e_type: ET_DYN
    40,             # e_machine: EM_ARM
    1,              # e_version
    text_off | 1,   # e_entry (Thumb)
    ELF_HDR_SIZE,   # e_phoff
    shdr_off,       # e_shoff
    0x05000000,     # e_flags: EABI5
    ELF_HDR_SIZE,   # e_ehsize
    PHDR_SIZE,      # e_phentsize
    NUM_PHDRS,      # e_phnum
    40,             # e_shentsize
    NUM_SHDRS,      # e_shnum
    6,              # e_shstrndx (index of .shstrtab section)
)

# ============================================================
# Program Headers
# ============================================================
ph_off = ELF_HDR_SIZE

# PT_LOAD: entire file, R+X
struct.pack_into('<IIIIIIII', data, ph_off,
    1,                 # p_type: PT_LOAD
    0,                 # p_offset
    0,                 # p_vaddr
    0,                 # p_paddr
    total_file_size,   # p_filesz
    load_memsz,        # p_memsz
    5,                 # p_flags: PF_R | PF_X
    PAGE,              # p_align
)

# PT_DYNAMIC
struct.pack_into('<IIIIIIII', data, ph_off + PHDR_SIZE,
    2,              # p_type: PT_DYNAMIC
    dynamic_off,    # p_offset
    dynamic_off,    # p_vaddr
    dynamic_off,    # p_paddr
    dynamic_size,   # p_filesz
    dynamic_size,   # p_memsz
    6,              # p_flags: PF_R | PF_W
    4,              # p_align
)

# PT_GNU_STACK (non-executable stack)
struct.pack_into('<IIIIIIII', data, ph_off + PHDR_SIZE * 2,
    0x6474e551,     # p_type: PT_GNU_STACK
    0, 0, 0, 0, 0,
    6,              # p_flags: PF_R | PF_W (no exec)
    0,              # p_align
)

# PT_GNU_RELRO (read-only after relocation — covers .dynamic and .got)
struct.pack_into('<IIIIIIII', data, ph_off + PHDR_SIZE * 3,
    0x6474e552,     # p_type: PT_GNU_RELRO
    dynamic_off,    # p_offset
    dynamic_off,    # p_vaddr
    dynamic_off,    # p_paddr
    dynamic_size,   # p_filesz
    dynamic_size,   # p_memsz
    4,              # p_flags: PF_R
    1,              # p_align
)

# ============================================================
# .hash (SYSV ELF hash)
# ============================================================
h = elf_hash(JNI_FUNC)
nbucket = 1
nchain = 2  # null sym + our sym
struct.pack_into('<II', data, hash_off, nbucket, nchain)
# bucket[0] = 1 (index of our symbol)
struct.pack_into('<I', data, hash_off + 8, 1)
# chain[0] = 0 (null sym, no next)
struct.pack_into('<I', data, hash_off + 12, 0)
# chain[1] = 0 (our sym, no next)
struct.pack_into('<I', data, hash_off + 16, 0)

# ============================================================
# .dynsym
# ============================================================
# Entry 0: STN_UNDEF (all zeros, already done)

# Entry 1: Our JNI function
struct.pack_into('<IIIBBH', data, dynsym_off + 16,
    jni_name_idx,       # st_name
    text_off | 1,       # st_value (Thumb address)
    text_size,          # st_size
    (1 << 4) | 2,       # st_info: STB_GLOBAL | STT_FUNC
    0,                   # st_other: STV_DEFAULT
    1,                   # st_shndx: section 1 (.text)
)

# ============================================================
# .dynstr
# ============================================================
data[dynstr_off:dynstr_off + dynstr_size] = dynstr

# ============================================================
# .text - ARM Thumb code
# ============================================================
# JNI signature: callFunction(JNIEnv* env, jclass clazz, jint funcAddr, jlong thisPtr, jboolean arg)
# ARM32 AAPCS:
#   R0 = env, R1 = clazz, R2 = funcAddr
#   R3 = padding (jlong needs 8-byte alignment)
#   [SP+0] = thisPtr_lo, [SP+4] = thisPtr_hi
#   [SP+8] = arg
#
# After PUSH {R4, LR} (8 bytes on stack):
#   [SP+8]  = thisPtr_lo
#   [SP+12] = thisPtr_hi
#   [SP+16] = arg

thumb_code = struct.pack('<HHHHHHHH',
    0xB510,  # PUSH  {R4, LR}
    0x4614,  # MOV   R4, R2          ; R4 = funcAddr
    0x9802,  # LDR   R0, [SP, #8]    ; R0 = thisPtr (Options*)
    0x9904,  # LDR   R1, [SP, #16]   ; R1 = arg (InputMode enum)
    0x4620,  # MOV   R0, R4          ;   wait, wrong...
    0x0000,
    0x0000,
    0xBD10,  # POP   {R4, PC}
)

# Actually let me redo - need to call funcAddr(thisPtr, arg)
# R0 = this (Options*), R1 = arg (InputMode)
# Use BLX to call function at R4
thumb_code = struct.pack('<HHHHHHHH',
    0xB510,  # PUSH  {R4, LR}       ; save R4 and return addr
    0x4614,  # MOV   R4, R2          ; R4 = funcAddr (from R2)
    0x9802,  # LDR   R0, [SP, #8]    ; R0 = thisPtr_lo (Options*)
    0x9904,  # LDR   R1, [SP, #16]   ; R1 = arg (InputMode)
    0x47A0,  # BLX   R4              ; call funcAddr(thisPtr, arg)
    0xBD10,  # POP   {R4, PC}        ; return
    0xBF00,  # NOP                   ; padding
    0xBF00,  # NOP                   ; padding
)

data[text_off:text_off + text_size] = thumb_code

# ============================================================
# .dynamic
# ============================================================
dyn_entries = [
    (4, hash_off),        # DT_HASH
    (5, dynstr_off),      # DT_STRTAB
    (6, dynsym_off),      # DT_SYMTAB
    (10, dynstr_size),    # DT_STRSZ
    (11, 16),             # DT_SYMENT
    (14, soname_idx),     # DT_SONAME
    (0x6ffffffb, 1),      # DT_FLAGS_1: DF_1_NOW (Full RELRO / BIND_NOW)
    (0, 0),               # DT_NULL
]
for i, (tag, val) in enumerate(dyn_entries):
    struct.pack_into('<iI', data, dynamic_off + i * 8, tag, val)

# ============================================================
# .shstrtab
# ============================================================
data[shstrtab_off:shstrtab_off + shstrtab_size] = shstrtab

# ============================================================
# Section Headers
# ============================================================
def write_shdr(idx, name, sh_type, flags, addr, offset, size, link=0, info=0, addralign=1, entsize=0):
    off = shdr_off + idx * 40
    struct.pack_into('<IIIIIIIIII', data, off,
        name, sh_type, flags, addr, offset, size, link, info, addralign, entsize)

# SHT types
SHT_NULL = 0
SHT_PROGBITS = 1
SHT_SYMTAB = 2  # not used
SHT_STRTAB = 3
SHT_HASH = 5
SHT_DYNAMIC = 6
SHT_DYNSYM = 11

# SHF flags
SHF_WRITE = 1
SHF_ALLOC = 2
SHF_EXECINSTR = 4

# Section 0: NULL (already all zeros)

# Section 1: .text
write_shdr(1, sh_idx['.text'], SHT_PROGBITS, SHF_ALLOC | SHF_EXECINSTR,
           text_off, text_off, text_size, addralign=4)

# Section 2: .dynstr
write_shdr(2, sh_idx['.dynstr'], SHT_STRTAB, SHF_ALLOC,
           dynstr_off, dynstr_off, dynstr_size, addralign=1)

# Section 3: .dynsym  (link=2 is .dynstr index, info=1 is first non-local sym)
write_shdr(3, sh_idx['.dynsym'], SHT_DYNSYM, SHF_ALLOC,
           dynsym_off, dynsym_off, dynsym_size, link=2, info=1, addralign=4, entsize=16)

# Section 4: .hash (link=3 is .dynsym index)
write_shdr(4, sh_idx['.hash'], SHT_HASH, SHF_ALLOC,
           hash_off, hash_off, hash_size, link=3, addralign=4, entsize=4)

# Section 5: .dynamic (link=2 is .dynstr index)
write_shdr(5, sh_idx['.dynamic'], SHT_DYNAMIC, SHF_WRITE | SHF_ALLOC,
           dynamic_off, dynamic_off, dynamic_size, link=2, addralign=4, entsize=8)

# Section 6: .shstrtab
write_shdr(6, sh_idx['.shstrtab'], SHT_STRTAB, 0,
           shstrtab_off, shstrtab_off, shstrtab_size, addralign=1)

# ============================================================
# Write output
# ============================================================
out_path = r'c:\Users\triggertrash\Desktop\horrible\lib\armeabi-v7a\libcallfunction.so'
with open(out_path, 'wb') as f:
    f.write(bytes(data))

print(f"\nWritten {len(data)} bytes to {out_path}")
print(f"JNI symbol hash: 0x{h:08X}")
print(f"Symbol name: {JNI_FUNC.decode()}")

# Verify
print("\nVerification:")
print(f"  ELF magic: {data[0:4]}")
print(f"  Dynsym[1] value: 0x{struct.unpack_from('<I', data, dynsym_off+16+4)[0]:X}")
print(f"  Text at 0x{text_off:X}: {data[text_off:text_off+16].hex()}")
# Decode thumb
for i in range(0, 16, 2):
    hw = struct.unpack_from('<H', data, text_off + i)[0]
    print(f"    +{i}: 0x{hw:04X}")
