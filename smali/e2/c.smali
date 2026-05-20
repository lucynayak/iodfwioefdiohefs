.class public final Le2/c;
.super Lc2/b;
.source "SourceFile"


# instance fields
.field public final synthetic o:I


# direct methods
.method public constructor <init>(I)V
    .registers 4

    iput p1, p0, Le2/c;->o:I

    const-string v0, "Misc"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const-string p1, "AntiImmobile"

    .line 1
    invoke-direct {p0, p1, v1, v1, v0}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "NoDynamicFov"

    .line 2
    invoke-direct {p0, p1, v1, v1, v0}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final E()V
    .registers 3

    iget v0, p0, Le2/c;->o:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/Api;->sendEnabledStatus(IZ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final G()V
    .registers 3

    iget v0, p0, Le2/c;->o:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 v0, 0x10

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/Api;->sendEnabledStatus(IZ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final J()V
    .registers 3

    iget v0, p0, Le2/c;->o:I

    packed-switch v0, :pswitch_data_0

    return-void

    .line 1
    :pswitch_0
    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setStatusFlag(IZ)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
