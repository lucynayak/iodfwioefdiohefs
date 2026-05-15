.class public final Le2/rd$Sampler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le2/rd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Sampler"
.end annotation


# instance fields
.field public final synthetic b:Le2/rd;

.field public mColors:[I

.field public mBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Le2/rd;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le2/rd$Sampler;->b:Le2/rd;

    # Pre-allocate color buffer 32*32 = 1024
    const/16 v0, 0x400

    new-array v0, v0, [I

    iput-object v0, p0, Le2/rd$Sampler;->mColors:[I

    # Pre-allocate 32x32 ARGB Bitmap
    const/16 v0, 0x20

    const/16 v1, 0x20

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Le2/rd$Sampler;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static idToColor(I)I
    .registers 2

    sparse-switch p0, :sswitch_data

    # default for unknown non-zero block: medium gray
    const v0, -0x959596

    return v0

    :sw_air
    const/4 v0, 0x0
    return v0

    :sw_stone
    const v0, -0x858586          # 0xFF7A7A7A
    return v0

    :sw_grass
    const v0, -0xa64dc5          # 0xFF59B23B
    return v0

    :sw_dirt
    const v0, -0x84a8cf          # 0xFF7B5731
    return v0

    :sw_cobble
    const v0, -0xa1a1a2          # 0xFF5E5E5E
    return v0

    :sw_planks
    const v0, -0x4a5d98          # 0xFFB5A268
    return v0

    :sw_sapling
    const v0, -0xc070d1          # 0xFF3F8F2F
    return v0

    :sw_bedrock
    const v0, -0xd1d1d2          # 0xFF2E2E2E
    return v0

    :sw_water
    const v0, -0xd5aa27          # 0xFF2A55D9
    return v0

    :sw_lava
    const v0, -0x1fa5e8          # 0xFFE05A18
    return v0

    :sw_sand
    const v0, -0x15275f          # 0xFFEAD8A1
    return v0

    :sw_gravel
    const v0, -0x666667          # 0xFF999999
    return v0

    :sw_gold_ore
    const v0, -0x476295          # 0xFFB89D6B
    return v0

    :sw_iron_ore
    const v0, -0x5c82a2          # 0xFFA37D5E
    return v0

    :sw_coal_ore
    const v0, -0xc3c3c4          # 0xFF3C3C3C
    return v0

    :sw_log
    const v0, -0x91a9cb          # 0xFF6E5635
    return v0

    :sw_leaves
    const v0, -0xd583d6          # 0xFF2A7C2A
    return v0

    :sw_sponge
    const v0, -0x2b39a9          # 0xFFD4C657
    return v0

    :sw_glass
    const v0, -0x361918          # 0xFFC9E6E8
    return v0

    :sw_lapis_ore
    const v0, -0xc2a255          # 0xFF3D5DAB
    return v0

    :sw_lapis_block
    const v0, -0xcfa83a          # 0xFF3057C6
    return v0

    :sw_sandstone
    const v0, -0x1f347b          # 0xFFE0CB85
    return v0

    :sw_cobweb
    const v0, -0x121213          # 0xFFEDEDED
    return v0

    :sw_tall_grass
    const v0, -0x9a5cce          # 0xFF65A332
    return v0

    :sw_wool
    const v0, -0x1f1f20          # 0xFFE0E0E0
    return v0

    :sw_dandelion
    const v0, -0x1f2000          # 0xFFE0E000 yellow flower
    return v0

    :sw_rose
    const v0, -0x2fcfd0          # 0xFFD03030 red flower
    return v0

    :sw_gold_block
    const v0, -0x1fa0            # 0xFFFFE060
    return v0

    :sw_iron_block
    const v0, -0x2f2f30          # 0xFFD0D0D0
    return v0

    :sw_stone_slab
    const v0, -0x848485          # 0xFF7B7B7B
    return v0

    :sw_bricks
    const v0, -0x57afc4          # 0xFFA8503C
    return v0

    :sw_tnt
    const v0, -0x2ddcdd          # 0xFFD22323
    return v0

    :sw_bookshelf
    const v0, -0x4b6fa4          # 0xFFB4905C
    return v0

    :sw_mossy_cobble
    const v0, -0xb699b7          # 0xFF496649
    return v0

    :sw_obsidian
    const v0, -0xe0e4d1          # 0xFF1F1B2F
    return v0

    :sw_fire
    const v0, -0x73e0            # 0xFFFF8C20
    return v0

    :sw_spawner
    const v0, -0xe1d1e2          # 0xFF1E2E1E
    return v0

    :sw_chest
    const v0, -0x6381bb          # 0xFF9C7E45
    return v0

    :sw_redstone_wire
    const v0, -0x33ffff          # 0xFFCC0000
    return v0

    :sw_diamond_ore
    const v0, -0x5f1f18          # 0xFFA0E0E8
    return v0

    :sw_diamond_block
    const v0, -0x701819          # 0xFF8FE7E7
    return v0

    :sw_crafting_table
    const v0, -0x5c83a4          # 0xFFA37C5C
    return v0

    :sw_farmland
    const v0, -0x73a1cd          # 0xFF8C5E33
    return v0

    :sw_furnace
    const v0, -0x9b9b9c          # 0xFF646464
    return v0

    :sw_redstone_ore
    const v0, -0x40cfd0          # 0xFFBF3030
    return v0

    :sw_ice
    const v0, -0x5f4301          # 0xFFA0BCFF
    return v0

    :sw_snow
    const v0, -0x1               # 0xFFFFFFFF
    return v0

    :sw_cactus
    const v0, -0xe5addc          # 0xFF1A5224
    return v0

    :sw_clay
    const v0, -0x5f594c          # 0xFFA0A6B4
    return v0

    :sw_sugarcane
    const v0, -0x723f82          # 0xFF8DC07E
    return v0

    :sw_pumpkin
    const v0, -0x1f76e0          # 0xFFE08920
    return v0

    :sw_netherrack
    const v0, -0x85dbdc          # 0xFF7A2424
    return v0

    :sw_soulsand
    const v0, -0xaabcd1          # 0xFF55432F
    return v0

    :sw_glowstone
    const v0, -0x1980            # 0xFFFFE680
    return v0

    :sw_jacko
    const v0, -0x1f5fbc          # 0xFFE0A044
    return v0

    :sw_stone_bricks
    const v0, -0x757576          # 0xFF8A8A8A
    return v0

    :sw_mushroom_brown_block
    const v0, -0x74a5d5          # 0xFF8B5A2B
    return v0

    :sw_mushroom_red_block
    const v0, -0x47a6a7          # 0xFFB85959
    return v0

    :sw_iron_bars
    const v0, -0x99999a          # 0xFF666666
    return v0

    :sw_melon
    const v0, -0x574bc5          # 0xFFA8B43B (green-yellow)
    return v0

    :sw_vines
    const v0, -0xd590d6          # 0xFF2A6F2A
    return v0

    :sw_lily_pad
    const v0, -0x9f55e1          # 0xFF60AA1F
    return v0

    :sw_nether_brick
    const v0, -0xd2ece8          # 0xFF2D1318
    return v0

    :sw_nether_wart
    const v0, -0x84e4ca          # 0xFF7B1B36
    return v0

    :sw_enchanting_table
    const v0, -0xefede8          # 0xFF101218
    return v0

    :sw_end_stone
    const v0, -0x1f2574          # 0xFFE0DA8C
    return v0

    :sw_dragon_egg
    const v0, -0xe9ece8          # 0xFF161318
    return v0

    :sw_redstone_lamp
    const v0, -0x6493c0          # 0xFF9B6C40 (off)
    return v0

    :sw_emerald_ore
    const v0, -0xc934ca          # 0xFF36CB36
    return v0

    :sw_ender_chest
    const v0, -0xc2b9ba          # 0xFF3D4646
    return v0

    :sw_emerald_block
    const v0, -0xbf1fa0          # 0xFF40E060
    return v0

    :sw_command_block
    const v0, -0x7591bb          # 0xFF8A6E45
    return v0

    :sw_beacon
    const v0, -0x8c4844          # 0xFF73B7BC
    return v0

    :sw_anvil
    const v0, -0xbdbdbe          # 0xFF424242
    return v0

    :sw_redstone_block
    const v0, -0x54f0f1          # 0xFFAB0F0F
    return v0

    :sw_quartz_ore
    const v0, -0x1f2530          # 0xFFE0DAD0
    return v0

    :sw_quartz_block
    const v0, -0x191f34          # 0xFFE6E0CC
    return v0

    :sw_stained_clay
    const v0, -0x5fa7b6          # 0xFFA0584A
    return v0

    :sw_acacia_leaves
    const v0, -0x837fcd          # 0xFF7C8033
    return v0

    :sw_acacia_log
    const v0, -0x94afcf          # 0xFF6B5031
    return v0

    :sw_acacia_stairs
    const v0, -0x65a6c3          # 0xFF9A593D
    return v0

    :sw_dark_oak_stairs
    const v0, -0xcedde2          # 0xFF31221E
    return v0

    :sw_slime_block
    const v0, -0x5721a1          # 0xFFA8DE5F
    return v0

    :sw_prismarine
    const v0, -0xb57a7b          # 0xFF4A8585
    return v0

    :sw_sea_lantern
    const v0, -0x4a2228          # 0xFFB5DDD8
    return v0

    :sw_hay_block
    const v0, -0x577cd0          # 0xFFA88330
    return v0

    :sw_hardened_clay
    const v0, -0x6ca1bb          # 0xFF935E45
    return v0

    :sw_coal_block
    const v0, -0xf1f1f2          # 0xFF0E0E0E
    return v0

    :sw_packed_ice
    const v0, -0x573b20          # 0xFFA8C4E0
    return v0

    :sw_red_sandstone
    const v0, -0x329ac7          # 0xFFCD6539
    return v0

    :sw_torch
    const v0, -0x2fc0            # 0xFFFFD040 warm yellow flame
    return v0

    :sw_bed
    const v0, -0x2dafb0          # 0xFFD25050 red blanket
    return v0

    :sw_portal
    const v0, -0xafcf80          # 0xFF503080 nether portal purple
    return v0

    :sw_cake
    const v0, -0x1d295e          # 0xFFE2D6A2 cream
    return v0

    :sw_redstone_torch_off
    const v0, -0x850000          # 0xFF7B0000 dark red
    return v0

    :sw_brewing_stand
    const v0, -0xb6bfc0          # 0xFF494040 dark gray
    return v0

    :sw_end_portal
    const v0, -0xffffe8          # 0xFF000018 void blue-black
    return v0

    :sw_spruce_wood
    const v0, -0xaac2da          # 0xFF553D26 dark brown
    return v0

    :sw_birch_wood
    const v0, -0x273a77          # 0xFFD8C589 light tan
    return v0

    :sw_jungle_wood
    const v0, -0x557eb6          # 0xFFAA814A orange-brown
    return v0

    :sw_cocoa
    const v0, -0x83a5cb          # 0xFF7C5A35 cocoa brown
    return v0

    :sw_carrots
    const v0, -0x2f7fe0          # 0xFFD08020 orange
    return v0

    :sw_wheat
    const v0, -0x365fc0          # 0xFFC9A040 golden wheat
    return v0

    :sw_dispenser
    const v0, -0xbababb          # 0xFF454545 dark mechanism
    return v0

    :sw_hopper
    const v0, -0xcacacb          # 0xFF353535 very dark metal
    return v0

    :sswitch_data
    .sparse-switch
        0x0 -> :sw_air
        0x1 -> :sw_stone
        0x2 -> :sw_grass
        0x3 -> :sw_dirt
        0x4 -> :sw_cobble
        0x5 -> :sw_planks
        0x6 -> :sw_sapling
        0x7 -> :sw_bedrock
        0x8 -> :sw_water
        0x9 -> :sw_water
        0xa -> :sw_lava
        0xb -> :sw_lava
        0xc -> :sw_sand
        0xd -> :sw_gravel
        0xe -> :sw_gold_ore
        0xf -> :sw_iron_ore
        0x10 -> :sw_coal_ore
        0x11 -> :sw_log
        0x12 -> :sw_leaves
        0x13 -> :sw_sponge
        0x14 -> :sw_glass
        0x15 -> :sw_lapis_ore
        0x16 -> :sw_lapis_block
        0x17 -> :sw_dispenser
        0x18 -> :sw_sandstone
        0x19 -> :sw_planks
        0x1a -> :sw_bed
        0x1b -> :sw_iron_bars
        0x1c -> :sw_iron_bars
        0x1d -> :sw_planks
        0x1e -> :sw_cobweb
        0x1f -> :sw_tall_grass
        0x21 -> :sw_planks
        0x22 -> :sw_planks
        0x23 -> :sw_wool
        0x24 -> :sw_planks
        0x25 -> :sw_dandelion
        0x26 -> :sw_rose
        0x27 -> :sw_dirt
        0x28 -> :sw_rose
        0x29 -> :sw_gold_block
        0x2a -> :sw_iron_block
        0x2b -> :sw_stone_slab
        0x2c -> :sw_stone_slab
        0x2d -> :sw_bricks
        0x2e -> :sw_tnt
        0x2f -> :sw_bookshelf
        0x30 -> :sw_mossy_cobble
        0x31 -> :sw_obsidian
        0x32 -> :sw_torch
        0x33 -> :sw_fire
        0x34 -> :sw_spawner
        0x35 -> :sw_planks
        0x36 -> :sw_chest
        0x37 -> :sw_redstone_wire
        0x38 -> :sw_diamond_ore
        0x39 -> :sw_diamond_block
        0x3a -> :sw_crafting_table
        0x3b -> :sw_wheat
        0x3c -> :sw_farmland
        0x3d -> :sw_furnace
        0x3e -> :sw_furnace
        0x3f -> :sw_planks
        0x40 -> :sw_planks
        0x41 -> :sw_planks
        0x42 -> :sw_iron_bars
        0x43 -> :sw_cobble
        0x44 -> :sw_planks
        0x45 -> :sw_planks
        0x47 -> :sw_iron_block
        0x48 -> :sw_planks
        0x49 -> :sw_redstone_ore
        0x4a -> :sw_redstone_ore
        0x4b -> :sw_redstone_torch_off
        0x4c -> :sw_redstone_ore
        0x4d -> :sw_cobble
        0x4e -> :sw_snow
        0x4f -> :sw_ice
        0x50 -> :sw_snow
        0x51 -> :sw_cactus
        0x52 -> :sw_clay
        0x53 -> :sw_sugarcane
        0x56 -> :sw_pumpkin
        0x57 -> :sw_netherrack
        0x58 -> :sw_soulsand
        0x59 -> :sw_glowstone
        0x5a -> :sw_portal
        0x5b -> :sw_jacko
        0x5c -> :sw_cake
        0x5d -> :sw_planks
        0x5e -> :sw_planks
        0x5f -> :sw_glass
        0x60 -> :sw_planks
        0x62 -> :sw_stone_bricks
        0x63 -> :sw_mushroom_brown_block
        0x64 -> :sw_mushroom_red_block
        0x65 -> :sw_iron_bars
        0x66 -> :sw_glass
        0x67 -> :sw_melon
        0x68 -> :sw_tall_grass
        0x69 -> :sw_tall_grass
        0x6a -> :sw_vines
        0x6b -> :sw_planks
        0x6c -> :sw_bricks
        0x6d -> :sw_stone_bricks
        0x6e -> :sw_clay
        0x6f -> :sw_lily_pad
        0x70 -> :sw_nether_brick
        0x71 -> :sw_nether_brick
        0x72 -> :sw_nether_brick
        0x73 -> :sw_nether_wart
        0x74 -> :sw_enchanting_table
        0x75 -> :sw_brewing_stand
        0x76 -> :sw_cobble
        0x77 -> :sw_end_portal
        0x78 -> :sw_end_stone
        0x79 -> :sw_end_stone
        0x7a -> :sw_dragon_egg
        0x7b -> :sw_redstone_lamp
        0x7c -> :sw_glowstone
        0x7d -> :sw_planks
        0x7e -> :sw_planks
        0x7f -> :sw_cocoa
        0x80 -> :sw_sandstone
        0x81 -> :sw_emerald_ore
        0x82 -> :sw_ender_chest
        0x83 -> :sw_planks
        0x84 -> :sw_iron_bars
        0x85 -> :sw_emerald_block
        0x86 -> :sw_spruce_wood
        0x87 -> :sw_birch_wood
        0x88 -> :sw_jungle_wood
        0x89 -> :sw_command_block
        0x8a -> :sw_beacon
        0x8b -> :sw_cobble
        0x8c -> :sw_dirt
        0x8d -> :sw_carrots
        0x8e -> :sw_dirt
        0x8f -> :sw_planks
        0x90 -> :sw_anvil
        0x91 -> :sw_anvil
        0x92 -> :sw_chest
        0x93 -> :sw_gold_block
        0x94 -> :sw_iron_block
        0x95 -> :sw_planks
        0x96 -> :sw_planks
        0x97 -> :sw_planks
        0x98 -> :sw_redstone_block
        0x99 -> :sw_quartz_ore
        0x9a -> :sw_hopper
        0x9b -> :sw_quartz_block
        0x9c -> :sw_quartz_block
        0x9d -> :sw_iron_bars
        0x9e -> :sw_dispenser
        0x9f -> :sw_stained_clay
        0xa0 -> :sw_glass
        0xa1 -> :sw_acacia_leaves
        0xa2 -> :sw_acacia_log
        0xa3 -> :sw_acacia_stairs
        0xa4 -> :sw_dark_oak_stairs
        0xa5 -> :sw_slime_block
        0xa6 -> :sw_air
        0xa7 -> :sw_iron_block
        0xa8 -> :sw_prismarine
        0xa9 -> :sw_sea_lantern
        0xaa -> :sw_hay_block
        0xab -> :sw_wool
        0xac -> :sw_hardened_clay
        0xad -> :sw_coal_block
        0xae -> :sw_packed_ice
        0xaf -> :sw_tall_grass
        0xb0 -> :sw_planks
        0xb1 -> :sw_planks
        0xb2 -> :sw_planks
        0xb3 -> :sw_red_sandstone
        0xb4 -> :sw_red_sandstone
        0xb5 -> :sw_red_sandstone
        0xb6 -> :sw_red_sandstone
    .end sparse-switch
.end method


# virtual methods
.method public final run()V
    .registers 10

    # Initial settling delay: gives the game tick time to stabilize after
    # module enable, prevents the "jitter on toggle" spike from a huge
    # first sample landing while the game is still loading view state.
    const-wide/16 v0, 0x1f4              # 500 ms

    :try_start_settle
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_settle
    .catch Ljava/lang/InterruptedException; {:try_start_settle .. :try_end_settle} :catch_settle

    goto :loop_main

    :catch_settle
    move-exception v0

    return-void

    :loop_main
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :exit_loop

    iget-object v0, p0, Le2/rd$Sampler;->b:Le2/rd;

    if-eqz v0, :exit_loop

    iget-object v0, v0, Le2/rd;->oView:Le2/RadarView;

    if-eqz v0, :exit_loop

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isInGame()Z

    move-result v0

    if-nez v0, :do_sample

    const-wide/16 v0, 0xc8

    :try_start_idle
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_idle
    .catch Ljava/lang/InterruptedException; {:try_start_idle .. :try_end_idle} :catch_idle

    goto :loop_main

    :catch_idle
    move-exception v0

    return-void

    :do_sample
    :try_start_sample
    invoke-virtual {p0}, Le2/rd$Sampler;->sample()V
    :try_end_sample
    .catch Ljava/lang/Exception; {:try_start_sample .. :try_end_sample} :catch_sample

    goto :sleep_user

    :catch_sample
    move-exception v0

    :sleep_user
    # Read refresh duration (ms) from outer.r slider, clamp to [50, 5000]
    iget-object v2, p0, Le2/rd$Sampler;->b:Le2/rd;

    if-eqz v2, :exit_loop

    iget-object v2, v2, Le2/rd;->r:Li2/d;

    if-eqz v2, :default_sleep

    invoke-virtual {v2}, Li2/d;->getCurrentValue()D

    move-result-wide v2

    double-to-int v0, v2

    const/16 v1, 0x32                    # 50 ms min
    if-ge v0, v1, :ms_lo_ok
    move v0, v1

    :ms_lo_ok
    const v1, 0x1388                     # 5000 ms max
    if-le v0, v1, :ms_hi_ok
    move v0, v1

    :ms_hi_ok
    int-to-long v0, v0

    goto :do_sleep

    :default_sleep
    const-wide/16 v0, 0x1f4              # 500 ms fallback if slider missing

    :do_sleep
    :try_start_sleep
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_sleep
    .catch Ljava/lang/InterruptedException; {:try_start_sleep .. :try_end_sleep} :catch_sleep

    goto :loop_main

    :catch_sleep
    move-exception v0

    :exit_loop
    return-void
.end method

.method public sample()V
    .locals 30

    move-object/from16 v15, p0

    iget-object v0, v15, Le2/rd$Sampler;->b:Le2/rd;

    if-eqz v0, :return_void

    iget-object v0, v0, Le2/rd;->oView:Le2/RadarView;

    if-eqz v0, :return_void

    move-object/from16 v20, v0          # v20 = oView (setData arg slot)

    # Re-check isInGame right before any native player access.
    # The run() loop already checks, but there's a small race window
    # during world load/unload where the LocalPlayer pointer can be null
    # while isInGame still transitions. getUniqueID() will SIGSEGV
    # on null Entity, so guard tightly here.
    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isInGame()Z

    move-result v0

    if-eqz v0, :return_void

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getUniqueID()J

    move-result-wide v0

    move-wide/from16 v18, v0            # v18,v19 = uid (saved)

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->getPositionX(J)F

    move-result v2

    move/from16 v25, v2                 # v25 = pxf

    move-wide/from16 v0, v18

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->getPositionY(J)F

    move-result v3

    move-wide/from16 v0, v18

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->getPositionZ(J)F

    move-result v4

    move/from16 v27, v4                 # v27 = pzf

    float-to-int v7, v2                 # v7 = px

    float-to-int v8, v3                 # v8 = py

    float-to-int v9, v4                 # v9 = pz

    # Reuse pre-allocated colors[1024]
    iget-object v14, v15, Le2/rd$Sampler;->mColors:[I

    if-nez v14, :have_colors

    const/16 v0, 0x400

    new-array v14, v0, [I

    iput-object v14, v15, Le2/rd$Sampler;->mColors:[I

    :have_colors
    # dz loop (v10 = dz)
    const/16 v10, -0x10

    :loop_dz
    const/16 v0, 0x10

    if-ge v10, v0, :end_dz

    add-int v11, v9, v10                # wz = pz + dz

    const/16 v12, -0x10

    :loop_dx
    const/16 v0, 0x10

    if-ge v12, v0, :end_dx

    add-int v13, v7, v12                # wx = px + dx

    # Vertical scan: from min(py+32, 200) DOWN TO 0, early-exit on first non-air.
    # Catches surface terrain regardless of player altitude.
    const/4 v5, 0x0                     # found id

    add-int/lit8 v6, v8, 0x20           # v6 = y = py + 32

    const/16 v0, 0xc8                   # cap at y = 200

    if-le v6, v0, :ystart_ok

    move v6, v0

    :ystart_ok
    :loop_y
    const/4 v0, 0x0                     # min y = 0

    if-lt v6, v0, :end_y

    invoke-static {v13, v6, v11}, Ldev/virus/variable/launcher/api/NativeBlock;->getID(III)I

    move-result v0

    if-eqz v0, :y_next

    move v5, v0

    goto :end_y

    :y_next
    add-int/lit8 v6, v6, -0x1

    goto :loop_y

    :end_y
    invoke-static {v5}, Le2/rd$Sampler;->idToColor(I)I

    move-result v0

    add-int/lit8 v1, v10, 0x10

    shl-int/lit8 v1, v1, 0x5

    add-int/lit8 v2, v12, 0x10

    add-int/2addr v1, v2

    aput v0, v14, v1

    add-int/lit8 v12, v12, 0x1

    goto :loop_dx

    :end_dx
    add-int/lit8 v10, v10, 0x1

    goto :loop_dz

    :end_dz
    # ---- Update bitmap pixels ----
    iget-object v9, v15, Le2/rd$Sampler;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v9, :have_bitmap

    const/16 v0, 0x20

    const/16 v1, 0x20

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, v15, Le2/rd$Sampler;->mBitmap:Landroid/graphics/Bitmap;

    :have_bitmap
    # setPixels(colors, offset=0, stride=32, x=0, y=0, w=32, h=32)
    # 7 args + this = 8 regs total. Use /range.
    move-object/from16 v0, v9           # v0 = bitmap
    move-object/from16 v1, v14          # v1 = colors[]
    const/4 v2, 0x0                     # v2 = offset
    const/16 v3, 0x20                   # v3 = stride
    const/4 v4, 0x0                     # v4 = x
    const/4 v5, 0x0                     # v5 = y
    const/16 v6, 0x20                   # v6 = w
    const/16 v7, 0x20                   # v7 = h

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    move-object/from16 v21, v9          # v21 = bitmap (setData arg)

    # ---- Players ----
    # Re-check isInGame: world could unload between terrain scan and player loop.
    # NativePlayer.getPositionX/Z(pid) will SIGSEGV if entities are nulled.
    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isInGame()Z

    move-result v0

    if-nez v0, :game_still_active

    # World gone -> skip player work, still update view with terrain we collected
    const/4 v0, 0x0

    new-array v3, v0, [F

    new-array v4, v0, [F

    const/4 v5, 0x0

    goto :end_p

    :game_still_active
    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLevel;->getAllPlayers()[J

    move-result-object v6

    if-nez v6, :have_player_array

    const/4 v0, 0x0

    new-array v6, v0, [J

    :have_player_array
    array-length v0, v6

    new-array v3, v0, [F                # dxArr

    new-array v4, v0, [F                # dzArr

    const/4 v5, 0x0                     # pc = 0

    const/4 v2, 0x0                     # i = 0

    :loop_p
    array-length v0, v6

    if-ge v2, v0, :end_p

    aget-wide v0, v6, v2                # pid (long) -> v0,v1

    move-wide/from16 v28, v18

    cmp-long v22, v0, v28

    if-eqz v22, :p_skip

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->getPositionX(J)F

    move-result v22

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->getPositionZ(J)F

    move-result v23

    sub-float v22, v22, v25

    sub-float v23, v23, v27

    aput v22, v3, v5

    aput v23, v4, v5

    add-int/lit8 v5, v5, 0x1

    :p_skip
    add-int/lit8 v2, v2, 0x1

    goto :loop_p

    :end_p
    # setData(bitmap, range=16, dxArr, dzArr, pc) -> /range {v20..v25}
    # v20 = view, v21 = bitmap, v22 = range, v23 = dxArr, v24 = dzArr, v25 = pc
    const/16 v22, 0x10

    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move/from16 v25, v5

    invoke-virtual/range {v20 .. v25}, Le2/RadarView;->setData(Landroid/graphics/Bitmap;I[F[FI)V

    # postInvalidate on UI thread
    move-object/from16 v0, v20

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    :return_void
    return-void
.end method
