.class public final Le2/ad;
.super Lc2/b;
.source "SourceFile"


# instance fields
.field public final o:Li2/d;

.field public final p:Li2/d;

.field public final q:Li2/d;

.field public final r:Li2/d;


# direct methods
.method public constructor <init>()V
    .locals 8

    const-string v0, "HitColor"

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-string v3, "Misc"

    invoke-direct {p0, v0, v1, v2, v3}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    new-instance v0, Li2/d;

    const/4 v1, 0x4

    new-array v2, v1, [D

    fill-array-data v2, :array_0

    const-string v3, "Red"

    invoke-direct {v0, v3, v2}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v0, p0, Le2/ad;->o:Li2/d;

    new-instance v2, Li2/d;

    new-array v3, v1, [D

    fill-array-data v3, :array_1

    const-string v4, "Green"

    invoke-direct {v2, v4, v3}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v2, p0, Le2/ad;->p:Li2/d;

    new-instance v3, Li2/d;

    new-array v4, v1, [D

    fill-array-data v4, :array_2

    const-string v5, "Blue"

    invoke-direct {v3, v5, v4}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v3, p0, Le2/ad;->q:Li2/d;

    new-instance v4, Li2/d;

    new-array v5, v1, [D

    fill-array-data v5, :array_3

    const-string v6, "Alpha"

    invoke-direct {v4, v6, v5}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v4, p0, Le2/ad;->r:Li2/d;

    const/4 v5, 0x4

    new-array v5, v5, [Li2/c;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    const/4 v6, 0x2

    aput-object v3, v5, v6

    const/4 v6, 0x3

    aput-object v4, v5, v6

    invoke-virtual {p0, v5}, Lc2/b;->A([Li2/c;)V

    return-void

    nop

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x0
        0x3ff0000000000000L    # 1.0
        0x3fa999999999999aL    # 0.05
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x3fa999999999999aL    # 0.05
    .end array-data

    :array_2
    .array-data 8
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x3fa999999999999aL    # 0.05
    .end array-data

    :array_3
    .array-data 8
        0x3fe3333333333333L    # 0.6
        0x0
        0x3ff0000000000000L    # 1.0
        0x3fa999999999999aL    # 0.05
    .end array-data
.end method


# virtual methods
.method public final E()V
    .locals 7

    :try_start_0
    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLevel;->getAllPlayers()[J

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-wide v3, v0, v2

    invoke-static {v3, v4}, Ldev/virus/variable/launcher/api/NativeMemory;->getPlayer(J)J

    move-result-wide v3

    long-to-int v3, v3

    if-eqz v3, :cond_0

    const/16 v4, 0xc98

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v3, v4, v5}, Ldev/virus/variable/launcher/api/NativeMemory;->setFloat(IIF)V

    const/16 v4, 0xc9c

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Ldev/virus/variable/launcher/api/NativeMemory;->setFloat(IIF)V

    const/16 v4, 0xca0

    invoke-static {v3, v4, v5}, Ldev/virus/variable/launcher/api/NativeMemory;->setFloat(IIF)V

    const/16 v4, 0xca4

    const v5, 0x3f19999a    # 0.6f

    invoke-static {v3, v4, v5}, Ldev/virus/variable/launcher/api/NativeMemory;->setFloat(IIF)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public final G()V
    .locals 0

    return-void
.end method

.method public final J()V
    .locals 10

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    const-string v0, "current"

    iget-object v1, p0, Le2/ad;->o:Li2/d;

    invoke-virtual {v1, v0}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, p0, Le2/ad;->p:Li2/d;

    invoke-virtual {v2, v0}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float v2, v2

    iget-object v3, p0, Le2/ad;->q:Li2/d;

    invoke-virtual {v3, v0}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v3

    double-to-float v3, v3

    iget-object v4, p0, Le2/ad;->r:Li2/d;

    invoke-virtual {v4, v0}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLevel;->getAllPlayers()[J

    move-result-object v5

    if-eqz v5, :cond_1

    array-length v6, v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_1

    aget-wide v8, v5, v7

    invoke-static {v8, v9}, Ldev/virus/variable/launcher/api/NativeMemory;->getPlayer(J)J

    move-result-wide v8

    long-to-int v8, v8

    if-eqz v8, :cond_0

    const/16 v9, 0xc98

    invoke-static {v8, v9, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->setFloat(IIF)V

    const/16 v9, 0xc9c

    invoke-static {v8, v9, v2}, Ldev/virus/variable/launcher/api/NativeMemory;->setFloat(IIF)V

    const/16 v9, 0xca0

    invoke-static {v8, v9, v3}, Ldev/virus/variable/launcher/api/NativeMemory;->setFloat(IIF)V

    const/16 v9, 0xca4

    invoke-static {v8, v9, v4}, Ldev/virus/variable/launcher/api/NativeMemory;->setFloat(IIF)V

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method
