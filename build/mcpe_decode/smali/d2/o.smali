.class public final Ld2/o;
.super Lc2/b;
.source "SourceFile"


# static fields
.field public static final synthetic t:I


# instance fields
.field public final o:Li2/d;

.field public final p:Li2/e;

.field public final q:Li2/d;

.field public final r:Li2/d;

.field public s:I

.field public final t0:Li2/e;

.field public u:J

.field public u0:Li2/e;

.field public v0:Li2/d;

.field public w:J


# direct methods
.method public constructor <init>()V
    .locals 11

    const-string v0, "TriggerBot"

    const/4 v1, 0x1

    const-string v2, "Combat"

    invoke-direct {p0, v0, v1, v1, v2}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    new-instance v0, Li2/d;

    const/4 v2, 0x4

    new-array v3, v2, [D

    fill-array-data v3, :array_0

    const-string v4, "CPS"

    invoke-direct {v0, v4, v3}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v0, p0, Ld2/o;->o:Li2/d;

    new-instance v3, Li2/e;

    const-string v4, "Random"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Li2/e;-><init>(Ljava/lang/String;Z)V

    new-instance v4, Ld2/a;

    const/4 v6, 0x3

    invoke-direct {v4, p0, v6}, Ld2/a;-><init>(Lc2/b;I)V

    .line 1
    iput-object v4, v3, Li2/e;->f:Li2/e$a;

    .line 2
    iput-object v3, p0, Ld2/o;->p:Li2/e;

    new-instance v4, Li2/d;

    new-array v7, v2, [D

    fill-array-data v7, :array_1

    const-string v8, "Minimal CPS"

    invoke-direct {v4, v8, v7}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v4, p0, Ld2/o;->q:Li2/d;

    new-instance v7, Li2/d;

    new-array v8, v2, [D

    fill-array-data v8, :array_2

    const-string v9, "Maximal CPS"

    invoke-direct {v7, v9, v8}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v7, p0, Ld2/o;->r:Li2/d;

    new-instance v8, Li2/e;

    const-string v9, "Single target"

    invoke-direct {v8, v9, v5}, Li2/e;-><init>(Ljava/lang/String;Z)V

    iput-object v8, p0, Ld2/o;->t0:Li2/e;

    new-instance v9, Li2/e;

    const-string v10, "Only Players"

    invoke-direct {v9, v10, v5}, Li2/e;-><init>(Ljava/lang/String;Z)V

    iput-object v9, p0, Ld2/o;->u0:Li2/e;

    new-instance v10, Li2/d;

    const/4 v2, 0x4

    new-array v2, v2, [D

    fill-array-data v2, :array_3

    const-string v5, "Delay"

    invoke-direct {v10, v5, v2}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v10, p0, Ld2/o;->v0:Li2/d;

    const/4 v2, 0x7

    new-array v2, v2, [Li2/c;

    const/4 v5, 0x0

    aput-object v0, v2, v5

    aput-object v3, v2, v1

    const/4 v0, 0x2

    aput-object v4, v2, v0

    aput-object v7, v2, v6

    const/4 v0, 0x4

    aput-object v8, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v10, v2, v0

    invoke-virtual {p0, v2}, Lc2/b;->A([Li2/c;)V

    return-void

    :array_0
    .array-data 8
        0x4018000000000000L    # 6.0
        0x3ff0000000000000L    # 1.0
        0x405e000000000000L    # 120.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_1
    .array-data 8
        0x4018000000000000L    # 6.0
        0x3ff0000000000000L    # 1.0
        0x405e000000000000L    # 120.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_2
    .array-data 8
        0x4028000000000000L    # 12.0
        0x3ff0000000000000L    # 1.0
        0x405e000000000000L    # 120.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_3
    .array-data 8
        0x0
        0x0
        0x407f400000000000L    # 500.0
        0x4024000000000000L    # 10.0
    .end array-data
.end method


# virtual methods
.method public final E()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ld2/o;->u:J

    iput-wide v0, p0, Ld2/o;->w:J

    return-void
.end method

.method public final H()V
    .locals 0

    return-void
.end method

.method public final I()V
    .locals 2

    iget-object v0, p0, Ld2/o;->p:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v1

    xor-int/lit8 v0, v1, 0x1

    iget-object v1, p0, Ld2/o;->o:Li2/d;

    invoke-virtual {v1, v0}, Li2/d;->setVisibility(Z)V

    iget-object v0, p0, Ld2/o;->p:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v1

    iget-object v0, p0, Ld2/o;->q:Li2/d;

    invoke-virtual {v0, v1}, Li2/d;->setVisibility(Z)V

    iget-object v0, p0, Ld2/o;->r:Li2/d;

    invoke-virtual {v0, v1}, Li2/d;->setVisibility(Z)V

    return-void
.end method

.method public final J()V
    .locals 14

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v2, p0, Ld2/o;->t0:Li2/e;

    invoke-virtual {v2}, Li2/e;->isActive()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-wide v4, p0, Ld2/o;->u:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_0

    invoke-static {v4, v5}, Ldev/virus/variable/launcher/api/NativePlayer;->isAlive(J)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v4, v5}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getDistanceTo(J)F

    move-result v2

    const v3, 0x42c80000    # 100.0f

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_6

    move-wide v0, v4

    goto :goto_0

    :cond_0
    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getPointedPlayer()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_6

    iput-wide v0, p0, Ld2/o;->u:J

    goto :goto_0

    :cond_1
    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getPointedPlayer()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_6

    :goto_0
    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->getNameTag(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc2/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Ld2/o;->u0:Li2/e;

    invoke-virtual {v2}, Li2/e;->isActive()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLevel;->getAllPlayers()[J

    move-result-object v2

    if-eqz v2, :cond_6

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_6

    aget-wide v6, v2, v4

    cmp-long v8, v6, v0

    if-eqz v8, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Ld2/o;->p:Li2/e;

    invoke-virtual {v2}, Li2/e;->isActive()Z

    move-result v2

    const-string v3, "current"

    if-nez v2, :cond_3

    iget-object v2, p0, Ld2/o;->o:Li2/d;

    invoke-virtual {v2, v3}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v8

    goto :goto_2

    :cond_3
    iget-object v2, p0, Ld2/o;->q:Li2/d;

    invoke-virtual {v2, v3}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v8

    iget-object v2, p0, Ld2/o;->r:Li2/d;

    invoke-virtual {v2, v3}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v10

    sub-double/2addr v10, v8

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v10, v6

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v6, v10

    add-double/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    :goto_2
    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    double-to-long v4, v6

    iget-object v6, p0, Ld2/o;->v0:Li2/d;

    const-string v7, "current"

    invoke-virtual {v6, v7}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v6

    double-to-long v6, v6

    add-long v4, v4, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v8, p0, Ld2/o;->w:J

    const-wide/16 v10, 0x0

    cmp-long v13, v8, v10

    if-nez v13, :cond_4

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->attack(J)V

    iput-wide v2, p0, Ld2/o;->w:J

    goto :goto_4

    :cond_4
    sub-long v10, v2, v8

    const-wide/16 v12, 0x3e8

    cmp-long v6, v10, v12

    if-ltz v6, :cond_5

    sub-long v8, v2, v4

    :cond_5
    :goto_3
    sub-long v10, v2, v8

    cmp-long v6, v10, v4

    if-ltz v6, :cond_6

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->attack(J)V

    add-long v8, v8, v4

    iput-wide v8, p0, Ld2/o;->w:J

    goto :goto_3

    :cond_6
    :goto_4
    return-void
.end method
