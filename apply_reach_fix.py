"""
Apply binary patches to libminecraftpe.so to make freeform block-pick reach
load the Reach slider value from a safe shared literal.
"""
import os
import shutil
import struct

TARGETS = [
    "lib/armeabi-v7a/libminecraftpe.so",
    "Minecraft PE 1.1.5_src/lib/armeabi-v7a/libminecraftpe.so",
]

THUNK = (
    b"\x9f\xed\x02\x3a"
    b"\x70\x47"
    b"\x9f\xed\x01\x4a"
    b"\x70\x47"
    + struct.pack("<f", 12.0)
)

ORIG_S6_12 = b"\xb2\xee\x08\x3a"
PREV_S6_31 = b"\xb3\xee\x0f\x3a"
BL_TO_S6_THUNK_FROM_LIVING = b"\x2c\xf6\xdf\xf8"
BL_TO_S6_THUNK_FROM_PLAY = b"\x28\xf6\xcf\xfe"

ORIG_S8_12 = b"\xb2\xee\x08\x4a"
PREV_S8_LDR_BAD_SLOT = b"\x9f\xed\x35\x4a"
BL_TO_S8_THUNK_FROM_REALITY = b"\x24\xf6\x78\xff"

ORIG_REALITY_CODE = b"\x50\x46\xc7\xf5"
BAD_REALITY_LITERAL = struct.pack("<f", 12.0)

PATCHES = [
    (0x00FA8C34, [b"\x00" * 16, THUNK], THUNK, "shared s6/s8 reach thunk + default literal"),
    (0x0117CA72, [ORIG_S6_12, PREV_S6_31, BL_TO_S6_THUNK_FROM_LIVING], BL_TO_S6_THUNK_FROM_LIVING, "LivingRoom load reach from thunk"),
    (0x0117FE92, [ORIG_S6_12, PREV_S6_31, BL_TO_S6_THUNK_FROM_PLAY], BL_TO_S6_THUNK_FROM_PLAY, "PlayScreen load reach from thunk"),
    (0x01183D46, [ORIG_S8_12, PREV_S8_LDR_BAD_SLOT, BL_TO_S8_THUNK_FROM_REALITY], BL_TO_S8_THUNK_FROM_REALITY, "RealityMode load reach from thunk"),
    (0x01183E1C, [ORIG_REALITY_CODE, BAD_REALITY_LITERAL], ORIG_REALITY_CODE, "restore live RealityMode code"),
]

for path in TARGETS:
    if not os.path.exists(path):
        print(f"!! file not found: {path}")
        continue
    bak = path + ".touch_thunk_backup"
    if not os.path.exists(bak):
        print(f"backup: {bak}")
        shutil.copy2(path, bak)

    with open(path, "rb") as f:
        data = bytearray(f.read())

    print(f"\n=== {path} ({len(data)} bytes) ===")
    for off, orig, new, lbl in PATCHES:
        actual = bytes(data[off:off + len(new)])
        if actual in orig and actual != new:
            status = "PATCH"
        elif actual == new:
            status = "already patched"
        else:
            status = f"UNEXPECTED: got {actual.hex()}"
        print(f"  0x{off:08x}: {actual.hex()} -> {new.hex()}  [{status}]  {lbl}")
        if actual in orig and actual != new:
            data[off:off + len(new)] = new

    with open(path, "wb") as f:
        f.write(bytes(data))
    print(f"  wrote {len(data)} bytes")

print("\nDone.")
