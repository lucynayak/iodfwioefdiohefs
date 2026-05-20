"""Find how libmcpe code gets ClientInstance/Level/LocalPlayer globally.

Approaches we consider:
  - SharedConstants / static singleton getter
  - Use liblauncher's exported helper that we BL into
  - Walk MinecraftGame singleton

We dump candidates that other libmcpe code uses to obtain LocalPlayer.
"""
import struct, re
from pathlib import Path
from capstone import Cs, CS_ARCH_ARM, CS_MODE_THUMB

MCPE = Path(r"c:\Users\triggertrash\Desktop\horrible v2\lib\armeabi-v7a\libminecraftpe.so")

def parse(p):
    d = p.read_bytes()
    e_shoff   = struct.unpack_from("<I", d, 0x20)[0]
    e_shentsz = struct.unpack_from("<H", d, 0x2E)[0]
    e_shnum   = struct.unpack_from("<H", d, 0x30)[0]
    e_shstrndx= struct.unpack_from("<H", d, 0x32)[0]
    sections = []
    for i in range(e_shnum):
        off = e_shoff + i*e_shentsz
        sections.append(struct.unpack_from("<IIIIIIIIII", d, off))
    shstr_off = sections[e_shstrndx][4]
    def secname(s):
        n=s[0]; e=d.index(b"\x00", shstr_off+n); return d[shstr_off+n:e].decode()
    sec = {secname(s): s for s in sections}
    ds = sec['.dynsym']; ts = sec['.dynstr']
    syms = []
    for i in range(ds[5]//ds[9]):
        off = ds[4]+i*ds[9]
        name_off, st_value, st_size, st_info, st_other, st_shndx = \
            struct.unpack_from("<IIIBBH", d, off)
        if name_off==0: continue
        e=d.index(b"\x00", ts[4]+name_off)
        name=d[ts[4]+name_off:e].decode(errors='ignore')
        syms.append((name, st_value, st_size))
    return d, syms

d, syms = parse(MCPE)

# 1. Look for global accessors / singletons
print("=== singleton-style accessors (no args, returns a pointer) ===")
needles = [
    "MinecraftGame",
    "ClientInstance",
    "App",
    "instance",
    "Instance",
    "getApp",
    "getMinecraft",
    "Singleton",
    "globalState",
    "GameState",
]
for n, v, sz in syms:
    if any(k in n for k in needles) and sz < 0x40 and sz > 0 and n.endswith("Ev"):
        print(f"  va=0x{v&~1:x} sz=0x{sz:x}  {n}")

# 2. Specifically: ClientInstance methods that take no args (getters)
print("\n=== ClientInstance no-arg methods (small size) ===")
for n, v, sz in syms:
    if "_ZNK14ClientInstance" in n or "_ZN14ClientInstance" in n:
        if sz <= 0x20 and sz > 0 and (n.endswith("Ev") or "C2Ev" in n):
            print(f"  va=0x{v&~1:x} sz=0x{sz:x}  {n}")

# 3. App / SharedConstants
print("\n=== SharedConstants / static globals ===")
for n, v, sz in syms:
    if any(k in n for k in ("SharedConstants","s_pInstance","gInstance","sInstance")):
        print(f"  va=0x{v&~1:x} sz=0x{sz:x}  {n}")

# 4. Quickest path: search for "_ZN14ClientInstance" in code that other JNI helpers
# in libmcpe might already use. Also: Mojang games have a "Common::getGame()" in 
# some versions.
print("\n=== Common / getGame / mainContext ===")
for n, v, sz in syms:
    if any(k in n for k in ("6Common","getGame","6Engine","16AppPlatform","_ZN3App")) and sz < 0x40 and sz > 0:
        print(f"  va=0x{v&~1:x} sz=0x{sz:x}  {n}")

# 5. Best bet: there's almost certainly a static `Minecraft::getInstance()` or a global 
# pointer set during init. Search for symbols that look like static instance setters.
print("\n=== Possible global instance setters ===")
for n, v, sz in syms:
    if "setInstance" in n or "_ZN9Minecraft" in n[:20]:
        print(f"  va=0x{v&~1:x} sz=0x{sz:x}  {n}")

# 6. Direct attack: liblauncher already imports `ClientInstance::getLocalPlayer`.
# If our thunk lives in libmcpe and calls that function, we still need a `ClientInstance*` first.
# Search for any CONST-pointer global symbol that holds a ClientInstance.
print("\n=== Globals (objects, not functions) ===")
n_count = 0
for n, v, sz in syms:
    # OBJECT type info=0x11 (STT_OBJECT|STB_GLOBAL)
    if "ClientInstance" in n and "()" not in n:
        if sz >= 4 and sz <= 16 and "C1" not in n and "C2" not in n:
            print(f"  va=0x{v&~1:x} sz=0x{sz:x}  {n}")
            n_count += 1
            if n_count > 10: break
