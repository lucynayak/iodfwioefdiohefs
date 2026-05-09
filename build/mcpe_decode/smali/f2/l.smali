.class public final Lf2/l;
.super Lc2/b;
.source "SourceFile"


# instance fields
.field public final synthetic o:I

.field public final p:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    iput p1, p0, Lf2/l;->o:I

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const-string p1, "TapTp"

    const-string v1, "Movement"

    .line 1
    invoke-direct {p0, p1, v0, v0, v1}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    new-instance p1, Li2/e;

    const/4 v0, 0x0

    const-string v1, "No packets"

    invoke-direct {p1, v1, v0}, Li2/e;-><init>(Ljava/lang/String;Z)V

    iput-object p1, p0, Lf2/l;->p:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lc2/b;->addSetting(Li2/c;)V

    return-void

    :cond_0
    const-string p1, "AutoSprint"

    const-string v1, "Player"

    .line 2
    invoke-direct {p0, p1, v0, v0, v1}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    new-instance p1, Li2/b;

    const-string v0, "All directions"

    const-string v1, "Forward"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mode"

    invoke-direct {p1, v1, v0}, Li2/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object p1, p0, Lf2/l;->p:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lc2/b;->addSetting(Li2/c;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x1

    iput v0, p0, Lf2/l;->o:I

    const-string v1, "Interface"

    const-string v2, "Other"

    const/4 v3, 0x0

    .line 3
    invoke-direct {p0, v1, v0, v3, v2}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    iput-object p1, p0, Lf2/l;->p:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final C(J)V
    .locals 2

    iget v0, p0, Lf2/l;->o:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lc2/b;->C(J)V

    return-void

    .line 1
    :pswitch_0
    invoke-super {p0, p1, p2}, Lc2/b;->C(J)V

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1, p2}, Ldev/virus/variable/launcher/api/NativePlayer;->getPositionX(J)F

    move-result v0

    .line 3
    invoke-static {p1, p2}, Ldev/virus/variable/launcher/api/NativePlayer;->getPositionY(J)F

    move-result v1

    .line 4
    invoke-static {p1, p2}, Ldev/virus/variable/launcher/api/NativePlayer;->getPositionZ(J)F

    move-result p1

    .line 5
    invoke-static {v0, v1, p1}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setPosition(FFF)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final D()V
    .locals 3

    iget v0, p0, Lf2/l;->o:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lf2/l;->p:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    const-class v2, Ldev/virus/variable/app/InterfaceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lf2/l;->p:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final J()V
    .locals 3

    iget v0, p0, Lf2/l;->o:I

    packed-switch v0, :pswitch_data_0

    return-void

    .line 1
    :pswitch_0
    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isInGame()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lf2/l;->p:Ljava/lang/Object;

    check-cast v0, Li2/b;

    invoke-virtual {v0}, Li2/b;->getCurrentMode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "All directions"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    const-string v1, "Forward"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isMovingForward()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_1
    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isMovingForward()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x2

    .line 3
    invoke-static {v0}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isMoveButtonPressed(I)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    invoke-static {v0}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isMoveButtonPressed(I)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x4

    invoke-static {v0}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isMoveButtonPressed(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    :cond_2
    :goto_0
    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getUniqueID()J

    move-result-wide v0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->isSneaking(J)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v2}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setSprinting(Z)V

    :cond_3
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final N(Ljava/lang/String;I)V
    .locals 4

    move-object v0, p1

    iget v1, p0, Lf2/l;->o:I

    packed-switch v1, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lf2/l;->p:Ljava/lang/Object;

    check-cast v1, Li2/e;

    invoke-virtual {v1}, Li2/e;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ldev/virus/variable/launcher/api/Api;->preventDefault()V

    :cond_0
    const-string v1, "PlayerActionPacket"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x1c

    invoke-static {p2, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->getInt(II)I

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0xc

    invoke-static {p2, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->getInt(II)I

    move-result v1

    const/16 v2, 0x10

    invoke-static {p2, v2}, Ldev/virus/variable/launcher/api/NativeMemory;->getInt(II)I

    move-result v2

    const/16 v3, 0x14

    invoke-static {p2, v3}, Ldev/virus/variable/launcher/api/NativeMemory;->getInt(II)I

    move-result v3

    int-to-float v1, v1

    add-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    int-to-float v3, v3

    invoke-static {v1, v2, v3}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setPosition(FFF)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final Q(III)V
    .locals 1

    iget v0, p0, Lf2/l;->o:I

    packed-switch v0, :pswitch_data_0

    return-void

    .line 1
    :pswitch_0
    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    int-to-float p1, p1

    add-int/lit8 p2, p2, 0x3

    int-to-float p2, p2

    int-to-float p3, p3

    .line 2
    invoke-static {p1, p2, p3}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setPosition(FFF)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public isToggleable()Z
    .locals 2

    iget v0, p0, Lf2/l;->o:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-super {p0}, Lc2/b;->isToggleable()Z

    move-result v0

    return v0
.end method
