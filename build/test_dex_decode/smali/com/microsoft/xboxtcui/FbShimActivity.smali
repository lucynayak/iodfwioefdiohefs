.class public Lcom/microsoft/xboxtcui/FbShimActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->getInstance()Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->onShimActivityResult(IILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->getFacebookManagerReady()Lcom/microsoft/xbox/toolkit/Ready;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/Ready;->getIsReady()Z

    move-result p1

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    sget-object p1, Le1/r;->a:Ljava/lang/Object;

    .line 1
    const-class p1, Le1/r;

    monitor-enter p1

    :try_start_0
    sget-object v0, Le1/r;->k:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    .line 2
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    invoke-static {}, Lcom/microsoft/xbox/service/model/ProfileModel;->getMeProfileModel()Lcom/microsoft/xbox/service/model/ProfileModel;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    .line 3
    monitor-exit p1

    throw v0
.end method
