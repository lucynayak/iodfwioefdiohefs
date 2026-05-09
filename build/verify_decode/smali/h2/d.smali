.class public final Lh2/d;
.super Lc2/b;
.source "SourceFile"


# static fields
.field public static final synthetic w:I


# instance fields
.field public final o:Li2/e;

.field public final p:Li2/d;

.field public final q:Li2/e;

.field public final r:Li2/b;

.field public final s:Li2/d;

.field public final t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public v:I


# direct methods
.method public constructor <init>()V
    .locals 13

    const-string v0, "AutoSword"

    const/4 v1, 0x1

    const-string v2, "Player"

    invoke-direct {p0, v0, v1, v1, v2}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lh2/d;->t:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x5

    new-array v3, v2, [Ljava/lang/Integer;

    const/16 v4, 0x114

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/16 v4, 0x10b

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/16 v4, 0x110

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v3, v6

    const/16 v4, 0x10c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x3

    aput-object v4, v3, v7

    const/16 v4, 0x11b

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v8, 0x4

    aput-object v4, v3, v8

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lh2/d;->u:Ljava/util/ArrayList;

    new-instance v0, Li2/e;

    const-string v3, "Auto swap"

    invoke-direct {v0, v3, v1}, Li2/e;-><init>(Ljava/lang/String;Z)V

    new-instance v3, Ld2/a;

    const/16 v4, 0x9

    invoke-direct {v3, p0, v4}, Ld2/a;-><init>(Lc2/b;I)V

    .line 1
    iput-object v3, v0, Li2/e;->f:Li2/e$a;

    .line 2
    iput-object v0, p0, Lh2/d;->o:Li2/e;

    new-instance v3, Li2/d;

    new-array v4, v8, [D

    fill-array-data v4, :array_0

    const-string v9, "Swap delay"

    invoke-direct {v3, v9, v4}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v3, p0, Lh2/d;->p:Li2/d;

    new-instance v4, Li2/e;

    const-string v9, "Auto select"

    invoke-direct {v4, v9, v1}, Li2/e;-><init>(Ljava/lang/String;Z)V

    new-instance v9, Ld2/c;

    invoke-direct {v9, p0, v2}, Ld2/c;-><init>(Lc2/b;I)V

    .line 3
    iput-object v9, v4, Li2/e;->f:Li2/e$a;

    .line 4
    iput-object v4, p0, Lh2/d;->q:Li2/e;

    new-instance v9, Li2/b;

    const-string v10, "Hit"

    const-string v11, "Distance"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    const-string v12, "Selection mode"

    invoke-direct {v9, v12, v10}, Li2/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v10, Ld2/h;

    invoke-direct {v10, p0, v7}, Ld2/h;-><init>(Lc2/b;I)V

    .line 5
    iput-object v10, v9, Li2/b;->g:Li2/b$a;

    .line 6
    iput-object v9, p0, Lh2/d;->r:Li2/b;

    new-instance v10, Li2/d;

    new-array v12, v8, [D

    fill-array-data v12, :array_1

    invoke-direct {v10, v11, v12}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v10, p0, Lh2/d;->s:Li2/d;

    new-array v2, v2, [Li2/c;

    aput-object v0, v2, v5

    aput-object v3, v2, v1

    aput-object v4, v2, v6

    aput-object v9, v2, v7

    aput-object v10, v2, v8

    invoke-virtual {p0, v2}, Lc2/b;->A([Li2/c;)V

    return-void

    nop

    :array_0
    .array-data 8
        0x4014000000000000L    # 5.0
        0x0
        0x4034000000000000L    # 20.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_1
    .array-data 8
        0x4014000000000000L    # 5.0
        0x3ff0000000000000L    # 1.0
        0x4024000000000000L    # 10.0
        0x3fb999999999999aL    # 0.1
    .end array-data
.end method


# virtual methods
.method public final C(J)V
    .locals 2

    invoke-super {p0, p1, p2}, Lc2/b;->C(J)V

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lh2/d;->r:Li2/b;

    invoke-virtual {p1}, Li2/b;->getCurrentMode()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Hit"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lh2/d;->u:Ljava/util/ArrayList;

    const/4 p2, 0x0

    .line 1
    invoke-static {p2}, Ldev/virus/variable/launcher/api/NativeItem;->getID(I)I

    move-result v0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {p2}, Ldev/virus/variable/launcher/api/NativeInventory;->setSelectedSlot(I)V

    goto :goto_1

    :cond_0
    const/16 p1, 0x9

    new-array v0, p1, [I

    :goto_0
    if-ge p2, p1, :cond_1

    .line 4
    invoke-static {p2}, Ldev/virus/variable/launcher/api/NativeItem;->getID(I)I

    move-result v1

    .line 5
    aput v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lh2/d;->t:Ljava/util/ArrayList;

    iget-object p2, p0, Lh2/d;->u:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p1, p2}, Lh2/d;->T([ILjava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2

    .line 6
    invoke-static {p1}, Ldev/virus/variable/launcher/api/NativeInventory;->setSelectedSlot(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final I()V
    .locals 2

    iget-object v0, p0, Lh2/d;->s:Li2/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Li2/d;->setVisibility(Z)V

    return-void
.end method

.method public final J()V
    .locals 10

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lh2/d;->o:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    const-string v1, "current"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/16 v4, 0x9

    if-eqz v0, :cond_b

    const-string v0, "AutoGapple"

    invoke-static {v0}, Lc2/c;->A(Ljava/lang/String;)Lc2/b;

    move-result-object v0

    check-cast v0, Ld2/f;

    .line 1
    iget-boolean v0, v0, Ld2/f;->r:Z

    if-nez v0, :cond_b

    .line 2
    iget v0, p0, Lh2/d;->v:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lh2/d;->v:I

    int-to-double v5, v0

    iget-object v0, p0, Lh2/d;->p:Li2/d;

    invoke-virtual {v0, v1}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v7

    cmpl-double v0, v5, v7

    if-ltz v0, :cond_b

    const/16 v0, 0x2e

    new-array v5, v0, [I

    const/16 v6, 0x9

    :goto_0
    if-ge v6, v0, :cond_0

    .line 3
    invoke-static {v6}, Ldev/virus/variable/launcher/api/NativeItem;->getID(I)I

    move-result v7

    .line 4
    aput v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lh2/d;->t:Ljava/util/ArrayList;

    iget-object v7, p0, Lh2/d;->u:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    const/16 v8, 0x9

    :goto_1
    if-ge v8, v0, :cond_2

    aget v9, v5, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const v8, 0x7fffffff

    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 6
    invoke-static {v9}, Ldev/virus/variable/launcher/api/NativeItem;->getID(I)I

    move-result v9

    .line 7
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    if-gt v9, v8, :cond_3

    move v8, v9

    goto :goto_2

    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 8
    invoke-static {v6}, Ldev/virus/variable/launcher/api/NativeItem;->getID(I)I

    move-result v9

    .line 9
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    if-gt v9, v8, :cond_5

    goto :goto_3

    :cond_6
    const/4 v6, -0x1

    .line 10
    :goto_3
    invoke-static {v2}, Ldev/virus/variable/launcher/api/NativeItem;->getID(I)I

    move-result v5

    const/16 v7, 0x9

    :goto_4
    if-ge v7, v0, :cond_8

    .line 11
    invoke-static {v7}, Ldev/virus/variable/launcher/api/NativeItem;->getID(I)I

    move-result v8

    if-nez v8, :cond_7

    goto :goto_5

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_8
    const/4 v7, -0x1

    :goto_5
    if-ne v7, v3, :cond_9

    .line 12
    invoke-static {v6}, Ldev/virus/variable/launcher/api/NativeItem;->getID(I)I

    move-result v0

    if-eq v5, v0, :cond_a

    if-eq v6, v3, :cond_a

    if-eq v6, v4, :cond_a

    if-eqz v6, :cond_a

    goto :goto_6

    :cond_9
    invoke-static {v6}, Ldev/virus/variable/launcher/api/NativeItem;->getID(I)I

    move-result v0

    if-eq v5, v0, :cond_a

    if-eq v6, v3, :cond_a

    if-eq v6, v4, :cond_a

    if-eqz v6, :cond_a

    .line 13
    invoke-static {v2, v7}, Ldev/virus/variable/launcher/api/NativeInventory;->swapSlots(II)V

    :goto_6
    invoke-static {v6, v2}, Ldev/virus/variable/launcher/api/NativeInventory;->swapSlots(II)V

    .line 14
    :cond_a
    iput v2, p0, Lh2/d;->v:I

    :cond_b
    iget-object v0, p0, Lh2/d;->q:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lh2/d;->r:Li2/b;

    invoke-virtual {v0}, Li2/b;->getCurrentMode()Ljava/lang/String;

    move-result-object v0

    const-string v5, "Distance"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lh2/d;->s:Li2/d;

    invoke-virtual {v0, v1}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, La3/r0;->s(D)J

    move-result-wide v0

    const-wide/16 v5, -0x1

    cmp-long v7, v0, v5

    if-eqz v7, :cond_e

    iget-object v0, p0, Lh2/d;->u:Ljava/util/ArrayList;

    .line 15
    invoke-static {v2}, Ldev/virus/variable/launcher/api/NativeItem;->getID(I)I

    move-result v1

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 17
    invoke-static {v2}, Ldev/virus/variable/launcher/api/NativeInventory;->setSelectedSlot(I)V

    goto :goto_8

    :cond_c
    new-array v0, v4, [I

    :goto_7
    if-ge v2, v4, :cond_d

    .line 18
    invoke-static {v2}, Ldev/virus/variable/launcher/api/NativeItem;->getID(I)I

    move-result v1

    .line 19
    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_d
    iget-object v1, p0, Lh2/d;->t:Ljava/util/ArrayList;

    iget-object v2, p0, Lh2/d;->u:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1, v2}, Lh2/d;->T([ILjava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v0

    if-eq v0, v3, :cond_e

    .line 20
    invoke-static {v0}, Ldev/virus/variable/launcher/api/NativeInventory;->setSelectedSlot(I)V

    :cond_e
    :goto_8
    return-void
.end method

.method public final T([ILjava/util/ArrayList;Ljava/util/ArrayList;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_1

    aget v1, p1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const v0, 0x7fffffff

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1
    invoke-static {v1}, Ldev/virus/variable/launcher/api/NativeItem;->getID(I)I

    move-result v1

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-gt v1, v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 3
    invoke-static {p2}, Ldev/virus/variable/launcher/api/NativeItem;->getID(I)I

    move-result v1

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-gt v1, v0, :cond_4

    return p2

    :cond_5
    const/4 p1, -0x1

    return p1
.end method
