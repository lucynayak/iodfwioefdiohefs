.class public final Le2/lb;
.super Lc2/b;
.source "SourceFile"


# instance fields
.field public o:Li2/d;

.field public p:Li2/d;

.field public q:Z


# direct methods
.method public constructor <init>()V
    .registers 7

    const-string v0, "LongJump"

    const/4 v1, 0x1

    const-string v2, "Movement"

    invoke-direct {p0, v0, v1, v1, v2}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    new-instance v0, Li2/d;

    const/4 v1, 0x4

    new-array v2, v1, [D

    fill-array-data v2, :array_0

    const-string v3, "Distance"

    invoke-direct {v0, v3, v2}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v0, p0, Le2/lb;->o:Li2/d;

    new-instance v2, Li2/d;

    new-array v3, v1, [D

    fill-array-data v3, :array_1

    const-string v4, "Height"

    invoke-direct {v2, v4, v3}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v2, p0, Le2/lb;->p:Li2/d;

    const/4 v3, 0x0

    iput-boolean v3, p0, Le2/lb;->q:Z

    const/4 v4, 0x2

    new-array v4, v4, [Li2/c;

    aput-object v0, v4, v3

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-virtual {p0, v4}, Lc2/b;->A([Li2/c;)V

    return-void

    :array_0
    .array-data 8
        0x4000000000000000L    # 2.0
        0x3ff0000000000000L    # 1.0
        0x4024000000000000L    # 10.0
        0x3fe0000000000000L    # 0.5
    .end array-data

    :array_1
    .array-data 8
        0x3fe0000000000000L    # 0.5
        0x0
        0x4008000000000000L    # 3.0
        0x3fb999999999999aL    # 0.1
    .end array-data
.end method


# virtual methods
.method public final E()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Le2/lb;->q:Z

    return-void
.end method

.method public final J()V
    .registers 10

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getUniqueID()J

    move-result-wide v0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->isOnGround(J)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, p0, Le2/lb;->q:Z

    goto :goto_0

    :cond_0
    iget-boolean v3, p0, Le2/lb;->q:Z

    if-eqz v3, :cond_2

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->getVelocityY(J)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_1

    const/4 v3, 0x0

    iput-boolean v3, p0, Le2/lb;->q:Z

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Le2/lb;->q:Z

    iget-object v3, p0, Le2/lb;->o:Li2/d;

    const-string v4, "current"

    invoke-virtual {v3, v4}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v3, v4

    iget-object v4, p0, Le2/lb;->p:Li2/d;

    const-string v5, "current"

    invoke-virtual {v4, v5}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->getVelocityX(J)F

    move-result v5

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->getVelocityY(J)F

    move-result v6

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->getVelocityZ(J)F

    move-result v7

    mul-float v5, v5, v3

    mul-float v7, v7, v3

    add-float v6, v6, v4

    invoke-static {v5, v6, v7}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setVelocity(FFF)V

    :cond_2
    :goto_0
    return-void
.end method
