.class public final Le2/ap;
.super Lc2/b;
.source "SourceFile"


# instance fields
.field public final o:Li2/d;


# direct methods
.method public constructor <init>()V
    .locals 7

    const-string v0, "Zoom"

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-string v3, "Player"

    invoke-direct {p0, v0, v1, v2, v3}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    new-instance v0, Li2/d;

    const/4 v1, 0x4

    new-array v1, v1, [D

    fill-array-data v1, :array_0

    const-string v2, "FOV"

    invoke-direct {v0, v2, v1}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v0, p0, Le2/ap;->o:Li2/d;

    invoke-virtual {p0, v0}, Lc2/b;->addSetting(Li2/c;)V

    return-void

    :array_0
    .array-data 8
        0x4051800000000000L    # 70.0
        0x3ff0000000000000L    # 1.0
        0x4066800000000000L    # 180.0
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method


# virtual methods
.method public final E()V
    .locals 2

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isInGame()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0xe7da86

    const/4 v1, 0x4

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v0, 0xe7da94

    const/4 v1, 0x4

    new-array v1, v1, [C

    fill-array-data v1, :array_1

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    :cond_0
    return-void

    nop

    :array_0
    .array-data 2
        0x10s
        0xees
        0x10s
        0xas
    .end array-data

    :array_1
    .array-data 2
        0x0s
        0x0s
        0x88s
        0x42s
    .end array-data
.end method

.method public final G()V
    .locals 3

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isInGame()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0xe7da86

    const/4 v1, 0x4

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v0, 0xe7da94

    const/4 v1, 0x4

    new-array v1, v1, [C

    fill-array-data v1, :array_1

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    :cond_0
    return-void

    nop

    :array_0
    .array-data 2
        0x3s
        0x48s
        0x0s
        0xbfs
    .end array-data

    :array_1
    .array-data 2
        0x0s
        0x0s
        0x88s
        0x42s
    .end array-data
.end method

.method public final J()V
    .locals 5

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
    const-string v0, "current"

    iget-object v1, p0, Le2/ap;->o:Li2/d;

    invoke-virtual {v1, v0}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    const v1, 0xe7da94

    const/4 v2, 0x4

    new-array v2, v2, [C

    and-int/lit16 v3, v0, 0xff

    int-to-char v3, v3

    const/4 v4, 0x0

    aput-char v3, v2, v4

    shr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    const/4 v4, 0x1

    aput-char v3, v2, v4

    shr-int/lit8 v3, v0, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    const/4 v4, 0x2

    aput-char v3, v2, v4

    shr-int/lit8 v3, v0, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    const/4 v4, 0x3

    aput-char v3, v2, v4

    invoke-static {v1, v2}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    return-void
.end method
