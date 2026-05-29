.class public final Le2/a0;
.super Lc2/b;
.source "SourceFile"


# instance fields
.field public final o:Li2/e;

.field public final p:Li2/e;

.field public final q:Li2/e;

.field public final r:Li2/e;

.field public final s:Li2/e;

.field public final t:Li2/e;

.field public final u:Li2/e;

.field public final v:Li2/e;

.field public final w:Li2/e;

.field public x:Li2/e;

.field public y:Li2/e;

.field public z:Li2/e;


# direct methods
.method public constructor <init>()V
    .registers 16

    const-string v0, "NoRender"

    const/4 v1, 0x1

    const-string v2, "Misc"

    invoke-direct {p0, v0, v1, v1, v2}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    new-instance v0, Li2/e;

    const-string v2, "Name tags"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Li2/e;-><init>(Ljava/lang/String;Z)V

    new-instance v2, Le2/z;

    invoke-direct {v2, p0, v3}, Le2/z;-><init>(Le2/a0;I)V

    .line 1
    iput-object v2, v0, Li2/e;->f:Li2/e$a;

    .line 2
    iput-object v0, p0, Le2/a0;->o:Li2/e;

    new-instance v2, Li2/e;

    const-string v4, "Flame"

    invoke-direct {v2, v4, v3}, Li2/e;-><init>(Ljava/lang/String;Z)V

    new-instance v4, Le2/x;

    invoke-direct {v4, p0, v3}, Le2/x;-><init>(Le2/a0;I)V

    .line 3
    iput-object v4, v2, Li2/e;->f:Li2/e$a;

    .line 4
    iput-object v2, p0, Le2/a0;->p:Li2/e;

    new-instance v4, Li2/e;

    const-string v5, "Particles"

    invoke-direct {v4, v5, v3}, Li2/e;-><init>(Ljava/lang/String;Z)V

    new-instance v5, Le2/y;

    invoke-direct {v5, p0, v3}, Le2/y;-><init>(Le2/a0;I)V

    .line 5
    iput-object v5, v4, Li2/e;->f:Li2/e$a;

    .line 6
    iput-object v4, p0, Le2/a0;->q:Li2/e;

    new-instance v5, Li2/e;

    const-string v6, "Screen texts"

    invoke-direct {v5, v6, v3}, Li2/e;-><init>(Ljava/lang/String;Z)V

    new-instance v6, Le2/z;

    invoke-direct {v6, p0, v1}, Le2/z;-><init>(Le2/a0;I)V

    .line 7
    iput-object v6, v5, Li2/e;->f:Li2/e$a;

    .line 8
    iput-object v5, p0, Le2/a0;->r:Li2/e;

    new-instance v6, Li2/e;

    const-string v7, "Boss bar"

    invoke-direct {v6, v7, v3}, Li2/e;-><init>(Ljava/lang/String;Z)V

    new-instance v7, Le2/x;

    invoke-direct {v7, p0, v1}, Le2/x;-><init>(Le2/a0;I)V

    .line 9
    iput-object v7, v6, Li2/e;->f:Li2/e$a;

    .line 10
    iput-object v6, p0, Le2/a0;->s:Li2/e;

    new-instance v7, Li2/e;

    const-string v8, "Control buttons"

    invoke-direct {v7, v8, v3}, Li2/e;-><init>(Ljava/lang/String;Z)V

    new-instance v8, Le2/y;

    invoke-direct {v8, p0, v1}, Le2/y;-><init>(Le2/a0;I)V

    .line 11
    iput-object v8, v7, Li2/e;->f:Li2/e$a;

    .line 12
    iput-object v7, p0, Le2/a0;->t:Li2/e;

    new-instance v8, Li2/e;

    const-string v9, "Left hand"

    invoke-direct {v8, v9, v3}, Li2/e;-><init>(Ljava/lang/String;Z)V

    new-instance v9, Le2/z;

    const/4 v10, 0x2

    invoke-direct {v9, p0, v10}, Le2/z;-><init>(Le2/a0;I)V

    .line 13
    iput-object v9, v8, Li2/e;->f:Li2/e$a;

    .line 14
    iput-object v8, p0, Le2/a0;->u:Li2/e;

    new-instance v11, Li2/e;

    const-string v9, "Chat suggestions"

    invoke-direct {v11, v9, v3}, Li2/e;-><init>(Ljava/lang/String;Z)V

    iput-object v11, p0, Le2/a0;->v:Li2/e;

    new-instance v9, Li2/e;

    const-string v12, "Armor"

    invoke-direct {v9, v12, v3}, Li2/e;-><init>(Ljava/lang/String;Z)V

    iput-object v9, p0, Le2/a0;->w:Li2/e;

    new-instance v13, Li2/e;

    const-string v12, "Hand"

    invoke-direct {v13, v12, v3}, Li2/e;-><init>(Ljava/lang/String;Z)V

    iput-object v13, p0, Le2/a0;->x:Li2/e;

    new-instance v14, Li2/e;

    const-string v12, "Players"

    invoke-direct {v14, v12, v3}, Li2/e;-><init>(Ljava/lang/String;Z)V

    iput-object v14, p0, Le2/a0;->y:Li2/e;

    new-instance v10, Li2/e;

    const-string v12, "Totem"

    invoke-direct {v10, v12, v3}, Li2/e;-><init>(Ljava/lang/String;Z)V

    iput-object v10, p0, Le2/a0;->z:Li2/e;

    const/4 v10, 0x2

    const/16 v12, 0xc

    new-array v12, v12, [Li2/c;

    aput-object v0, v12, v3

    aput-object v2, v12, v1

    aput-object v4, v12, v10

    const/4 v0, 0x3

    aput-object v5, v12, v0

    const/4 v0, 0x4

    aput-object v6, v12, v0

    const/4 v0, 0x5

    aput-object v7, v12, v0

    const/4 v0, 0x6

    aput-object v8, v12, v0

    const/4 v0, 0x7

    aput-object v11, v12, v0

    const/16 v0, 0x8

    aput-object v9, v12, v0

    const/16 v0, 0x9

    aput-object v13, v12, v0

    const/16 v0, 0xa

    aput-object v14, v12, v0

    const/16 v0, 0xb

    iget-object v1, p0, Le2/a0;->z:Li2/e;

    aput-object v1, v12, v0

    invoke-virtual {p0, v12}, Lc2/b;->A([Li2/c;)V

    return-void
.end method


# virtual methods
.method public final E()V
    .registers 5

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isInGame()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x4

    new-array v1, v0, [C

    fill-array-data v1, :array_0

    const v2, 0xe7d002

    .line 1
    invoke-static {v2, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v1, 0x155a9d4

    const/4 v2, 0x4

    new-array v3, v2, [C

    .line 2
    fill-array-data v3, :array_1

    .line 3
    invoke-static {v1, v3}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v1, 0xe79406

    new-array v3, v0, [C

    .line 4
    fill-array-data v3, :array_2

    .line 5
    invoke-static {v1, v3}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v1, 0xe793a8

    new-array v3, v0, [C

    .line 6
    fill-array-data v3, :array_3

    .line 7
    invoke-static {v1, v3}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v1, 0xd04d5e

    new-array v3, v0, [C

    .line 8
    fill-array-data v3, :array_4

    .line 9
    invoke-static {v1, v3}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v1, 0xd04d2c

    new-array v3, v0, [C

    .line 10
    fill-array-data v3, :array_5

    .line 11
    invoke-static {v1, v3}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v1, 0xd06d9e

    new-array v3, v0, [C

    .line 12
    fill-array-data v3, :array_6

    .line 13
    invoke-static {v1, v3}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v1, 0xd06daa

    new-array v3, v0, [C

    .line 14
    fill-array-data v3, :array_7

    .line 15
    invoke-static {v1, v3}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v1, 0xba9500

    new-array v3, v0, [C

    .line 16
    fill-array-data v3, :array_8

    .line 17
    invoke-static {v1, v3}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v1, 0xd0664c

    new-array v3, v0, [C

    .line 18
    fill-array-data v3, :array_9

    .line 19
    invoke-static {v1, v3}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v1, 0xbe861c

    new-array v3, v0, [C

    fill-array-data v3, :array_a

    invoke-static {v1, v3}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v1, 0xe5f1e4

    new-array v2, v0, [C

    .line 20
    fill-array-data v2, :array_b

    .line 21
    invoke-static {v1, v2}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v1, 0xe6dacc

    new-array v0, v0, [C

    .line 22
    fill-array-data v0, :array_c

    .line 23
    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v1, 0x1184334

    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_d

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v1, 0xe38988

    const/4 v0, 0x6

    new-array v0, v0, [C

    fill-array-data v0, :array_e

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v1, 0xe6dad0

    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_f

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v1, 0xe4f60e

    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_10

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v1, 0xd3fea0

    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_11

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    return-void

    nop

    :array_0
    .array-data 2
        0xd8s
        0xf4s
        0x92s
        0xe6s
    .end array-data

    .array-data 2
        0xd0s
        0xf8s
    .end array-data

    :array_1
    .array-data 2
        0xd0s
        0xf8s
        0x78s
        0x11s
    .end array-data

    :array_2
    .array-data 2
        0xdcs
        0xf4s
        0xfes
        0xe2s
    .end array-data

    :array_3
    .array-data 2
        0xdcs
        0xf4s
        0x20s
        0xe3s
    .end array-data

    :array_4
    .array-data 2
        0x3cs
        0xf6s
        0x8es
        0xe7s
    .end array-data

    :array_5
    .array-data 2
        0x48s
        0xf6s
        0xfes
        0xe0s
    .end array-data

    :array_6
    .array-data 2
        0x46s
        0xf6s
        0xcs
        0xe3s
    .end array-data

    :array_7
    .array-data 2
        0x46s
        0xf6s
        0xcs
        0xe3s
    .end array-data

    :array_8
    .array-data 2
        0x98s
        0xf7s
        0xbcs
        0xe3s
    .end array-data

    :array_9
    .array-data 2
        0x2ds
        0xe9s
        0xf0s
        0x4fs
    .end array-data

    :array_a
    .array-data 2
        0x10s
        0xb5s
        0x0s
        0x69s
    .end array-data

    :array_b
    .array-data 2
        0xf5s
        0xf4s
        0x4es
        0xe5s
    .end array-data

    :array_c
    .array-data 2
        0xe7s
        0xf4s
        0x68s
        0xe3s
    .end array-data

    :array_d
    .array-data 2
        0x2ds
        0xe9s
        0xf0s
        0x4fs
    .end array-data

    :array_e
    .array-data 2
        0x2ds
        0xe9s
        0xf0s
        0x4fs
        0x81s
        0xb0s
    .end array-data

    :array_f
    .array-data 2
        0x5s
        0xf1s
        0x34s
        0xbs
    .end array-data

    :array_10
    .array-data 2
        0x4s
        0xf5s
        0x2s
        0xe1s
    .end array-data

    :array_11
    .array-data 2
        0x5es
        0xd0s
    .end array-data
.end method

.method public final G()V
    .registers 5

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isInGame()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Le2/a0;->o:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_1

    const v0, 0xe7d002

    new-array v2, v1, [C

    fill-array-data v2, :array_0

    .line 1
    invoke-static {v0, v2}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    .line 2
    :cond_1
    iget-object v0, p0, Le2/a0;->p:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x155a9d4

    const/4 v2, 0x4

    new-array v3, v2, [C

    fill-array-data v3, :array_1

    .line 3
    invoke-static {v0, v3}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    .line 4
    :cond_2
    iget-object v0, p0, Le2/a0;->q:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0xe79406

    new-array v3, v1, [C

    fill-array-data v3, :array_2

    .line 5
    invoke-static {v0, v3}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v0, 0xe793a8

    new-array v3, v1, [C

    .line 6
    fill-array-data v3, :array_3

    .line 7
    invoke-static {v0, v3}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    .line 8
    :cond_3
    iget-object v0, p0, Le2/a0;->r:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0xd04d5e

    new-array v3, v1, [C

    fill-array-data v3, :array_4

    .line 9
    invoke-static {v0, v3}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v0, 0xd04d2c

    new-array v3, v1, [C

    .line 10
    fill-array-data v3, :array_5

    .line 11
    invoke-static {v0, v3}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v0, 0xd06d9e

    new-array v3, v1, [C

    .line 12
    fill-array-data v3, :array_6

    .line 13
    invoke-static {v0, v3}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v0, 0xd06daa

    new-array v3, v1, [C

    .line 14
    fill-array-data v3, :array_7

    .line 15
    invoke-static {v0, v3}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v0, 0xba9500

    new-array v3, v1, [C

    .line 16
    fill-array-data v3, :array_8

    .line 17
    invoke-static {v0, v3}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    .line 18
    :cond_4
    iget-object v0, p0, Le2/a0;->s:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0xd0664c

    new-array v3, v1, [C

    fill-array-data v3, :array_9

    .line 19
    invoke-static {v0, v3}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    .line 20
    :cond_5
    iget-object v0, p0, Le2/a0;->t:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0xe5f1e4

    new-array v2, v1, [C

    fill-array-data v2, :array_a

    .line 21
    invoke-static {v0, v2}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    .line 22
    :cond_6
    iget-object v0, p0, Le2/a0;->u:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    if-eqz v0, :cond_7

    const v0, 0xe6dacc

    new-array v1, v1, [C

    fill-array-data v1, :array_b

    .line 23
    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    :cond_7
    iget-object v0, p0, Le2/a0;->v:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    if-eqz v0, :cond_8

    const v0, 0x1184334

    const/4 v1, 0x4

    new-array v1, v1, [C

    fill-array-data v1, :array_c

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    :cond_8
    iget-object v0, p0, Le2/a0;->w:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    if-eqz v0, :cond_9

    const v0, 0xe38988

    const/4 v1, 0x6

    new-array v1, v1, [C

    fill-array-data v1, :array_d

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    :cond_9
    iget-object v0, p0, Le2/a0;->z:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0xd3fea0

    const/4 v1, 0x2

    new-array v1, v1, [C

    fill-array-data v1, :array_e

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    :cond_a
    return-void

    :array_0
    .array-data 2
        0x0s
        0xbfs
        0x0s
        0xbfs
    .end array-data

    :array_1
    .array-data 2
        0x0s
        0x20s
        0x10s
        0xbds
    .end array-data

    .array-data 2
        0xd0s
        0xf8s
        0x78s
        0x11s
    .end array-data

    :array_2
    .array-data 2
        0x0s
        0xbfs
        0x0s
        0xbfs
    .end array-data

    :array_3
    .array-data 2
        0x0s
        0xbfs
        0x0s
        0xbfs
    .end array-data

    :array_4
    .array-data 2
        0x0s
        0xbfs
        0x0s
        0xbfs
    .end array-data

    :array_5
    .array-data 2
        0x0s
        0xbfs
        0x0s
        0xbfs
    .end array-data

    :array_6
    .array-data 2
        0x0s
        0xbfs
        0x0s
        0xbfs
    .end array-data

    :array_7
    .array-data 2
        0x0s
        0xbfs
        0x0s
        0xbfs
    .end array-data

    :array_8
    .array-data 2
        0x0s
        0xbfs
        0x0s
        0xbfs
    .end array-data

    :array_9
    .array-data 2
        0x0s
        0x20s
        0x70s
        0x47s
    .end array-data

    :array_a
    .array-data 2
        0x0s
        0xbfs
        0x0s
        0xbfs
    .end array-data

    :array_b
    .array-data 2
        0x0s
        0xbfs
        0x0s
        0xbfs
    .end array-data

    :array_c
    .array-data 2
        0x70s
        0x47s
        0x0s
        0xbfs
    .end array-data

    :array_d
    .array-data 2
        0x0s
        0x20s
        0xc0s
        0x43s
        0x70s
        0x47s
    .end array-data

    :array_e
    .array-data 2
        0x5as
        0xd0s
    .end array-data
.end method

.method public final J()V
    .registers 4

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isInGame()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Le2/a0;->v:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x1184334

    const/4 v1, 0x4

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    goto :goto_0

    :cond_0
    const v0, 0x1184334

    const/4 v1, 0x4

    new-array v1, v1, [C

    fill-array-data v1, :array_1

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    :goto_0
    iget-object v0, p0, Le2/a0;->w:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0xe38988

    const/4 v1, 0x6

    new-array v1, v1, [C

    fill-array-data v1, :array_2

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    goto :goto_1

    :cond_1
    const v0, 0xe38988

    const/4 v1, 0x6

    new-array v1, v1, [C

    fill-array-data v1, :array_3

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    :goto_1
    iget-object v0, p0, Le2/a0;->x:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0xe6dad0

    const/4 v1, 0x4

    new-array v1, v1, [C

    fill-array-data v1, :array_4

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    goto :goto_2

    :cond_2
    const v0, 0xe6dad0

    const/4 v1, 0x4

    new-array v1, v1, [C

    fill-array-data v1, :array_5

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    :goto_2
    iget-object v0, p0, Le2/a0;->y:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0xe4f60e

    const/4 v1, 0x4

    new-array v1, v1, [C

    fill-array-data v1, :array_6

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    goto :goto_3

    :cond_3
    const v0, 0xe4f60e

    const/4 v1, 0x4

    new-array v1, v1, [C

    fill-array-data v1, :array_7

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    :goto_3
    iget-object v0, p0, Le2/a0;->z:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0xd3fea0

    const/4 v1, 0x2

    new-array v1, v1, [C

    fill-array-data v1, :array_8

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    goto :goto_4

    :cond_4
    const v0, 0xd3fea0

    const/4 v1, 0x2

    new-array v1, v1, [C

    fill-array-data v1, :array_9

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    :cond_5
    :goto_4
    return-void

    :array_0
    .array-data 2
        0x70s
        0x47s
        0x0s
        0xbfs
    .end array-data

    :array_1
    .array-data 2
        0x2ds
        0xe9s
        0xf0s
        0x4fs
    .end array-data

    :array_2
    .array-data 2
        0x0s
        0x20s
        0xc0s
        0x43s
        0x70s
        0x47s
    .end array-data

    :array_3
    .array-data 2
        0x2ds
        0xe9s
        0xf0s
        0x4fs
        0x81s
        0xb0s
    .end array-data

    :array_4
    .array-data 2
        0x1s
        0xf0s
        0x7es
        0xbcs
    .end array-data

    :array_5
    .array-data 2
        0x5s
        0xf1s
        0x34s
        0xbs
    .end array-data

    :array_6
    .array-data 2
        0x0s
        0xbfs
        0x0s
        0xbfs
    .end array-data

    :array_7
    .array-data 2
        0x4s
        0xf5s
        0x2s
        0xe1s
    .end array-data

    :array_8
    .array-data 2
        0x5as
        0xd0s
    .end array-data

    :array_9
    .array-data 2
        0x5es
        0xd0s
    .end array-data
.end method
