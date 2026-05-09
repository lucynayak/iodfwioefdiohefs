#!/usr/bin/env python3
"""
Horrible Client — Native Library Analyzer
Полный анализ .so файлов: ELF-парсинг, секции, символы, строки, уязвимости.
Запуск: python analyze_so.py
Результат: analysis_results.txt + вывод в консоль
"""
import os, struct, re, hashlib, sys
from collections import defaultdict

BASE = os.path.dirname(os.path.abspath(__file__))

# === Two APKs with their .so directories ===
LAUNCHER_LIB = os.path.join(BASE, "lib", "armeabi-v7a")
MC_LIB = os.path.join(BASE, "Minecraft PE 1.1.5_src", "lib", "armeabi-v7a")

UNSAFE_IMPORTS = {
    b'gets':    'CRITICAL: unbounded stdin read → buffer overflow',
    b'sprintf': 'HIGH: format string without bounds → overflow',
    b'vsprintf':'HIGH: va_list format without bounds',
    b'strcpy':  'HIGH: unbounded string copy',
    b'strcat':  'HIGH: unbounded string concat',
    b'scanf':   'MEDIUM: unbounded input parsing',
    b'system':  'CRITICAL: shell command injection',
    b'popen':   'HIGH: shell command injection',
}

INTERESTING_PATTERNS = [
    (re.compile(rb'https?://[^\x00\s"\'<>]{4,200}'), 'URL'),
    (re.compile(rb'\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\b'), 'IP'),
    (re.compile(rb'/home/\S+|/Users/\S+|C:\\\\Users\\\\\S+'), 'BUILD_PATH'),
    (re.compile(rb'(?:api[_-]?key|secret|password|token)\s*[:=]\s*\S+', re.I), 'CREDENTIAL'),
]

output_lines = []

def log(msg=""):
    print(msg)
    output_lines.append(msg)

def sha256_file(path):
    h = hashlib.sha256()
    with open(path, 'rb') as f:
        while True:
            chunk = f.read(1 << 20)
            if not chunk: break
            h.update(chunk)
    return h.hexdigest()

def extract_strings(data, min_len=5):
    """Fast string extraction from binary."""
    result = []
    cur = []
    for b in data:
        if 0x20 <= b <= 0x7e:
            cur.append(b)
        else:
            if len(cur) >= min_len:
                result.append(bytes(cur).decode('ascii', errors='replace'))
            cur = []
    if len(cur) >= min_len:
        result.append(bytes(cur).decode('ascii', errors='replace'))
    return result

def parse_elf32_sections(data):
    """Parse ELF32 section headers → list of (name_str, type, flags, offset, size)."""
    if len(data) < 52 or data[:4] != b'\x7fELF' or data[4] != 1:
        return []
    e_shoff = struct.unpack_from('<I', data, 32)[0]
    e_shentsize = struct.unpack_from('<H', data, 46)[0]
    e_shnum = struct.unpack_from('<H', data, 48)[0]
    e_shstrndx = struct.unpack_from('<H', data, 50)[0]
    if e_shoff == 0 or e_shnum == 0 or e_shentsize < 40:
        return []
    if e_shoff + e_shnum * e_shentsize > len(data):
        return []

    # Read shstrtab
    shstr_off_entry = e_shoff + e_shstrndx * e_shentsize
    if shstr_off_entry + 40 > len(data):
        return []
    shstr_offset = struct.unpack_from('<I', data, shstr_off_entry + 16)[0]
    shstr_size = struct.unpack_from('<I', data, shstr_off_entry + 20)[0]
    if shstr_offset + shstr_size > len(data):
        return []
    shstrtab = data[shstr_offset:shstr_offset + shstr_size]

    sections = []
    for i in range(e_shnum):
        off = e_shoff + i * e_shentsize
        if off + 40 > len(data):
            break
        sh_name_idx = struct.unpack_from('<I', data, off)[0]
        sh_type = struct.unpack_from('<I', data, off + 4)[0]
        sh_flags = struct.unpack_from('<I', data, off + 8)[0]
        sh_offset = struct.unpack_from('<I', data, off + 16)[0]
        sh_size = struct.unpack_from('<I', data, off + 20)[0]
        # Get name from shstrtab
        name = ""
        if sh_name_idx < len(shstrtab):
            end = shstrtab.index(b'\x00', sh_name_idx) if b'\x00' in shstrtab[sh_name_idx:] else len(shstrtab)
            name = shstrtab[sh_name_idx:end].decode('ascii', errors='replace')
        sections.append((name, sh_type, sh_flags, sh_offset, sh_size))
    return sections

