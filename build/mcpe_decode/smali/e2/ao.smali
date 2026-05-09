.class public final Le2/ao;
.super Lc2/b;
.source "SourceFile"


# instance fields
.field public p:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "Dinnerbone"

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-string v3, "Misc"

    invoke-direct {p0, v0, v1, v2, v3}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Le2/ao;->p:Z

    return-void
.end method


# virtual methods
.method public final E()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Le2/ao;->p:Z

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isInGame()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0xe49e64

    const/4 v1, 0x2

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    :cond_0
    return-void

    :array_0
    .array-data 2
        0x55s
        0xd1s
    .end array-data
.end method

.method public final G()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Le2/ao;->p:Z

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isInGame()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0xe49e64

    const/4 v1, 0x2

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    :cond_0
    return-void

    :array_0
    .array-data 2
        0x0s
        0xbfs
    .end array-data
.end method

.method public final J()V
    .locals 1

    return-void
.end method
