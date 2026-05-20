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

- **enchantmaster.js** – the original v2.11 script with **functionality
  unchanged**; only the security / robustness bugs are patched. Full list of
  fixes is documented in the file header. Notable items:
  - `updateStats` stored everything under the key `"undefined"` because
    `Enchantment.*` are integers, not "Enchantment.NAME" strings — the
    stats counter never actually accumulated. Now uses `String(id)`.
  - `JSON.parse(Data.getString(...))` calls are guarded against corrupted
    saves written by other scripts.
  - `nameSetting.getText().trim()` and friends went through `safeText()` so
    a null/undefined from the host UI no longer throws.
  - `Item.setName` values are stripped of `§` format codes and length-
    clamped to 64 chars (defends against colour-code injection into chat).
  - `ThreadLocalRandom` falls back to `Math.random()` if the java bridge
    is unavailable.
  - Module registration moved into `onScriptEnabled` and mirrored by
    `onScriptDisabled` (no leaks on reload).

If you only need the built-in menu version, you can ignore these scripts –
they are already registered as native modules.
