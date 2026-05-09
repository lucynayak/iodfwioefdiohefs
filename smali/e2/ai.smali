.class public final Le2/ai;
.super Lc2/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 5

    const-string v0, "BrokenNeck"

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-string v3, "Player"

    invoke-direct {p0, v0, v1, v2, v3}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final E()V
    .registers 4

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isInGame()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x6

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    const v1, 0x1551800

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const/16 v0, 0x6

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    const v1, 0x1551812

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const/16 v0, 0x8

    new-array v0, v0, [C

    fill-array-data v0, :array_2

    const v1, 0xd3c1ac

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const/16 v0, 0x8

    new-array v0, v0, [C

    fill-array-data v0, :array_3

    const v1, 0xd3c258

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    :cond_0
    return-void

    nop

    :array_0
    .array-data 2
        0xb8s
        0xbfs
        0xb0s
        0xees
        0x43s
        0xas
    .end array-data

    :array_1
    .array-data 2
        0xc8s
        0xbfs
        0xb0s
        0xees
        0x43s
        0xas
    .end array-data

    :array_2
    .array-data 2
        0x0s
        0x0s
        0xb4s
        0x42s
        0x0s
        0x0s
        0xb4s
        0xc2s
    .end array-data

    :array_3
    .array-data 2
        0x0s
        0x0s
        0xb4s
        0xc2s
        0x0s
        0x0s
        0xb4s
        0x42s
    .end array-data
.end method

.method public final G()V
    .registers 4

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isInGame()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x6

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    const v1, 0x1551800

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const/16 v0, 0x6

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    const v1, 0x1551812

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const/16 v0, 0x8

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    const v1, 0xd3c1ac

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const/16 v0, 0x8

    new-array v0, v0, [C

    fill-array-data v0, :array_2

    const v1, 0xd3c258

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

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
    .end array-data

    :array_1
    .array-data 2
        0x0s
        0x0s
        0xb4s
        0x43s
        0x0s
        0x0s
        0xb4s
        0xc3s
    .end array-data

    :array_2
    .array-data 2
        0x0s
        0x0s
        0xb4s
        0xc3s
        0x0s
        0x0s
        0xb4s
        0x43s
    .end array-data
.end method
