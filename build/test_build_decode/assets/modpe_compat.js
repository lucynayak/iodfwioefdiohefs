/**
 * ModPE Compatibility Layer
 * Maps BlockLauncher/MCPELauncher ModPE API to Variable client scripting API.
 * Auto-loaded before each user script.
 *
 * Existing scope objects available:
 *   LocalPlayer, Player, Level, Block, Inventory, Item, Memory, Abilities, Client
 *   Constants: BlockSide, MoveButton, PacketType, Enchantment, ParticleType
 *   Global: print(), preventDefault(), getScreenName(), getContext()
 */

// ============================================================
//  ModPE Global Functions
// ============================================================

function getPlayerX()   { return LocalPlayer.getPositionX(); }
function getPlayerY()   { return LocalPlayer.getPositionY(); }
function getPlayerZ()   { return LocalPlayer.getPositionZ(); }
function getPlayerEnt() { return LocalPlayer.getUniqueID();  }

function getPitch(ent) {
    return (ent !== undefined && ent !== null)
        ? Player.getPitch(ent)
        : LocalPlayer.getPitch();
}
function getYaw(ent) {
    return (ent !== undefined && ent !== null)
        ? Player.getYaw(ent)
        : LocalPlayer.getYaw();
}

function getTile(x, y, z)          { return Block.getID(x, y, z); }
function setTile(x, y, z, id, data){ LocalPlayer.buildBlock(x, y, z, id); }

function clientMessage(msg)  { Level.displayClientMessage(String(msg)); }
function tipMessage(msg)     { Level.showTipMessage(String(msg)); }

function setPosition(ent, x, y, z) {
    if (z !== undefined) {
        // setPosition(ent, x, y, z) - ModPE style, ignore entity
        LocalPlayer.setPosition(x, y, z);
    } else {
        // setPosition(x, y, z) - direct style
        LocalPlayer.setPosition(ent, x, y);
    }
}

function setVelX(ent, v) { LocalPlayer.setVelocityX(v !== undefined ? v : ent); }
function setVelY(ent, v) { LocalPlayer.setVelocityY(v !== undefined ? v : ent); }
function setVelZ(ent, v) { LocalPlayer.setVelocityZ(v !== undefined ? v : ent); }

function setRot(ent, yaw, pitch) {
    if (pitch !== undefined) {
        LocalPlayer.setRot(yaw, pitch);
    } else {
        LocalPlayer.setRot(ent, yaw);
    }
}

// ============================================================
//  Entity Namespace  (ModPE-style)
// ============================================================

var Entity = {
    getX:             function(ent) { return Player.getPositionX(ent); },
    getY:             function(ent) { return Player.getPositionY(ent); },
    getZ:             function(ent) { return Player.getPositionZ(ent); },
    getVelX:          function(ent) { return Player.getVelocityX(ent); },
    getVelY:          function(ent) { return Player.getVelocityY(ent); },
    getVelZ:          function(ent) { return Player.getVelocityZ(ent); },
    getPitch:         function(ent) { return Player.getPitch(ent); },
    getYaw:           function(ent) { return Player.getYaw(ent); },
    getHealth:        function(ent) { return Player.getHealth(ent); },
    getNameTag:       function(ent) { return Player.getNameTag(ent); },
    setNameTag:       function(ent, name) { Player.setNameTag(ent, name); },
    isAlive:          function(ent) { return Player.isAlive(ent); },
    isSneaking:       function(ent) { return Player.isSneaking(ent); },
    isOnFire:         function(ent) { return Player.isOnFire(ent); },
    isInWater:        function(ent) { return Player.isInWater(ent); },
    isInLava:         function(ent) { return Player.isInLava(ent); },
    isFalling:        function(ent) { return Player.isFalling(ent); },
    isOnGround:       function(ent) { return Player.isOnGround(ent); },
    isInvisible:      function(ent) { return Player.isInvisible(ent); },
    isInWorld:        function(ent) { return Player.isInWorld(ent); },
    isSitting:        function(ent) { return Player.isSitting(ent); },
    isImmobile:       function(ent) { return Player.isImmobile(ent); },
    isInCreativeMode: function(ent) { return Player.isInCreativeMode(ent); },
    setCollisionSize: function(ent, w, h) { Player.setCollisionSize(ent, w, h); },
    setShadowRadius:  function(ent, r)    { Player.setShadowRadius(ent, r); },
    getCollisionSize: function(ent) { return Player.getCollisionSize(ent); }
};