def parse_elf32_dynamic(data):
    """Parse PT_DYNAMIC entries from program headers."""
    if len(data) < 52 or data[:4] != b'\x7fELF':
        return []
    e_phoff = struct.unpack_from('<I', data, 28)[0]
    e_phentsize = struct.unpack_from('<H', data, 42)[0]
    e_phnum = struct.unpack_from('<H', data, 44)[0]
    
    dyn_offset = dyn_size = 0
    for i in range(e_phnum):
        poff = e_phoff + i * e_phentsize
        if poff + 32 > len(data): break
        p_type = struct.unpack_from('<I', data, poff)[0]
        if p_type == 2:  # PT_DYNAMIC
            dyn_offset = struct.unpack_from('<I', data, poff + 4)[0]
            dyn_size = struct.unpack_from('<I', data, poff + 16)[0]
            break
    if dyn_offset == 0:
        return []
    
    entries = []
    DT_NAMES = {
        0: 'NULL', 1: 'NEEDED', 2: 'PLTRELSZ', 3: 'PLTGOT', 4: 'HASH',
        5: 'STRTAB', 6: 'SYMTAB', 7: 'RELA', 10: 'STRSZ', 11: 'SYMENT',
        14: 'SONAME', 15: 'RPATH', 17: 'REL', 20: 'PLTREL', 23: 'JMPREL',
        0x6ffffffe: 'VERNEED', 0x6fffffff: 'VERNEEDNUM',
        0x6ffffff0: 'VERSYM', 0x6ffffffa: 'RELCOUNT',
    }
    pos = dyn_offset
    while pos + 8 <= len(data) and pos < dyn_offset + dyn_size:
        d_tag = struct.unpack_from('<i', data, pos)[0]
        d_val = struct.unpack_from('<I', data, pos + 4)[0]
        entries.append((d_tag, d_val, DT_NAMES.get(d_tag, f'0x{d_tag & 0xffffffff:X}')))
        if d_tag == 0:
            break
        pos += 8
    return entries

def get_needed_libs(data, dyn_entries):
    """Extract DT_NEEDED library names."""
    strtab_off = 0
    for tag, val, _ in dyn_entries:
        if tag == 5:  # DT_STRTAB
            strtab_off = val
            break
    needed = []
    for tag, val, _ in dyn_entries:
        if tag == 1:  # DT_NEEDED
            off = strtab_off + val
            if off < len(data):
                end = data.index(b'\x00', off) if b'\x00' in data[off:off+256] else off+256
                needed.append(data[off:end].decode('ascii', errors='replace'))
    return needed

def parse_dynsym_names(data, dyn_entries):
    """Extract exported/imported symbol names from .dynsym."""
    strtab_off = symtab_off = 0
    hash_nchain = 0
    for tag, val, _ in dyn_entries:
        if tag == 5: strtab_off = val
        elif tag == 6: symtab_off = val
        elif tag == 4:  # DT_HASH
            if val + 8 <= len(data):
                hash_nchain = struct.unpack_from('<I', data, val + 4)[0]
    if symtab_off == 0 or strtab_off == 0 or hash_nchain == 0:
        return [], []
    
    exported = []
    imported = []
    for i in range(hash_nchain):
        off = symtab_off + i * 16
        if off + 16 > len(data): break
        st_name = struct.unpack_from('<I', data, off)[0]
        st_value = struct.unpack_from('<I', data, off + 4)[0]
        st_info = data[off + 12]
        st_shndx = struct.unpack_from('<H', data, off + 14)[0]
        
        noff = strtab_off + st_name
        if noff >= len(data): continue
        end = data.index(b'\x00', noff) if b'\x00' in data[noff:noff+512] else noff+512
        name = data[noff:end].decode('ascii', errors='replace')
        if not name: continue
        
        bind = st_info >> 4
        stype = st_info & 0xf
        if st_shndx == 0:  # SHN_UNDEF → imported
            imported.append(name)
        elif bind == 1 and stype in (1, 2):  # STB_GLOBAL, STT_FUNC/OBJECT
            exported.append(name)
    return exported, imported

