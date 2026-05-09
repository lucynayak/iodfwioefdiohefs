.class public final Ld2/f;
.super Lc2/b;
.source "SourceFile"


# static fields
.field public static final synthetic u:I


# instance fields
.field public final o:Li2/e;

.field public final p:Li2/d;

.field public final q:Li2/d;

.field public r:Z

.field public s:I

.field public t:I


# direct methods
.method public constructor <init>()V
    .registers 7

    const-string v0, "AutoGapple"

    const/4 v1, 0x1

    const-string v2, "Combat"

    invoke-direct {p0, v0, v1, v1, v2}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    new-instance v0, Li2/e;

    const-string v2, "Auto swap"

    invoke-direct {v0, v2, v1}, Li2/e;-><init>(Ljava/lang/String;Z)V

    new-instance v2, Ld2/a;

    invoke-direct {v2, p0, v1}, Ld2/a;-><init>(Lc2/b;I)V

    .line 1
    iput-object v2, v0, Li2/e;->f:Li2/e$a;

    .line 2
    iput-object v0, p0, Ld2/f;->o:Li2/e;

    new-instance v2, Li2/d;

    const/4 v3, 0x4

    new-array v4, v3, [D

    fill-array-data v4, :array_0

    const-string v5, "Swap delay"

    invoke-direct {v2, v5, v4}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v2, p0, Ld2/f;->p:Li2/d;

    new-instance v4, Li2/d;

    new-array v3, v3, [D

    fill-array-data v3, :array_1

    const-string v5, "Health needed"

    invoke-direct {v4, v5, v3}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v4, p0, Ld2/f;->q:Li2/d;

    const/4 v3, 0x3

    new-array v3, v3, [Li2/c;

    const/4 v5, 0x0

    aput-object v0, v3, v5

    aput-object v2, v3, v1

    const/4 v0, 0x2

    aput-object v4, v3, v0

    invoke-virtual {p0, v3}, Lc2/b;->A([Li2/c;)V

    return-void

    :array_0
    .array-data 8
        0x4014000000000000L    # 5.0
        0x0
        0x4034000000000000L    # 20.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_1
    .array-data 8
        0x4024000000000000L    # 10.0
        0x0
        0x4033000000000000L    # 19.0
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method


# virtual methods
.method public final E()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld2/f;->r:Z

    iput v0, p0, Ld2/f;->s:I

    return-void
.end method

.method public final J()V
    .registers 11

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Ld2/f;->o:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    const-string v1, "current"

    const/4 v2, 0x0

    const/16 v3, 0x142

    const/4 v4, 0x1

    if-eqz v0, :cond_7

    iget v0, p0, Ld2/f;->t:I

    add-int/2addr v0, v4

    iput v0, p0, Ld2/f;->t:I

    int-to-double v5, v0

    iget-object v0, p0, Ld2/f;->p:Li2/d;

    invoke-virtual {v0, v1}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v7

    cmpl-double v0, v5, v7

    if-ltz v0, :cond_7

    const/16 v0, 0x2e

    new-array v5, v0, [I

    const/16 v6, 0x9

    const/16 v7, 0x9

    :goto_0
    if-ge v7, v0, :cond_0

    .line 1
    invoke-static {v7}, Ldev/virus/variable/launcher/api/NativeItem;->getID(I)I

    move-result v8

    .line 2
    aput v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    const/16 v7, 0x9

    :goto_1
    const/4 v8, -0x1

    if-ge v7, v0, :cond_2

    .line 3
    aget v9, v5, v7

    if-ne v9, v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, -0x1

    :goto_2
    if-ge v6, v0, :cond_4

    .line 4
    invoke-static {v6}, Ldev/virus/variable/launcher/api/NativeItem;->getID(I)I

    move-result v5

    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    const/4 v6, -0x1

    :goto_3
    if-eq v7, v8, :cond_6

    .line 5
    invoke-static {v4}, Ldev/virus/variable/launcher/api/NativeItem;->getID(I)I

    move-result v0

    if-eq v0, v3, :cond_6

    if-eq v6, v8, :cond_5

    .line 6
    invoke-static {v4, v6}, Ldev/virus/variable/launcher/api/NativeInventory;->swapSlots(II)V

    :cond_5
    invoke-static {v7, v4}, Ldev/virus/variable/launcher/api/NativeInventory;->swapSlots(II)V

    .line 7
    :cond_6
    iput v2, p0, Ld2/f;->t:I

    .line 8
    :cond_7
    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getHealth()I

    move-result v0

    int-to-double v5, v0

    .line 9
    iget-object v0, p0, Ld2/f;->q:Li2/d;

    invoke-virtual {v0, v1}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v0

    cmpg-double v7, v5, v0

    if-gtz v7, :cond_a

    .line 10
    invoke-static {}, Ldev/virus/variable/launcher/api/NativeInventory;->getSelectedSlot()I

    move-result v0

    .line 11
    invoke-static {v0}, Ldev/virus/variable/launcher/api/NativeItem;->getID(I)I

    move-result v0

    if-eq v0, v3, :cond_8

    invoke-static {v4}, Ldev/virus/variable/launcher/api/NativeItem;->getID(I)I

    move-result v0

    if-ne v0, v3, :cond_a

    .line 12
    :cond_8
    iget-object v0, p0, Ld2/f;->o:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 13
    invoke-static {}, Ldev/virus/variable/launcher/api/NativeInventory;->getSelectedSlot()I

    move-result v0

    if-eq v0, v4, :cond_9

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeInventory;->getSelectedSlot()I

    move-result v0

    .line 14
    iput v0, p0, Ld2/f;->s:I

    .line 15
    invoke-static {v4}, Ldev/virus/variable/launcher/api/NativeInventory;->setSelectedSlot(I)V

    .line 16
    :cond_9
    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->hold()V

    .line 17
    iput-boolean v4, p0, Ld2/f;->r:Z

    goto :goto_4

    :cond_a
    iget-boolean v0, p0, Ld2/f;->r:Z

    if-eqz v0, :cond_b

    .line 18
    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->release()V

    .line 19
    iget v0, p0, Ld2/f;->s:I

    .line 20
    invoke-static {v0}, Ldev/virus/variable/launcher/api/NativeInventory;->setSelectedSlot(I)V

    .line 21
    iput-boolean v2, p0, Ld2/f;->r:Z

    iput v2, p0, Ld2/f;->s:I

    :cond_b
    :goto_4
    return-void
.end method