// ============================================================
//  Level Aliases  (add ModPE names to existing Level object)
// ============================================================

Level.getWorldTime   = function()  { return Level.getTime(); };
Level.setWorldTime   = function(t) { Level.setTime(t); };
Level.getAllEntities  = function()  { return Level.getAllPlayers(); };
Level.setSpawnPos    = function()  { /* not available */ };
Level.getWorldName   = function()  { return Level.getAddress(); };

// ============================================================
//  Player Aliases  (ModPE Player.* = local player shortcuts)
// ============================================================

// NOTE: The existing Player object has methods that take entity ID.
// ModPE Player.getX() (no args) means local player. We add these carefully.
Player.getX       = function() { return LocalPlayer.getPositionX(); };
Player.getY       = function() { return LocalPlayer.getPositionY(); };
Player.getZ       = function() { return LocalPlayer.getPositionZ(); };
Player.getEntity  = function() { return LocalPlayer.getUniqueID();  };

Player.getSelectedSlotId = function()     { return Inventory.getSelectedSlot(); };
Player.setSelectedSlotId = function(slot) { Inventory.setSelectedSlot(slot); };

Player.getArmorSlot         = function(slot) { return Inventory.getArmor(slot); };
Player.getCarriedItem       = function()     { return Item.getID(Inventory.getSelectedSlot()); };
Player.getCarriedItemCount  = function()     { return Item.getCount(Inventory.getSelectedSlot()); };
Player.getCarriedItemData   = function()     { return Item.getData(Inventory.getSelectedSlot()); };

Player.getPointedBlockX = function() {
    var v = LocalPlayer.getPointedVector();
    return v ? v[0] : -1;
};
Player.getPointedBlockY = function() {
    var v = LocalPlayer.getPointedVector();
    return v ? v[1] : -1;
};
Player.getPointedBlockZ = function() {
    var v = LocalPlayer.getPointedVector();
    return v ? v[2] : -1;
};

// ============================================================
//  Block Aliases
// ============================================================

Block.getName = function(id) { return Item.getName(id); };

// ============================================================
//  Callback Bridges  (ModPE callback names → native event names)
//
//  If a user script defines modTick(), the bridge onFastTick()
//  will delegate to it. If the user script redefines onFastTick()
//  directly, the bridge is overwritten — both styles work.
// ============================================================

function onFastTick() {
    if (typeof modTick === "function") modTick();
}

function onLevelTick() {
    if (typeof levelTick === "function") levelTick();
}

function onAttack(victim) {
    if (typeof attackHook === "function") attackHook(getPlayerEnt(), victim);
}

function onChat(msg) {
    if (typeof chatHook === "function") chatHook(msg);
}

function onUseItem(x, y, z, side, click, slot) {
    if (typeof useItem === "function") {
        var itemId = 0;
        try { itemId = Item.getID(slot); } catch(e) {}
        var blockId = 0;
        try { blockId = Block.getID(x, y, z); } catch(e) {}
        useItem(x, y, z, itemId, blockId, side);
    }
}

function onServerConnect(addr, port) {
    if (typeof newLevel === "function") newLevel(addr);
    if (typeof startedHook === "function") startedHook(addr, port);
}

function onServerDisconnect() {
    if (typeof leaveGame === "function") leaveGame();
}

function onReceiveServerMessage(msg) {
    if (typeof chatReceiveHook === "function") chatReceiveHook(msg);
}

function onPlayerAdded(ent) {
    if (typeof entityAddedHook === "function") entityAddedHook(ent);
}

function onScreenChange(screen) {
    if (typeof screenChangeHook === "function") screenChangeHook(screen);
}

function onTeleport(ent, x, y, z) {
    if (typeof entityTeleportHook === "function") entityTeleportHook(ent, x, y, z);
}

function onDraw() {
    if (typeof renderHook === "function") renderHook();
}

