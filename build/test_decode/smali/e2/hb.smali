.class public final Le2/hb;
.super Lc2/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "Hit Button"

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "Combat"

    invoke-direct {p0, v0, v1, v2, v3}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final D()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc2/b;->c:Z

    return-void
.end method

.method public final J()V
    .locals 7

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getPointedPlayer()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/Api;->isValidTarget(J)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->attack(J)V

    goto :goto_0

    :cond_0
    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getPointedVector()[I

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v3, v0, v3

    invoke-static {v1, v2, v3}, Ldev/virus/variable/launcher/api/NativeBlock;->getID(III)I

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v1, v2, v3}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->destroyBlock(III)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc2/b;->c:Z

    :cond_2
    return-void
.end method
