.class public final Lh2/m;
.super Lc2/b;
.source "SourceFile"


# instance fields
.field public final o:Li2/e;

.field public final p:Li2/e;

.field public final q:Li2/e;

.field public final r:Li2/e;

.field public final s:Ljava/util/ArrayList;
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
    .locals 10

    const-string v0, "InventoryCleaner"

    const/4 v1, 0x1

    const-string v2, "Player"

    invoke-direct {p0, v0, v1, v1, v2}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0x35

    new-array v2, v2, [Ljava/lang/Integer;

    const/16 v3, 0x102

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/16 v3, 0x104

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const/16 v3, 0x105

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v2, v5

    const/16 v3, 0x106

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x3

    aput-object v3, v2, v6

    const/16 v3, 0x10b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v7, 0x4

    aput-object v3, v2, v7

    const/16 v3, 0x10c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v8, 0x5

    aput-object v3, v2, v8

    const/16 v3, 0x10f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v8, 0x6

    aput-object v3, v2, v8

    const/16 v3, 0x110

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v8, 0x7

    aput-object v3, v2, v8

    const/16 v3, 0x113

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v8, 0x8

    aput-object v3, v2, v8

    const/16 v3, 0x114

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v8, 0x9

    aput-object v3, v2, v8

    const/16 v3, 0x117

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v8, 0xa

    aput-object v3, v2, v8

    const/16 v3, 0x11b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v8, 0xb

    aput-object v3, v2, v8

    const/16 v3, 0x11e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v8, 0xc

    aput-object v3, v2, v8

    const/16 v3, 0x12a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v8, 0xd

    aput-object v3, v2, v8

    const/16 v3, 0x12b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v8, 0xe

    aput-object v3, v2, v8

    const/16 v3, 0x12c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v8, 0xf

    aput-object v3, v2, v8

    const/16 v3, 0x12d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v8, 0x10

    aput-object v3, v2, v8

    const/16 v3, 0x12e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v8, 0x11

    aput-object v3, v2, v8

    const/16 v3, 0x12f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v8, 0x12

    aput-object v3, v2, v8

    const/16 v3, 0x130

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v8, 0x13

    aput-object v3, v2, v8

    const/16 v3, 0x131

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v8, 0x14

    aput-object v3, v2, v8

    const/16 v3, 0x132

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v8, 0x15

    aput-object v3, v2, v8

    const/16 v3, 0x133

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v8, 0x16

    aput-object v3, v2, v8

    const/16 v3, 0x134

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v8, 0x17

    aput-object v3, v2, v8

    const/16 v3, 0x135

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v8, 0x18

    aput-object v3, v2, v8

    const/16 v3, 0x136

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v8, 0x19

    aput-object v3, v2, v8

    const/16 v3, 0x137

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v8, 0x1a

    aput-object v3, v2, v8

    const/16 v3, 0x138

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v8, 0x1b

    aput-object v3, v2, v8

    const/16 v3, 0x139

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v8, 0x1c

    aput-object v3, v2, v8

    const/16 v3, 0x13a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v8, 0x1d

    aput-object v3, v2, v8

    const/16 v3, 0x13b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v8, 0x1e

    aput-object v3, v2, v8

    const/16 v3, 0x13c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v8, 0x1f

    aput-object v3, v2, v8

    const/16 v3, 0x13d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v8, 0x20

    aput-object v3, v2, v8

    const/16 v3, 0x140

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v8, 0x21

    aput-object v3, v2, v8

    const/16 v3, 0x142

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v8, 0x22

    aput-object v3, v2, v8

    const/16 v3, 0x15e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v8, 0x23

    aput-object v3, v2, v8

    const/16 v3, 0x165

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v8, 0x24

    aput-object v3, v2, v8

    const/16 v3, 0x168

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v8, 0x25

    aput-object v3, v2, v8

    const/16 v3, 0x16c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v8, 0x26

    aput-object v3, v2, v8

    const/16 v3, 0x16e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v8, 0x27

    aput-object v3, v2, v8

    const/16 v3, 0x170

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v8, 0x28

    aput-object v3, v2, v8

    const/16 v3, 0x175

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v8, 0x29

    aput-object v3, v2, v8

    const/16 v3, 0x187

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v8, 0x2a

    aput-object v3, v2, v8

    const/16 v3, 0x18e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v8, 0x2b

    aput-object v3, v2, v8

    const/16 v3, 0x190

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v8, 0x2c

    aput-object v3, v2, v8

    const/16 v3, 0x191

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v8, 0x2d

    aput-object v3, v2, v8

    const/16 v3, 0x19c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v8, 0x2e

    aput-object v3, v2, v8

    const/16 v3, 0x1a8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v8, 0x2f

    aput-object v3, v2, v8

    const/16 v3, 0x1b6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v8, 0x30

    aput-object v3, v2, v8

    const/16 v3, 0x1bc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v8, 0x31

    aput-object v3, v2, v8

    const/16 v3, 0x1c2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v8, 0x32

    aput-object v3, v2, v8

    const/16 v3, 0x1cf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v8, 0x33

    aput-object v3, v2, v8

    const/16 v3, 0x1d2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v8, 0x34

    aput-object v3, v2, v8

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lh2/m;->s:Ljava/util/ArrayList;

    new-instance v0, Li2/e;

    const-string v2, "Clean hotbar"

    invoke-direct {v0, v2, v1}, Li2/e;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lh2/m;->o:Li2/e;

    new-instance v2, Li2/e;

    const-string v3, "Drop"

    invoke-direct {v2, v3, v1}, Li2/e;-><init>(Ljava/lang/String;Z)V

    iput-object v2, p0, Lh2/m;->p:Li2/e;

    new-instance v3, Li2/e;

    const-string v8, "Drop useless items"

    invoke-direct {v3, v8, v1}, Li2/e;-><init>(Ljava/lang/String;Z)V

    iput-object v3, p0, Lh2/m;->q:Li2/e;

    new-instance v8, Li2/e;

    const-string v9, "Drop duplicated items"

    invoke-direct {v8, v9, v4}, Li2/e;-><init>(Ljava/lang/String;Z)V

    iput-object v8, p0, Lh2/m;->r:Li2/e;

    new-array v7, v7, [Li2/c;

    aput-object v2, v7, v4

    aput-object v0, v7, v1

    aput-object v3, v7, v5

    aput-object v8, v7, v6

    invoke-virtual {p0, v7}, Lc2/b;->A([Li2/c;)V

    return-void
.end method


# virtual methods
.method public final J()V
    .locals 8

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lh2/m;->q:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    const/16 v1, 0x2e

    const/16 v2, 0x12

    const/16 v3, 0x9

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lh2/m;->o:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_0

    :cond_0
    const/16 v0, 0x12

    :goto_0
    if-ge v0, v1, :cond_2

    iget-object v5, p0, Lh2/m;->s:Ljava/util/ArrayList;

    .line 1
    invoke-static {v0}, Ldev/virus/variable/launcher/api/NativeItem;->getID(I)I

    move-result v6

    .line 2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lh2/m;->p:Li2/e;

    invoke-virtual {v5}, Li2/e;->isActive()Z

    move-result v5

    xor-int/2addr v5, v4

    .line 3
    invoke-static {v0, v4, v5}, Ldev/virus/variable/launcher/api/NativeInventory;->dropSlot(IZZ)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Lh2/m;->r:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    if-eqz v0, :cond_7

    new-array v0, v1, [I

    const/4 v5, -0x1

    invoke-static {v0, v5}, Ljava/util/Arrays;->fill([II)V

    iget-object v5, p0, Lh2/m;->o:Li2/e;

    invoke-virtual {v5}, Li2/e;->isActive()Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v2, 0x9

    :cond_3
    :goto_1
    if-ge v2, v1, :cond_6

    add-int/lit8 v3, v2, 0x1

    move v5, v3

    :goto_2
    if-ge v5, v1, :cond_5

    .line 5
    invoke-static {v2}, Ldev/virus/variable/launcher/api/NativeItem;->getID(I)I

    move-result v6

    invoke-static {v5}, Ldev/virus/variable/launcher/api/NativeItem;->getID(I)I

    move-result v7

    if-ne v6, v7, :cond_4

    .line 6
    aput v2, v0, v2

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    move v2, v3

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_7

    aget v3, v0, v2

    iget-object v5, p0, Lh2/m;->p:Li2/e;

    invoke-virtual {v5}, Li2/e;->isActive()Z

    move-result v5

    xor-int/2addr v5, v4

    .line 7
    invoke-static {v3, v4, v5}, Ldev/virus/variable/launcher/api/NativeInventory;->dropSlot(IZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    return-void
.end method
