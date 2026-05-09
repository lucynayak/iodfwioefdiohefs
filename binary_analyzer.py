#!/usr/bin/env python3
"""
Binary analysis of Minecraft PE .so files
Extracts and analyzes strings, checks for security issues
"""
import os
import struct
import re

def extract_strings(filepath, min_length=4):
    """Extract ASCII strings from binary file"""
    strings_list = []
    try:
        with open(filepath, 'rb') as f:
            data = f.read()
        
        current = b''
        for byte in data:
            if 32 <= byte <= 126:  # Printable ASCII
                current += bytes([byte])
            else:
                if len(current) >= min_length:
                    try:
                        s = current.decode('ascii', errors='ignore')
                        strings_list.append(s)
                    except:
                        pass
                current = b''
        
        if len(current) >= min_length:
            try:
                strings_list.append(current.decode('ascii', errors='ignore'))
            except:
                pass
    except Exception as e:
        print(f"Error reading {filepath}: {e}")
    
    return strings_list

def analyze_file(filepath):
    """Analyze a single .so file"""
    if not os.path.exists(filepath):
        return None
    
    filename = os.path.basename(filepath)
    filesize = os.path.getsize(filepath)
    
    # Read header
    with open(filepath, 'rb') as f:
        header = f.read(64)
    
    is_elf = header[:4] == b'\x7fELF'
    
    # Extract strings
    strings = extract_strings(filepath, min_length=3)
    
    # Analyze strings
    results = {
        'filename': filename,
        'filesize': filesize,
        'is_elf': is_elf,
        'debug_strings': [],
        'urls': [],
        'ips': [],
        'dangerous_functions': [],
        'api_keys': [],
        'paths': [],
        'suspicious': [],
    }
    
    for s in strings:
        # Check for debug strings
        if any(x in s.lower() for x in ['debug', 'trace', 'verbose', 'dlog', 'logd', 'log_']):
            if len(s) < 150:
                results['debug_strings'].append(s)
        
        # Check for URLs
        if 'http://' in s or 'https://' in s:
            if len(s) < 200:
                results['urls'].append(s)
        
        # Check for IP addresses
        if re.match(r'^\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}', s):
            results['ips'].append(s)
        
        # Check for dangerous functions
        for func in ['strcpy', 'sprintf', 'gets', 'strcat', 'scanf', 'system', 'exec']:
            if func in s.lower() and len(s) < 100:
                if s not in results['dangerous_functions']:
                    results['dangerous_functions'].append(s)
        
        # Check for API keys/tokens/passwords
        if any(x in s.lower() for x in ['api_key', 'apikey', 'token', 'secret', 'password', 'auth']):
            if 10 < len(s) < 200:
                results['api_keys'].append(s)
        
        # Check for paths
        if '/' in s or '\\' in s:
            if any(x in s for x in ['/home/', '/Users/', 'C:\\Users', '/build/', '/opt/']):
                if len(s) < 200:
                    results['paths'].append(s)
    
    return results

# Analyze all files
files_to_check = [
    r'C:\Users\triggertrash\Desktop\horrible\Minecraft PE 1.1.5_src\lib\armeabi-v7a\libminecraftpe.so',
    r'C:\Users\triggertrash\Desktop\horrible\Minecraft PE 1.1.5_src\lib\armeabi-v7a\libfmod.so',
    r'C:\Users\triggertrash\Desktop\horrible\lib\armeabi-v7a\libcallfunction.so',
    r'C:\Users\triggertrash\Desktop\horrible\lib\armeabi-v7a\liblauncher.so',
    r'C:\Users\triggertrash\Desktop\horrible\lib\armeabi-v7a\libfmod.so',
    r'C:\Users\triggertrash\Desktop\horrible\lib\armeabi-v7a\libminecraftpe.so',
    r'C:\Users\triggertrash\Desktop\horrible\lib\armeabi-v7a\libsubstrate.so',
]

print("=" * 90)
print("MINECRAFT PE NATIVE LIBRARY SECURITY & OPTIMIZATION ANALYSIS")
print("=" * 90)

all_results = {}
for fpath in files_to_check:
    result = analyze_file(fpath)
    if result:
        all_results[result['filename']] = result
        print(f"\n[{result['filename']}]")
        print(f"  File Size: {result['filesize']:,} bytes ({result['filesize']/(1024*1024):.2f} MB)")
        print(f"  Valid ELF: {'YES' if result['is_elf'] else 'NO'}")
        
        if result['debug_strings']:
            print(f"  ⚠️  DEBUG STRINGS FOUND ({len(result['debug_strings'])})")
            for s in result['debug_strings'][:5]:
                print(f"      - {s[:70]}")
            if len(result['debug_strings']) > 5:
                print(f"      ... and {len(result['debug_strings']) - 5} more")
        
        if result['urls']:
            print(f"  🔴 HARDCODED URLs ({len(result['urls'])})")
            for s in result['urls']:
                print(f"      - {s[:80]}")
        
        if result['ips']:
            print(f"  🔴 IP ADDRESSES ({len(result['ips'])})")
            for s in result['ips']:
                print(f"      - {s}")
        
        if result['dangerous_functions']:
            print(f"  🔴 DANGEROUS FUNCTIONS ({len(result['dangerous_functions'])})")
            for s in set(result['dangerous_functions'])[:5]:
                print(f"      - {s[:70]}")
        
        if result['api_keys']:
            print(f"  🔴 POTENTIAL API KEYS/TOKENS ({len(result['api_keys'])})")
            for s in result['api_keys'][:3]:
                print(f"      - {s[:70]}")
        
        if result['paths']:
            print(f"  ⚠️  BUILD PATHS FOUND ({len(result['paths'])})")
            for s in set(result['paths'])[:5]:
                print(f"      - {s[:80]}")

print("\n" + "=" * 90)
print("SUMMARY")
print("=" * 90)

total_size = sum(r['filesize'] for r in all_results.values())
total_debug = sum(len(r['debug_strings']) for r in all_results.values())
total_urls = sum(len(r['urls']) for r in all_results.values())
total_ips = sum(len(r['ips']) for r in all_results.values())
total_dangerous = sum(len(r['dangerous_functions']) for r in all_results.values())
total_api_keys = sum(len(r['api_keys']) for r in all_results.values())

print(f"\nFiles analyzed: {len(all_results)}")
print(f"Total size: {total_size:,} bytes ({total_size/(1024*1024):.2f} MB)")
print(f"\n[CRITICAL SECURITY ISSUES]")
print(f"  🔴 Hardcoded URLs: {total_urls}")
print(f"  🔴 IP Addresses: {total_ips}")
print(f"  🔴 API Keys/Tokens: {total_api_keys}")
print(f"  🔴 Dangerous Functions: {total_dangerous}")
print(f"\n[OPTIMIZATION ISSUES]")
print(f"  ⚠️  Debug Strings: {total_debug}")
print(f"  💾 Total Library Size: {total_size/(1024*1024):.2f} MB (large for ARM)")

print("\n[RECOMMENDATIONS]")
print("  1. Remove debug strings before release builds")
print("  2. Strip symbol tables (.symtab) to reduce size")
print("  3. Use ProGuard/R8 obfuscation on Java code")
print("  4. Implement stricter input validation (avoid strcpy, sprintf)")
print("  5. Move hardcoded URLs to configuration files")
print("  6. Enable Address Space Layout Randomization (ASLR)")
print("  7. Consider compression for resources (if not already done)")
print("  8. Use PIE (Position Independent Executable) compilation flags")

print("\n" + "=" * 90)
