.class public final Le2/w;
.super Lc2/b;
.source "SourceFile"


# instance fields
.field public final synthetic o:I

.field public final p:Li2/c;


# direct methods
.method public constructor <init>(I)V
    .locals 5

    iput p1, p0, Le2/w;->o:I

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v3, 0x2

    const-string v4, "Player"

    if-eq p1, v3, :cond_2

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    const-string v3, "Misc"

    if-eq p1, v1, :cond_0

    const-string p1, "NoClip"

    const-string v3, "Movement"

    .line 1
    invoke-direct {p0, p1, v2, v2, v3}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    new-instance p1, Li2/d;

    new-array v0, v1, [D

    fill-array-data v0, :array_0

    const-string v1, "Speed"

    invoke-direct {p1, v1, v0}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object p1, p0, Le2/w;->p:Li2/c;

    invoke-virtual {p0, p1}, Lc2/b;->addSetting(Li2/c;)V

    return-void

    :cond_0
    const-string p1, "FastRegister"

    .line 2
    invoke-direct {p0, p1, v0, v0, v3}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    new-instance p1, Li2/f;

    const-string v0, "Password"

    const-string v1, "password or /reg password"

    const-string v2, "qwertyuiop123456789"

    invoke-direct {p1, v0, v1, v2}, Li2/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Le2/w;->p:Li2/c;

    invoke-virtual {p0, p1}, Lc2/b;->addSetting(Li2/c;)V

    return-void

    :cond_1
    const-string p1, "Nuker"

    .line 3
    invoke-direct {p0, p1, v2, v2, v4}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    new-instance p1, Li2/d;

    new-array v0, v1, [D

    fill-array-data v0, :array_1

    const-string v1, "Radius"

    invoke-direct {p1, v1, v0}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object p1, p0, Le2/w;->p:Li2/c;

    invoke-virtual {p0, p1}, Lc2/b;->addSetting(Li2/c;)V

    return-void

    :cond_2
    const-string p1, "FastEat"

    .line 4
    invoke-direct {p0, p1, v2, v2, v4}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    new-instance p1, Li2/d;

    new-array v0, v1, [D

    fill-array-data v0, :array_2

    const-string v1, "Duration"

    invoke-direct {p1, v1, v0}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object p1, p0, Le2/w;->p:Li2/c;

    invoke-virtual {p0, p1}, Lc2/b;->addSetting(Li2/c;)V

    return-void

    :cond_3
    const-string p1, "Step"

    const-string v3, "Movement"

    .line 5
    invoke-direct {p0, p1, v2, v0, v3}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    new-instance p1, Li2/d;

    new-array v0, v1, [D

    fill-array-data v0, :array_3

    const-string v1, "Max height"

    invoke-direct {p1, v1, v0}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object p1, p0, Le2/w;->p:Li2/c;

    invoke-virtual {p0, p1}, Lc2/b;->addSetting(Li2/c;)V

    return-void

    nop

    :array_0
    .array-data 8
        0x3fa999999999999aL    # 0.05
        0x0
        0x3ff0000000000000L    # 1.0
        0x3f847ae147ae147bL    # 0.01
    .end array-data

    :array_1
    .array-data 8
        0x4000000000000000L    # 2.0
        0x0
        0x4014000000000000L    # 5.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_2
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x4040000000000000L    # 32.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_3
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x0
        0x4000000000000000L    # 2.0
        0x3fb999999999999aL    # 0.1
    .end array-data
.end method


# virtual methods
.method public final D()V
    .locals 1

    iget v0, p0, Le2/w;->o:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, Le2/w;->p:Li2/c;

    check-cast v0, Li2/f;

    invoke-virtual {v0}, Li2/f;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La3/r0;->F(Ljava/lang/Object;)V

    iget-object v0, p0, Le2/w;->p:Li2/c;

    check-cast v0, Li2/f;

    invoke-virtual {v0}, Li2/f;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La3/r0;->F(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public final E()V
    .locals 3

    iget v0, p0, Le2/w;->o:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    return-void

    :goto_0
    :pswitch_0
    const/16 v0, 0x24

    if-ge v1, v0, :cond_1

    .line 1
    invoke-static {v1}, Ldev/virus/variable/launcher/api/NativeItem;->getUseDuration(I)I

    move-result v0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_0

    const/16 v0, 0x20

    .line 2
    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeItem;->setUseDuration(II)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    :pswitch_1
    const/high16 v0, 0x3f100000    # 0.5625f

    .line 3
    invoke-static {v0}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setStepHeight(F)V

    return-void

    :pswitch_2
    const v0, 0x3d4ccccd    # 0.05f

    const-string v2, "flySpeed"

    .line 4
    invoke-static {v2, v0}, Ldev/virus/variable/launcher/api/NativeAbilities;->setFloat(Ljava/lang/String;F)V

    const-string v0, "flying"

    .line 5
    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeAbilities;->setBoolean(Ljava/lang/String;Z)V

    const-string v0, "noclip"

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeAbilities;->setBoolean(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    .line 6
    invoke-static {v0, v0, v0}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setVelocity(FFF)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final J()V
    .locals 8

    iget v0, p0, Le2/w;->o:I

    const/4 v1, 0x1

    const-string v2, "current"

    packed-switch v0, :pswitch_data_0

    return-void

    .line 1
    :pswitch_0
    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, La3/r0;->u()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {}, La3/r0;->v()F

    move-result v1

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v1, v3

    add-int/lit8 v1, v1, -0x1

    invoke-static {}, La3/r0;->w()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget-object v4, p0, Le2/w;->p:Li2/c;

    check-cast v4, Li2/d;

    invoke-virtual {v4, v2}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v4

    double-to-int v2, v4

    sub-int v4, v0, v2

    :goto_0
    add-int v5, v0, v2

    if-gt v4, v5, :cond_2

    sub-int v5, v1, v2

    :goto_1
    add-int v6, v1, v2

    if-gt v5, v6, :cond_1

    sub-int v6, v3, v2

    :goto_2
    add-int v7, v3, v2

    if-gt v6, v7, :cond_0

    .line 2
    invoke-static {v4, v5, v6}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->destroyBlock(III)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 3
    :pswitch_1
    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    invoke-static {}, Ldev/virus/variable/launcher/api/NativeInventory;->getSelectedSlot()I

    move-result v0

    .line 5
    invoke-static {v0}, Ldev/virus/variable/launcher/api/NativeItem;->getUseDuration(I)I

    move-result v3

    if-lt v3, v1, :cond_3

    .line 6
    invoke-static {v0}, Ldev/virus/variable/launcher/api/NativeItem;->getID(I)I

    move-result v1

    const/16 v3, 0x105

    if-eq v1, v3, :cond_3

    .line 7
    iget-object v1, p0, Le2/w;->p:Li2/c;

    check-cast v1, Li2/d;

    invoke-virtual {v1, v2}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v1

    double-to-int v1, v1

    .line 8
    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeItem;->setUseDuration(II)V

    :cond_3
    return-void

    .line 9
    :pswitch_2
    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Le2/w;->p:Li2/c;

    check-cast v0, Li2/d;

    invoke-virtual {v0, v2}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    .line 10
    invoke-static {v0}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setStepHeight(F)V

    :cond_4
    return-void

    .line 11
    :pswitch_3
    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 12
    invoke-static {v0}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setOnGround(Z)V

    .line 13
    iget-object v0, p0, Le2/w;->p:Li2/c;

    check-cast v0, Li2/d;

    invoke-virtual {v0, v2}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float v0, v2

    const-string v2, "flySpeed"

    .line 14
    invoke-static {v2, v0}, Ldev/virus/variable/launcher/api/NativeAbilities;->setFloat(Ljava/lang/String;F)V

    const-string v0, "flying"

    .line 15
    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeAbilities;->setBoolean(Ljava/lang/String;Z)V

    const-string v0, "noclip"

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeAbilities;->setBoolean(Ljava/lang/String;Z)V

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
