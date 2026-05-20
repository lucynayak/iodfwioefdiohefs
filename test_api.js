// test_api.js — тест новых API методов (Block.getData, Block.findAll, Entity.getAll)
// Скопируй в /sdcard/games/horrible/scripts/test_api.js

// === Хелпер-обёртки для удобного доступа ===

// Block.findAll возвращает плоский [x,y,z,...]. Эта обёртка делает [{x,y,z}, ...]
function findAllBlocks(id, radius) {
    var flat = Block.findAll(id, radius);
    var result = [];
    for (var i = 0; i < flat.length; i += 3) {
        result.push({ x: flat[i], y: flat[i+1], z: flat[i+2] });
    }
    return result;
}

// Block.getData возвращает (id<<16)|meta. Эта обёртка разбирает.
// ВНИМАНИЕ: meta пока всегда 0 (ограничение Phase 1A)
function getBlockData(x, y, z) {
    var packed = Block.getData(x, y, z);
    return { id: packed >> 16, meta: packed & 0xFFFF };
}

function onScriptEnabled() {
    Level.displayClientMessage("=== API Test Script Loaded ===");
}

// Тест 1: Block.getData — вызывается по чату командой ".testdata"
// Показывает блок под ногами: id и meta
function testGetData() {
    try {
        var px = Math.floor(LocalPlayer.getPositionX());
        var py = Math.floor(LocalPlayer.getPositionY()) - 2; // блок под ногами
        var pz = Math.floor(LocalPlayer.getPositionZ());

        var packed = Block.getData(px, py, pz);
        var id = packed >> 16;         // старшие биты = block ID
        var meta = packed & 0xFFFF;    // младшие биты = meta (пока всегда 0)

        var idCheck = Block.getID(px, py, pz);

        Level.displayClientMessage("Block at (" + px + "," + py + "," + pz + "):");
        Level.displayClientMessage("  getData -> id=" + id + " meta=" + meta);
        Level.displayClientMessage("  getID   -> " + idCheck);
        Level.displayClientMessage("  Match: " + (id === idCheck));
    } catch (e) {
        Level.displayClientMessage("getData ERROR: " + e);
    }
}

// Тест 2: Block.findAll — ищет определённый блок вокруг игрока
// Вызывается командой ".testfind"
function testFindAll() {
    try {
        var px = Math.floor(LocalPlayer.getPositionX());
        var py = Math.floor(LocalPlayer.getPositionY()) - 2;
        var pz = Math.floor(LocalPlayer.getPositionZ());

        // узнаём ID блока под ногами и ищем такие же вокруг
        var targetId = Block.getID(px, py, pz);
        var radius = 5;

        Level.displayClientMessage("Finding block id=" + targetId + " radius=" + radius + "...");

        var results = Block.findAll(targetId, radius);
        var count = results.length / 3;

        Level.displayClientMessage("Found " + count + " blocks of id=" + targetId);

        // показываем первые 3 найденных
        var show = Math.min(count, 3);
        for (var i = 0; i < show; i++) {
            var bx = results[i * 3];
            var by = results[i * 3 + 1];
            var bz = results[i * 3 + 2];
            Level.displayClientMessage("  [" + (i+1) + "] (" + bx + "," + by + "," + bz + ")");
        }
        if (count > 3) {
            Level.displayClientMessage("  ... and " + (count - 3) + " more");
        }
    } catch (e) {
        Level.displayClientMessage("findAll ERROR: " + e);
    }
}

// Тест 3: Entity.getAll — список всех игроков
// Вызывается командой ".testentity"
function testEntityGetAll() {
    try {
        var entities = Entity.getAll();
        Level.displayClientMessage("Entity.getAll() returned " + entities.length + " entities");

        for (var i = 0; i < entities.length; i++) {
            Level.displayClientMessage("  [" + i + "] uid=" + entities[i]);
        }

        if (entities.length === 0) {
            Level.displayClientMessage("  (No players found - are you in a world?)");
        }
    } catch (e) {
        Level.displayClientMessage("getAll ERROR: " + e);
    }
}

// Тест 4: Быстрый тест всего сразу
// Вызывается командой ".testall"
function testAllAPIs() {
    Level.displayClientMessage("--- Running all API tests ---");
    testGetData();
    testFindAll();
    testEntityGetAll();
    Level.displayClientMessage("--- All tests done ---");
}

// Обработка чат-команд
function onChat(msg) {
    if (msg === ".testdata") {
        preventDefault();
        testGetData();
    } else if (msg === ".testfind") {
        preventDefault();
        testFindAll();
    } else if (msg === ".testentity") {
        preventDefault();
        testEntityGetAll();
    } else if (msg === ".testall") {
        preventDefault();
        testAllAPIs();
    } else if (msg === ".testhelp") {
        preventDefault();
        Level.displayClientMessage("=== API Test Commands ===");
        Level.displayClientMessage(".testdata   - Block.getData test");
        Level.displayClientMessage(".testfind   - Block.findAll test");
        Level.displayClientMessage(".testentity - Entity.getAll test");
        Level.displayClientMessage(".testall    - Run all tests");
    }
}
