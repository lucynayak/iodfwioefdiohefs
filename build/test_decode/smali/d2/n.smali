.class public final Ld2/n;
.super Lc2/b;
.source "SourceFile"


# instance fields
.field public final o:Li2/b;

.field public final p:Li2/d;

.field public final q:Li2/d;

.field public final r:Li2/d;

.field public final s:Li2/e;

.field public t:J

.field public u:F


# direct methods
.method public constructor <init>()V
    .locals 9

    const-string v0, "TargetSpin"

    const/4 v1, 0x1

    const-string v2, "Combat"

    invoke-direct {p0, v0, v1, v1, v2}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Ld2/n;->t:J

    const/4 v0, 0x0

    iput v0, p0, Ld2/n;->u:F

    new-instance v0, Li2/b;

    const-string v2, "Auto"

    const-string v3, "Target"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "Mode"

    invoke-direct {v0, v3, v2}, Li2/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Ld2/n;->o:Li2/b;

    new-instance v2, Li2/d;

    const/4 v3, 0x4

    new-array v4, v3, [D

    fill-array-data v4, :array_0

    const-string v5, "Distance"

    invoke-direct {v2, v5, v4}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v2, p0, Ld2/n;->p:Li2/d;

    new-instance v4, Li2/d;

    new-array v5, v3, [D

    fill-array-data v5, :array_1

    const-string v6, "Speed"

    invoke-direct {v4, v6, v5}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v4, p0, Ld2/n;->q:Li2/d;

    new-instance v5, Li2/d;

    new-array v6, v3, [D

    fill-array-data v6, :array_2

    const-string v7, "Height"

    invoke-direct {v5, v7, v6}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v5, p0, Ld2/n;->r:Li2/d;

    new-instance v6, Li2/e;

    const-string v7, "Right"

    invoke-direct {v6, v7, v1}, Li2/e;-><init>(Ljava/lang/String;Z)V

    iput-object v6, p0, Ld2/n;->s:Li2/e;

    const/4 v7, 0x5

    new-array v7, v7, [Li2/c;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    aput-object v2, v7, v1

    const/4 v0, 0x2

    aput-object v4, v7, v0

    const/4 v0, 0x3

    aput-object v5, v7, v0

    aput-object v6, v7, v3

    invoke-virtual {p0, v7}, Lc2/b;->A([Li2/c;)V

    return-void

    :array_0
    .array-data 8
        0x4014000000000000L    # 5.0
        0x3ff0000000000000L    # 1.0
        0x4024000000000000L    # 10.0
        0x3fb999999999999aL    # 0.1
    .end array-data

    :array_1
    .array-data 8
        0x3fc999999999999aL    # 0.2
        0x3fb999999999999aL    # 0.1
        0x4000000000000000L    # 2.0
        0x3f847ae147ae147bL    # 0.01
    .end array-data

    :array_2
    .array-data 8
        0x4000000000000000L    # 2.0
        0x0
        0x4014000000000000L    # 5.0
        0x3fb999999999999aL    # 0.1
    .end array-data
.end method


# virtual methods
.method public final C(J)V
    .locals 0

    invoke-super {p0, p1, p2}, Lc2/b;->C(J)V

    iput-wide p1, p0, Ld2/n;->t:J

    return-void
.end method

.method public final E()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ld2/n;->t:J

    const/4 v0, 0x0

    iput v0, p0, Ld2/n;->u:F

    return-void
.end method

.method public final J()V
    .locals 12

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ld2/n;->p:Li2/d;

    const-string v1, "current"

    invoke-virtual {v0, v1}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v2

    iget-object v0, p0, Ld2/n;->o:Li2/b;

    invoke-virtual {v0}, Li2/b;->getCurrentMode()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Auto"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    mul-double v4, v4, v2

    invoke-static {v4, v5}, La3/r0;->s(D)J

    move-result-wide v4

    goto :goto_0

    :cond_0
    iget-wide v4, p0, Ld2/n;->t:J

    :goto_0
    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2

    .line 1
    invoke-static {v4, v5}, Ldev/virus/variable/launcher/api/NativePlayer;->isInWorld(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {v4, v5}, La3/r0;->B(J)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v4, v5}, Ldev/virus/variable/launcher/api/Api;->isValidTarget(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-static {v4, v5}, Ldev/virus/variable/launcher/api/NativePlayer;->getNameTag(J)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lc2/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Ld2/n;->u:F

    float-to-double v6, v0

    iget-object v0, p0, Ld2/n;->q:Li2/d;

    invoke-virtual {v0, v1}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v8

    div-double v8, v8, v2

    iget-object v0, p0, Ld2/n;->s:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    :goto_1
    int-to-double v10, v0

    mul-double v8, v8, v10

    add-double/2addr v8, v6

    double-to-float v0, v8

    iput v0, p0, Ld2/n;->u:F

    .line 5
    invoke-static {v4, v5}, Ldev/virus/variable/launcher/api/NativePlayer;->getPositionX(J)F

    move-result v0

    float-to-double v6, v0

    .line 6
    iget v0, p0, Ld2/n;->u:F

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double v8, v8, v2

    add-double/2addr v8, v6

    double-to-float v0, v8

    .line 7
    invoke-static {v4, v5}, Ldev/virus/variable/launcher/api/NativePlayer;->getPositionY(J)F

    move-result v6

    float-to-double v6, v6

    .line 8
    iget-object v8, p0, Ld2/n;->r:Li2/d;

    invoke-virtual {v8, v1}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v8

    add-double/2addr v8, v6

    double-to-float v1, v8

    .line 9
    invoke-static {v4, v5}, Ldev/virus/variable/launcher/api/NativePlayer;->getPositionZ(J)F

    move-result v4

    float-to-double v4, v4

    .line 10
    iget v6, p0, Ld2/n;->u:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v6, v6, v2

    add-double/2addr v6, v4

    double-to-float v2, v6

    .line 11
    invoke-static {v0, v1, v2}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setPosition(FFF)V

    :cond_2
    return-void
.end method
