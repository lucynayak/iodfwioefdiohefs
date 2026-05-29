.class public final Le2/s;
.super Lc2/b;
.source "SourceFile"


# static fields
.field public static final synthetic p:I


# instance fields
.field public final o:Li2/e;


# direct methods
.method public constructor <init>()V
    .registers 17

    move-object/from16 v0, p0

    const-string v1, "HandView"

    const/4 v2, 0x1

    const-string v3, "Misc"

    invoke-direct {v0, v1, v2, v2, v3}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    new-instance v1, Li2/e;

    const-string v3, "Flux swing"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Li2/e;-><init>(Ljava/lang/String;Z)V

    new-instance v3, Ld2/a;

    const/4 v5, 0x7

    invoke-direct {v3, v0, v5}, Ld2/a;-><init>(Lc2/b;I)V

    .line 1
    iput-object v3, v1, Li2/e;->f:Li2/e$a;

    .line 2
    iput-object v1, v0, Le2/s;->o:Li2/e;

    new-instance v3, Li2/d;

    const/4 v6, 0x4

    new-array v7, v6, [D

    fill-array-data v7, :array_0

    const-string v8, "Pos X"

    invoke-direct {v3, v8, v7}, Li2/d;-><init>(Ljava/lang/String;[D)V

    sget-object v7, Le2/f;->c:Le2/f;

    .line 3
    iput-object v7, v3, Li2/d;->f:Li2/d$a;

    .line 4
    new-instance v7, Li2/d;

    new-array v8, v6, [D

    fill-array-data v8, :array_1

    const-string v9, "Pos Y"

    invoke-direct {v7, v9, v8}, Li2/d;-><init>(Ljava/lang/String;[D)V

    sget-object v8, Le2/e;->c:Le2/e;

    .line 5
    iput-object v8, v7, Li2/d;->f:Li2/d$a;

    .line 6
    new-instance v8, Li2/d;

    new-array v9, v6, [D

    fill-array-data v9, :array_2

    const-string v10, "Pos Z"

    invoke-direct {v8, v10, v9}, Li2/d;-><init>(Ljava/lang/String;[D)V

    sget-object v9, Le2/r;->b:Le2/r;

    .line 7
    iput-object v9, v8, Li2/d;->f:Li2/d$a;

    .line 8
    new-instance v9, Li2/d;

    new-array v10, v6, [D

    fill-array-data v10, :array_3

    const-string v11, "Rot X"

    invoke-direct {v9, v11, v10}, Li2/d;-><init>(Ljava/lang/String;[D)V

    sget-object v10, Le2/f;->d:Le2/f;

    .line 9
    iput-object v10, v9, Li2/d;->f:Li2/d$a;

    .line 10
    new-instance v10, Li2/d;

    new-array v11, v6, [D

    fill-array-data v11, :array_4

    const-string v12, "Rot Y"

    invoke-direct {v10, v12, v11}, Li2/d;-><init>(Ljava/lang/String;[D)V

    sget-object v11, Le2/e;->d:Le2/e;

    .line 11
    iput-object v11, v10, Li2/d;->f:Li2/d$a;

    .line 12
    new-instance v11, Li2/d;

    new-array v12, v6, [D

    fill-array-data v12, :array_5

    const-string v13, "Rot Z"

    invoke-direct {v11, v13, v12}, Li2/d;-><init>(Ljava/lang/String;[D)V

    sget-object v12, Le2/r;->c:Le2/r;

    .line 13
    iput-object v12, v11, Li2/d;->f:Li2/d$a;

    .line 14
    new-instance v12, Li2/d;

    new-array v13, v6, [D

    fill-array-data v13, :array_6

    const-string v14, "Rot X 2"

    invoke-direct {v12, v14, v13}, Li2/d;-><init>(Ljava/lang/String;[D)V

    sget-object v13, Le2/f;->e:Le2/f;

    .line 15
    iput-object v13, v12, Li2/d;->f:Li2/d$a;

    .line 16
    new-instance v13, Li2/d;

    new-array v14, v6, [D

    fill-array-data v14, :array_7

    const-string v15, "Rot Y 2"

    invoke-direct {v13, v15, v14}, Li2/d;-><init>(Ljava/lang/String;[D)V

    sget-object v14, Le2/e;->e:Le2/e;

    .line 17
    iput-object v14, v13, Li2/d;->f:Li2/d$a;

    .line 18
    new-instance v14, Li2/d;

    new-array v15, v6, [D

    fill-array-data v15, :array_8

    const-string v5, "Rot Z 2"

    invoke-direct {v14, v5, v15}, Li2/d;-><init>(Ljava/lang/String;[D)V

    sget-object v5, Le2/r;->d:Le2/r;

    .line 19
    iput-object v5, v14, Li2/d;->f:Li2/d$a;

    const/16 v5, 0xa

    new-array v5, v5, [Li2/c;

    aput-object v1, v5, v4

    aput-object v3, v5, v2

    const/4 v1, 0x2

    aput-object v7, v5, v1

    const/4 v1, 0x3

    aput-object v8, v5, v1

    aput-object v9, v5, v6

    const/4 v1, 0x5

    aput-object v10, v5, v1

    const/4 v1, 0x6

    aput-object v11, v5, v1

    const/4 v1, 0x7

    aput-object v12, v5, v1

    const/16 v1, 0x8

    aput-object v13, v5, v1

    const/16 v1, 0x9

    aput-object v14, v5, v1

    .line 20
    invoke-virtual {v0, v5}, Lc2/b;->A([Li2/c;)V

    return-void

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x0
        0x4000000000000000L    # 2.0
        0x3f847ae147ae147bL    # 0.01
    .end array-data

    :array_1
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x0
        0x4000000000000000L    # 2.0
        0x3f847ae147ae147bL    # 0.01
    .end array-data

    :array_2
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x0
        0x4000000000000000L    # 2.0
        0x3f847ae147ae147bL    # 0.01
    .end array-data

    :array_3
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x0
        0x4000000000000000L    # 2.0
        0x3f847ae147ae147bL    # 0.01
    .end array-data

    :array_4
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x0
        0x4000000000000000L    # 2.0
        0x3f847ae147ae147bL    # 0.01
    .end array-data

    :array_5
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x0
        0x4000000000000000L    # 2.0
        0x3f847ae147ae147bL    # 0.01
    .end array-data

    :array_6
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x0
        0x4000000000000000L    # 2.0
        0x3f847ae147ae147bL    # 0.01
    .end array-data

    :array_7
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x0
        0x4000000000000000L    # 2.0
        0x3f847ae147ae147bL    # 0.01
    .end array-data

    :array_8
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x0
        0x4000000000000000L    # 2.0
        0x3f847ae147ae147bL    # 0.01
    .end array-data
.end method


# virtual methods
.method public final E()V
    .registers 3

    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/Api;->sendEnabledStatus(IZ)V

    iget-object v0, p0, Le2/s;->o:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isInGame()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0xe6e3d6

    const/16 v1, 0x10

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    :cond_0
    return-void

    nop

    :array_0
    .array-data 2
        0x80s
        0xeds
        0xcs
        0x1as
        0x80s
        0xeds
        0xds
        0x4as
        0x80s
        0xeds
        0xes
        0x2as
        0x80s
        0xeds
        0xfs
        0xas
    .end array-data
.end method

.method public final G()V
    .registers 3

    const/4 v0, 0x7

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/Api;->sendEnabledStatus(IZ)V

    iget-object v0, p0, Le2/s;->o:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isInGame()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0xe6e3d6

    const/16 v1, 0x10

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    :cond_0
    return-void

    nop

    :array_0
    .array-data 2
        0x0s
        0xbfs
        0x0s
        0xbfs
        0x0s
        0xbfs
        0x0s
        0xbfs
        0x0s
        0xbfs
        0x0s
        0xbfs
        0x0s
        0xbfs
        0x0s
        0xbfs
    .end array-data
.end method
