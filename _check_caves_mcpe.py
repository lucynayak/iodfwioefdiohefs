"""Check libminecraftpe cave context + verify b.w/blx ranges."""
from pathlib import Path
from capstone import Cs, CS_ARCH_ARM, CS_MODE_THUMB

SO = Path(r"c:\Users\triggertrash\Desktop\horrible v2\lib\armeabi-v7a\libminecraftpe.so")
data = SO.read_bytes()
md = Cs(CS_ARCH_ARM, CS_MODE_THUMB)

# Range checks
WRAPPER = 0x1701c14
INNER_PLT = 0x744ee0
caves = [(0xbb2128, 64), (0x13991f6, 50), (0x17906b0, 64), (0x1b95d04, 232), (0x1e53ba0, 32)]
print("=== Cave reachability ===")
for c, l in caves:
    d_wrap  = c - WRAPPER
    d_plt   = INNER_PLT - c
    ok_wrap = -0x1000000 <= d_wrap <= 0x1000000
    ok_plt  = -0x1000000 <= d_plt  <= 0x1000000
    print(f"  cave 0x{c:x} (len={l}): from-wrapper={d_wrap:+#x} {'OK' if ok_wrap else 'OUT'}, "
          f"to-PLT={d_plt:+#x} {'OK' if ok_plt else 'OUT'}")

print(f"\n=== Verify cave 0xbb2128 contents (64 zero bytes) ===")
for off in [0xbb2120, 0xbb2128, 0xbb2168]:
    print(f"  0x{off:08x}: {data[off:off+16].hex()}")

print(f"\n=== Disasm around cave 0xbb2128 (preceding/trailing functions) ===")
for ins in md.disasm(data[0xbb2110:0xbb2128], 0xbb2110):
    print(f"  PRE  0x{ins.address:08x}: {ins.bytes.hex():<10} {ins.mnemonic:8s} {ins.op_str}")
for ins in md.disasm(data[0xbb2168:0xbb2180], 0xbb2168):
    print(f"  POST 0x{ins.address:08x}: {ins.bytes.hex():<10} {ins.mnemonic:8s} {ins.op_str}")
