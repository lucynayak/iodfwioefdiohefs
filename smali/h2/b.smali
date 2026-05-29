.class public final Lh2/b;
.super Lc2/b;
.source "SourceFile"


# instance fields
.field public final o:Li2/e;

.field public final p:Li2/d;

.field public q:I

.field public final r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

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

.field public final v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 10

    const-string v0, "AutoArmor"

    const/4 v1, 0x1

    const-string v2, "Player"

    invoke-direct {p0, v0, v1, v1, v2}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lh2/b;->r:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x5

    new-array v3, v2, [Ljava/lang/Integer;

    const/16 v4, 0x136

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/16 v4, 0x132

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/16 v4, 0x12e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v3, v6

    const/16 v4, 0x12a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x3

    aput-object v4, v3, v7

    const/16 v4, 0x13a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v8, 0x4

    aput-object v4, v3, v8

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lh2/b;->s:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lh2/b;->t:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    new-array v3, v2, [Ljava/lang/Integer;

    const/16 v4, 0x137

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const/16 v4, 0x133

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/16 v4, 0x12f

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/16 v4, 0x12b

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const/16 v4, 0x13b

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lh2/b;->u:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lh2/b;->v:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    new-array v3, v2, [Ljava/lang/Integer;

    const/16 v4, 0x138

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const/16 v4, 0x134

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/16 v4, 0x130

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/16 v4, 0x12c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const/16 v4, 0x13c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lh2/b;->w:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lh2/b;->x:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    new-array v2, v2, [Ljava/lang/Integer;

    const/16 v3, 0x139

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/16 v3, 0x135

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const/16 v3, 0x131

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/16 v3, 0x12d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    const/16 v3, 0x13d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lh2/b;->y:Ljava/util/ArrayList;

    new-instance v0, Li2/e;

    const-string v2, "Inventory only"

    invoke-direct {v0, v2, v5}, Li2/e;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lh2/b;->o:Li2/e;

    new-instance v2, Li2/d;

    new-array v3, v8, [D

    fill-array-data v3, :array_0

    const-string v4, "Delay"

    invoke-direct {v2, v4, v3}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v2, p0, Lh2/b;->p:Li2/d;

    new-array v3, v6, [Li2/c;

    aput-object v0, v3, v5

    aput-object v2, v3, v1

    invoke-virtual {p0, v3}, Lc2/b;->A([Li2/c;)V

    return-void

    :array_0
    .array-data 8
        0x4014000000000000L    # 5.0
        0x0
        0x4034000000000000L    # 20.0
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method


# virtual methods
.method public final J()V
    .registers 15

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lh2/b;->o:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ldev/virus/variable/launcher/api/Api;->getScreenName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "inventory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lh2/b;->q:I

    int-to-double v0, v0

    iget-object v2, p0, Lh2/b;->p:Li2/d;

    const-string v3, "current"

    invoke-virtual {v2, v3}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v4

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    mul-double v4, v4, v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v8

    const/4 v2, 0x0

    cmpl-double v8, v0, v4

    if-ltz v8, :cond_1

    iput v2, p0, Lh2/b;->q:I

    :cond_1
    iget v0, p0, Lh2/b;->q:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lh2/b;->q:I

    const/16 v0, 0x2e

    new-array v4, v0, [I

    const/16 v5, 0x9

    :goto_0
    if-ge v5, v0, :cond_2

    .line 1
    invoke-static {v5}, Ldev/virus/variable/launcher/api/NativeItem;->getID(I)I

    move-result v8

    .line 2
    aput v8, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    iget v0, p0, Lh2/b;->q:I

    int-to-double v8, v0

    iget-object v0, p0, Lh2/b;->p:Li2/d;

    invoke-virtual {v0, v3}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v10

    const/4 v0, -0x1

    cmpl-double v5, v8, v10

    if-nez v5, :cond_6

    .line 3
    invoke-static {v2}, Ldev/virus/variable/launcher/api/NativeInventory;->getArmor(I)I

    move-result v5

    .line 4
    iget-object v8, p0, Lh2/b;->r:Ljava/util/ArrayList;

    iget-object v9, p0, Lh2/b;->s:Ljava/util/ArrayList;

    invoke-virtual {p0, v4, v8, v9}, Lh2/b;->T([ILjava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v8

    invoke-virtual {p0, v4}, Lh2/b;->U([I)I

    move-result v9

    if-eq v8, v0, :cond_6

    iget-object v10, p0, Lh2/b;->s:Ljava/util/ArrayList;

    .line 5
    invoke-static {v8}, Ldev/virus/variable/launcher/api/NativeItem;->getID(I)I

    move-result v11

    .line 6
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v10

    iget-object v11, p0, Lh2/b;->s:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    if-lt v10, v11, :cond_3

    if-nez v5, :cond_6

    .line 7
    :cond_3
    invoke-static {v8, v2, v9}, Ldev/virus/variable/launcher/api/NativeInventory;->setArmor(III)V

    if-ne v9, v0, :cond_4

    move v10, v8

    goto :goto_1

    :cond_4
    move v10, v9

    :goto_1
    if-eqz v5, :cond_5

    add-int/lit16 v5, v5, 0x100

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    .line 8
    :goto_2
    aput v5, v4, v10

    if-eq v9, v0, :cond_6

    aput v2, v4, v8

    :cond_6
    iget v5, p0, Lh2/b;->q:I

    int-to-double v8, v5

    iget-object v5, p0, Lh2/b;->p:Li2/d;

    invoke-virtual {v5, v3}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double v10, v10, v12

    cmpl-double v5, v8, v10

    if-nez v5, :cond_a

    .line 9
    invoke-static {v1}, Ldev/virus/variable/launcher/api/NativeInventory;->getArmor(I)I

    move-result v5

    .line 10
    iget-object v8, p0, Lh2/b;->t:Ljava/util/ArrayList;

    iget-object v9, p0, Lh2/b;->u:Ljava/util/ArrayList;

    invoke-virtual {p0, v4, v8, v9}, Lh2/b;->T([ILjava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v8

    invoke-virtual {p0, v4}, Lh2/b;->U([I)I

    move-result v9

    if-eq v8, v0, :cond_a

    iget-object v10, p0, Lh2/b;->u:Ljava/util/ArrayList;

    .line 11
    invoke-static {v8}, Ldev/virus/variable/launcher/api/NativeItem;->getID(I)I

    move-result v11

    .line 12
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v10

    iget-object v11, p0, Lh2/b;->u:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    if-lt v10, v11, :cond_7

    if-nez v5, :cond_a

    .line 13
    :cond_7
    invoke-static {v8, v1, v9}, Ldev/virus/variable/launcher/api/NativeInventory;->setArmor(III)V

    if-ne v9, v0, :cond_8

    move v1, v8

    goto :goto_3

    :cond_8
    move v1, v9

    :goto_3
    if-eqz v5, :cond_9

    add-int/lit16 v5, v5, 0x100

    goto :goto_4

    :cond_9
    const/4 v5, 0x0

    .line 14
    :goto_4
    aput v5, v4, v1

    if-eq v9, v0, :cond_a

    aput v2, v4, v8

    :cond_a
    iget v1, p0, Lh2/b;->q:I

    int-to-double v8, v1

    iget-object v1, p0, Lh2/b;->p:Li2/d;

    invoke-virtual {v1, v3}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v10

    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    mul-double v10, v10, v12

    cmpl-double v1, v8, v10

    if-nez v1, :cond_e

    const/4 v1, 0x2

    .line 15
    invoke-static {v1}, Ldev/virus/variable/launcher/api/NativeInventory;->getArmor(I)I

    move-result v5

    .line 16
    iget-object v8, p0, Lh2/b;->v:Ljava/util/ArrayList;

    iget-object v9, p0, Lh2/b;->w:Ljava/util/ArrayList;

    invoke-virtual {p0, v4, v8, v9}, Lh2/b;->T([ILjava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v8

    invoke-virtual {p0, v4}, Lh2/b;->U([I)I

    move-result v9

    if-eq v8, v0, :cond_e

    iget-object v10, p0, Lh2/b;->w:Ljava/util/ArrayList;

    .line 17
    invoke-static {v8}, Ldev/virus/variable/launcher/api/NativeItem;->getID(I)I

    move-result v11

    .line 18
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v10

    iget-object v11, p0, Lh2/b;->w:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    if-lt v10, v11, :cond_b

    if-nez v5, :cond_e

    .line 19
    :cond_b
    invoke-static {v8, v1, v9}, Ldev/virus/variable/launcher/api/NativeInventory;->setArmor(III)V

    if-ne v9, v0, :cond_c

    move v1, v8

    goto :goto_5

    :cond_c
    move v1, v9

    :goto_5
    if-eqz v5, :cond_d

    add-int/lit16 v5, v5, 0x100

    goto :goto_6

    :cond_d
    const/4 v5, 0x0

    .line 20
    :goto_6
    aput v5, v4, v1

    if-eq v9, v0, :cond_e

    aput v2, v4, v8

    :cond_e
    iget v1, p0, Lh2/b;->q:I

    int-to-double v8, v1

    iget-object v1, p0, Lh2/b;->p:Li2/d;

    invoke-virtual {v1, v3}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v10

    mul-double v10, v10, v6

    cmpl-double v1, v8, v10

    if-nez v1, :cond_12

    const/4 v1, 0x3

    .line 21
    invoke-static {v1}, Ldev/virus/variable/launcher/api/NativeInventory;->getArmor(I)I

    move-result v3

    .line 22
    iget-object v5, p0, Lh2/b;->x:Ljava/util/ArrayList;

    iget-object v6, p0, Lh2/b;->y:Ljava/util/ArrayList;

    invoke-virtual {p0, v4, v5, v6}, Lh2/b;->T([ILjava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v5

    invoke-virtual {p0, v4}, Lh2/b;->U([I)I

    move-result v6

    if-eq v5, v0, :cond_12

    iget-object v7, p0, Lh2/b;->y:Ljava/util/ArrayList;

    .line 23
    invoke-static {v5}, Ldev/virus/variable/launcher/api/NativeItem;->getID(I)I

    move-result v8

    .line 24
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    iget-object v8, p0, Lh2/b;->y:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    if-lt v7, v8, :cond_f

    if-nez v3, :cond_12

    .line 25
    :cond_f
    invoke-static {v5, v1, v6}, Ldev/virus/variable/launcher/api/NativeInventory;->setArmor(III)V

    if-ne v6, v0, :cond_10

    move v1, v5

    goto :goto_7

    :cond_10
    move v1, v6

    :goto_7
    if-eqz v3, :cond_11

    add-int/lit16 v3, v3, 0x100

    goto :goto_8

    :cond_11
    const/4 v3, 0x0

    .line 26
    :goto_8
    aput v3, v4, v1

    if-eq v6, v0, :cond_12

    aput v2, v4, v5

    :cond_12
    return-void
.end method

.method public final T([ILjava/util/ArrayList;Ljava/util/ArrayList;)I
    .registers 6
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

    const/16 v0, 0x9

    :goto_0
    const/16 v1, 0x2e

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

.method public final U([I)I
    .registers 4

    const/16 v0, 0x9

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    invoke-static {v0}, Ldev/virus/variable/launcher/api/NativeItem;->getID(I)I

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method
