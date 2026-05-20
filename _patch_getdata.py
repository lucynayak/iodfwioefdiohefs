"""Patch liblauncher.so Block_getID helper to also call BlockSource::getData and return (id<<16)|meta"""
import struct
from pathlib import Path

LAU = Path(r"c:\Users\triggertrash\Desktop\horrible v2\lib\armeabi-v7a\liblauncher.so")
data = bytearray(LAU.read_bytes())

# Block_getID helper is at 0x166d4, size 0x60
# Current implementation calls BlockSource::getBlockID and returns int
# We need to also call BlockSource::getData and pack: (id << 16) | meta

# The existing helper at 0x166d4 follows the pattern:
# 1. Resolve launcher_minecraft global
# 2. Get ClientInstance* -> LocalPlayer* -> BlockSource*
# 3. Call BlockSource::getBlockID(x,y,z)
# 4. Return result

# BlockSource::getData is at 0x1703744 in libminecraftpe.so
# But calling it from liblauncher.so requires a PLT entry

# Check if there's a PLT entry we can use for getData
# For now, let's just document that we need to add a PLT entry

print("Current Block_getID helper at 0x166d4:")
print("This helper already gets BlockSource*")
print("To add getData support, we need:")
print("1. A PLT entry for BlockSource::getData in liblauncher.so")
print("2. Modify the helper to call both getID and getData")
print("3. Pack results: (id << 16) | meta")
print("")
print("This requires ELF surgery to add a PLT entry.")
print("Alternative: use the separate library approach with NDK.")
print("")
print("For now, meta=0 is a known limitation of Phase 1A.")
