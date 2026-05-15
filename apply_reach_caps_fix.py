"""
Patch hardcoded distance-squared caps in libminecraftpe.so.

After apply_reach_fix.py made `s6`/`s8` load reach from a shared thunk literal
(0xFA8C40), the game still rejects hits/picks whose squared distance exceeds
hardcoded limits 100.0 (=10^2) and 144.0 (=12^2). Each cap is a vfp literal
loaded via `vldr s0, [pc, #imm]` then compared with `vcmpe.f32 s2, s0` and
followed by `ble` -- if distance^2 > cap, an error flag (3) is written and
the action is dropped, capping effective reach to sqrt(cap).

This patches those literals to 1_000_000.0 so reach up to ~1000 blocks works.
Run after apply_reach_fix.py.
"""
import os
import shutil
import struct

TARGETS = [
    "lib/armeabi-v7a/libminecraftpe.so",
    "Minecraft PE 1.1.5_src/lib/armeabi-v7a/libminecraftpe.so",
]

# (literal_offset, original_value, label)
CAPS = [
    # Block / general raycast caps
    (0x01176604, 100.0, "ray-cast distance^2 cap (sqrt=10) at 0x1176248"),
    (0x0117CBBC, 144.0, "LivingRoom distance^2 cap (sqrt=12) at 0x117CB4E"),
    (0x0117FFA4, 144.0, "PlayScreen distance^2 cap (sqrt=12) at 0x117FF6A"),
    # Entity attack-reach caps (all sqrt=8 -> user reported "max 7-8 blocks on entities")
    (0x01597D6C, 64.0,  "entity hit-test distance^2 cap (sqrt=8) at 0x1597BCC"),
    (0x015A88CC, 64.0,  "entity hit-test distance^2 cap (sqrt=8) at 0x15A87BC"),
    (0x017FD434, 64.0,  "entity is-in-range flag distance^2 cap (sqrt=8) at 0x17FD416"),
    # Entity reach REAL caps (dist^2 < 36.0 -> 6 block reach, user perceives as "~7-8")
    # Three classic dx^2+dy^2+dz^2 vs 36.0 compares followed by bgt/bge to fail path.
    # Loader sites: 0x00ff3628 + 0x00ff36ac (share literal), 0x017fc9d8, 0x017fe0fe.
    (0x00FF3760, 36.0,  "entity-pick distance^2 cap (sqrt=6) at 0xFF3628/0xFF36AC"),
    (0x017FCAC0, 36.0,  "entity range-check distance^2 cap (sqrt=6) at 0x17FC9D8"),
    (0x017FE238, 36.0,  "entity look-at distance^2 cap (sqrt=6) at 0x17FE0FE"),
]

NEW_CAP = 1_000_000.0  # sqrt = 1000, far above slider max of 100
NEW_BYTES = struct.pack("<f", NEW_CAP)

# Branch instruction patches: kill "if dist > 12.0 clearAttackTarget()" gates
# in the entity-attack handler function 0x013d6a7c. These caps gate registering
# a hit on an actor based on a distance returned by an external function. Without
# patching them, slider value is ignored for entity attack range.
#
# (offset, original_2bytes, new_2bytes, label)
BRANCHES = [
    # 0x13d6b00: ble #0x13d6b14  ->  b   #0x13d6b14
    # Falls through to clearTarget if dist > 12.0; force the branch to always be
    # taken so clearTarget is never executed.
    (0x013D6B00, b"\x08\xdd", b"\x08\xe0",
     "kill 1st 12.0 attack-cap: ble -> b (skip clearTarget)"),
    # 0x13d6db4: bgt #0x13d6e70  ->  nop
    # Branches to the "too-far" fail path if dist > 12.0; replace with nop so the
    # good path is always taken.
    (0x013D6DB4, b"\x5c\xdc", b"\x00\xbf",
     "kill 2nd 12.0 attack-cap: bgt -> nop (never bail out)"),
]

for path in TARGETS:
    if not os.path.exists(path):
        print(f"!! file not found: {path}")
        continue
    bak = path + ".reach_caps_backup"
    if not os.path.exists(bak):
        print(f"backup: {bak}")
        shutil.copy2(path, bak)

    with open(path, "rb") as f:
        data = bytearray(f.read())

    print(f"\n=== {path} ({len(data)} bytes) ===")
    print("  -- literal pool caps --")
    for off, orig_val, label in CAPS:
        actual_bytes = bytes(data[off:off + 4])
        actual_val = struct.unpack("<f", actual_bytes)[0]
        orig_bytes = struct.pack("<f", orig_val)
        if actual_bytes == orig_bytes:
            status = "PATCH"
        elif actual_bytes == NEW_BYTES:
            status = "already patched"
        else:
            status = f"UNEXPECTED: got {actual_val} ({actual_bytes.hex()})"
        print(f"  0x{off:08x}: {actual_val:>10} -> {NEW_CAP}  [{status}]  {label}")
        if actual_bytes == orig_bytes:
            data[off:off + 4] = NEW_BYTES

    print("  -- branch instruction patches --")
    for off, orig_b, new_b, label in BRANCHES:
        actual = bytes(data[off:off + len(orig_b)])
        if actual == orig_b:
            status = "PATCH"
            data[off:off + len(orig_b)] = new_b
        elif actual == new_b:
            status = "already patched"
        else:
            status = f"UNEXPECTED: got {actual.hex()}"
        print(f"  0x{off:08x}: {orig_b.hex()} -> {new_b.hex()}  [{status}]  {label}")

    with open(path, "wb") as f:
        f.write(bytes(data))
    print(f"  wrote {len(data)} bytes")

print("\nDone.")
