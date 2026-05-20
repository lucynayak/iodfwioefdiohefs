.class public Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$FBSettingsAsyncTask;
.super Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FBSettingsAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/xbox/toolkit/NetworkAsyncTask<",
        "Lcom/microsoft/xbox/toolkit/AsyncActionStatus;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$FBSettingsAsyncTask;->this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public checkShouldExecute()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public loadDataInBackground()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    .registers 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getInstance()Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getSLSServiceManager()Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;->getFriendFinderSettings()Lcom/microsoft/xbox/xle/app/FriendFinderSettings;

    move-result-object v0

    iget-object v1, v0, Lcom/microsoft/xbox/xle/app/FriendFinderSettings;->ICONS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/app/FriendFinderSettings;->getIconsFromJson(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/microsoft/xbox/toolkit/XLEException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz v0, :cond_0

    sget-object v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    return-object v0

    :cond_0
    sget-object v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    return-object v0
.end method

.method public bridge synthetic loadDataInBackground()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$FBSettingsAsyncTask;->loadDataInBackground()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    return-object v0
.end method

.method public onError()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    .registers 2

    sget-object v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    return-object v0
.end method

.method public bridge synthetic onError()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$FBSettingsAsyncTask;->onError()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    return-object v0
.end method

.method public onNoAction()V
    .registers 1

    return-void
.end method

.method public onPostExecute(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .registers 3

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$FBSettingsAsyncTask;->this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->onFacebookSettingsCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$FBSettingsAsyncTask;->onPostExecute(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    return-void
.end method

.method public onPreExecute()V
    .registers 3

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$FBSettingsAsyncTask;->this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->access$202(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;Z)Z

    return-void
.end method
