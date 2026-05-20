# Bundled reference scripts

These JS scripts are reference / fallback implementations of the modules that
were ported into the built-in menu (smali) as part of this PR. They are kept
here so users who prefer the script-based workflow can still drop them into
their `/sdcard/games/horrible/scripts/` directory.

- **Gravity.js** – improved version of `Gravity.js` v1.0:
  - removes the unsafe raw `Memory.setBoolean(playerAddr, 0x56C, ...)` write
    (that offset is not the NO_GRAVITY flag in current MCPE builds, which
    is why the original v1.0 did not work as intended).
  - drives the player exclusively through the `NativeLocalPlayer.setVelocityY`
    wrapper, which is version-stable.
  - validates `parseFloat` input, clamps ranges, and never crashes the tick
    loop.

- **EnchantMaster.js** – streamlined and hardened version of v2.11:
  - everything wrapped in a closure (no globals leaked).
  - text fields validated (`safeParseInt`, name sanitised against `§`
    sequences, length-clamped to 64 chars).
  - heavy `Data.saveNumber/saveString` stats persistence removed (the old
    version wrote to disk on every action and could corrupt itself if the
    script reloaded mid-write).

If you only need the built-in menu version, you can ignore these scripts –
they are already registered as native modules.