def check_security_flags(data):
    """Check for basic ELF security features."""
    flags = {
        'has_gnu_relro': False,
        'has_bind_now': False,
        'has_nx_stack': False,
        'has_pie': False,
    }
    if len(data) < 52 or data[:4] != b'\x7fELF':
        return flags
    
    e_type = struct.unpack_from('<H', data, 16)[0]
    flags['has_pie'] = (e_type == 3)  # ET_DYN = PIE or shared lib
    
    e_phoff = struct.unpack_from('<I', data, 28)[0]
    e_phentsize = struct.unpack_from('<H', data, 42)[0]
    e_phnum = struct.unpack_from('<H', data, 44)[0]
    
    for i in range(e_phnum):
        poff = e_phoff + i * e_phentsize
        if poff + 32 > len(data): break
        p_type = struct.unpack_from('<I', data, poff)[0]
        p_flags = struct.unpack_from('<I', data, poff + 24)[0]
        
        if p_type == 0x6474e551:  # PT_GNU_STACK
            flags['has_nx_stack'] = (p_flags & 1) == 0  # No PF_X
        elif p_type == 0x6474e552:  # PT_GNU_RELRO
            flags['has_gnu_relro'] = True
    
    # Check for BIND_NOW in dynamic
    dyn_entries = parse_elf32_dynamic(data)
    for tag, val, _ in dyn_entries:
        if tag == 24:  # DT_BIND_NOW
            flags['has_bind_now'] = True
        elif tag == 0x6ffffffb:  # DT_FLAGS_1
            if val & 1:  # DF_1_NOW
                flags['has_bind_now'] = True
    
    return flags

