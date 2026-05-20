.class public final Le2/d;
.super Lc2/b;
.source "SourceFile"


# instance fields
.field public final synthetic o:I

.field public final p:Li2/b;

.field public final q:Li2/d;

.field public final r:Li2/d;

.field public final s:Li2/d;

.field public t:Ljava/lang/Object;

.field public u:J


# direct methods
.method public constructor <init>(I)V
    .registers 37

    move-object/from16 v0, p0

    move/from16 v1, p1

    iput v1, v0, Le2/d;->o:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const-string v5, "Size"

    const/4 v6, 0x4

    const-string v7, "Misc"

    const/4 v8, 0x1

    if-eq v1, v8, :cond_0

    const-string v1, "ArmorHud"

    .line 1
    invoke-direct {v0, v1, v8, v8, v7}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Le2/d;->t:Ljava/lang/Object;

    new-instance v1, Li2/b;

    const-string v7, "Vertical"

    const-string v9, "Horizontal"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const-string v9, "Mode"

    invoke-direct {v1, v9, v7}, Li2/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v1, v0, Le2/d;->p:Li2/b;

    new-instance v7, Li2/d;

    new-array v9, v6, [D

    fill-array-data v9, :array_0

    invoke-direct {v7, v5, v9}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v7, v0, Le2/d;->q:Li2/d;

    new-instance v5, Li2/d;

    new-array v9, v6, [D

    fill-array-data v9, :array_1

    const-string v10, "Position X"

    invoke-direct {v5, v10, v9}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v5, v0, Le2/d;->r:Li2/d;

    new-instance v9, Li2/d;

    new-array v10, v6, [D

    fill-array-data v10, :array_2

    const-string v11, "Position Y"

    invoke-direct {v9, v11, v10}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v9, v0, Le2/d;->s:Li2/d;

    new-array v6, v6, [Li2/c;

    aput-object v1, v6, v4

    aput-object v7, v6, v8

    aput-object v5, v6, v3

    aput-object v9, v6, v2

    invoke-virtual {v0, v6}, Lc2/b;->A([Li2/c;)V

    return-void

    :cond_0
    const-string v1, "AttackParticles"

    .line 2
    invoke-direct {v0, v1, v8, v8, v7}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    const/16 v1, 0x25

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, v0, Le2/d;->t:Ljava/lang/Object;

    new-instance v1, Li2/b;

    const-string v9, "Bubble"

    const-string v10, "Critical"

    const-string v11, "Explode"

    const-string v12, "Evaporation"

    const-string v13, "Flame"

    const-string v14, "Lava"

    const-string v15, "Red dust"

    const-string v16, "Snow ball poof"

    const-string v17, "Large explode"

    const-string v18, "Ultra large explode"

    const-string v19, "Mob flame"

    const-string v20, "Heart"

    const-string v21, "Terrain"

    const-string v22, "Town aura"

    const-string v23, "Portal"

    const-string v24, "Water splash"

    const-string v25, "Water wake"

    const-string v26, "Drip water"

    const-string v27, "Drip lava"

    const-string v28, "Falling dust"

    const-string v29, "Slime"

    const-string v30, "Rain splash"

    const-string v31, "Village angry"

    const-string v32, "Village happy"

    const-string v33, "Enchanting table"

    const-string v34, "Note"

    filled-new-array/range {v9 .. v34}, [Ljava/lang/String;

    move-result-object v7

    const-string v9, "Particle"

    invoke-direct {v1, v9, v7}, Li2/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v1, v0, Le2/d;->p:Li2/b;

    new-instance v7, Li2/d;

    new-array v9, v6, [D

    fill-array-data v9, :array_3

    const-string v10, "Radius"

    invoke-direct {v7, v10, v9}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v7, v0, Le2/d;->q:Li2/d;

    new-instance v9, Li2/d;

    new-array v10, v6, [D

    fill-array-data v10, :array_4

    const-string v11, "Delta"

    invoke-direct {v9, v11, v10}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v9, v0, Le2/d;->r:Li2/d;

    new-instance v10, Li2/d;

    new-array v11, v6, [D

    fill-array-data v11, :array_5

    invoke-direct {v10, v5, v11}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v10, v0, Le2/d;->s:Li2/d;

    new-array v5, v6, [Li2/c;

    aput-object v1, v5, v4

    aput-object v7, v5, v8

    aput-object v9, v5, v3

    aput-object v10, v5, v2

    invoke-virtual {v0, v5}, Lc2/b;->A([Li2/c;)V

    iget-object v1, v0, Le2/d;->t:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    const-string v2, "Bubble"

    aput-object v2, v1, v8

    const-string v2, "Critical"

    aput-object v2, v1, v3

    const/4 v2, 0x5

    const-string v3, "Explode"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "Evaporation"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "Flame"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "Lava"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "Red dust"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "Snow ball poof"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "Large explode"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "Ultra large explode"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "Mob flame"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "Heart"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "Terrain"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "Town aura"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "Portal"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "Water splash"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "Water wake"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "Drip water"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "Drip lava"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "Falling dust"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "Slime"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "Rain splash"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "Village angry"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "Village happy"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "Enchanting table"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "Note"

    aput-object v3, v1, v2

    return-void

    nop

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x0
        0x4000000000000000L    # 2.0
        0x3f847ae147ae147bL    # 0.01
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x3f847ae147ae147bL    # 0.01
    .end array-data

    :array_2
    .array-data 8
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x3f847ae147ae147bL    # 0.01
    .end array-data

    :array_3
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x0
        0x4000000000000000L    # 2.0
        0x3f847ae147ae147bL    # 0.01
    .end array-data

    :array_4
    .array-data 8
        0x3fc999999999999aL    # 0.2
        0x3fa999999999999aL    # 0.05
        0x4000000000000000L    # 2.0
        0x3fa999999999999aL    # 0.05
    .end array-data

    :array_5
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x0
        0x4008000000000000L    # 3.0
        0x3fb999999999999aL    # 0.1
    .end array-data
.end method


# virtual methods
.method public final C(J)V
    .registers 20

    move-object/from16 v0, p0

    iget v1, v0, Le2/d;->o:I

    packed-switch v1, :pswitch_data_0

    invoke-super/range {p0 .. p2}, Lc2/b;->C(J)V

    return-void

    .line 1
    :pswitch_0
    invoke-super/range {p0 .. p2}, Lc2/b;->C(J)V

    invoke-virtual/range {p0 .. p0}, Lc2/b;->isActive()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, v0, Le2/d;->u:J

    sub-long v7, v5, v7

    const-wide/16 v9, 0x64

    cmp-long v1, v7, v9

    if-gez v1, :cond_0

    goto :goto_3

    :cond_0
    iput-wide v5, v0, Le2/d;->u:J

    iget-object v1, v0, Le2/d;->q:Li2/d;

    const-string v2, "current"

    invoke-virtual {v1, v2}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v3

    const/4 v1, 0x0

    :goto_0
    float-to-double v5, v1

    const-wide v7, 0x401921fb54442d18L    # 6.283185307179586

    cmpg-double v1, v5, v7

    if-gez v1, :cond_3

    iget-object v1, v0, Le2/d;->p:Li2/b;

    invoke-virtual {v1}, Li2/b;->getCurrentMode()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 2
    :goto_1
    iget-object v9, v0, Le2/d;->t:Ljava/lang/Object;

    check-cast v9, [Ljava/lang/String;

    array-length v10, v9

    if-ge v8, v10, :cond_2

    aget-object v9, v9, v8

    if-eqz v9, :cond_1

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v9, v8

    goto :goto_2

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    .line 3
    :goto_2
    invoke-static/range {p1 .. p2}, Ldev/virus/variable/launcher/api/NativePlayer;->getPositionX(J)F

    move-result v1

    float-to-double v7, v1

    .line 4
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double v10, v10, v3

    add-double/2addr v10, v7

    double-to-float v10, v10

    .line 5
    invoke-static/range {p1 .. p2}, Ldev/virus/variable/launcher/api/NativePlayer;->getPositionY(J)F

    move-result v1

    const/high16 v7, 0x3f800000    # 1.0f

    add-float v11, v1, v7

    .line 6
    invoke-static/range {p1 .. p2}, Ldev/virus/variable/launcher/api/NativePlayer;->getPositionZ(J)F

    move-result v1

    float-to-double v7, v1

    .line 7
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double v12, v12, v3

    add-double/2addr v12, v7

    double-to-float v12, v12

    const/4 v13, 0x0

    const v14, -0x42333333    # -0.1f

    const/4 v15, 0x0

    iget-object v1, v0, Le2/d;->s:Li2/d;

    invoke-virtual {v1, v2}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v7

    double-to-int v1, v7

    move/from16 v16, v1

    .line 8
    invoke-static/range {v9 .. v16}, Ldev/virus/variable/launcher/api/NativeLevel;->addParticle(IFFFFFFI)V

    .line 9
    iget-object v1, v0, Le2/d;->r:Li2/d;

    invoke-virtual {v1, v2}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v7

    add-double/2addr v7, v5

    double-to-float v1, v7

    goto :goto_0

    :cond_3
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final F()V
    .registers 14

    iget v0, p0, Le2/d;->o:I

    packed-switch v0, :pswitch_data_0

    return-void

    .line 1
    :pswitch_0
    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Le2/d;->t:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    invoke-static {}, Ldev/virus/variable/launcher/api/NativeInventory;->getSelectedSlot()I

    move-result v0

    .line 3
    invoke-static {v0}, Ldev/virus/variable/launcher/api/NativeItem;->getID(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Le2/d;->t:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 5
    invoke-static {}, Ldev/virus/variable/launcher/api/NativeInventory;->getSelectedSlot()I

    move-result v1

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, -0x1

    const/4 v1, -0x1

    :goto_0
    const/4 v2, -0x5

    if-le v1, v2, :cond_2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v2, v0

    .line 7
    invoke-static {v2}, Ldev/virus/variable/launcher/api/NativeInventory;->getArmor(I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    iget-object v2, p0, Le2/d;->t:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    sget v0, Ldev/virus/variable/app/MinecraftActivity;->c:I

    int-to-double v0, v0

    iget-object v2, p0, Le2/d;->r:Li2/d;

    const-string v3, "current"

    invoke-virtual {v2, v3}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v4

    mul-double v4, v4, v0

    double-to-int v0, v4

    sget v1, Ldev/virus/variable/app/MinecraftActivity;->d:I

    int-to-double v1, v1

    iget-object v4, p0, Le2/d;->s:Li2/d;

    invoke-virtual {v4, v3}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v4

    mul-double v4, v4, v1

    double-to-int v1, v4

    const/4 v2, 0x0

    iget-object v4, p0, Le2/d;->t:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Le2/d;->p:Li2/b;

    invoke-virtual {v6}, Li2/b;->getCurrentMode()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "Vertical"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "Horizontal"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v6, v0, 0x3c

    int-to-double v6, v6

    mul-int/lit8 v8, v2, 0x46

    int-to-double v8, v8

    iget-object v10, p0, Le2/d;->q:Li2/d;

    invoke-virtual {v10, v3}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v10

    mul-double v10, v10, v8

    add-double/2addr v10, v6

    double-to-float v6, v10

    int-to-float v7, v1

    goto :goto_2

    :cond_4
    int-to-float v6, v0

    add-int/lit8 v7, v1, 0x3c

    int-to-double v7, v7

    mul-int/lit8 v9, v2, 0x46

    int-to-double v9, v9

    iget-object v11, p0, Le2/d;->q:Li2/d;

    invoke-virtual {v11, v3}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v11

    mul-double v11, v11, v9

    add-double/2addr v11, v7

    double-to-float v7, v11

    :goto_2
    iget-object v8, p0, Le2/d;->q:Li2/d;

    invoke-virtual {v8, v3}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v8

    double-to-float v8, v8

    invoke-static {v5, v6, v7, v8}, Ldev/virus/variable/launcher/api/Api;->drawItem(IFFF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
