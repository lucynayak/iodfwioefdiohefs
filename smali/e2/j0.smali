.class public final Le2/j0;
.super Lc2/b;
.source "SourceFile"


# static fields
.field public static globalCpsCount:I


# instance fields
.field public c1:Li2/d;

.field public cachedText:Ljava/lang/String;

.field public cpsCount:I

.field public cpsDisplay:I

.field public cpsQ2:I

.field public cpsQ3:I

.field public cpsQ4:I

.field public cpsResetTime:J

.field public currentBps:I

.field public d1:Li2/d;

.field public e1:Li2/d;

.field public f1:Li2/d;

.field public fpsFrames:I

.field public fpsLastUpdate:J

.field public fpsValue:I

.field public g1:Li2/d;

.field public h1:Li2/e;

.field public i1:Li2/e;

.field public j1:Li2/e;

.field public k1:Li2/e;

.field public l1:Li2/e;

.field public lastAttackTime:J

.field public lastBpsTime:J

.field public lastX:D

.field public lastZ:D

.field public m1:Li2/e;

.field public n1:Li2/e;

.field public nextTextUpdate:J

.field public o:Landroid/view/View;

.field public o1:Li2/e;

.field public p1:Li2/e;

.field public q1:Li2/e;

.field public r1:Li2/e;

.field public targetId:J

