.class public final Lf2/j;
.super Lc2/b;
.source "SourceFile"


# instance fields
.field public final synthetic o:I

.field public final p:Li2/d;

.field public q:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .registers 6

    iput p1, p0, Lf2/j;->o:I

    const/4 v0, 0x4

    const-string v1, "Movement"

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    const-string p1, "NoVoid"

    .line 1
    invoke-direct {p0, p1, v2, v2, v1}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    new-instance p1, Li2/d;

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    const-string v1, "Distance"

    invoke-direct {p1, v1, v0}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object p1, p0, Lf2/j;->p:Li2/d;

    invoke-virtual {p0, p1}, Lc2/b;->addSetting(Li2/c;)V

    return-void

    :cond_0
    const-string p1, "SpeedHack"

    .line 2
    invoke-direct {p0, p1, v2, v2, v1}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    new-instance p1, Li2/d;

    new-array v1, v0, [D

    fill-array-data v1, :array_1

    const-string v3, "Velocity"

    invoke-direct {p1, v3, v1}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object p1, p0, Lf2/j;->p:Li2/d;

    new-instance v1, Li2/d;

    new-array v0, v0, [D

    fill-array-data v0, :array_2

    const-string v3, "Velocity Y"

    invoke-direct {v1, v3, v0}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v1, p0, Lf2/j;->q:Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Li2/c;

    const/4 v3, 0x0

    aput-object p1, v0, v3

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lc2/b;->A([Li2/c;)V

    return-void

    :array_0
    .array-data 8
        0x4014000000000000L    # 5.0
        0x3ff0000000000000L    # 1.0
        0x402e000000000000L    # 15.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_1
    .array-data 8
        0x3fe3333333333333L    # 0.6
        0x0
        0x4000000000000000L    # 2.0
        0x3f847ae147ae147bL    # 0.01
    .end array-data

    :array_2
    .array-data 8
        0x3fd999999999999aL    # 0.4
        0x0
        0x4000000000000000L    # 2.0
        0x3f847ae147ae147bL    # 0.01
    .end array-data
.end method


# virtual methods
.method public final H()V
    .registers 7

    iget v0, p0, Lf2/j;->o:I

    packed-switch v0, :pswitch_data_0

    return-void

    .line 1
    :pswitch_0
    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isMoveButtonPressed(I)Z

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-nez v0, :cond_0

    invoke-static {v5}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isMoveButtonPressed(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v4}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isMoveButtonPressed(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v3}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isMoveButtonPressed(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v2}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isMoveButtonPressed(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isMoveButtonPressed(I)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_0
    const-string v0, "Flight"

    .line 3
    invoke-static {v0}, Lc2/c;->A(Ljava/lang/String;)Lc2/b;

    move-result-object v0

    invoke-virtual {v0}, Lc2/b;->isActive()Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "Scaffold"

    invoke-static {v0}, Lc2/c;->A(Ljava/lang/String;)Lc2/b;

    move-result-object v0

    invoke-virtual {v0}, Lc2/b;->isActive()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 4
    invoke-static {v5}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isMoveButtonPressed(I)Z

    move-result v5

    if-eqz v5, :cond_1

    const/high16 v0, 0x43340000    # 180.0f

    :cond_1
    invoke-static {v4}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isMoveButtonPressed(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const/high16 v0, -0x3d4c0000    # -90.0f

    :cond_2
    invoke-static {v3}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isMoveButtonPressed(I)Z

    move-result v3

    const/high16 v4, 0x42b40000    # 90.0f

    if-eqz v3, :cond_3

    const/high16 v0, 0x42b40000    # 90.0f

    :cond_3
    invoke-static {v2}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isMoveButtonPressed(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const/high16 v0, -0x3dcc0000    # -45.0f

    :cond_4
    invoke-static {v1}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isMoveButtonPressed(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const/high16 v0, 0x42340000    # 45.0f

    .line 5
    :cond_5
    invoke-static {}, La3/r0;->y()F

    move-result v1

    add-float/2addr v1, v4

    add-float/2addr v1, v0

    float-to-double v0, v1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double v0, v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lf2/j;->p:Li2/d;

    const-string v3, "current"

    invoke-virtual {v1, v3}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v1, v4

    mul-float v2, v2, v1

    .line 6
    invoke-static {v2}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setVelocityX(F)V

    .line 7
    iget-object v1, p0, Lf2/j;->p:Li2/d;

    invoke-virtual {v1, v3}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v0, v0, v1

    .line 8
    invoke-static {v0}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setVelocityZ(F)V

    .line 9
    invoke-static {}, La3/r0;->C()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lf2/j;->q:Ljava/lang/Object;

    check-cast v0, Li2/d;

    invoke-virtual {v0, v3}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmpl-double v2, v0, v4

    if-lez v2, :cond_6

    iget-object v0, p0, Lf2/j;->q:Ljava/lang/Object;

    check-cast v0, Li2/d;

    invoke-virtual {v0, v3}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    .line 10
    invoke-static {v0}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setVelocityY(F)V

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final J()V
    .registers 12

    iget v0, p0, Lf2/j;->o:I

    packed-switch v0, :pswitch_data_0

    return-void

    .line 1
    :pswitch_0
    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getUniqueID()J

    move-result-wide v0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->isFalling(J)Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, La3/r0;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, La3/r0;->u()F

    move-result v0

    float-to-int v0, v0

    invoke-static {}, La3/r0;->v()F

    move-result v5

    float-to-double v5, v5

    const-wide v7, 0x3ffccccccccccccdL    # 1.8

    sub-double/2addr v5, v7

    double-to-int v5, v5

    invoke-static {}, La3/r0;->w()F

    move-result v6

    float-to-int v6, v6

    .line 4
    invoke-static {v0, v5, v6}, Ldev/virus/variable/launcher/api/NativeBlock;->getID(III)I

    move-result v0

    if-eqz v0, :cond_4

    new-array v0, v1, [F

    .line 5
    invoke-static {}, La3/r0;->u()F

    move-result v1

    float-to-int v1, v1

    int-to-double v5, v1

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    add-double/2addr v5, v7

    double-to-float v1, v5

    aput v1, v0, v3

    invoke-static {}, La3/r0;->v()F

    move-result v1

    aput v1, v0, v4

    invoke-static {}, La3/r0;->w()F

    move-result v1

    float-to-int v1, v1

    int-to-double v3, v1

    add-double/2addr v3, v7

    double-to-float v1, v3

    aput v1, v0, v2

    iput-object v0, p0, Lf2/j;->q:Ljava/lang/Object;

    goto/16 :goto_3

    .line 6
    :cond_0
    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getUniqueID()J

    move-result-wide v5

    invoke-static {v5, v6}, Ldev/virus/variable/launcher/api/NativePlayer;->getFallDistance(J)F

    move-result v0

    float-to-double v5, v0

    .line 7
    iget-object v0, p0, Lf2/j;->p:Li2/d;

    const-string v7, "current"

    invoke-virtual {v0, v7}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v7

    cmpl-double v0, v5, v7

    if-lez v0, :cond_4

    .line 8
    invoke-static {}, La3/r0;->v()F

    move-result v0

    float-to-int v0, v0

    :goto_0
    if-lez v0, :cond_2

    invoke-static {}, La3/r0;->u()F

    move-result v5

    float-to-int v5, v5

    invoke-static {}, La3/r0;->w()F

    move-result v6

    float-to-int v6, v6

    .line 9
    invoke-static {v5, v0, v6}, Ldev/virus/variable/launcher/api/NativeBlock;->getID(III)I

    move-result v5

    if-nez v5, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_4

    .line 10
    iget-object v0, p0, Lf2/j;->q:Ljava/lang/Object;

    check-cast v0, [F

    new-array v1, v1, [F

    .line 11
    invoke-static {}, La3/r0;->u()F

    move-result v5

    aput v5, v1, v3

    invoke-static {}, La3/r0;->v()F

    move-result v5

    aput v5, v1, v4

    invoke-static {}, La3/r0;->w()F

    move-result v5

    aput v5, v1, v2

    aget v5, v1, v3

    aget v6, v0, v3

    sub-float/2addr v5, v6

    float-to-double v5, v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    aget v9, v1, v4

    aget v10, v0, v4

    sub-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    add-double/2addr v9, v5

    aget v1, v1, v2

    aget v0, v0, v2

    sub-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v0, v9

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    cmpg-double v7, v0, v5

    if-gtz v7, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_4

    .line 12
    iget-object v0, p0, Lf2/j;->q:Ljava/lang/Object;

    check-cast v0, [F

    aget v1, v0, v3

    aget v3, v0, v4

    aget v0, v0, v2

    .line 13
    invoke-static {v1, v3, v0}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setPosition(FFF)V

    const/4 v0, 0x0

    .line 14
    invoke-static {v0, v0, v0}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setVelocity(FFF)V

    :cond_4
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
