.class public final Le2/aq;
.super Lc2/b;
.source "SourceFile"


# instance fields
.field public p:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    const-string v0, "ElytraAll"

    const/4 v1, 0x1

    const-string v2, "Movement"

    invoke-direct {p0, v0, v1, v1, v2}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final E()V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Le2/aq;->p:Z

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isInGame()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x15ee244

    const/4 v1, 0x4

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v0, 0x15ee80c

    const/4 v1, 0x4

    new-array v1, v1, [C

    fill-array-data v1, :array_1

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v0, 0x15ee824

    const/4 v1, 0x4

    new-array v1, v1, [C

    fill-array-data v1, :array_2

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v0, 0x15a8552

    const/4 v1, 0x2

    new-array v1, v1, [C

    fill-array-data v1, :array_3

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    :cond_0
    return-void

    :array_0
    .array-data 2
        0x4s
        0x49s
        0x79s
        0x44s
    .end array-data

    :array_1
    .array-data 2
        0x4s
        0x49s
        0x42s
        0x68s
    .end array-data

    :array_2
    .array-data 2
        0xb0s
        0xb5s
        0xcs
        0x49s
    .end array-data

    :array_3
    .array-data 2
        0x0s
        0x22s
    .end array-data
.end method

.method public final G()V
    .registers 3

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isInGame()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x15ee244

    const/4 v1, 0x4

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v0, 0x15ee80c

    const/4 v1, 0x4

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v0, 0x15ee824

    const/4 v1, 0x4

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v0, 0x15a8552

    const/4 v1, 0x2

    new-array v1, v1, [C

    fill-array-data v1, :array_1

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Le2/aq;->p:Z

    :cond_0
    return-void

    :array_0
    .array-data 2
        0x1s
        0x20s
        0x70s
        0x47s
    .end array-data

    :array_1
    .array-data 2
        0x1s
        0x22s
    .end array-data
.end method

.method public final J()V
    .registers 2

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Le2/aq;->p:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Le2/aq;->G()V

    :cond_0
    return-void
.end method
