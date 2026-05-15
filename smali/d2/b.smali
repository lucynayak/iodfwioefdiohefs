.class public final Ld2/b;
.super Lc2/b;
.source "SourceFile"


# instance fields
.field public final o:Li2/d;

.field public final p:Li2/d;

.field public final q:Li2/e;

.field public final r:Li2/d;

.field public final s:Li2/d;

.field public final t:Li2/e;

.field public final u:Li2/e;

.field public final v:Li2/d;

.field public final w:Li2/d;


# direct methods
.method public constructor <init>()V
    .registers 15

    const-string v0, "AimBot"

    const/4 v1, 0x1

    const-string v2, "Combat"

    invoke-direct {p0, v0, v1, v1, v2}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    new-instance v0, Li2/d;

    const/4 v2, 0x4

    new-array v3, v2, [D

    fill-array-data v3, :array_0

    const-string v4, "Smoothness"

    invoke-direct {v0, v4, v3}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v0, p0, Ld2/b;->o:Li2/d;

    new-instance v3, Li2/d;

    new-array v4, v2, [D

    fill-array-data v4, :array_1

    const-string v5, "Distance"

    invoke-direct {v3, v5, v4}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v3, p0, Ld2/b;->p:Li2/d;

    new-instance v4, Li2/e;

    const-string v5, "Check for angle"

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Li2/e;-><init>(Ljava/lang/String;Z)V

    new-instance v5, Ld2/a;

    invoke-direct {v5, p0, v6}, Ld2/a;-><init>(Lc2/b;I)V

    .line 1
    iput-object v5, v4, Li2/e;->f:Li2/e$a;

    .line 2
    iput-object v4, p0, Ld2/b;->q:Li2/e;

    new-instance v5, Li2/d;

    new-array v7, v2, [D

    fill-array-data v7, :array_2

    const-string v8, "Angle (horizontal)"

    invoke-direct {v5, v8, v7}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v5, p0, Ld2/b;->r:Li2/d;

    new-instance v7, Li2/d;

    new-array v8, v2, [D

    fill-array-data v8, :array_3

    const-string v9, "Angle (vertical)"

    invoke-direct {v7, v9, v8}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v7, p0, Ld2/b;->s:Li2/d;

    new-instance v8, Li2/e;

    const-string v9, "FriendList"

    invoke-direct {v8, v9, v1}, Li2/e;-><init>(Ljava/lang/String;Z)V

    iput-object v8, p0, Ld2/b;->t:Li2/e;

    new-instance v9, Li2/e;

    const-string v10, "Camera jitter"

    invoke-direct {v9, v10, v6}, Li2/e;-><init>(Ljava/lang/String;Z)V

    new-instance v10, Ld2/a;

    const/16 v11, 0xb

    invoke-direct {v10, p0, v11}, Ld2/a;-><init>(Lc2/b;I)V

    iput-object v10, v9, Li2/e;->f:Li2/e$a;

    iput-object v9, p0, Ld2/b;->u:Li2/e;

    new-instance v10, Li2/d;

    new-array v11, v2, [D

    fill-array-data v11, :array_4

    const-string v12, "Jitter yaw"

    invoke-direct {v10, v12, v11}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v10, p0, Ld2/b;->v:Li2/d;

    new-instance v11, Li2/d;

    new-array v12, v2, [D

    fill-array-data v12, :array_5

    const-string v13, "Jitter pitch"

    invoke-direct {v11, v13, v12}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v11, p0, Ld2/b;->w:Li2/d;

    const/16 v6, 0x9

    new-array v6, v6, [Li2/c;

    const/4 v12, 0x0

    aput-object v0, v6, v12

    aput-object v3, v6, v1

    const/4 v0, 0x2

    aput-object v4, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    aput-object v7, v6, v2

    const/4 v0, 0x5

    aput-object v8, v6, v0

    const/4 v0, 0x6

    aput-object v9, v6, v0

    const/4 v0, 0x7

    aput-object v10, v6, v0

    const/16 v0, 0x8

    aput-object v11, v6, v0

    invoke-virtual {p0, v6}, Lc2/b;->A([Li2/c;)V

    return-void

    nop

    :array_0
    .array-data 8
        0x3fd0000000000000L    # 0.25
        0x0
        0x3fefae147ae147aeL    # 0.99
        0x3f847ae147ae147bL    # 0.01
    .end array-data

    :array_1
    .array-data 8
        0x4014000000000000L    # 5.0
        0x0
        0x4039000000000000L    # 25.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_2
    .array-data 8
        0x4066800000000000L    # 180.0
        0x0
        0x4066800000000000L    # 180.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_3
    .array-data 8
        0x4056800000000000L    # 90.0
        0x0
        0x4056800000000000L    # 90.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_4
    .array-data 8
        0x0
        0x0
        0x4014000000000000L    # 5.0
        0x3fb999999999999aL    # 0.1
    .end array-data

    :array_5
    .array-data 8
        0x0
        0x0
        0x4008000000000000L    # 3.0
        0x3fb999999999999aL    # 0.1
    .end array-data
.end method


# virtual methods
.method public final I()V
    .registers 3

    iget-object v0, p0, Ld2/b;->r:Li2/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Li2/d;->setVisibility(Z)V

    iget-object v0, p0, Ld2/b;->s:Li2/d;

    invoke-virtual {v0, v1}, Li2/d;->setVisibility(Z)V

    iget-object v0, p0, Ld2/b;->v:Li2/d;

    invoke-virtual {v0, v1}, Li2/d;->setVisibility(Z)V

    iget-object v0, p0, Ld2/b;->w:Li2/d;

    invoke-virtual {v0, v1}, Li2/d;->setVisibility(Z)V

    return-void
.end method

.method public final J()V
    .registers 13

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ld2/b;->p:Li2/d;

    const-string v1, "current"

    invoke-virtual {v0, v1}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, La3/r0;->s(D)J

    move-result-wide v2

    iget-object v0, p0, Ld2/b;->q:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld2/b;->r:Li2/d;

    invoke-virtual {v0, v1}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v0, v4

    float-to-double v6, v0

    iget-object v0, p0, Ld2/b;->s:Li2/d;

    invoke-virtual {v0, v1}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v0, v4

    float-to-double v8, v0

    move-wide v4, v2

    invoke-static/range {v4 .. v9}, Ly1/b;->e(JDD)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v2, v3}, La3/r0;->B(J)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v2, v3}, Ldev/virus/variable/launcher/api/Api;->isValidTarget(J)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ld2/b;->t:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1
    invoke-static {v2, v3}, Ldev/virus/variable/launcher/api/NativePlayer;->getNameTag(J)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lc2/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_3

    iget-object v0, p0, Ld2/b;->o:Li2/d;

    invoke-virtual {v0, v1}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    .line 3
    invoke-static {v2, v3}, Ldev/virus/variable/launcher/api/NativePlayer;->getPositionX(J)F

    move-result v4

    .line 4
    invoke-static {}, La3/r0;->u()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-double v4, v4

    .line 5
    invoke-static {v2, v3}, Ldev/virus/variable/launcher/api/NativePlayer;->getPositionY(J)F

    move-result v6

    .line 6
    invoke-static {}, La3/r0;->v()F

    move-result v7

    sub-float/2addr v6, v7

    float-to-double v6, v6

    .line 7
    invoke-static {v2, v3}, Ldev/virus/variable/launcher/api/NativePlayer;->getPositionZ(J)F

    move-result v2

    .line 8
    invoke-static {}, La3/r0;->w()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    mul-double v8, v4, v4

    mul-double v10, v6, v6

    add-double/2addr v10, v8

    mul-double v8, v2, v2

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    neg-double v2, v2

    const-wide v4, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double v2, v2, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    mul-double v6, v6, v4

    neg-double v4, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v0, v6, v0

    const-wide/16 v8, 0x0

    cmpl-double v10, v0, v8

    if-nez v10, :cond_1

    goto :goto_0

    :cond_1
    move-wide v6, v0

    :goto_0
    invoke-static {}, La3/r0;->y()F

    move-result v0

    float-to-double v0, v0

    invoke-static {}, La3/r0;->y()F

    move-result v8

    float-to-double v8, v8

    invoke-static {v2, v3, v8, v9}, Ly1/b;->b(DD)D

    move-result-wide v2

    mul-double v2, v2, v6

    sub-double/2addr v0, v2

    double-to-float v0, v0

    invoke-static {}, La3/r0;->t()F

    move-result v1

    float-to-double v1, v1

    invoke-static {}, La3/r0;->t()F

    move-result v3

    float-to-double v8, v3

    invoke-static {v4, v5, v8, v9}, Ly1/b;->b(DD)D

    move-result-wide v3

    mul-double v3, v3, v6

    sub-double/2addr v1, v3

    double-to-float v1, v1

    iget-object v2, p0, Ld2/b;->u:Li2/e;

    invoke-virtual {v2}, Li2/e;->isActive()Z

    move-result v2

    if-eqz v2, :set_rot

    const-string v3, "current"

    iget-object v2, p0, Ld2/b;->v:Li2/d;

    invoke-virtual {v2, v3}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v8

    mul-double/2addr v6, v4

    double-to-float v2, v6

    add-float/2addr v0, v2

    iget-object v2, p0, Ld2/b;->w:Li2/d;

    invoke-virtual {v2, v3}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v8

    mul-double/2addr v6, v4

    double-to-float v2, v6

    add-float/2addr v1, v2

    :set_rot
    .line 9
    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setRot(FF)V

    :cond_2
    return-void
.end method
