.class public final Le2/aj;
.super Lc2/b;
.source "SourceFile"


# instance fields
.field public o:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "FastShift"

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-string v3, "Movement"

    invoke-direct {p0, v0, v1, v2, v3}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Le2/aj;->o:Z

    return-void
.end method


# virtual methods
.method public final E()V
    .locals 2

    const/4 v0, -0x2

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setMoveButtonStatus(IZ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Le2/aj;->o:Z

    return-void
.end method

.method public final G()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Le2/aj;->o:Z

    return-void
.end method

.method public final J()V
    .locals 3

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lc2/b;->isBindActive()Z

    move-result v0

    iget-boolean v1, p0, Le2/aj;->o:Z

    iput-boolean v0, p0, Le2/aj;->o:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x2

    const/4 v2, 0x1

    invoke-static {v0, v2}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setMoveButtonStatus(IZ)V

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    const/4 v0, -0x2

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setMoveButtonStatus(IZ)V

    :cond_1
    :goto_0
    return-void
.end method
