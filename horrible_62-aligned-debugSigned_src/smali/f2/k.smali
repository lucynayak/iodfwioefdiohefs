.class public final Lf2/k;
.super Lc2/b;
.source "SourceFile"


# static fields
.field public static final synthetic v:I


# instance fields
.field public final o:Li2/e;

.field public final p:Li2/d;

.field public final q:Li2/e;

.field public final r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public s:I

.field public t:I

.field public u:Z


# direct methods
.method public constructor <init>()V
    .registers 10

    const-string v0, "Scaffold"

    const/4 v1, 0x1

    const-string v2, "Movement"

    invoke-direct {p0, v0, v1, v1, v2}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/Integer;

    const/16 v3, 0x17

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/16 v3, 0x36

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const/16 v3, 0x3a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v2, v5

    const/16 v3, 0x3d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x3

    aput-object v3, v2, v6

    const/16 v3, 0x74

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v7, 0x4

    aput-object v3, v2, v7

    const/16 v3, 0x7d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v8, 0x5

    aput-object v3, v2, v8

    const/16 v3, 0x82

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v8, 0x6

    aput-object v3, v2, v8

    const/16 v3, 0x8a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v8, 0x7

    aput-object v3, v2, v8

    const/16 v3, 0x91

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v8, 0x8

    aput-object v3, v2, v8

    const/16 v3, 0x92

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v8, 0x9

    aput-object v3, v2, v8

    const/16 v3, 0x97

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v8, 0xa

    aput-object v3, v2, v8

    const/16 v3, 0xfb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v8, 0xb

    aput-object v3, v2, v8

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lf2/k;->r:Ljava/util/ArrayList;

    new-instance v0, Li2/e;

    const-string v2, "Auto swap"

    invoke-direct {v0, v2, v1}, Li2/e;-><init>(Ljava/lang/String;Z)V

    new-instance v2, Ld2/k;

    invoke-direct {v2, p0, v7}, Ld2/k;-><init>(Lc2/b;I)V

    .line 1
    iput-object v2, v0, Li2/e;->f:Li2/e$a;

    .line 2
    iput-object v0, p0, Lf2/k;->o:Li2/e;

    new-instance v2, Li2/d;

    new-array v3, v7, [D

    fill-array-data v3, :array_0

    const-string v7, "Swap delay"

    invoke-direct {v2, v7, v3}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v2, p0, Lf2/k;->p:Li2/d;

    new-instance v3, Li2/e;

    const-string v7, "Auto select"

    invoke-direct {v3, v7, v1}, Li2/e;-><init>(Ljava/lang/String;Z)V

    iput-object v3, p0, Lf2/k;->q:Li2/e;

    new-array v6, v6, [Li2/c;

    aput-object v0, v6, v4

    aput-object v2, v6, v1

    aput-object v3, v6, v5

    invoke-virtual {p0, v6}, Lc2/b;->A([Li2/c;)V

    return-void

    nop

    :array_0
    .array-data 8
        0x4014000000000000L    # 5.0
        0x0
        0x4034000000000000L    # 20.0
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method


# virtual methods
.method public final E()V
    .registers 3

    iget v0, p0, Lf2/k;->s:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Ldev/virus/variable/launcher/api/NativeInventory;->setSelectedSlot(I)V

    :cond_0
    return-void
.end method

.method public final G()V
    .registers 2

    const-string v0, "SpeedHack"

    invoke-static {v0}, Lc2/c;->A(Ljava/lang/String;)Lc2/b;

    move-result-object v0

    invoke-virtual {v0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0, v0, v0}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setVelocity(FFF)V

    :cond_0
    return-void
.end method

.method public final J()V
    .registers 11

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lf2/k;->o:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/16 v3, 0x9

    const/4 v4, 0x1

    if-eqz v0, :cond_a

    iget v0, p0, Lf2/k;->t:I

    add-int/2addr v0, v4

    iput v0, p0, Lf2/k;->t:I

    int-to-double v5, v0

    iget-object v0, p0, Lf2/k;->p:Li2/d;

    const-string v7, "current"

    invoke-virtual {v0, v7}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v7

    cmpl-double v0, v5, v7

    if-ltz v0, :cond_a

    const/16 v0, 0x2e

    new-array v5, v0, [I

    const/16 v6, 0x9

    :goto_0
    if-ge v6, v0, :cond_0

    .line 1
    invoke-static {v6}, Ldev/virus/variable/launcher/api/NativeItem;->getID(I)I

    move-result v7

    .line 2
    aput v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const/16 v5, 0x9

    :goto_1
    const/16 v6, 0x11

    const/16 v7, 0x10

    if-ge v5, v0, :cond_2

    if-eq v5, v7, :cond_1

    if-eq v5, v6, :cond_1

    .line 3
    invoke-static {}, Ldev/virus/variable/launcher/api/NativeInventory;->getSelectedSlot()I

    move-result v8

    if-eq v5, v8, :cond_1

    .line 4
    invoke-virtual {p0, v5}, Lf2/k;->U(I)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, -0x1

    :goto_2
    const/16 v8, 0x9

    :goto_3
    if-ge v8, v0, :cond_4

    .line 5
    invoke-static {v8}, Ldev/virus/variable/launcher/api/NativeItem;->getID(I)I

    move-result v9

    if-nez v9, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    const/4 v8, -0x1

    :goto_4
    if-eq v5, v2, :cond_9

    .line 6
    invoke-virtual {p0, v7}, Lf2/k;->U(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v6}, Lf2/k;->U(I)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_5
    invoke-virtual {p0, v7}, Lf2/k;->U(I)Z

    move-result v0

    if-eq v8, v2, :cond_7

    if-nez v0, :cond_6

    .line 7
    invoke-static {v7, v8}, Ldev/virus/variable/launcher/api/NativeInventory;->swapSlots(II)V

    invoke-static {v5, v7}, Ldev/virus/variable/launcher/api/NativeInventory;->swapSlots(II)V

    goto :goto_5

    :cond_6
    invoke-static {v6, v8}, Ldev/virus/variable/launcher/api/NativeInventory;->swapSlots(II)V

    invoke-static {v5, v6}, Ldev/virus/variable/launcher/api/NativeInventory;->swapSlots(II)V

    goto :goto_5

    :cond_7
    if-nez v0, :cond_8

    invoke-static {v7, v5}, Ldev/virus/variable/launcher/api/NativeInventory;->swapSlots(II)V

    goto :goto_5

    :cond_8
    invoke-static {v6, v5}, Ldev/virus/variable/launcher/api/NativeInventory;->swapSlots(II)V

    .line 8
    :cond_9
    :goto_5
    iput v1, p0, Lf2/k;->t:I

    :cond_a
    iget-object v0, p0, Lf2/k;->q:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 9
    invoke-static {}, Ldev/virus/variable/launcher/api/NativeInventory;->getSelectedSlot()I

    move-result v0

    .line 10
    invoke-virtual {p0, v0}, Lf2/k;->U(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 11
    invoke-static {}, Ldev/virus/variable/launcher/api/NativeInventory;->getSelectedSlot()I

    move-result v0

    goto :goto_7

    :cond_b
    const/4 v0, 0x0

    :goto_6
    if-ge v0, v3, :cond_d

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeInventory;->getSelectedSlot()I

    move-result v5

    if-eq v0, v5, :cond_c

    .line 12
    invoke-virtual {p0, v0}, Lf2/k;->U(I)Z

    move-result v5

    if-eqz v5, :cond_c

    goto :goto_7

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_d
    const/4 v0, -0x1

    :goto_7
    if-eq v0, v2, :cond_e

    .line 13
    invoke-static {}, Ldev/virus/variable/launcher/api/NativeInventory;->getSelectedSlot()I

    move-result v3

    if-eq v0, v3, :cond_e

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeInventory;->getSelectedSlot()I

    move-result v3

    .line 14
    iput v3, p0, Lf2/k;->s:I

    .line 15
    invoke-static {v0}, Ldev/virus/variable/launcher/api/NativeInventory;->setSelectedSlot(I)V

    :cond_e
    if-ne v0, v2, :cond_10

    .line 16
    iget v0, p0, Lf2/k;->s:I

    if-eq v0, v2, :cond_f

    .line 17
    invoke-static {v0}, Ldev/virus/variable/launcher/api/NativeInventory;->setSelectedSlot(I)V

    .line 18
    :cond_f
    iput v2, p0, Lf2/k;->s:I

    :cond_10
    invoke-static {}, La3/r0;->u()F

    move-result v0

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v0, v5

    invoke-static {}, La3/r0;->v()F

    move-result v3

    float-to-int v3, v3

    const/4 v5, 0x2

    sub-int/2addr v3, v5

    invoke-static {}, La3/r0;->w()F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    .line 19
    invoke-static {v0, v3, v6}, Ldev/virus/variable/launcher/api/NativeBlock;->getID(III)I

    move-result v7

    const/4 v8, 0x3

    if-nez v7, :cond_14

    .line 20
    invoke-virtual {p0, v0, v3, v6}, Lf2/k;->T(III)[I

    move-result-object v7

    array-length v9, v7

    if-eqz v9, :cond_11

    goto :goto_8

    :cond_11
    invoke-virtual {p0, v0, v3, v6}, Lf2/k;->V(III)[I

    move-result-object v7

    array-length v9, v7

    if-eqz v9, :cond_12

    goto :goto_8

    :cond_12
    add-int/2addr v3, v2

    invoke-virtual {p0, v0, v3, v6}, Lf2/k;->V(III)[I

    move-result-object v7

    array-length v0, v7

    if-eqz v0, :cond_13

    goto :goto_8

    :cond_13
    new-array v7, v1, [I

    .line 21
    :goto_8
    array-length v0, v7

    if-lez v0, :cond_14

    .line 22
    invoke-static {}, Ldev/virus/variable/launcher/api/NativeInventory;->getSelectedSlot()I

    move-result v0

    .line 23
    invoke-virtual {p0, v0}, Lf2/k;->U(I)Z

    move-result v0

    if-eqz v0, :cond_14

    iput-boolean v4, p0, Lf2/k;->u:Z

    aget v0, v7, v1

    aget v1, v7, v4

    aget v2, v7, v5

    aget v3, v7, v8

    .line 24
    invoke-static {v0, v1, v2, v3}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->buildBlock(IIII)V

    :cond_14
    const/4 v0, -0x3

    .line 25
    invoke-static {v0}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isMoveButtonPressed(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 26
    invoke-static {}, Ldev/virus/variable/launcher/api/NativeInventory;->getSelectedSlot()I

    move-result v0

    .line 27
    invoke-virtual {p0, v0}, Lf2/k;->U(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 28
    invoke-static {v4}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isMoveButtonPressed(I)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {v5}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isMoveButtonPressed(I)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {v8}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isMoveButtonPressed(I)Z

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x4

    invoke-static {v0}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isMoveButtonPressed(I)Z

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x5

    invoke-static {v0}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isMoveButtonPressed(I)Z

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x6

    invoke-static {v0}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isMoveButtonPressed(I)Z

    move-result v0

    if-nez v0, :cond_15

    const v0, 0x3e99999a    # 0.3f

    .line 29
    invoke-static {v0}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setVelocityY(F)V

    :cond_15
    return-void
.end method

.method public final N(Ljava/lang/String;I)V
    .registers 8

    iget-boolean v0, p0, Lf2/k;->u:Z

    if-eqz v0, :cond_4

    const-string v0, "UseItemPacket"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/16 p1, 0xc

    .line 1
    invoke-static {p2, p1}, Ldev/virus/variable/launcher/api/NativeMemory;->getInt(II)I

    move-result p1

    const/16 v0, 0x14

    invoke-static {p2, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->getInt(II)I

    move-result v0

    const/16 v1, 0x1c

    .line 2
    invoke-static {p2, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->getFloat(II)F

    move-result v1

    const/16 v2, 0x24

    invoke-static {p2, v2}, Ldev/virus/variable/launcher/api/NativeMemory;->getFloat(II)F

    move-result v2

    int-to-float p1, p1

    sub-float/2addr v1, p1

    int-to-float p1, v0

    sub-float/2addr p1, v2

    const/16 v0, 0x28

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v4, v1, v2

    if-gez v4, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    cmpl-float v4, v1, v3

    if-lez v4, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    :cond_1
    :goto_0
    invoke-static {p2, v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->setFloat(IIF)V

    const/16 v0, 0x2c

    invoke-static {p2, v0, v3}, Ldev/virus/variable/launcher/api/NativeMemory;->setFloat(IIF)V

    const/16 v0, 0x30

    cmpg-float v1, p1, v2

    if-gez v1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    cmpl-float v1, p1, v3

    if-lez v1, :cond_3

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_3
    :goto_1
    invoke-static {p2, v0, p1}, Ldev/virus/variable/launcher/api/NativeMemory;->setFloat(IIF)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lf2/k;->u:Z

    :cond_4
    return-void
.end method

.method public final T(III)[I
    .registers 11

    add-int/lit8 v0, p2, -0x1

    invoke-static {p1, v0, p3}, Ldev/virus/variable/launcher/api/NativeBlock;->getID(III)I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-eqz v1, :cond_0

    new-array p2, v5, [I

    aput p1, p2, v4

    aput v0, p2, v6

    aput p3, p2, v3

    aput v6, p2, v2

    return-object p2

    :cond_0
    add-int/lit8 v0, p3, 0x1

    invoke-static {p1, p2, v0}, Ldev/virus/variable/launcher/api/NativeBlock;->getID(III)I

    move-result v1

    if-eqz v1, :cond_1

    new-array p3, v5, [I

    aput p1, p3, v4

    aput p2, p3, v6

    aput v0, p3, v3

    aput v3, p3, v2

    return-object p3

    :cond_1
    add-int/lit8 v0, p3, -0x1

    invoke-static {p1, p2, v0}, Ldev/virus/variable/launcher/api/NativeBlock;->getID(III)I

    move-result v1

    if-eqz v1, :cond_2

    new-array p3, v5, [I

    aput p1, p3, v4

    aput p2, p3, v6

    aput v0, p3, v3

    aput v2, p3, v2

    return-object p3

    :cond_2
    add-int/lit8 v0, p1, 0x1

    invoke-static {v0, p2, p3}, Ldev/virus/variable/launcher/api/NativeBlock;->getID(III)I

    move-result v1

    if-eqz v1, :cond_3

    new-array p1, v5, [I

    aput v0, p1, v4

    aput p2, p1, v6

    aput p3, p1, v3

    aput v5, p1, v2

    return-object p1

    :cond_3
    sub-int/2addr p1, v6

    invoke-static {p1, p2, p3}, Ldev/virus/variable/launcher/api/NativeBlock;->getID(III)I

    move-result v0

    if-eqz v0, :cond_4

    new-array v0, v5, [I

    aput p1, v0, v4

    aput p2, v0, v6

    aput p3, v0, v3

    const/4 p1, 0x5

    aput p1, v0, v2

    return-object v0

    :cond_4
    new-array p1, v4, [I

    return-object p1
.end method

.method public final U(I)Z
    .registers 3

    .line 1
    invoke-static {p1}, Ldev/virus/variable/launcher/api/NativeItem;->isBlock(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Ldev/virus/variable/launcher/api/NativeItem;->getID(I)I

    move-result v0

    .line 3
    invoke-static {v0}, Ldev/virus/variable/launcher/api/NativeBlock;->isSolid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lf2/k;->r:Ljava/util/ArrayList;

    .line 5
    invoke-static {p1}, Ldev/virus/variable/launcher/api/NativeItem;->getID(I)I

    move-result p1

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final V(III)[I
    .registers 13

    const/16 v0, 0x9

    new-array v1, v0, [[I

    const/4 v2, 0x3

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    const/4 v5, 0x1

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_2

    const/4 v6, 0x2

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_3

    aput-object v3, v1, v2

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    const/4 v7, 0x4

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    const/4 v7, 0x5

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    const/4 v7, 0x6

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    const/4 v7, 0x7

    aput-object v3, v1, v7

    new-array v2, v2, [I

    fill-array-data v2, :array_8

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, v1, v2

    aget v7, v3, v4

    add-int/2addr v7, p1

    aget v8, v3, v5

    add-int/2addr v8, p2

    aget v3, v3, v6

    add-int/2addr v3, p3

    invoke-virtual {p0, v7, v8, v3}, Lf2/k;->T(III)[I

    move-result-object v3

    array-length v7, v3

    if-eqz v7, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-array p1, v4, [I

    return-object p1

    nop

    :array_0
    .array-data 4
        0x1
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        -0x1
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x1
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        -0x1
    .end array-data

    :array_4
    .array-data 4
        0x0
        -0x1
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x1
        0x0
        0x1
    .end array-data

    :array_6
    .array-data 4
        0x1
        0x0
        -0x1
    .end array-data

    :array_7
    .array-data 4
        -0x1
        0x0
        0x1
    .end array-data

    :array_8
    .array-data 4
        -0x1
        0x0
        -0x1
    .end array-data
.end method