def analyze_file(path, label):
    """Full analysis of a single .so file."""
    if not os.path.exists(path):
        log(f"\n  [SKIP] {path} — file not found")
        return None
    
    size = os.path.getsize(path)
    file_hash = sha256_file(path)
    
    log(f"\n{'='*78}")
    log(f"  {label}")
    log(f"  {path}")
    log(f"{'='*78}")
    log(f"  Size:   {size:>12,} bytes ({size/1024/1024:.3f} MB)")
    log(f"  SHA256: {file_hash}")
    
    with open(path, 'rb') as f:
        data = f.read()
    
    if data[:4] != b'\x7fELF':
        log(f"  [!] NOT a valid ELF file!")
        return {'path': path, 'size': size, 'hash': file_hash, 'valid': False}
    
    # ELF header basics
    ei_class = data[4]
    ei_data = data[5]
    e_machine = struct.unpack_from('<H', data, 18)[0]
    machines = {40: 'ARM (armeabi-v7a)', 183: 'AArch64', 3: 'x86', 62: 'x86_64'}
    log(f"  Arch:   {'32-bit' if ei_class==1 else '64-bit'} {machines.get(e_machine, f'unknown({e_machine})')}")
    log(f"  Endian: {'Little' if ei_data==1 else 'Big'}")
    
    # Sections
    sections = parse_elf32_sections(data)
    if sections:
        log(f"\n  --- Sections ({len(sections)}) ---")
        debug_sections = []
        total_debug_size = 0
        strippable_size = 0
        for name, stype, sflags, soff, ssize in sections:
            if not name: continue
            tag = ""
            if name.startswith('.debug'):
                tag = " ← STRIP (debug)"
                debug_sections.append(name)
                total_debug_size += ssize
                strippable_size += ssize
            elif name == '.symtab':
                tag = " ← STRIP (symbols)"
                strippable_size += ssize
            elif name == '.strtab' and ssize > 1000:
                tag = f" ← potential strip ({ssize:,}b)"
                strippable_size += ssize
            if ssize > 1024:
                log(f"    {name:20s}  {ssize:>10,} bytes{tag}")
        
        if debug_sections:
            log(f"\n  [!] DEBUG SECTIONS FOUND: {len(debug_sections)}")
            log(f"      Total debug data: {total_debug_size:,} bytes ({total_debug_size/1024/1024:.2f} MB)")
        if strippable_size > 0:
            log(f"  [!] STRIPPABLE DATA: ~{strippable_size:,} bytes ({strippable_size/1024/1024:.2f} MB)")
            log(f"      Potential stripped size: ~{(size - strippable_size):,} bytes ({(size-strippable_size)/1024/1024:.2f} MB)")
    
    # Dynamic entries
    dyn_entries = parse_elf32_dynamic(data)
    needed = get_needed_libs(data, dyn_entries)
    if needed:
        log(f"\n  --- Dependencies (DT_NEEDED) ---")
        for lib in needed:
            log(f"    {lib}")
    
    # Exported & imported symbols
    exported, imported = parse_dynsym_names(data, dyn_entries)
    if exported:
        log(f"\n  --- Exported symbols ({len(exported)}) ---")
        for sym in exported[:30]:
            log(f"    {sym}")
        if len(exported) > 30:
            log(f"    ... +{len(exported)-30} more")
    if imported:
        # Check for unsafe imports
        unsafe_found = []
        for sym in imported:
            for bad, desc in UNSAFE_IMPORTS.items():
                if sym.encode() == bad or sym.encode().startswith(bad + b'@'):
                    unsafe_found.append((sym, desc))
        if unsafe_found:
            log(f"\n  --- UNSAFE IMPORTS ---")
            for sym, desc in unsafe_found:
                log(f"    [!] {sym}: {desc}")
    
    # Security flags
    sec_flags = check_security_flags(data)
    log(f"\n  --- Security Hardening ---")
    log(f"    PIE/PIC:     {'YES' if sec_flags['has_pie'] else 'NO (!)'}")
    log(f"    NX Stack:    {'YES' if sec_flags['has_nx_stack'] else 'NO (!)'}")
    log(f"    GNU RELRO:   {'YES' if sec_flags['has_gnu_relro'] else 'NO (!)'}")
    log(f"    BIND_NOW:    {'YES (Full RELRO)' if sec_flags['has_bind_now'] else 'NO (Partial/No RELRO)'}")
    
    # String analysis — URLs, IPs, build paths, credentials
    log(f"\n  --- String Analysis ---")
    strings = extract_strings(data, 5)
    log(f"    Total extracted strings: {len(strings)}")
    
    findings = defaultdict(list)
    for pat, cat in INTERESTING_PATTERNS:
        for m in pat.finditer(data):
            try:
                val = m.group().decode('ascii', errors='replace')
                if len(val) < 300:
                    findings[cat].append(val)
            except: pass
    
    for cat in ['URL', 'IP', 'BUILD_PATH', 'CREDENTIAL']:
        items = findings.get(cat, [])
        # deduplicate
        items = sorted(set(items))
        if cat == 'IP':
            # filter out version-like numbers (e.g. 1.1.5.0)
            items = [ip for ip in items if not any(c.isalpha() for c in ip)]
        if items:
            log(f"    [{cat}] ({len(items)} found):")
            for item in items[:15]:
                log(f"      {item[:120]}")
            if len(items) > 15:
                log(f"      ... +{len(items)-15} more")
    
    # Look for debug/logging strings
    debug_strs = [s for s in strings if any(kw in s.lower() for kw in ['__android_log', 'LOGD', 'LOGE', 'LOGW', 'LOGI', 'LOG_TAG', 'dprintf'])]
    if debug_strs:
        log(f"    [LOGGING] ({len(debug_strs)} logging-related strings)")
        for s in debug_strs[:5]:
            log(f"      {s[:100]}")
    
    return {
        'path': path, 'size': size, 'hash': file_hash, 'valid': True,
        'sections': sections, 'exported': exported, 'imported': imported,
        'debug_sections': len([s for s in sections if s[0].startswith('.debug')]),
        'security': sec_flags, 'findings': dict(findings),
    }


