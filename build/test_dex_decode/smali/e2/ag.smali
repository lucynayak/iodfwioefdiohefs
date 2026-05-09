.class public Le2/ag;
.super Lc2/b;
.source "SourceFile"


# instance fields
.field public o:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "ChatNoClose"

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-string v3, "Misc"

    invoke-direct {p0, v0, v1, v2, v3}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public E()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Le2/ag;->o:Z

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isInGame()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x106ac9c

    const/4 v1, 0x4

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v0, 0x106aca0

    const/4 v1, 0x4

    new-array v1, v1, [C

    fill-array-data v1, :array_1

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    :cond_0
    return-void

    :array_0
    .array-data 2
        0xd8s
        0xf8s
        0x7cs
        0x1s
    .end array-data

    :array_1
    .array-data 2
        0xd7s
        0xf6s
        0xf6s
        0xc9s
    .end array-data
.end method

.method public G()V
    .locals 3

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isInGame()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x106aca0

    const/4 v1, 0x4

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v0, 0x106ac9c

    const/4 v1, 0x4

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Le2/ag;->o:Z

    :cond_0
    return-void

    :array_0
    .array-data 2
        0x0s
        0xbfs
        0x0s
        0xbfs
    .end array-data
.end method

.method public J()V
    .locals 1

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Le2/ag;->o:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Le2/ag;->G()V

    :cond_0
    return-void
.end method
