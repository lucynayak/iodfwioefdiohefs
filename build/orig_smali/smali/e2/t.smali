.class public final Le2/t;
.super Lc2/b;
.source "SourceFile"


# instance fields
.field public final synthetic o:I

.field public final p:Li2/c;

.field public q:Ljava/io/Serializable;


# direct methods
.method public constructor <init>(I)V
    .locals 4

    iput p1, p0, Le2/t;->o:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const-string p1, "NameProtect"

    const-string v1, "Misc"

    .line 1
    invoke-direct {p0, p1, v0, v0, v1}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    new-instance p1, Li2/f;

    const-string v0, "Fake name"

    const-string v1, "ponos"

    invoke-direct {p1, v0, v0, v1}, Li2/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Le2/t;->p:Li2/c;

    invoke-virtual {p0, p1}, Lc2/b;->addSetting(Li2/c;)V

    return-void

    :cond_0
    const-string p1, "FastLadder"

    const-string v1, "Movement"

    .line 2
    invoke-direct {p0, p1, v0, v0, v1}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    new-instance p1, Li2/d;

    const/4 v1, 0x4

    new-array v2, v1, [D

    fill-array-data v2, :array_0

    const-string v3, "Velocity"

    invoke-direct {p1, v3, v2}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object p1, p0, Le2/t;->p:Li2/c;

    new-instance v2, Li2/d;

    new-array v1, v1, [D

    fill-array-data v1, :array_1

    const-string v3, "Activation angle"

    invoke-direct {v2, v3, v1}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v2, p0, Le2/t;->q:Ljava/io/Serializable;

    const/4 v1, 0x2

    new-array v1, v1, [Li2/c;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    aput-object v2, v1, v0

    invoke-virtual {p0, v1}, Lc2/b;->A([Li2/c;)V

    return-void

    nop

    :array_0
    .array-data 8
        0x3fd999999999999aL    # 0.4
        0x0
        0x4000000000000000L    # 2.0
        0x3f847ae147ae147bL    # 0.01
    .end array-data

    :array_1
    .array-data 8
        0x403e000000000000L    # 30.0
        0x0
        0x4056800000000000L    # 90.0
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method


# virtual methods
.method public final E()V
    .locals 3

    iget v0, p0, Le2/t;->o:I

    packed-switch v0, :pswitch_data_0

    return-void

    .line 1
    :pswitch_0
    iget-object v0, p0, Le2/t;->q:Ljava/io/Serializable;

    check-cast v0, Ljava/lang/String;

    .line 2
    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getUniqueID()J

    move-result-wide v1

    invoke-static {v1, v2, v0}, Ldev/virus/variable/launcher/api/NativePlayer;->setNameTag(JLjava/lang/String;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Le2/t;->q:Ljava/io/Serializable;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final J()V
    .locals 9

    iget v0, p0, Le2/t;->o:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 1
    :pswitch_0
    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le2/t;->q:Ljava/io/Serializable;

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getUniqueID()J

    move-result-wide v0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->getNameTag(J)Ljava/lang/String;

    move-result-object v0

    .line 3
    iput-object v0, p0, Le2/t;->q:Ljava/io/Serializable;

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getUsername()Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v2, p0, Le2/t;->p:Li2/c;

    check-cast v2, Li2/f;

    invoke-virtual {v2}, Li2/f;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getUniqueID()J

    move-result-wide v1

    invoke-static {v1, v2, v0}, Ldev/virus/variable/launcher/api/NativePlayer;->setNameTag(JLjava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    .line 7
    :goto_1
    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    const-string v1, "hud"

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 8
    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getUniqueID()J

    move-result-wide v3

    invoke-static {v3, v4}, Ldev/virus/variable/launcher/api/NativePlayer;->isOnLadder(J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9
    invoke-static {}, Ldev/virus/variable/launcher/api/Api;->getScreenName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, La3/r0;->t()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v3, 0x4056800000000000L    # 90.0

    iget-object v5, p0, Le2/t;->q:Ljava/io/Serializable;

    check-cast v5, Li2/d;

    const-string v6, "current"

    invoke-virtual {v5, v6}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v7

    sub-double/2addr v3, v7

    const/4 v5, -0x3

    cmpl-double v7, v0, v3

    if-lez v7, :cond_3

    .line 10
    invoke-static {v5}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isMoveButtonPressed(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 11
    iget-object v0, p0, Le2/t;->p:Li2/c;

    check-cast v0, Li2/d;

    invoke-virtual {v0, v6}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {}, La3/r0;->t()F

    move-result v3

    cmpl-float v3, v3, v2

    if-ltz v3, :cond_2

    const/4 v3, -0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x1

    :goto_2
    int-to-double v3, v3

    mul-double v0, v0, v3

    double-to-float v0, v0

    .line 12
    invoke-static {v0}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setVelocityY(F)V

    .line 13
    invoke-static {}, La3/r0;->t()F

    move-result v0

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_3

    invoke-static {}, La3/r0;->C()Z

    move-result v0

    if-nez v0, :cond_3

    const-wide v0, -0x4026666666666666L    # -0.4

    iget-object v2, p0, Le2/t;->p:Li2/c;

    check-cast v2, Li2/d;

    invoke-virtual {v2, v6}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v2

    mul-double v2, v2, v0

    double-to-float v0, v2

    .line 14
    invoke-static {v0}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setPositionRelativeY(F)V

    .line 15
    :cond_3
    invoke-static {v5}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isMoveButtonPressed(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 16
    iget-object v0, p0, Le2/t;->p:Li2/c;

    check-cast v0, Li2/d;

    invoke-virtual {v0, v6}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    .line 17
    invoke-static {v0}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setVelocityY(F)V

    goto :goto_3

    .line 18
    :cond_4
    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 19
    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getUniqueID()J

    move-result-wide v3

    invoke-static {v3, v4}, Ldev/virus/variable/launcher/api/NativePlayer;->isOnLadder(J)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 20
    invoke-static {}, Ldev/virus/variable/launcher/api/Api;->getScreenName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 21
    invoke-static {v2}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setVelocityY(F)V

    :cond_5
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final L(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Le2/t;->o:I

    packed-switch v0, :pswitch_data_0

    return-void

    .line 1
    :pswitch_0
    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getUsername()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ldev/virus/variable/launcher/api/Api;->preventDefault()V

    .line 4
    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getUsername()Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Le2/t;->p:Li2/c;

    check-cast v1, Li2/f;

    invoke-virtual {v1}, Li2/f;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Ldev/virus/variable/launcher/api/NativeLevel;->displayClientMessage(Ljava/lang/String;)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
