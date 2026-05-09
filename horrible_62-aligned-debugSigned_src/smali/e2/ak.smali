.class public final Le2/ak;
.super Lc2/b;
.source "SourceFile"


# instance fields
.field public final o:Li2/e;

.field public final p:Li2/e;


# direct methods
.method public constructor <init>()V
    .registers 7

    const-string v0, "NoLiquid"

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-string v3, "Movement"

    invoke-direct {p0, v0, v1, v2, v3}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    new-instance v0, Li2/e;

    const-string v3, "Water"

    invoke-direct {v0, v3, v1}, Li2/e;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Le2/ak;->o:Li2/e;

    new-instance v3, Li2/e;

    const-string v4, "Lava"

    invoke-direct {v3, v4, v1}, Li2/e;-><init>(Ljava/lang/String;Z)V

    iput-object v3, p0, Le2/ak;->p:Li2/e;

    const/4 v4, 0x2

    new-array v4, v4, [Li2/c;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    aput-object v3, v4, v1

    invoke-virtual {p0, v4}, Lc2/b;->A([Li2/c;)V

    return-void
.end method


# virtual methods
.method public final E()V
    .registers 4

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isInGame()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x154ed28

    const/4 v1, 0x4

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v0, 0x154ed2e

    const/4 v1, 0x4

    new-array v1, v1, [C

    fill-array-data v1, :array_1

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v0, 0x15cc920

    const/4 v1, 0x4

    new-array v1, v1, [C

    fill-array-data v1, :array_2

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v0, 0x16e354c

    const/4 v1, 0x4

    new-array v1, v1, [C

    fill-array-data v1, :array_3

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v0, 0x154ed9c

    const/4 v1, 0x4

    new-array v1, v1, [C

    fill-array-data v1, :array_4

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    :cond_0
    return-void

    nop

    :array_0
    .array-data 2
        0x90s
        0xf8s
        0x5as
        0x1s
    .end array-data

    :array_1
    .array-data 2
        0x70s
        0xb5s
        0x86s
        0xb0s
    .end array-data

    :array_2
    .array-data 2
        0xb0s
        0xb5s
        0x94s
        0xb0s
    .end array-data

    :array_3
    .array-data 2
        0x80s
        0xb5s
        0x84s
        0xb0s
    .end array-data

    :array_4
    .array-data 2
        0xb0s
        0xb5s
        0x8as
        0xb0s
    .end array-data
.end method

.method public final G()V
    .registers 4

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isInGame()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    iget-object v0, p0, Le2/ak;->o:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x154ed28

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v0, 0x154ed2e

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v0, 0x16e354c

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    :cond_0
    iget-object v0, p0, Le2/ak;->p:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x15cc920

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v0, 0x154ed9c

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    :cond_1
    return-void

    nop

    :array_0
    .array-data 2
        0x0s
        0x20s
        0x70s
        0x47s
    .end array-data
.end method

.method public final J()V
    .registers 4

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isInGame()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Le2/ak;->o:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    const v0, 0x154ed28

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v0, 0x154ed2e

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v0, 0x16e354c

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    goto :goto_0

    :cond_2
    const v0, 0x154ed28

    const/4 v1, 0x4

    new-array v1, v1, [C

    fill-array-data v1, :array_1

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v0, 0x154ed2e

    const/4 v1, 0x4

    new-array v1, v1, [C

    fill-array-data v1, :array_2

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v0, 0x16e354c

    const/4 v1, 0x4

    new-array v1, v1, [C

    fill-array-data v1, :array_4

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    :goto_0
    iget-object v0, p0, Le2/ak;->p:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    const v0, 0x15cc920

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v0, 0x154ed9c

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    goto :goto_1

    :cond_3
    const v0, 0x15cc920

    const/4 v1, 0x4

    new-array v1, v1, [C

    fill-array-data v1, :array_3

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v0, 0x154ed9c

    const/4 v1, 0x4

    new-array v1, v1, [C

    fill-array-data v1, :array_5

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    :goto_1
    return-void

    nop

    :array_0
    .array-data 2
        0x0s
        0x20s
        0x70s
        0x47s
    .end array-data

    :array_1
    .array-data 2
        0x90s
        0xf8s
        0x5as
        0x1s
    .end array-data

    :array_2
    .array-data 2
        0x70s
        0xb5s
        0x86s
        0xb0s
    .end array-data

    :array_3
    .array-data 2
        0xb0s
        0xb5s
        0x94s
        0xb0s
    .end array-data

    :array_4
    .array-data 2
        0x80s
        0xb5s
        0x84s
        0xb0s
    .end array-data

    :array_5
    .array-data 2
        0xb0s
        0xb5s
        0x8as
        0xb0s
    .end array-data
.end method
