.class public final Le2/am;
.super Lc2/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 4

    const-string v0, "Spider"

    const/4 v1, 0x1

    const-string v2, "Movement"

    invoke-direct {p0, v0, v1, v1, v2}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final E()V
    .registers 3

    const/16 v0, 0x12

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setStatusFlag(IZ)V

    return-void
.end method

.method public final G()V
    .registers 1

    return-void
.end method

.method public final J()V
    .registers 5

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getUniqueID()J

    move-result-wide v0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->isFalling(J)Z

    move-result v2

    const/16 v3, 0x12

    if-nez v2, :cond_0

    const/4 v2, 0x1

    invoke-static {v3, v2}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setStatusFlag(IZ)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-static {v3, v2}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setStatusFlag(IZ)V

    :cond_1
    :goto_0
    return-void
.end method
