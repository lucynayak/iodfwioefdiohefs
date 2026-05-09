.class public final Le2/aw;
.super Lc2/b;
.source "SourceFile"


# instance fields
.field public final o:Li2/d;

.field public final p:Li2/d;


# direct methods
.method public constructor <init>()V
    .registers 8

    const-string v0, "LiquidSpeed"

    const/4 v1, 0x1

    const-string v2, "Movement"

    invoke-direct {p0, v0, v1, v1, v2}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    new-instance v0, Li2/d;

    const/4 v1, 0x4

    new-array v1, v1, [D

    fill-array-data v1, :array_0

    const-string v2, "Water"

    invoke-direct {v0, v2, v1}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v0, p0, Le2/aw;->o:Li2/d;

    new-instance v2, Li2/d;

    const/4 v3, 0x4

    new-array v3, v3, [D

    fill-array-data v3, :array_1

    const-string v4, "Lava"

    invoke-direct {v2, v4, v3}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v2, p0, Le2/aw;->p:Li2/d;

    const/4 v1, 0x2

    new-array v1, v1, [Li2/c;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    const/4 v0, 0x1

    aput-object v2, v1, v0

    invoke-virtual {p0, v1}, Lc2/b;->A([Li2/c;)V

    return-void

    nop

    :array_0
    .array-data 8
        0x4008000000000000L    # 3.0
        0x3fe0000000000000L    # 0.5
        0x4020000000000000L    # 8.0
        0x3fb999999999999aL    # 0.1
    .end array-data

    :array_1
    .array-data 8
        0x4000000000000000L    # 2.0
        0x3fe0000000000000L    # 0.5
        0x4018000000000000L    # 6.0
        0x3fb999999999999aL    # 0.1
    .end array-data
.end method


# virtual methods
.method public final E()V
    .registers 1

    return-void
.end method

.method public final G()V
    .registers 1

    return-void
.end method

.method public final J()V
    .registers 10

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isInGame()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getUniqueID()J

    move-result-wide v0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->isInWater(J)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Le2/aw;->o:Li2/d;

    invoke-virtual {v2}, Li2/d;->getCurrentValue()D

    move-result-wide v2

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->isInLava(J)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Le2/aw;->p:Li2/d;

    invoke-virtual {v2}, Li2/d;->getCurrentValue()D

    move-result-wide v2

    :goto_0
    double-to-float v4, v2

    const v8, 0x3d8f5c29    # 0.07f

    mul-float v8, v4, v8

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->getVelocityX(J)F

    move-result v5

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->getVelocityY(J)F

    move-result v6

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->getVelocityZ(J)F

    move-result v7

    mul-float/2addr v5, v4

    mul-float/2addr v7, v4

    neg-float p0, v8

    invoke-static {v5, p0}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v7, p0}, Ljava/lang/Math;->max(FF)F

    move-result v7

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v5, v6, v7}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setVelocity(FFF)V

    :cond_1
    return-void
.end method
