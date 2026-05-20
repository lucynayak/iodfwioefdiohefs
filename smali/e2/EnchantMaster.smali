.class public final Le2/EnchantMaster;
.super Lc2/b;
.source "SourceFile"


# instance fields
.field public final enchant:Li2/b;

.field public final level:Li2/d;

.field public final interval:Li2/d;

.field public tickCounter:I


# direct methods
.method public constructor <init>()V
    .registers 8

    const-string v0, "EnchantMaster"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "Player"

    invoke-direct {p0, v0, v1, v2, v3}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Sharpness"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Protection"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Efficiency"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Fortune"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Looting"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Unbreaking"

    aput-object v2, v0, v1

    new-instance v1, Li2/b;

    const-string v2, "Enchant"

    invoke-direct {v1, v2, v0}, Li2/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v1, p0, Le2/EnchantMaster;->enchant:Li2/b;

    invoke-virtual {p0, v1}, Lc2/b;->addSetting(Li2/c;)V

    new-instance v0, Li2/d;

    const/4 v1, 0x4

    new-array v1, v1, [D

    fill-array-data v1, :array_0

    const-string v2, "Level"

    invoke-direct {v0, v2, v1}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v0, p0, Le2/EnchantMaster;->level:Li2/d;

    invoke-virtual {p0, v0}, Lc2/b;->addSetting(Li2/c;)V

    new-instance v0, Li2/d;

    const/4 v1, 0x4

    new-array v1, v1, [D

    fill-array-data v1, :array_1

    const-string v2, "Interval"

    invoke-direct {v0, v2, v1}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v0, p0, Le2/EnchantMaster;->interval:Li2/d;

    invoke-virtual {p0, v0}, Lc2/b;->addSetting(Li2/c;)V

    const/4 v0, 0x0

    iput v0, p0, Le2/EnchantMaster;->tickCounter:I

    return-void

    :array_0
    .array-data 8
        0x4034000000000000L    # 20.0
        0x3ff0000000000000L    # 1.0
        0x40d3880000000000L    # 20000.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_1
    .array-data 8
        0x4024000000000000L    # 10.0
        0x3ff0000000000000L    # 1.0
        0x4059000000000000L    # 100.0
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method


# virtual methods
.method public static enchantIdFor(Ljava/lang/String;)I
    .registers 3

    if-nez p0, :cond_0

    const/16 v0, 0x9

    return v0

    :cond_0
    const-string v0, "Protection"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    const-string v0, "Sharpness"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x9

    return v0

    :cond_2
    const-string v0, "Efficiency"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xf

    return v0

    :cond_3
    const-string v0, "Fortune"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x12

    return v0

    :cond_4
    const-string v0, "Looting"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x15

    return v0

    :cond_5
    const-string v0, "Unbreaking"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x11

    return v0

    :cond_6
    const/16 v0, 0x9

    return v0
.end method

.method public final J()V
    .registers 8

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isInGame()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Le2/EnchantMaster;->tickCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Le2/EnchantMaster;->tickCounter:I

    iget-object v1, p0, Le2/EnchantMaster;->interval:Li2/d;

    invoke-virtual {v1}, Li2/d;->getCurrentValue()D

    move-result-wide v1

    double-to-int v1, v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    rem-int v2, v0, v1

    if-eqz v2, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Le2/EnchantMaster;->tickCounter:I

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeInventory;->getSelectedSlot()I

    move-result v0

    if-gez v0, :cond_3

    return-void

    :cond_3
    invoke-static {v0}, Ldev/virus/variable/launcher/api/NativeItem;->getID(I)I

    move-result v1

    if-nez v1, :cond_4

    return-void

    :cond_4
    iget-object v1, p0, Le2/EnchantMaster;->enchant:Li2/b;

    invoke-virtual {v1}, Li2/b;->getCurrentMode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le2/EnchantMaster;->enchantIdFor(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Le2/EnchantMaster;->level:Li2/d;

    invoke-virtual {v2}, Li2/d;->getCurrentValue()D

    move-result-wide v2

    double-to-int v2, v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_5

    const/4 v2, 0x1

    :cond_5
    const v3, 0x7fff

    if-le v2, v3, :cond_6

    const v2, 0x7fff

    :cond_6
    :try_start_0
    invoke-static {v0, v1, v2}, Ldev/virus/variable/launcher/api/NativeItem;->enchant(III)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    :goto_0
    :cond_2
    return-void
.end method
