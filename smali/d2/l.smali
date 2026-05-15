.class public final Ld2/l;
.super Lc2/b;
.source "SourceFile"


# instance fields
.field public final o:Li2/b;

.field public final p:Li2/d;

.field public final q:Li2/d;

.field public final r:Li2/e;

.field public final s:Li2/d;

.field public final t:Li2/d;

.field public u:I

.field public v:J

.field public w:Li2/e;

.field public x:Li2/e;

.field public y:Li2/d;

.field public z:Li2/d;

.field public A:Li2/b;


# direct methods
.method public constructor <init>()V
    .registers 15

    const-string v0, "KillAura"

    const/4 v1, 0x1

    const-string v2, "Combat"

    invoke-direct {p0, v0, v1, v1, v2}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Ld2/l;->v:J

    new-instance v0, Li2/b;

    const-string v2, "Multi"

    const-string v3, "Switch"

    const-string v4, "Target"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "Mode"

    invoke-direct {v0, v3, v2}, Li2/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Ld2/l;->o:Li2/b;

    new-instance v2, Li2/d;

    const/4 v3, 0x4

    new-array v4, v3, [D

    fill-array-data v4, :array_0

    const-string v5, "CPS"

    invoke-direct {v2, v5, v4}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v2, p0, Ld2/l;->p:Li2/d;

    new-instance v4, Li2/d;

    new-array v5, v3, [D

    fill-array-data v5, :array_1

    const-string v6, "Distance"

    invoke-direct {v4, v6, v5}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v4, p0, Ld2/l;->q:Li2/d;

    new-instance v5, Li2/e;

    const-string v6, "Check for angle"

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Li2/e;-><init>(Ljava/lang/String;Z)V

    new-instance v6, Ld2/k;

    invoke-direct {v6, p0, v7}, Ld2/k;-><init>(Lc2/b;I)V

    .line 1
    iput-object v6, v5, Li2/e;->f:Li2/e$a;

    .line 2
    iput-object v5, p0, Ld2/l;->r:Li2/e;

    new-instance v6, Li2/d;

    new-array v8, v3, [D

    fill-array-data v8, :array_2

    const-string v9, "Angle (horizontal)"

    invoke-direct {v6, v9, v8}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v6, p0, Ld2/l;->s:Li2/d;

    new-instance v8, Li2/d;

    new-array v9, v3, [D

    fill-array-data v9, :array_3

    const-string v10, "Angle (vertical)"

    invoke-direct {v8, v10, v9}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v8, p0, Ld2/l;->t:Li2/d;

    new-instance v10, Li2/e;

    const-string v11, "No ValidTarget"

    invoke-direct {v10, v11, v7}, Li2/e;-><init>(Ljava/lang/String;Z)V

    iput-object v10, p0, Ld2/l;->w:Li2/e;

    new-instance v11, Li2/e;

    const-string v9, "Random"

    invoke-direct {v11, v9, v7}, Li2/e;-><init>(Ljava/lang/String;Z)V

    new-instance v9, Ld2/k;

    const/16 v3, 0x8

    invoke-direct {v9, p0, v3}, Ld2/k;-><init>(Lc2/b;I)V

    iput-object v9, v11, Li2/e;->f:Li2/e$a;

    iput-object v11, p0, Ld2/l;->x:Li2/e;

    new-instance v12, Li2/d;

    const/4 v3, 0x4

    new-array v9, v3, [D

    fill-array-data v9, :array_4

    const-string v3, "Minimal CPS"

    invoke-direct {v12, v3, v9}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v12, p0, Ld2/l;->y:Li2/d;

    new-instance v13, Li2/d;

    const/4 v3, 0x4

    new-array v9, v3, [D

    fill-array-data v9, :array_5

    const-string v3, "Maximal CPS"

    invoke-direct {v13, v3, v9}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v13, p0, Ld2/l;->z:Li2/d;

    const/16 v9, 0xb

    new-array v9, v9, [Li2/c;

    const/4 v3, 0x0

    aput-object v0, v9, v3

    aput-object v2, v9, v1

    const/4 v3, 0x2

    aput-object v4, v9, v3

    const/4 v3, 0x3

    aput-object v5, v9, v3

    const/4 v3, 0x4

    aput-object v6, v9, v3

    const/4 v3, 0x5

    aput-object v8, v9, v3

    const/4 v3, 0x6

    aput-object v10, v9, v3

    const/4 v3, 0x7

    aput-object v11, v9, v3

    const/16 v3, 0x8

    aput-object v12, v9, v3

    const/16 v3, 0x9

    aput-object v13, v9, v3

    new-instance v3, Li2/b;

    const-string v0, "Normal"

    const-string v1, "Jitter"

    const-string v2, "Burst"

    const-string v4, "Drag"

    filled-new-array {v0, v1, v2, v4}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "Click Mode"

    invoke-direct {v3, v1, v0}, Li2/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v3, p0, Ld2/l;->A:Li2/b;

    const/16 v0, 0xa

    aput-object v3, v9, v0

    invoke-virtual {p0, v9}, Lc2/b;->A([Li2/c;)V

    return-void

    nop

    :array_0
    .array-data 8
        0x4014000000000000L    # 5.0
        0x0
        0x405e000000000000L    # 120.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_1
    .array-data 8
        0x4024000000000000L    # 10.0
        0x0
        0x4024000000000000L    # 10.0
        0x3fb999999999999aL    # 0.1
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
        0x4018000000000000L    # 6.0
        0x3ff0000000000000L    # 1.0
        0x405e000000000000L    # 120.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_5
    .array-data 8
        0x4028000000000000L    # 12.0
        0x3ff0000000000000L    # 1.0
        0x405e000000000000L    # 120.0
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method


# virtual methods
.method public final C(J)V
    .registers 5

    invoke-super {p0, p1, p2}, Lc2/b;->C(J)V

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld2/l;->o:Li2/b;

    invoke-virtual {v0}, Li2/b;->getCurrentMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Target"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1
    invoke-static {p1, p2}, Ldev/virus/variable/launcher/api/NativePlayer;->getNameTag(J)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lc2/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-wide p1, p0, Ld2/l;->v:J

    :cond_0
    return-void
.end method

.method public final I()V
    .registers 3

    iget-object v0, p0, Ld2/l;->r:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v1

    iget-object v0, p0, Ld2/l;->s:Li2/d;

    invoke-virtual {v0, v1}, Li2/d;->setVisibility(Z)V

    iget-object v0, p0, Ld2/l;->t:Li2/d;

    invoke-virtual {v0, v1}, Li2/d;->setVisibility(Z)V

    iget-object v0, p0, Ld2/l;->x:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v1

    xor-int/lit8 v0, v1, 0x1

    iget-object v1, p0, Ld2/l;->p:Li2/d;

    invoke-virtual {v1, v0}, Li2/d;->setVisibility(Z)V

    iget-object v0, p0, Ld2/l;->x:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v1

    iget-object v0, p0, Ld2/l;->y:Li2/d;

    invoke-virtual {v0, v1}, Li2/d;->setVisibility(Z)V

    iget-object v0, p0, Ld2/l;->z:Li2/d;

    invoke-virtual {v0, v1}, Li2/d;->setVisibility(Z)V

    return-void
.end method

.method public final J()V
    .registers 14

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_11

    iget v0, p0, Ld2/l;->u:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ld2/l;->u:I

    int-to-double v2, v0

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    const-string v6, "current"

    iget-object v0, p0, Ld2/l;->x:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ld2/l;->p:Li2/d;

    invoke-virtual {v0, v6}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v7

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ld2/l;->y:Li2/d;

    invoke-virtual {v0, v6}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v7

    iget-object v0, p0, Ld2/l;->z:Li2/d;

    invoke-virtual {v0, v6}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v9

    sub-double/2addr v9, v7

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    add-double/2addr v9, v11

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    mul-double/2addr v11, v9

    add-double/2addr v7, v11

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    :goto_0
    div-double/2addr v4, v7

    iget-object v0, p0, Ld2/l;->A:Li2/b;

    if-eqz v0, :click_compare

    invoke-virtual {v0}, Li2/b;->getCurrentMode()Ljava/lang/String;

    move-result-object v0

    const-string v9, "Drag"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :click_not_drag

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    goto :click_compare

    :click_not_drag
    const-string v9, "Burst"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :click_not_burst

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    div-double/2addr v4, v7

    goto :click_compare

    :click_not_burst
    const-string v9, "Jitter"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :click_compare

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    const-wide/high16 v11, 0x4024000000000000L    # 10.0

    mul-double/2addr v9, v11

    const-wide/high16 v11, 0x402e000000000000L    # 15.0

    add-double/2addr v9, v11

    div-double v4, v9, v7

    :click_compare

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_11

    iget-object v0, p0, Ld2/l;->o:Li2/b;

    invoke-virtual {v0}, Li2/b;->getCurrentMode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x6b9f5cac

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v2, v3, :cond_5

    const v3, -0x6b1ca24f

    if-eq v2, v3, :cond_3

    const v3, 0x473e519

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "Multi"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    goto :goto_2

    :cond_3
    const-string v2, "Target"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const-string v2, "Switch"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    :goto_1
    const/4 v0, -0x1

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    const-wide/16 v2, -0x1

    if-eqz v0, :cond_e

    if-eq v0, v1, :cond_b

    if-eq v0, v4, :cond_7

    goto/16 :goto_9

    .line 1
    :cond_7
    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLevel;->getAllPlayers()[J

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_11

    aget-wide v3, v0, v2

    iget-object v7, p0, Ld2/l;->w:Li2/e;

    invoke-virtual {v7}, Li2/e;->isActive()Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_4

    :cond_8
    invoke-static {v3, v4}, Ldev/virus/variable/launcher/api/Api;->isValidTarget(J)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-static {v3, v4}, La3/r0;->B(J)Z

    move-result v7

    if-nez v7, :cond_a

    .line 3
    invoke-static {v3, v4}, Ldev/virus/variable/launcher/api/NativePlayer;->getNameTag(J)Ljava/lang/String;

    move-result-object v7

    .line 4
    invoke-static {v7}, Lc2/a;->b(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 5
    :goto_4
    invoke-static {v3, v4}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getDistanceTo(J)F

    move-result v7

    float-to-double v7, v7

    .line 6
    iget-object v9, p0, Ld2/l;->q:Li2/d;

    invoke-virtual {v9, v6}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v9

    cmpg-double v11, v7, v9

    if-gtz v11, :cond_a

    iget-object v7, p0, Ld2/l;->r:Li2/e;

    invoke-virtual {v7}, Li2/e;->isActive()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Ld2/l;->s:Li2/d;

    invoke-virtual {v7, v6}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v7

    double-to-float v7, v7

    float-to-double v9, v7

    iget-object v7, p0, Ld2/l;->t:Li2/d;

    invoke-virtual {v7, v6}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v7

    double-to-float v7, v7

    float-to-double v11, v7

    move-wide v7, v3

    invoke-static/range {v7 .. v12}, Ly1/b;->e(JDD)Z

    move-result v7

    if-nez v7, :cond_9

    goto :goto_5

    .line 7
    :cond_9
    invoke-virtual {p0, v3, v4}, Ld2/l;->attackByClickMode(J)V

    :cond_a
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 8
    :cond_b
    iget-wide v0, p0, Ld2/l;->v:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_11

    iget-object v7, p0, Ld2/l;->w:Li2/e;

    invoke-virtual {v7}, Li2/e;->isActive()Z

    move-result v7

    if-eqz v7, :cond_c

    goto :goto_6

    :cond_c
    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/Api;->isValidTarget(J)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-wide v0, p0, Ld2/l;->v:J

    .line 9
    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->getNameTag(J)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v0}, Lc2/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    :goto_6
    iget-wide v0, p0, Ld2/l;->v:J

    .line 11
    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getDistanceTo(J)F

    move-result v0

    float-to-double v0, v0

    .line 12
    iget-object v2, p0, Ld2/l;->q:Li2/d;

    invoke-virtual {v2, v6}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v2

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_11

    iget-object v0, p0, Ld2/l;->r:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-wide v7, p0, Ld2/l;->v:J

    iget-object v0, p0, Ld2/l;->s:Li2/d;

    invoke-virtual {v0, v6}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v9, v0

    iget-object v0, p0, Ld2/l;->t:Li2/d;

    invoke-virtual {v0, v6}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v11, v0

    invoke-static/range {v7 .. v12}, Ly1/b;->e(JDD)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_9

    :cond_d
    iget-wide v0, p0, Ld2/l;->v:J

    goto :goto_8

    :cond_e
    iget-object v0, p0, Ld2/l;->q:Li2/d;

    invoke-virtual {v0, v6}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, La3/r0;->s(D)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_11

    iget-object v7, p0, Ld2/l;->w:Li2/e;

    invoke-virtual {v7}, Li2/e;->isActive()Z

    move-result v7

    if-eqz v7, :cond_f

    goto :goto_7

    :cond_f
    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/Api;->isValidTarget(J)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 13
    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->getNameTag(J)Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-static {v2}, Lc2/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    :goto_7
    iget-object v2, p0, Ld2/l;->r:Li2/e;

    invoke-virtual {v2}, Li2/e;->isActive()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Ld2/l;->s:Li2/d;

    invoke-virtual {v2, v6}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float v2, v2

    float-to-double v9, v2

    iget-object v2, p0, Ld2/l;->t:Li2/d;

    invoke-virtual {v2, v6}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float v2, v2

    float-to-double v11, v2

    move-wide v7, v0

    invoke-static/range {v7 .. v12}, Ly1/b;->e(JDD)Z

    move-result v2

    if-nez v2, :cond_10

    goto :goto_9

    .line 15
    :cond_10
    :goto_8
    invoke-virtual {p0, v0, v1}, Ld2/l;->attackByClickMode(J)V

    .line 16
    :cond_11
    :goto_9
    return-void
.end method

.method public final attackByClickMode(J)V
    .locals 7

    # Default: 1 click per fire
    const/4 v6, 0x1

    iget-object v0, p0, Ld2/l;->A:Li2/b;

    if-eqz v0, :do_loop

    invoke-virtual {v0}, Li2/b;->getCurrentMode()Ljava/lang/String;

    move-result-object v0

    # Burst: 5 clicks per fire (existing behavior)
    const-string v1, "Burst"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :check_drag

    const/4 v6, 0x5

    goto :do_loop

    :check_drag
    # Drag: 1 click per fire (slow drag-click sim, ~10 CPS)
    const-string v1, "Drag"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :do_loop

    # Normal/Jitter: multiplier = max(1, round(cps / 20)) so clicks/sec actually matches slider
    iget-object v0, p0, Ld2/l;->x:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    const-string v1, "current"

    if-eqz v0, :main_cps

    iget-object v0, p0, Ld2/l;->z:Li2/d;

    invoke-virtual {v0, v1}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v2

    goto :got_cps

    :main_cps
    iget-object v0, p0, Ld2/l;->p:Li2/d;

    invoke-virtual {v0, v1}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v2

    :got_cps
    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v6, v2

    const/4 v0, 0x1

    if-ge v6, v0, :do_loop

    const/4 v6, 0x1

    :do_loop
    if-lez v6, :attack_done

    invoke-static {p1, p2}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->attack(J)V

    add-int/lit8 v6, v6, -0x1

    goto :do_loop

    :attack_done
    const/4 v0, 0x0

    iput v0, p0, Ld2/l;->u:I

    return-void
.end method
