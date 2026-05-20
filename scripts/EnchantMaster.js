// EnchantMaster (improved)
// v3.0 — Streamlined and hardened version of the v2.11 script.
//
// Improvements:
//   - All logic inside a closure (no globals leaked to the host script
//     manager scope).
//   - Every player-facing input (level, name) is validated and clamped.
//   - Inventory and Enchantment API calls are guarded with try/catch so a
//     missing enchantment ID or a closed UI does not stop the script.
//   - Heavy "stats" persistence (Data.saveNumber/Data.saveString) is gone:
//     the old version wrote on every action and could corrupt itself if
//     the script reloaded mid-write. Stats are kept in-memory.
//   - No use of `eval`, `Function`, or `new Function`.
//   - Strings shown to the user are escaped against accidental format
//     codes from item names (e.g. § sequences from server-renamed items).

(function() {
    var MODULE_NAME = "EnchantMaster";

    var enchantModule = new Module(MODULE_NAME, true, false, ModuleCategory.PLAYER);

    var ENCHANTMENTS = [
        { id: Enchantment.PROTECTION,            name: "Protection" },
        { id: Enchantment.FIRE_PROTECTION,       name: "Fire Protection" },
        { id: Enchantment.FEATHER_FALLING,       name: "Feather Falling" },
        { id: Enchantment.BLAST_PROTECTION,      name: "Blast Protection" },
        { id: Enchantment.PROJECTILE_PROTECTION, name: "Projectile Protection" },
        { id: Enchantment.RESPIRATION,           name: "Respiration" },
        { id: Enchantment.AQUA_AFFINITY,         name: "Aqua Affinity" },
        { id: Enchantment.THORNS,                name: "Thorns" },
        { id: Enchantment.DEPTH_STRIDER,         name: "Depth Strider" },
        { id: Enchantment.FROST_WALKER,          name: "Frost Walker" },
        { id: Enchantment.SHARPNESS,             name: "Sharpness" },
        { id: Enchantment.SMITE,                 name: "Smite" },
        { id: Enchantment.BANE_OF_ARTHROPODS,    name: "Bane of Arthropods" },
        { id: Enchantment.KNOCKBACK,             name: "Knockback" },
        { id: Enchantment.FIRE_ASPECT,           name: "Fire Aspect" },
        { id: Enchantment.LOOTING,               name: "Looting" },
        { id: Enchantment.EFFICIENCY,            name: "Efficiency" },
        { id: Enchantment.SILK_TOUCH,            name: "Silk Touch" },
        { id: Enchantment.UNBREAKING,            name: "Unbreaking" },
        { id: Enchantment.FORTUNE,               name: "Fortune" },
        { id: Enchantment.POWER,                 name: "Power" },
        { id: Enchantment.PUNCH,                 name: "Punch" },
        { id: Enchantment.FLAME,                 name: "Flame" },
        { id: Enchantment.INFINITY,              name: "Infinity" },
        { id: Enchantment.LUCK_OF_THE_SEA,       name: "Luck of the Sea" },
        { id: Enchantment.LURE,                  name: "Lure" },
        { id: Enchantment.MENDING,               name: "Mending" }
    ];

    var MODES = ["Apply", "Rename", "Delete", "Preview", "RandomEnchant", "MaxAll"];

    var modeSetting       = new ModeSetting("Mode", MODES, MODES[0]);
    var enchantmentSetting = new ModeSetting("Enchant", ENCHANTMENTS.map(function(e) { return e.name; }), ENCHANTMENTS[0].name);
    var levelSetting      = new TextFieldSetting("Level", "Integer between -32767 and 32767", "4");
    var nameSetting       = new TextFieldSetting("NewName", "New item name", "Renamed item");
    var applyButton       = new ButtonSetting("Apply", function() { handleAction(); });

    enchantModule.addSettings([
        modeSetting,
        enchantmentSetting,
        levelSetting,
        nameSetting,
        applyButton
    ]);

    function clampInt(value, lo, hi) {
        value = value | 0;
        if (value < lo) return lo;
        if (value > hi) return hi;
        return value;
    }

    function safeParseInt(text, fallback) {
        if (typeof text !== "string") return fallback;
        var n = parseInt(text, 10);
        if (isNaN(n)) return fallback;
        return n;
    }

    function sanitizeName(text) {
        if (typeof text !== "string") return "Item";
        // Strip vanilla format codes the server might inject and clamp length.
        text = text.replace(/\u00a7./g, "");
        if (text.length > 64) text = text.substring(0, 64);
        return text;
    }

    function findEnchantId(displayName) {
        for (var i = 0; i < ENCHANTMENTS.length; i++) {
            if (ENCHANTMENTS[i].name === displayName) return ENCHANTMENTS[i].id;
        }
        return ENCHANTMENTS[0].id;
    }

    function getSelectedSlot() {
        try {
            return Inventory.getSelectedSlot();
        } catch (e) {
            return -1;
        }
    }

    function msg(text) {
        try { Level.displayClientMessage("\u00a7e[EnchantMaster]\u00a7r " + text); } catch (e) {}
    }

    function applyEnchantment() {
        var slot = getSelectedSlot();
        if (slot < 0) { msg("No slot selected"); return; }

        var level = clampInt(safeParseInt(levelSetting.getText(), 1), -32767, 32767);
        var id    = findEnchantId(enchantmentSetting.getCurrentMode());
        try {
            Inventory.setEnchantment(slot, id, level);
            msg("Applied enchantment id=" + id + " lvl=" + level);
        } catch (e) {
            msg("Failed to enchant: " + e);
        }
    }

    function applyRandomEnchantment() {
        var slot = getSelectedSlot();
        if (slot < 0) return;
        var pick = ENCHANTMENTS[Math.floor(Math.random() * ENCHANTMENTS.length)];
        var lvl  = clampInt(1 + Math.floor(Math.random() * 5), 1, 32767);
        try {
            Inventory.setEnchantment(slot, pick.id, lvl);
            msg("Random: " + pick.name + " lvl " + lvl);
        } catch (e) {}
    }

    function applyMaxAllEnchantments() {
        var slot = getSelectedSlot();
        if (slot < 0) return;
        var applied = 0;
        for (var i = 0; i < ENCHANTMENTS.length; i++) {
            try {
                Inventory.setEnchantment(slot, ENCHANTMENTS[i].id, 32767);
                applied++;
            } catch (e) {}
        }
        msg("Maxed " + applied + " enchantments");
    }

    function renameItem() {
        var slot = getSelectedSlot();
        if (slot < 0) return;
        var name = sanitizeName(nameSetting.getText());
        try { Inventory.setItemName(slot, name); msg("Renamed to: " + name); }
        catch (e) { msg("Rename failed: " + e); }
    }

    function deleteItem() {
        var slot = getSelectedSlot();
        if (slot < 0) return;
        try { Inventory.clearSlot(slot); msg("Item deleted"); }
        catch (e) { msg("Delete failed: " + e); }
    }

    function previewItem() {
        var slot = getSelectedSlot();
        if (slot < 0) return;
        try {
            var name = Inventory.getItemName(slot);
            var id   = Inventory.getItemID(slot);
            msg("slot=" + slot + " id=" + id + " name=" + sanitizeName(name));
        } catch (e) {}
    }

    function handleAction() {
        var mode = modeSetting.getCurrentMode();
        switch (mode) {
            case "Apply":         applyEnchantment(); break;
            case "Rename":        renameItem();       break;
            case "Delete":        deleteItem();       break;
            case "Preview":       previewItem();      break;
            case "RandomEnchant": applyRandomEnchantment(); break;
            case "MaxAll":        applyMaxAllEnchantments(); break;
            default:              msg("Unknown mode: " + mode);
        }
    }

    function onScriptEnabled() {
        try { ModuleManager.addModule(enchantModule); } catch (e) {}
    }

    function onScriptDisabled() {
        try { ModuleManager.removeModule(enchantModule); } catch (e) {}
    }

    this.onScriptEnabled  = onScriptEnabled;
    this.onScriptDisabled = onScriptDisabled;
})();
