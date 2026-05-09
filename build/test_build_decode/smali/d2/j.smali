.class public final Ld2/j;
.super Lc2/b;
.source "SourceFile"


# instance fields
.field public final o:Li2/b;

.field public final p:Li2/d;

.field public final q:Li2/d;

.field public r:I


# direct methods
.method public constructor <init>()V
    .locals 6

    const-string v0, "InfiniteAura"

    const/4 v1, 0x1

    const-string v2, "Combat"

    invoke-direct {p0, v0, v1, v1, v2}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    new-instance v0, Li2/b;

    const-string v2, "Multi"

    const-string v3, "Switch"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "Mode"

    invoke-direct {v0, v3, v2}, Li2/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Ld2/j;->o:Li2/b;

    new-instance v2, Li2/d;

    const/4 v3, 0x4

    new-array v4, v3, [D

    fill-array-data v4, :array_0

    const-string v5, "CPS"

    invoke-direct {v2, v5, v4}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v2, p0, Ld2/j;->p:Li2/d;

    new-instance v4, Li2/d;

    new-array v3, v3, [D

    fill-array-data v3, :array_1

    const-string v5, "Distance"

    invoke-direct {v4, v5, v3}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v4, p0, Ld2/j;->q:Li2/d;

    const/4 v3, 0x3

    new-array v3, v3, [Li2/c;

    const/4 v5, 0x0

    aput-object v0, v3, v5

    aput-object v2, v3, v1

    const/4 v0, 0x2

    aput-object v4, v3, v0

    invoke-virtual {p0, v3}, Lc2/b;->A([Li2/c;)V

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
        0x407f400000000000L    # 500.0
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method


# virtual methods
.method public final J()V
    .locals 12

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Ld2/j;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ld2/j;->r:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    iget-object v4, p0, Ld2/j;->p:Li2/d;

    const-string v5, "current"

    invoke-virtual {v4, v5}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v6

    div-double/2addr v2, v6

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_3

    iget-object v0, p0, Ld2/j;->o:Li2/b;

    invoke-virtual {v0}, Li2/b;->getCurrentMode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Switch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const-string v1, "Multi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLevel;->getAllPlayers()[J

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-wide v6, v0, v3

    invoke-static {v6, v7}, La3/r0;->B(J)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v6, v7}, Ldev/virus/variable/launcher/api/Api;->isValidTarget(J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3
    invoke-static {v6, v7}, Ldev/virus/variable/launcher/api/NativePlayer;->getNameTag(J)Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-static {v4}, Lc2/a;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 5
    invoke-static {v6, v7}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getDistanceTo(J)F

    move-result v4

    float-to-double v8, v4

    .line 6
    iget-object v4, p0, Ld2/j;->q:Li2/d;

    invoke-virtual {v4, v5}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v10

    cmpg-double v4, v8, v10

    if-gtz v4, :cond_1

    .line 7
    invoke-static {v6, v7}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->attackTp(J)V

    iput v2, p0, Ld2/j;->r:I

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Ld2/j;->q:Li2/d;

    invoke-virtual {v0, v5}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, La3/r0;->s(D)J

    move-result-wide v0

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-eqz v5, :cond_3

    invoke-static {v0, v1}, La3/r0;->B(J)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/Api;->isValidTarget(J)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 9
    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->getNameTag(J)Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-static {v3}, Lc2/a;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 11
    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->attackTp(J)V

    iput v2, p0, Ld2/j;->r:I

    .line 12
    :cond_3
    :goto_1
    return-void
.end method
