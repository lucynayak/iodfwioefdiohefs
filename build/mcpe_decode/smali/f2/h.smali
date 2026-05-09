.class public final Lf2/h;
.super Lc2/b;
.source "SourceFile"


# instance fields
.field public final o:Li2/e;

.field public final p:Li2/b;

.field public final q:Li2/d;


# direct methods
.method public constructor <init>()V
    .locals 6

    const-string v0, "JetPack"

    const/4 v1, 0x1

    const-string v2, "Movement"

    invoke-direct {p0, v0, v1, v1, v2}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    new-instance v0, Li2/e;

    const-string v2, "Inertia"

    invoke-direct {v0, v2, v1}, Li2/e;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lf2/h;->o:Li2/e;

    new-instance v2, Li2/b;

    const-string v3, "Velocity"

    const-string v4, "Teleport"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "Mode"

    invoke-direct {v2, v4, v3}, Li2/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v3, Lf2/g;

    invoke-direct {v3, p0}, Lf2/g;-><init>(Lf2/h;)V

    .line 1
    iput-object v3, v2, Li2/b;->g:Li2/b$a;

    .line 2
    iput-object v2, p0, Lf2/h;->p:Li2/b;

    new-instance v3, Li2/d;

    const/4 v4, 0x4

    new-array v4, v4, [D

    fill-array-data v4, :array_0

    const-string v5, "Speed"

    invoke-direct {v3, v5, v4}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v3, p0, Lf2/h;->q:Li2/d;

    const/4 v4, 0x3

    new-array v4, v4, [Li2/c;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    aput-object v2, v4, v1

    const/4 v0, 0x2

    aput-object v3, v4, v0

    invoke-virtual {p0, v4}, Lc2/b;->A([Li2/c;)V

    return-void

    nop

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x0
        0x4014000000000000L    # 5.0
        0x3fb999999999999aL    # 0.1
    .end array-data
.end method


# virtual methods
.method public final E()V
    .locals 2

    iget-object v0, p0, Lf2/h;->p:Li2/b;

    invoke-virtual {v0}, Li2/b;->getCurrentMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Velocity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf2/h;->o:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0, v0, v0}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setVelocity(FFF)V

    :cond_0
    return-void
.end method

.method public final J()V
    .locals 9

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lf2/h;->q:Li2/d;

    const-string v1, "current"

    invoke-virtual {v0, v1}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {}, La3/r0;->y()F

    move-result v1

    const/high16 v2, 0x42b40000    # 90.0f

    add-float/2addr v1, v2

    float-to-double v1, v1

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    mul-double v1, v1, v3

    double-to-float v1, v1

    const/high16 v2, 0x43340000    # 180.0f

    div-float/2addr v1, v2

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v1, v5

    mul-float v1, v1, v0

    invoke-static {}, La3/r0;->t()F

    move-result v5

    sub-float/2addr v5, v2

    float-to-double v5, v5

    const-wide v7, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double v5, v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v2, v5

    mul-float v2, v2, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v3, v3, v0

    iget-object v0, p0, Lf2/h;->p:Li2/b;

    invoke-virtual {v0}, Li2/b;->getCurrentMode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "Velocity"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "Teleport"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {v1, v2, v3}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setPositionRelative(FFF)V

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setVelocityY(F)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {v1, v2, v3}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setVelocity(FFF)V

    :cond_2
    :goto_0
    return-void
.end method
