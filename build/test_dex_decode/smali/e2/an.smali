.class public final Le2/an;
.super Lc2/b;
.source "SourceFile"


# instance fields
.field public final o:Li2/d;

.field public p:Z

.field public final q:Li2/e;


# direct methods
.method public constructor <init>()V
    .locals 6

    const-string v0, "ElytraFly"

    const/4 v1, 0x1

    const-string v2, "Movement"

    invoke-direct {p0, v0, v1, v1, v2}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    new-instance v0, Li2/d;

    const/4 v1, 0x4

    new-array v1, v1, [D

    fill-array-data v1, :array_0

    const-string v2, "Boost"

    invoke-direct {v0, v2, v1}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v0, p0, Le2/an;->o:Li2/d;

    new-instance v1, Li2/e;

    const-string v2, "Ground Fly"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Li2/e;-><init>(Ljava/lang/String;Z)V

    iput-object v1, p0, Le2/an;->q:Li2/e;

    const/4 v2, 0x2

    new-array v2, v2, [Li2/c;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Le2/an;->q:Li2/e;

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Lc2/b;->A([Li2/c;)V

    return-void

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x0
        0x4024000000000000L    # 10.0
        0x3fb999999999999aL    # 0.1
    .end array-data
.end method


# virtual methods
.method public final E()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Le2/an;->p:Z

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isInGame()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x15ee824

    const/4 v1, 0x4

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v0, 0x15a8552

    const/4 v1, 0x2

    new-array v1, v1, [C

    fill-array-data v1, :array_1

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const/16 v0, 0x1e

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setStatusFlag(IZ)V

    const/4 v0, 0x1

    invoke-static {v0}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setOnGround(Z)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setVelocity(FFF)V

    :cond_0
    return-void

    :array_0
    .array-data 2
        0xb0s
        0xb5s
        0xcs
        0x49s
    .end array-data

    :array_1
    .array-data 2
        0x0s
        0x22s
    .end array-data
.end method

.method public final G()V
    .locals 2

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isInGame()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x15ee824

    const/4 v1, 0x4

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v0, 0x15a8552

    const/4 v1, 0x2

    new-array v1, v1, [C

    fill-array-data v1, :array_1

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Le2/an;->p:Z

    :cond_0
    return-void

    :array_0
    .array-data 2
        0x1s
        0x20s
        0x70s
        0x47s
    .end array-data

    :array_1
    .array-data 2
        0x1s
        0x22s
    .end array-data
.end method

.method public final J()V
    .locals 10

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isInGame()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Le2/an;->p:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Le2/an;->G()V

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setOnGround(Z)V

    const/16 v0, 0x1e

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setStatusFlag(IZ)V

    iget-object v0, p0, Le2/an;->q:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getUniqueID()J

    move-result-wide v2

    iget-object v0, p0, Le2/an;->o:Li2/d;

    const-string v1, "current"

    invoke-virtual {v0, v1}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmpl-double v4, v0, v4

    if-gtz v4, :cond_1

    const-wide v0, 0x3fe0000000000000L    # 0.5

    :cond_1
    invoke-static {v2, v3}, Ldev/virus/variable/launcher/api/NativePlayer;->getYaw(J)F

    move-result v4

    invoke-static {v2, v3}, Ldev/virus/variable/launcher/api/NativePlayer;->getPitch(J)F

    move-result v5

    float-to-double v6, v4

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double v6, v6, v8

    const-wide v8, 0x4066800000000000L    # 180.0

    div-double v6, v6, v8

    float-to-double v4, v5

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double v4, v4, v8

    const-wide v8, 0x4066800000000000L    # 180.0

    div-double v4, v4, v8

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isMovingForward()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    neg-double v8, v8

    mul-double v8, v8, v0

    double-to-float v8, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v2, v2, v0

    double-to-float v2, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    neg-double v4, v4

    mul-double v4, v4, v0

    const-wide v0, 0x3fe0000000000000L    # 0.5

    mul-double v4, v4, v0

    double-to-float v9, v4

    invoke-static {v8, v9, v2}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setVelocity(FFF)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setVelocity(FFF)V

    goto :goto_0

    :cond_3
    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getUniqueID()J

    move-result-wide v2

    iget-object v0, p0, Le2/an;->o:Li2/d;

    const-string v1, "current"

    invoke-virtual {v0, v1}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmpl-double v4, v0, v4

    if-lez v4, :cond_4

    invoke-static {v2, v3}, Ldev/virus/variable/launcher/api/NativePlayer;->getYaw(J)F

    move-result v4

    invoke-static {v2, v3}, Ldev/virus/variable/launcher/api/NativePlayer;->getPitch(J)F

    move-result v5

    float-to-double v6, v4

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double v6, v6, v8

    const-wide v8, 0x4066800000000000L    # 180.0

    div-double v6, v6, v8

    float-to-double v4, v5

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double v4, v4, v8

    const-wide v8, 0x4066800000000000L    # 180.0

    div-double v4, v4, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    neg-double v8, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v8, v8, v2

    mul-double v8, v8, v0

    double-to-float v8, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    neg-double v2, v2

    mul-double v2, v2, v0

    const-wide v9, 0x3fe6666666666666L    # 0.7

    mul-double v2, v2, v9

    double-to-float v9, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double v2, v2, v4

    mul-double v2, v2, v0

    double-to-float v2, v2

    invoke-static {v8, v9, v2}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setVelocity(FFF)V

    :cond_4
    :goto_0
    return-void
.end method
