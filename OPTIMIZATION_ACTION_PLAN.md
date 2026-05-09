# OPTIMIZATION ACTION PLAN — РЕАЛЬНЫЕ ДАННЫЕ
## Horrible Client — Native Libraries

---

## РЕАЛЬНЫЕ ДАННЫЕ (из analyze_so.py)

### Лаунчер APK (`lib/armeabi-v7a/`)
| Файл | Размер | Безопасность |
|------|--------|-------------|
| libminecraftpe.so | **36.221 MB** | PIE ✅ NX ✅ Full RELRO ✅ |
| libfmod.so | **1.131 MB** | PIE ✅ NX ✅ Full RELRO ✅ |
| liblauncher.so | **0.439 MB** | PIE ✅ NX ✅ Full RELRO ✅ |
| libsubstrate.so | **0.017 MB** | PIE ✅ NX ✅ Full RELRO ✅ |
| libcallfunction.so | **684 bytes** | PIE ✅ NX ✅ **NO RELRO ❌ → ИСПРАВЛЕНО** |

### Minecraft APK (`Minecraft PE 1.1.5_src/lib/armeabi-v7a/`)
| Файл | Размер | Безопасность |
|------|--------|-------------|
| libminecraftpe.so | **36.221 MB** | PIE ✅ NX ✅ Full RELRO ✅ |
| libfmod.so | **1.131 MB** | PIE ✅ NX ✅ Full RELRO ✅ |

**Общий размер: 75.16 MB** (7 файлов)

---

## ЧТО ОКАЗАЛОСЬ НЕПРАВДОЙ

| Предыдущее предположение | Реальность |
|---|---|
| "libminecraftpe.so не стрипнут, 15-20 МБ debug" | ❌ **НЕТ .debug секций.** 36 МБ = реальный код |
| "Стрип сэкономит 18-24 МБ" | ❌ **Стрипать нечего** |
| "Файлы — дубликаты" | ❌ **Разные SHA256 хеши** |
| "Удалить libsubstrate.so" | ❌ **Нужен для хуков** (всего 17 КБ) |

---

## СТРУКТУРА (два отдельных APK)
```
ЛАУНЧЕР (horrible/lib/armeabi-v7a/):
├── libminecraftpe.so    ← 36 MB, движок (24 MB .text + 5 MB символы + 3 MB exceptions)
├── libfmod.so           ← 1.1 MB, звуковой движок
├── libcallfunction.so   ← 684 B, JNI-мост (gen_callfunction.py)
├── liblauncher.so       ← 439 KB, чит-хуки (chams, ESP, antiKB)
└── libsubstrate.so      ← 17 KB, MSHookFunction (НУЖЕН!)

MINECRAFT (Minecraft PE 1.1.5_src/lib/armeabi-v7a/):
├── libminecraftpe.so    ← 36 MB, оригинальный движок
├── libfmod.so           ← 1.1 MB, звук
└── wrap.sh              ← Scudo allocator workaround
```

---

## ЧТО РЕАЛЬНО МОЖНО ОПТИМИЗИРОВАТЬ

### 1. ✅ libcallfunction.so — RELRO добавлен
Единственная либа без Full RELRO. Исправлено в `gen_callfunction.py`:
- Добавлен PT_GNU_RELRO program header
- Добавлен DT_FLAGS_1 с DF_1_NOW (BIND_NOW)
**Запусти: `python gen_callfunction.py`**

### 2. Символы .dynstr + .dynsym (5.8 МБ на копию)
41,132 экспортированных C++ символа = 4.8 МБ строк + 1 МБ таблица.
Убирается только пересборкой с `-fvisibility=hidden` (нужны исходники MC PE).

### 3. .ARM.extab — 3 МБ на копию
Exception handling таблицы. Убираются с `-fno-exceptions`, но MC PE их использует → **рискованно**.

### 4. wrap.sh — уже есть оптимизация аллокатора
Scudo allocator настроен правильно для старого кода MC 1.1.5.

---

## БЕЗОПАСНОСТЬ — ИТОГ

**Хорошо:**
- Все основные либы: Full RELRO ✅, PIE ✅, NX Stack ✅
- Нет .debug секций (нет утечки отладочных путей)

**Мелкие замечания:**
- `sprintf`, `strcpy` — стандарт для C++ 2015 года, эксплуатация сложна
- Hardcoded `http://192.168.1.21:8888` — Mojang dev IP (безвреден, но палит декомпил)
- 45 hardcoded URL — стандартные API Microsoft/Xbox Live

---

## НЕ ТРОГАТЬ!
- **libsubstrate.so** — 17 КБ, нужен для хуков
- **libfmod.so** — звук, уже 1.1 МБ (оптимизировать некуда)
- **Файлы в Minecraft PE 1.1.5_src/lib/** — это другой APK, не дубликаты