def main():
    log("=" * 78)
    log("  HORRIBLE CLIENT — NATIVE LIBRARY ANALYSIS")
    log("  Дата запуска: " + __import__('datetime').datetime.now().strftime('%Y-%m-%d %H:%M:%S'))
    log("=" * 78)
    
    results = []
    
    # LAUNCHER APK libs
    log("\n" + "~" * 78)
    log("  LAUNCHER APK: lib/armeabi-v7a/")
    log("~" * 78)
    for fname in sorted(os.listdir(LAUNCHER_LIB)):
        if fname.endswith('.so'):
            r = analyze_file(os.path.join(LAUNCHER_LIB, fname), f"[LAUNCHER] {fname}")
            if r: results.append(r)
    
    # MC APK libs
    log("\n" + "~" * 78)
    log("  MINECRAFT APK: Minecraft PE 1.1.5_src/lib/armeabi-v7a/")
    log("~" * 78)
    if os.path.isdir(MC_LIB):
        for fname in sorted(os.listdir(MC_LIB)):
            if fname.endswith('.so'):
                r = analyze_file(os.path.join(MC_LIB, fname), f"[MINECRAFT] {fname}")
                if r: results.append(r)
    
    # === DUPLICATE CHECK ===
    log("\n" + "=" * 78)
    log("  DUPLICATE FILE CHECK (same SHA256 = identical file)")
    log("=" * 78)
    by_hash = defaultdict(list)
    for r in results:
        if r and r.get('valid'):
            by_hash[r['hash']].append(r['path'])
    
    has_dupes = False
    for h, paths in by_hash.items():
        if len(paths) > 1:
            has_dupes = True
            sz = next(r['size'] for r in results if r['hash'] == h)
            log(f"\n  DUPLICATE ({sz/1024/1024:.2f} MB):")
            for p in paths:
                log(f"    {p}")
            log(f"  → Обе копии нужны (разные APK), но убедись что они синхронизированы!")
    if not has_dupes:
        log("\n  Дубликатов нет — все файлы уникальны.")
    
    # === SUMMARY ===
    log("\n" + "=" * 78)
    log("  ИТОГОВАЯ СВОДКА")
    log("=" * 78)
    
    total_size = sum(r['size'] for r in results if r)
    total_strippable = 0
    for r in results:
        if r and r.get('sections'):
            for name, _, _, _, ssize in r['sections']:
                if name.startswith('.debug') or name == '.symtab':
                    total_strippable += ssize
    
    log(f"\n  Файлов проанализировано: {len(results)}")
    log(f"  Общий размер: {total_size:,} bytes ({total_size/1024/1024:.2f} MB)")
    if total_strippable > 0:
        log(f"  Можно стрипнуть: ~{total_strippable:,} bytes ({total_strippable/1024/1024:.2f} MB)")
        log(f"  Размер после strip: ~{(total_size-total_strippable):,} bytes ({(total_size-total_strippable)/1024/1024:.2f} MB)")
    
    # Security summary
    log(f"\n  --- Безопасность ---")
    for r in results:
        if r and r.get('security'):
            s = r['security']
            name = os.path.basename(r['path'])
            issues = []
            if not s['has_nx_stack']: issues.append('NO NX')
            if not s['has_gnu_relro']: issues.append('NO RELRO')
            if not s['has_bind_now']: issues.append('Partial RELRO')
            if issues:
                log(f"    {name}: {', '.join(issues)}")
    
    log(f"\n  --- Рекомендации ---")
    if total_strippable > 0:
        log(f"  1. STRIP debug символы:")
        log(f"     Нужен Android NDK. Команда:")
        log(f"     arm-linux-androideabi-strip --strip-unneeded libminecraftpe.so")
        log(f"     Или установи WSL и выполни: strip --strip-unneeded *.so")
    log(f"  2. НЕ удаляй libsubstrate.so — он нужен для хуков!")
    log(f"  3. НЕ удаляй 'дубликаты' — они в разных APK (launcher vs minecraft)")
    log(f"  4. Проверь hardcoded URLs выше — возможно утечка")
    
    # Save to file
    out_path = os.path.join(BASE, "analysis_results.txt")
    with open(out_path, 'w', encoding='utf-8') as f:
        f.write('\n'.join(output_lines))
    log(f"\n  Результат сохранён: {out_path}")
    log("=" * 78)


if __name__ == '__main__':
    main()