.field public targetTime:J


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/LayoutInflater;)V
    .registers 10

    const-string v0, "Statistics"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "Misc"

    invoke-direct {p0, v0, v1, v2, v3}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    iput-object p1, p0, Le2/j0;->o:Landroid/view/View;

    const/4 v0, 0x0

    iput v0, p0, Le2/j0;->cpsCount:I

    const/4 v0, 0x0

    iput v0, p0, Le2/j0;->cpsDisplay:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Le2/j0;->cpsResetTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Le2/j0;->lastAttackTime:J

    iput v2, p0, Le2/j0;->fpsFrames:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Le2/j0;->fpsLastUpdate:J

    iput v2, p0, Le2/j0;->fpsValue:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Le2/j0;->lastX:D

    iput-wide v0, p0, Le2/j0;->lastZ:D

    iput v2, p0, Le2/j0;->currentBps:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Le2/j0;->lastBpsTime:J

    const/4 v0, 0x4

    new-array v2, v0, [D

    const-wide v3, 0x4014000000000000L    # 5.0

    const/4 v5, 0x0

    aput-wide v3, v2, v5

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    aput-wide v3, v2, v5

    const-wide v3, 0x409f400000000000L    # 2000.0

    const/4 v5, 0x2

    aput-wide v3, v2, v5

    const-wide v3, 0x3ff0000000000000L    # 1.0

    const/4 v5, 0x3

    aput-wide v3, v2, v5

    new-instance v3, Li2/d;

    const-string v4, "X"

    invoke-direct {v3, v4, v2}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v3, p0, Le2/j0;->c1:Li2/d;

    new-array v2, v0, [D

    const-wide v4, 0x4014000000000000L    # 5.0

    const/4 v6, 0x0

    aput-wide v4, v2, v6

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    aput-wide v4, v2, v6

    const-wide v4, 0x409f400000000000L    # 2000.0

    const/4 v6, 0x2

    aput-wide v4, v2, v6

    const-wide v4, 0x3ff0000000000000L    # 1.0

    const/4 v6, 0x3

    aput-wide v4, v2, v6

    new-instance v4, Li2/d;

    const-string v5, "Y"

    invoke-direct {v4, v5, v2}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v4, p0, Le2/j0;->d1:Li2/d;

    new-array v2, v0, [D

    const-wide v5, 0x406fe00000000000L    # 255.0

    const/4 v0, 0x0

    aput-wide v5, v2, v0

    const-wide/16 v5, 0x0

    const/4 v0, 0x1

    aput-wide v5, v2, v0

    const-wide v5, 0x406fe00000000000L    # 255.0

    const/4 v0, 0x2

    aput-wide v5, v2, v0

    const-wide v5, 0x3ff0000000000000L    # 1.0

    const/4 v0, 0x3

    aput-wide v5, v2, v0

    new-instance v5, Li2/d;

    const-string v6, "R"

    invoke-direct {v5, v6, v2}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v5, p0, Le2/j0;->e1:Li2/d;

    const/4 v0, 0x4

    new-array v2, v0, [D

    const-wide v0, 0x406fe00000000000L    # 255.0

    const/4 v6, 0x0

    aput-wide v0, v2, v6

    const-wide/16 v0, 0x0

    const/4 v6, 0x1

    aput-wide v0, v2, v6

    const-wide v0, 0x406fe00000000000L    # 255.0

    const/4 v6, 0x2

    aput-wide v0, v2, v6

    const-wide v0, 0x3ff0000000000000L    # 1.0

    const/4 v6, 0x3

    aput-wide v0, v2, v6

    new-instance v6, Li2/d;

    const-string v0, "G"

    invoke-direct {v6, v0, v2}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v6, p0, Le2/j0;->f1:Li2/d;

    const/4 v0, 0x4

    new-array v2, v0, [D

    const-wide v0, 0x406fe00000000000L    # 255.0

    const/4 p2, 0x0

    aput-wide v0, v2, p2

    const-wide/16 v0, 0x0

    const/4 p2, 0x1

    aput-wide v0, v2, p2

    const-wide v0, 0x406fe00000000000L    # 255.0

    const/4 p2, 0x2

    aput-wide v0, v2, p2

    const-wide v0, 0x3ff0000000000000L    # 1.0

    const/4 p2, 0x3

    aput-wide v0, v2, p2

    new-instance p2, Li2/d;

    const-string v0, "B"

    invoke-direct {p2, v0, v2}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object p2, p0, Le2/j0;->g1:Li2/d;

    const/4 v0, 0x1

    new-instance v1, Li2/e;

    const-string v2, "Time"

    invoke-direct {v1, v2, v0}, Li2/e;-><init>(Ljava/lang/String;Z)V

    iput-object v1, p0, Le2/j0;->h1:Li2/e;

    new-instance v1, Li2/e;

    const-string v2, "Ping"

    invoke-direct {v1, v2, v0}, Li2/e;-><init>(Ljava/lang/String;Z)V

    iput-object v1, p0, Le2/j0;->i1:Li2/e;

    new-instance v1, Li2/e;

    const-string v2, "CPS"

    invoke-direct {v1, v2, v0}, Li2/e;-><init>(Ljava/lang/String;Z)V

    iput-object v1, p0, Le2/j0;->j1:Li2/e;

    new-instance v1, Li2/e;

    const-string v2, "FPS"

    invoke-direct {v1, v2, v0}, Li2/e;-><init>(Ljava/lang/String;Z)V

    iput-object v1, p0, Le2/j0;->k1:Li2/e;

    new-instance v1, Li2/e;

    const-string v2, "XYZ"

    invoke-direct {v1, v2, v0}, Li2/e;-><init>(Ljava/lang/String;Z)V

    iput-object v1, p0, Le2/j0;->l1:Li2/e;

    new-instance v1, Li2/e;

    const-string v2, "BPS"

    invoke-direct {v1, v2, v0}, Li2/e;-><init>(Ljava/lang/String;Z)V

    iput-object v1, p0, Le2/j0;->m1:Li2/e;

    new-instance v1, Li2/e;

    const-string v2, "Rainbow"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Li2/e;-><init>(Ljava/lang/String;Z)V

    iput-object v1, p0, Le2/j0;->n1:Li2/e;

    new-instance v1, Li2/e;

    const-string v2, "Shadow"

    invoke-direct {v1, v2, v0}, Li2/e;-><init>(Ljava/lang/String;Z)V

    iput-object v1, p0, Le2/j0;->o1:Li2/e;

    new-instance v1, Li2/e;

    const-string v2, "Target HUD"

    invoke-direct {v1, v2, v0}, Li2/e;-><init>(Ljava/lang/String;Z)V

    iput-object v1, p0, Le2/j0;->p1:Li2/e;

    new-instance v1, Li2/e;

    const-string v2, "HitRange"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Li2/e;-><init>(Ljava/lang/String;Z)V

    iput-object v1, p0, Le2/j0;->q1:Li2/e;

    new-instance v1, Li2/e;

    const-string v2, "Rounding"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Li2/e;-><init>(Ljava/lang/String;Z)V

    iput-object v1, p0, Le2/j0;->r1:Li2/e;

    const/16 v0, 0x10

    new-array v0, v0, [Li2/c;

    iget-object v1, p0, Le2/j0;->c1:Li2/d;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Le2/j0;->d1:Li2/d;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Le2/j0;->e1:Li2/d;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Le2/j0;->f1:Li2/d;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Le2/j0;->g1:Li2/d;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Le2/j0;->h1:Li2/e;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Le2/j0;->i1:Li2/e;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Le2/j0;->j1:Li2/e;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Le2/j0;->k1:Li2/e;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Le2/j0;->l1:Li2/e;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Le2/j0;->m1:Li2/e;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-object v1, p0, Le2/j0;->n1:Li2/e;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-object v1, p0, Le2/j0;->o1:Li2/e;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-object v1, p0, Le2/j0;->p1:Li2/e;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget-object v1, p0, Le2/j0;->q1:Li2/e;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget-object v1, p0, Le2/j0;->r1:Li2/e;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lc2/b;->A([Li2/c;)V

    return-void
.end method


# virtual methods
.method public final C(J)V
    .registers 9

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Le2/j0;->cpsCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Le2/j0;->cpsCount:I

    iput-wide p1, p0, Le2/j0;->targetId:J

    iput-wide v0, p0, Le2/j0;->targetTime:J

    :cond_0
    return-void
.end method

.method public final D()V
    .registers 1

    return-void
.end method

.method public final E()V
    .registers 1

    return-void
.end method

.method public final F()V
    .registers 16

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isInGame()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Le2/j0;->cpsResetTime:J

    sub-long v4, v0, v2

    const-wide/16 v6, 0xfa

    cmp-long v8, v4, v6

    if-ltz v8, :cond_0

    iget v2, p0, Le2/j0;->cpsCount:I

    iget v3, p0, Le2/j0;->cpsQ2:I

    add-int/2addr v2, v3

    iget v3, p0, Le2/j0;->cpsQ3:I

    add-int/2addr v2, v3

    iget v3, p0, Le2/j0;->cpsQ4:I

    add-int/2addr v2, v3

    iput v2, p0, Le2/j0;->cpsDisplay:I

    iget v2, p0, Le2/j0;->cpsQ3:I

    iput v2, p0, Le2/j0;->cpsQ4:I

    iget v2, p0, Le2/j0;->cpsQ2:I

    iput v2, p0, Le2/j0;->cpsQ3:I

    iget v2, p0, Le2/j0;->cpsCount:I

    iput v2, p0, Le2/j0;->cpsQ2:I

    const/4 v2, 0x0

    iput v2, p0, Le2/j0;->cpsCount:I

    iput-wide v0, p0, Le2/j0;->cpsResetTime:J

    :cond_0
    iget v3, p0, Le2/j0;->cpsDisplay:I

    iget v4, p0, Le2/j0;->fpsFrames:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Le2/j0;->fpsFrames:I

    iget-wide v5, p0, Le2/j0;->fpsLastUpdate:J

    sub-long v7, v0, v5

    const-wide/16 v9, 0x1f4

    cmp-long v11, v7, v9

    if-ltz v11, :cond_2

    const-wide/16 v9, 0x1

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    int-to-long v9, v4

    const-wide/16 v11, 0x3e8

    mul-long/2addr v9, v11

    div-long/2addr v9, v7

    long-to-int v4, v9

    iget v5, p0, Le2/j0;->fpsValue:I

    if-lez v5, :cond_1

    int-to-float v6, v4

    const v7, 0x3e4ccccd    # 0.2f

    mul-float/2addr v6, v7

    int-to-float v5, v5

    const v7, 0x3f4ccccd    # 0.8f

    mul-float/2addr v5, v7

    add-float/2addr v6, v5

    float-to-int v4, v6

    :cond_1
    iput v4, p0, Le2/j0;->fpsValue:I

    const/4 v4, 0x0

    iput v4, p0, Le2/j0;->fpsFrames:I

    iput-wide v0, p0, Le2/j0;->fpsLastUpdate:J

    :cond_2
    iget-wide v4, p0, Le2/j0;->lastBpsTime:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0xfa

    cmp-long v8, v4, v6

    if-ltz v8, :cond_3

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getUniqueID()J

    move-result-wide v6

    invoke-static {v6, v7}, Ldev/virus/variable/launcher/api/NativePlayer;->getPositionX(J)F

    move-result v8

    float-to-double v8, v8

    invoke-static {v6, v7}, Ldev/virus/variable/launcher/api/NativePlayer;->getPositionZ(J)F

    move-result v6

    float-to-double v6, v6

    iget-wide v10, p0, Le2/j0;->lastX:D

    sub-double v10, v8, v10

    iget-wide v12, p0, Le2/j0;->lastZ:D

    sub-double v12, v6, v12

    mul-double/2addr v10, v10

    mul-double/2addr v12, v12

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    const-wide v12, 0x408f400000000000L    # 1000.0

    mul-double/2addr v10, v12

    long-to-double v4, v4

    div-double/2addr v10, v4

    double-to-int v4, v10

    iput v4, p0, Le2/j0;->currentBps:I

    iput-wide v8, p0, Le2/j0;->lastX:D

    iput-wide v6, p0, Le2/j0;->lastZ:D

    iput-wide v0, p0, Le2/j0;->lastBpsTime:J

    :cond_3
    invoke-static {}, Ldev/virus/variable/launcher/api/Api;->getPing()I

    move-result v4

    iget v5, p0, Le2/j0;->fpsValue:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    iget-object v0, p0, Le2/j0;->h1:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v7, 0xd

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const-string v7, "["

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    if-ge v6, v1, :cond_4

    const-string v7, "0"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v0, v1, :cond_5

    const-string v1, "0"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x1

    :cond_6
    iget-object v0, p0, Le2/j0;->i1:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz v11, :cond_7

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string v0, "["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "ms]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x1

    :cond_8
    iget-object v0, p0, Le2/j0;->j1:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz v11, :cond_9

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " CPS"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x1

    :cond_a
    iget-object v0, p0, Le2/j0;->l1:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    if-eqz v0, :cond_d

    if-eqz v11, :cond_b

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getUniqueID()J

    move-result-wide v0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->getPositionX(J)F

    move-result v4

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->getPositionY(J)F

    move-result v5

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->getPositionZ(J)F

    move-result v0

    iget-object v1, p0, Le2/j0;->r1:Li2/e;

    invoke-virtual {v1}, Li2/e;->isActive()Z

    move-result v1

    if-eqz v1, :cond_c

    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v4, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v5, v6

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v0, v6

    const-string v1, "["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_c
    const-string v1, "["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :goto_0
    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x1

    :cond_d
    iget-object v0, p0, Le2/j0;->m1:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    if-eqz v0, :cond_f

    if-eqz v11, :cond_e

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    iget v0, p0, Le2/j0;->currentBps:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " B/s"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x1

    :cond_f
    iget-object v0, p0, Le2/j0;->k1:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    if-eqz v0, :cond_11

    if-eqz v11, :cond_10

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    iget v5, p0, Le2/j0;->fpsValue:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " FPS"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    iget-object v0, p0, Le2/j0;->q1:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getPointedPlayer()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-eqz v6, :cond_13

    if-eqz v11, :cond_12

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getDistanceTo(J)F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/16 v1, 0xa

    div-int v4, v0, v1

    rem-int v5, v0, v1

    const-string v0, "Range: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "m"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x1

    :cond_13
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v13, 0x437f0000    # 255.0f

    iget-object v0, p0, Le2/j0;->n1:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Le2/j0;->e1:Li2/d;

    invoke-virtual {v0}, Li2/d;->getCurrentValue()D

    move-result-wide v0

    double-to-float v4, v0

    div-float/2addr v4, v13

    iget-object v0, p0, Le2/j0;->f1:Li2/d;

    invoke-virtual {v0}, Li2/d;->getCurrentValue()D

    move-result-wide v0

    double-to-float v5, v0

    div-float/2addr v5, v13

    iget-object v0, p0, Le2/j0;->g1:Li2/d;

    invoke-virtual {v0}, Li2/d;->getCurrentValue()D

    move-result-wide v0

    double-to-float v6, v0

    div-float/2addr v6, v13

    goto :goto_1

    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v4, 0xbb8

    rem-long/2addr v0, v4

    long-to-float v0, v0

    const v1, 0x453b8000    # 3000.0f

    div-float/2addr v0, v1

    const v1, 0x43b40000    # 360.0f

    mul-float/2addr v0, v1

    const/4 v1, 0x3

    new-array v1, v1, [F

    const/4 v4, 0x0

    aput v0, v1, v4

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    aput v0, v1, v4

    const/4 v4, 0x2

    aput v0, v1, v4

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    shr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-float v4, v1

    div-float/2addr v4, v13

    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-float v5, v1

    div-float/2addr v5, v13

    and-int/lit16 v0, v0, 0xff

    int-to-float v6, v0

    div-float/2addr v6, v13

    :goto_1
    iget-object v0, p0, Le2/j0;->c1:Li2/d;

    invoke-virtual {v0}, Li2/d;->getCurrentValue()D

    move-result-wide v0

    double-to-float v7, v0

    iget-object v0, p0, Le2/j0;->d1:Li2/d;

    invoke-virtual {v0}, Li2/d;->getCurrentValue()D

    move-result-wide v0

    double-to-float v8, v0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    iget-object v0, p0, Le2/j0;->o1:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    if-nez v0, :cond_15

    move v11, v4

    move v12, v5

    move v13, v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr v7, v0

    add-float/2addr v8, v0

    invoke-static/range {v3 .. v10}, Ldev/virus/variable/launcher/api/Api;->drawText(Ljava/lang/String;FFFFFFF)V

    move v4, v11

    move v5, v12

    move v6, v13

    sub-float/2addr v7, v0

    sub-float/2addr v8, v0

    :cond_15
    invoke-static/range {v3 .. v10}, Ldev/virus/variable/launcher/api/Api;->drawText(Ljava/lang/String;FFFFFFF)V

    iget-object v0, p0, Le2/j0;->p1:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-wide v0, p0, Le2/j0;->targetId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_16

    goto :goto_2

    :cond_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Le2/j0;->targetTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7d0

    cmp-long v6, v2, v4

    if-lez v6, :cond_17

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Le2/j0;->targetId:J

    goto :goto_2

    :cond_17
    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->getNameTag(J)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_18

    const-string v11, "Unknown"

    :cond_18
    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getDistanceTo(J)F

    move-result v13

    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr v13, v0

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v13, v1

    div-float/2addr v13, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nDist: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/high16 v0, 0x41f00000    # 30.0f

    add-float/2addr v8, v0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    iget-object v0, p0, Le2/j0;->o1:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    if-nez v0, :cond_19

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr v7, v0

    add-float/2addr v8, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v10}, Ldev/virus/variable/launcher/api/Api;->drawText(Ljava/lang/String;FFFFFFF)V

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v7, v0

    sub-float/2addr v8, v0

    :cond_19
    invoke-static/range {v3 .. v10}, Ldev/virus/variable/launcher/api/Api;->drawText(Ljava/lang/String;FFFFFFF)V

    :cond_1a
    :goto_2
    return-void
.end method

.method public final G()V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Le2/j0;->cpsCount:I

    iput v0, p0, Le2/j0;->cpsQ2:I

    iput v0, p0, Le2/j0;->cpsQ3:I

    iput v0, p0, Le2/j0;->cpsQ4:I

    iput v0, p0, Le2/j0;->cpsDisplay:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Le2/j0;->cpsResetTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Le2/j0;->lastAttackTime:J

    const/4 v0, 0x0

    iput v0, p0, Le2/j0;->fpsFrames:I

    iput v0, p0, Le2/j0;->fpsValue:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Le2/j0;->fpsLastUpdate:J

    return-void
.end method

.method public final I()V
    .registers 1

    return-void
.end method

.method public final J()V
    .registers 1

    return-void
.end method

.method public final K(Lorg/json/JSONObject;)V
    .registers 2

    return-void
.end method

.method public final M()V
    .registers 1

    invoke-super {p0}, Lc2/b;->M()V

    return-void
.end method

.method public final O()V
    .registers 1

    return-void
.end method
