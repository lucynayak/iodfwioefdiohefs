.class public final Ld2/m;
.super Lc2/b;
.source "SourceFile"


# instance fields
.field public final synthetic o:I


# direct methods
.method public constructor <init>(I)V
    .registers 5

    iput p1, p0, Ld2/m;->o:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    const-string v2, "Player"

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 p1, 0x1

    const-string v1, "NoHurtCam"

    const-string v2, "Combat"

    .line 1
    invoke-direct {p0, v1, v0, p1, v2}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "Jesus"

    .line 2
    invoke-direct {p0, p1, v0, v0, v2}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    return-void

    :cond_1
    const-string p1, "AutoTotem"

    .line 3
    invoke-direct {p0, p1, v0, v0, v2}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    return-void

    :cond_2
    const-string p1, "NoFriends"

    const-string v1, "Misc"

    .line 4
    invoke-direct {p0, p1, v0, v0, v1}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final E()V
    .registers 3

    iget v0, p0, Ld2/m;->o:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/Api;->sendEnabledStatus(IZ)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final G()V
    .registers 3

    iget v0, p0, Ld2/m;->o:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/Api;->sendEnabledStatus(IZ)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final J()V
    .registers 4

    iget v0, p0, Ld2/m;->o:I

    packed-switch v0, :pswitch_data_0

    return-void

    .line 1
    :pswitch_0
    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getUniqueID()J

    move-result-wide v0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->isInWater(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3e800000    # 0.25f

    .line 3
    invoke-static {v0}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setVelocityY(F)V

    :cond_0
    return-void

    .line 4
    :pswitch_1
    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x9

    :goto_0
    const/16 v1, 0x2e

    if-ge v0, v1, :cond_2

    .line 5
    invoke-static {}, Ldev/virus/variable/launcher/api/NativeInventory;->getOffhandSlot()I

    move-result v1

    const/16 v2, 0x1c2

    if-eq v1, v2, :cond_1

    .line 6
    invoke-static {v0}, Ldev/virus/variable/launcher/api/NativeItem;->getID(I)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 7
    invoke-static {v0}, Ldev/virus/variable/launcher/api/NativeInventory;->setOffhandSlot(I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
