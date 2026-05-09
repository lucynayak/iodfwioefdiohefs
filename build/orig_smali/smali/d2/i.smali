.class public final Ld2/i;
.super Lc2/b;
.source "SourceFile"


# static fields
.field public static final synthetic u:I


# instance fields
.field public final o:Li2/b;

.field public final p:Li2/d;

.field public final q:Li2/d;

.field public final r:Li2/d;

.field public final s:Li2/e;

.field public final t:Li2/d;


# direct methods
.method public constructor <init>()V
    .locals 12

    const-string v0, "HitBoxes"

    const/4 v1, 0x1

    const-string v2, "Combat"

    invoke-direct {p0, v0, v1, v1, v2}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    new-instance v0, Li2/b;

    const-string v2, "All"

    const-string v3, "Pointed"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "Mode"

    invoke-direct {v0, v3, v2}, Li2/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v2, Ld2/h;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Ld2/h;-><init>(Lc2/b;I)V

    .line 1
    iput-object v2, v0, Li2/b;->g:Li2/b$a;

    .line 2
    iput-object v0, p0, Ld2/i;->o:Li2/b;

    new-instance v2, Li2/d;

    const/4 v4, 0x4

    new-array v5, v4, [D

    fill-array-data v5, :array_0

    const-string v6, "Distance"

    invoke-direct {v2, v6, v5}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v2, p0, Ld2/i;->p:Li2/d;

    new-instance v5, Li2/d;

    new-array v6, v4, [D

    fill-array-data v6, :array_1

    const-string v7, "Horizontal"

    invoke-direct {v5, v7, v6}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v5, p0, Ld2/i;->q:Li2/d;

    new-instance v6, Li2/d;

    new-array v7, v4, [D

    fill-array-data v7, :array_2

    const-string v8, "Vertical"

    invoke-direct {v6, v8, v7}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v6, p0, Ld2/i;->r:Li2/d;

    new-instance v7, Li2/e;

    const-string v8, "Change shadows"

    invoke-direct {v7, v8, v3}, Li2/e;-><init>(Ljava/lang/String;Z)V

    new-instance v8, Ld2/a;

    const/4 v9, 0x2

    invoke-direct {v8, p0, v9}, Ld2/a;-><init>(Lc2/b;I)V

    .line 3
    iput-object v8, v7, Li2/e;->f:Li2/e$a;

    .line 4
    iput-object v7, p0, Ld2/i;->s:Li2/e;

    new-instance v8, Li2/d;

    new-array v10, v4, [D

    fill-array-data v10, :array_3

    const-string v11, "Shadow radius"

    invoke-direct {v8, v11, v10}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v8, p0, Ld2/i;->t:Li2/d;

    const/4 v10, 0x6

    new-array v10, v10, [Li2/c;

    aput-object v0, v10, v3

    aput-object v2, v10, v1

    aput-object v5, v10, v9

    const/4 v0, 0x3

    aput-object v6, v10, v0

    aput-object v7, v10, v4

    const/4 v0, 0x5

    aput-object v8, v10, v0

    invoke-virtual {p0, v10}, Lc2/b;->A([Li2/c;)V

    return-void

    :array_0
    .array-data 8
        0x4024000000000000L    # 10.0
        0x3ff0000000000000L    # 1.0
        0x4059000000000000L    # 100.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_1
    .array-data 8
        0x4024000000000000L    # 10.0
        0x0
        0x4039000000000000L    # 25.0
        0x3fb999999999999aL    # 0.1
    .end array-data

    :array_2
    .array-data 8
        0x4024000000000000L    # 10.0
        0x0
        0x4039000000000000L    # 25.0
        0x3fb999999999999aL    # 0.1
    .end array-data

    :array_3
    .array-data 8
        0x3fe3333333333333L    # 0.6
        0x0
        0x4024000000000000L    # 10.0
        0x3fb999999999999aL    # 0.1
    .end array-data
.end method


# virtual methods
.method public final E()V
    .locals 7

    .line 1
    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLevel;->getAllPlayers()[J

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-wide v3, v0, v2

    const v5, 0x3f19999a    # 0.6f

    const v6, 0x3fe66666    # 1.8f

    .line 3
    invoke-static {v3, v4, v5, v6}, Ldev/virus/variable/launcher/api/NativePlayer;->setCollisionSize(JFF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final I()V
    .locals 2

    iget-object v0, p0, Ld2/i;->t:Li2/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Li2/d;->setVisibility(Z)V

    return-void
.end method

.method public final J()V
    .locals 12

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Ld2/i;->o:Li2/b;

    invoke-virtual {v0}, Li2/b;->getCurrentMode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "All"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "current"

    const/4 v3, 0x0

    if-nez v1, :cond_1

    const-string v1, "Pointed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getPointedPlayer()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/Api;->isValidTarget(J)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3
    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->getNameTag(J)Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-static {v4}, Lc2/a;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Ld2/i;->q:Li2/d;

    invoke-virtual {v4, v2}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v4, v4

    iget-object v5, p0, Ld2/i;->r:Li2/d;

    invoke-virtual {v5, v2}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v5

    double-to-float v5, v5

    .line 5
    invoke-static {v0, v1, v4, v5}, Ldev/virus/variable/launcher/api/NativePlayer;->setCollisionSize(JFF)V

    goto :goto_1

    .line 6
    :cond_1
    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLevel;->getAllPlayers()[J

    move-result-object v0

    .line 7
    array-length v1, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    aget-wide v5, v0, v4

    invoke-static {v5, v6}, Ldev/virus/variable/launcher/api/Api;->isValidTarget(J)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v5, v6}, La3/r0;->B(J)Z

    move-result v7

    if-nez v7, :cond_2

    .line 8
    invoke-static {v5, v6}, Ldev/virus/variable/launcher/api/NativePlayer;->getNameTag(J)Ljava/lang/String;

    move-result-object v7

    .line 9
    invoke-static {v7}, Lc2/a;->b(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 10
    invoke-static {v5, v6}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getDistanceTo(J)F

    move-result v7

    float-to-double v7, v7

    .line 11
    iget-object v9, p0, Ld2/i;->p:Li2/d;

    invoke-virtual {v9, v2}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v9

    cmpg-double v11, v7, v9

    if-gtz v11, :cond_2

    iget-object v7, p0, Ld2/i;->q:Li2/d;

    invoke-virtual {v7, v2}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v7

    double-to-float v7, v7

    iget-object v8, p0, Ld2/i;->r:Li2/d;

    invoke-virtual {v8, v2}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v8

    double-to-float v8, v8

    .line 12
    invoke-static {v5, v6, v7, v8}, Ldev/virus/variable/launcher/api/NativePlayer;->setCollisionSize(JFF)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 13
    :cond_3
    :goto_1
    iget-object v0, p0, Ld2/i;->s:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 14
    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLevel;->getAllPlayers()[J

    move-result-object v0

    .line 15
    array-length v1, v0

    :goto_2
    if-ge v3, v1, :cond_5

    aget-wide v4, v0, v3

    invoke-static {v4, v5}, La3/r0;->B(J)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Ld2/i;->t:Li2/d;

    invoke-virtual {v6, v2}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v6

    double-to-float v6, v6

    .line 16
    invoke-static {v4, v5, v6}, Ldev/virus/variable/launcher/api/NativePlayer;->setShadowRadius(JF)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method
