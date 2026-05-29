.class public Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$FBManagerAndModelInitTask;
.super Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FBManagerAndModelInitTask"
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

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$FBManagerAndModelInitTask;->this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public checkShouldExecute()Z
    .registers 2

    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->getFacebookManagerReady()Lcom/microsoft/xbox/toolkit/Ready;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/Ready;->getIsReady()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;->getInstance()Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;->shouldRefresh()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public loadDataInBackground()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    .registers 3

    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->getInstance()Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->getFacebookManagerReady()Lcom/microsoft/xbox/toolkit/Ready;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/Ready;->waitForReady()V

    invoke-static {}, Lcom/microsoft/xbox/service/model/ProfileModel;->getMeProfileModel()Lcom/microsoft/xbox/service/model/ProfileModel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/service/model/ProfileModel;->loadSync(Z)Lcom/microsoft/xbox/toolkit/AsyncResult;

    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->getFacebookManagerReady()Lcom/microsoft/xbox/toolkit/Ready;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/Ready;->getIsReady()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    return-object v0

    :cond_0
    sget-object v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    return-object v0
.end method

.method public bridge synthetic loadDataInBackground()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$FBManagerAndModelInitTask;->loadDataInBackground()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

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

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$FBManagerAndModelInitTask;->onError()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    return-object v0
.end method

.method public onNoAction()V
    .registers 3

    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->getFacebookManagerReady()Lcom/microsoft/xbox/toolkit/Ready;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/Ready;->getIsReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$FBManagerAndModelInitTask;->this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;

    sget-object v1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->onFacebookInitCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    :cond_0
    return-void
.end method

.method public onPostExecute(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .registers 3

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$FBManagerAndModelInitTask;->this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->onFacebookInitCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$FBManagerAndModelInitTask;->onPostExecute(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    return-void
.end method

.method public onPreExecute()V
    .registers 3

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$FBManagerAndModelInitTask;->this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->access$202(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;Z)Z

    return-void
.end method
