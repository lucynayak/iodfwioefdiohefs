.class public final Lh2/c;
.super Lc2/b;
.source "SourceFile"


# instance fields
.field public final synthetic o:I

.field public final p:Li2/d;

.field public q:I

.field public final r:Li2/c;

.field public s:Li2/c;

.field public t:Li2/d;

.field public u:Li2/d;

.field public v:Li2/b;


# direct methods
.method public constructor <init>(I)V
    .registers 14

    iput p1, p0, Lh2/c;->o:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x4

    const-string v3, "Player"

    const/4 v4, 0x1

    if-eq p1, v4, :cond_0

    const-string p1, "AutoClicker"

    .line 1
    invoke-direct {p0, p1, v4, v4, v3}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    new-instance p1, Li2/d;

    new-array v2, v2, [D

    fill-array-data v2, :array_0

    const-string v3, "CPS"

    invoke-direct {p1, v3, v2}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object p1, p0, Lh2/c;->p:Li2/d;

    new-instance v2, Li2/e;

    const-string v3, "Random CPS"

    invoke-direct {v2, v3, v0}, Li2/e;-><init>(Ljava/lang/String;Z)V

    new-instance v3, Ld2/a;

    const/16 v5, 0xa

    invoke-direct {v3, p0, v5}, Ld2/a;-><init>(Lc2/b;I)V

    iput-object v3, v2, Li2/e;->f:Li2/e$a;

    iput-object v2, p0, Lh2/c;->s:Li2/c;

    new-instance v3, Li2/d;

    const/4 v5, 0x4

    new-array v5, v5, [D

    fill-array-data v5, :array_3

    const-string v6, "Min CPS"

    invoke-direct {v3, v6, v5}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v3, p0, Lh2/c;->t:Li2/d;

    new-instance v5, Li2/d;

    const/4 v6, 0x4

    new-array v6, v6, [D

    fill-array-data v6, :array_4

    const-string v7, "Max CPS"

    invoke-direct {v5, v7, v6}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v5, p0, Lh2/c;->u:Li2/d;

    new-instance v6, Li2/e;

    const-string v7, "Right click"

    invoke-direct {v6, v7, v0}, Li2/e;-><init>(Ljava/lang/String;Z)V

    iput-object v6, p0, Lh2/c;->r:Li2/c;

    new-instance v7, Li2/b;

    const-string v8, "Normal"

    const-string v9, "Jitter"

    const-string v10, "Burst"

    const-string v11, "Drag"

    filled-new-array {v8, v9, v10, v11}, [Ljava/lang/String;

    move-result-object v8

    const-string v9, "Mode"

    invoke-direct {v7, v9, v8}, Li2/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v7, p0, Lh2/c;->v:Li2/b;

    const/4 v10, 0x6

    new-array v10, v10, [Li2/c;

    aput-object p1, v10, v0

    aput-object v2, v10, v4

    const/4 v8, 0x2

    aput-object v3, v10, v8

    const/4 v8, 0x3

    aput-object v5, v10, v8

    const/4 v8, 0x4

    aput-object v7, v10, v8

    const/4 v8, 0x5

    aput-object v6, v10, v8

    invoke-virtual {p0, v10}, Lc2/b;->A([Li2/c;)V

    return-void

    :cond_0
    const-string p1, "BedFucker"

    .line 2
    invoke-direct {p0, p1, v4, v4, v3}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    new-instance p1, Li2/d;

    new-array v3, v2, [D

    fill-array-data v3, :array_1

    const-string v5, "Delay"

    invoke-direct {p1, v5, v3}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object p1, p0, Lh2/c;->p:Li2/d;

    new-instance v3, Li2/d;

    new-array v2, v2, [D

    fill-array-data v2, :array_2

    const-string v5, "Range"

    invoke-direct {v3, v5, v2}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v3, p0, Lh2/c;->r:Li2/c;

    new-array v1, v1, [Li2/c;

    aput-object p1, v1, v0

    aput-object v3, v1, v4

    invoke-virtual {p0, v1}, Lc2/b;->A([Li2/c;)V

    return-void

    nop

    :array_0
    .array-data 8
        0x4034000000000000L    # 20.0
        0x0
        0x405e000000000000L    # 120.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_1
    .array-data 8
        0x4024000000000000L    # 10.0
        0x0
        0x4034000000000000L    # 20.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_2
    .array-data 8
        0x4014000000000000L    # 5.0
        0x0
        0x4024000000000000L    # 10.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_3
    .array-data 8
        0x4018000000000000L    # 6.0
        0x3ff0000000000000L    # 1.0
        0x405e000000000000L    # 120.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_4
    .array-data 8
        0x4028000000000000L    # 12.0
        0x3ff0000000000000L    # 1.0
        0x405e000000000000L    # 120.0
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method


# virtual methods
.method public final I()V
    .registers 3

    iget v0, p0, Lh2/c;->o:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lh2/c;->s:Li2/c;

    check-cast v0, Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v1

    xor-int/lit8 v0, v1, 0x1

    iget-object v1, p0, Lh2/c;->p:Li2/d;

    invoke-virtual {v1, v0}, Li2/d;->setVisibility(Z)V

    iget-object v0, p0, Lh2/c;->s:Li2/c;

    check-cast v0, Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    iget-object v1, p0, Lh2/c;->t:Li2/d;

    invoke-virtual {v1, v0}, Li2/d;->setVisibility(Z)V

    iget-object v1, p0, Lh2/c;->u:Li2/d;

    invoke-virtual {v1, v0}, Li2/d;->setVisibility(Z)V

    :cond_0
    return-void
.end method

.method public final J()V
    .registers 11

    iget v0, p0, Lh2/c;->o:I

    const/4 v1, 0x0

    const-string v2, "current"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 1
    :pswitch_0
    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lh2/c;->s:Li2/c;

    check-cast v0, Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lh2/c;->p:Li2/d;

    invoke-virtual {v0, v2}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lh2/c;->t:Li2/d;

    invoke-virtual {v0, v2}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v3

    iget-object v0, p0, Lh2/c;->u:Li2/d;

    invoke-virtual {v0, v2}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v7

    sub-double/2addr v7, v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    add-double/2addr v7, v5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    :goto_0
    double-to-int v5, v3

    iget v0, p0, Lh2/c;->q:I

    add-int/2addr v0, v5

    iput v0, p0, Lh2/c;->q:I

    iget-object v3, p0, Lh2/c;->r:Li2/c;

    check-cast v3, Li2/e;

    invoke-virtual {v3}, Li2/e;->isActive()Z

    move-result v3

    iget-object v4, p0, Lh2/c;->v:Li2/b;

    invoke-virtual {v4}, Li2/b;->getCurrentMode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Drag"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, p0, Lh2/c;->q:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_6

    invoke-static {v3}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->click(Z)V

    goto :goto_2

    :cond_1
    const-string v5, "Burst"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v6, 0x3c

    iget v0, p0, Lh2/c;->q:I

    if-lt v0, v6, :cond_6

    invoke-static {v3}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->click(Z)V

    invoke-static {v3}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->click(Z)V

    invoke-static {v3}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->click(Z)V

    invoke-static {v3}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->click(Z)V

    invoke-static {v3}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->click(Z)V

    const/4 v0, 0x0

    iput v0, p0, Lh2/c;->q:I

    goto :goto_2

    :cond_2
    const-string v5, "Jitter"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget v0, p0, Lh2/c;->q:I

    :goto_1
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    mul-double/2addr v5, v7

    double-to-int v5, v5

    const/16 v6, 0xf

    add-int/2addr v6, v5

    if-lt v0, v6, :cond_3

    invoke-static {v3}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->click(Z)V

    sub-int/2addr v0, v6

    goto :goto_1

    :cond_3
    iput v0, p0, Lh2/c;->q:I

    goto :goto_2

    :cond_4
    const/16 v6, 0x14

    iget v0, p0, Lh2/c;->q:I

    if-lt v0, v6, :cond_6

    :cond_5
    invoke-static {v3}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->click(Z)V

    sub-int/2addr v0, v6

    if-ge v0, v6, :cond_5

    iput v0, p0, Lh2/c;->q:I

    :cond_6
    :goto_2
    return-void

    .line 4
    :goto_3
    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "Flight"

    invoke-static {v0}, Lc2/c;->A(Ljava/lang/String;)Lc2/b;

    move-result-object v0

    const-string v3, "NoPackets"

    invoke-static {v3}, Lc2/c;->A(Ljava/lang/String;)Lc2/b;

    move-result-object v3

    invoke-virtual {v3}, Lc2/b;->isActive()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {v0}, Lc2/b;->isActive()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "No packets"

    invoke-virtual {v0, v3}, Lc2/b;->getSetting(Ljava/lang/String;)Li2/c;

    move-result-object v0

    check-cast v0, Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    if-nez v0, :cond_c

    :cond_7
    iget v0, p0, Lh2/c;->q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lh2/c;->q:I

    int-to-double v3, v0

    iget-object v0, p0, Lh2/c;->p:Li2/d;

    invoke-virtual {v0, v2}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v5

    cmpl-double v0, v3, v5

    if-ltz v0, :cond_c

    invoke-static {}, La3/r0;->u()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {}, La3/r0;->v()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-static {}, La3/r0;->w()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget-object v5, p0, Lh2/c;->r:Li2/c;

    check-cast v5, Li2/d;

    invoke-virtual {v5, v2}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v5

    double-to-int v2, v5

    sub-int v5, v0, v2

    :goto_4
    add-int v6, v0, v2

    if-gt v5, v6, :cond_b

    sub-int v6, v3, v2

    :goto_5
    add-int v7, v3, v2

    if-gt v6, v7, :cond_a

    sub-int v7, v4, v2

    :goto_6
    add-int v8, v4, v2

    if-gt v7, v8, :cond_9

    .line 5
    invoke-static {v5, v6, v7}, Ldev/virus/variable/launcher/api/NativeBlock;->getID(III)I

    move-result v8

    const/16 v9, 0x1a

    if-ne v8, v9, :cond_8

    .line 6
    invoke-static {v5, v6, v7}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->destroyBlock(III)V

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 7
    :cond_b
    iput v1, p0, Lh2/c;->q:I

    :cond_c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