function onSendPacket(name, id) {
    if (typeof sendPacketHook === "function") sendPacketHook(name, id);
}

// ============================================================
//  ModPE Constants
// ============================================================

var ChatColor = {
    BLACK:        "\u00A70",
    DARK_BLUE:    "\u00A71",
    DARK_GREEN:   "\u00A72",
    DARK_AQUA:    "\u00A73",
    DARK_RED:     "\u00A74",
    DARK_PURPLE:  "\u00A75",
    GOLD:         "\u00A76",
    GRAY:         "\u00A77",
    DARK_GRAY:    "\u00A78",
    BLUE:         "\u00A79",
    GREEN:        "\u00A7a",
    AQUA:         "\u00A7b",
    RED:          "\u00A7c",
    LIGHT_PURPLE: "\u00A7d",
    YELLOW:       "\u00A7e",
    WHITE:        "\u00A7f",
    BOLD:         "\u00A7l",
    ITALIC:       "\u00A7o",
    UNDERLINE:    "\u00A7n",
    STRIKETHROUGH:"\u00A7m",
    OBFUSCATED:   "\u00A7k",
    RESET:        "\u00A7r"
};

var EntityType = {
    PLAYER:    63,
    CHICKEN:   10,
    COW:       11,
    PIG:       12,
    SHEEP:     13,
    WOLF:      14,
    ZOMBIE:    32,
    CREEPER:   33,
    SKELETON:  34,
    SPIDER:    35,
    ZOMBIE_PIGMAN: 36,
    SLIME:     37,
    ENDERMAN:  38,
    SILVERFISH:39,
    CAVE_SPIDER:40,
    GHAST:     41,
    MAGMA_CUBE:42,
    BLAZE:     43,
    WITHER:    52,
    ENDER_DRAGON:53,
    WITCH:     45,
    STRAY:     46,
    HUSK:      47,
    GUARDIAN:  49,
    ELDER_GUARDIAN:50,
    ARROW:     80,
    SNOWBALL:  81,
    EGG:       82,
    FIREBALL:  85,
    FISHING_HOOK:77,
    TNT:       65,
    FALLING_BLOCK:66,
    ITEM:      64,
    PRIMED_TNT:65,
    XP_ORB:    69
};

var MobEffect = {
    SPEED:           1,
    SLOWNESS:        2,
    HASTE:           3,
    MINING_FATIGUE:  4,
    STRENGTH:        5,
    INSTANT_HEALTH:  6,
    INSTANT_DAMAGE:  7,
    JUMP_BOOST:      8,
    NAUSEA:          9,
    REGENERATION:    10,
    RESISTANCE:      11,
    FIRE_RESISTANCE: 12,
    WATER_BREATHING: 13,
    INVISIBILITY:    14,
    BLINDNESS:       15,
    NIGHT_VISION:    16,
    HUNGER:          17,
    WEAKNESS:        18,
    POISON:          19,
    WITHER_EFFECT:   20,
    HEALTH_BOOST:    21,
    ABSORPTION:      22,
    SATURATION:      23
};

var ArmorType = {
    HELMET:     0,
    CHESTPLATE: 1,
    LEGGINGS:   2,
    BOOTS:      3
};

var DimensionId = {
    OVERWORLD: 0,
    NETHER:    1,
    THE_END:   2
};

var BlockFace = {
    DOWN:  0,
    UP:    1,
    NORTH: 2,
    SOUTH: 3,
    WEST:  4,
    EAST:  5
};

// ============================================================
//  Utility
// ============================================================

var ModPE = {
    // Version info
    version: "1.0.0",
    clientName: "Variable",

    // Log helper
    log: function(msg) { print(String(msg)); },

    // Persistent key-value storage
    readData: function(key) {
        try { return Data.getString(key); } catch(e) { return null; }
    },

    saveData: function(key, value) {
        try { Data.saveString(key, String(value)); } catch(e) {}
    },

    removeData: function(key) {
        try { Data.remove(key); } catch(e) {}
    },

    // Show tip
    showTipMessage: function(msg) { Level.showTipMessage(String(msg)); },

    // Reset callback bridges (internal)
    resetCallbacks: function() {
        // No-op; bridges are defined at load time
    }
};
