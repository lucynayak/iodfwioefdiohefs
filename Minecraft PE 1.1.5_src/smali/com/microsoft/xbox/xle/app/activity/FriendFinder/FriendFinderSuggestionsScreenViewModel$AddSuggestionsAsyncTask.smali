.class Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel$AddSuggestionsAsyncTask;
.super Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;
.source "FriendFinderSuggestionsScreenViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddSuggestionsAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/xbox/toolkit/NetworkAsyncTask",
        "<",
        "Lcom/microsoft/xbox/toolkit/AsyncActionStatus;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;

.field private xuids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 314
    .local p2, "xuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel$AddSuggestionsAsyncTask;->this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;-><init>()V

    .line 315
    iput-object p2, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel$AddSuggestionsAsyncTask;->xuids:Ljava/util/ArrayList;

    .line 316
    return-void
.end method


# virtual methods
.method protected checkShouldExecute()Z
    .registers 2

    .prologue
    .line 320
    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertIsUIThread()V

    .line 321
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel$AddSuggestionsAsyncTask;->xuids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected loadDataInBackground()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    .registers 6

    .prologue
    .line 352
    :try_start_0
    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getInstance()Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getSLSServiceManager()Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;

    move-result-object v2

    new-instance v3, Lcom/microsoft/xbox/service/model/sls/FavoriteListRequest;

    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel$AddSuggestionsAsyncTask;->xuids:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Lcom/microsoft/xbox/service/model/sls/FavoriteListRequest;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v3}, Lcom/microsoft/xbox/service/model/sls/FavoriteListRequest;->getFavoriteListRequestBody(Lcom/microsoft/xbox/service/model/sls/FavoriteListRequest;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;->addUserToFollowingList(Ljava/lang/String;)Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;

    move-result-object v1

    .line 353
    .local v1, "response":Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;
    invoke-virtual {v1}, Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;->getAddFollowingRequestStatus()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    .line 355
    .end local v1    # "response":Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;
    :goto_0
    return-object v2

    .line 353
    .restart local v1    # "response":Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;
    :cond_0
    sget-object v2, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    :try_end_0
    .catch Lcom/microsoft/xbox/toolkit/XLEException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 354
    .end local v1    # "response":Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;
    :catch_0
    move-exception v0

    .line 355
    .local v0, "e":Lcom/microsoft/xbox/toolkit/XLEException;
    sget-object v2, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    goto :goto_0
.end method

.method protected bridge synthetic loadDataInBackground()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel$AddSuggestionsAsyncTask;->loadDataInBackground()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    return-object v0
.end method

.method protected onError()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    .registers 2

    .prologue
    .line 345
    sget-object v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    return-object v0
.end method

.method protected bridge synthetic onError()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel$AddSuggestionsAsyncTask;->onError()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    return-object v0
.end method

.method protected onNoAction()V
    .registers 3

    .prologue
    .line 326
    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertIsUIThread()V

    .line 327
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel$AddSuggestionsAsyncTask;->this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;

    sget-object v1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->NO_CHANGE:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    invoke-static {v0, v1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->access$400(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    .line 328
    return-void
.end method

.method protected onPostExecute(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .registers 4
    .param p1, "result"    # Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    .prologue
    .line 339
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel$AddSuggestionsAsyncTask;->this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->access$502(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;Z)Z

    .line 340
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel$AddSuggestionsAsyncTask;->this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;

    invoke-static {v0, p1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->access$400(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    .line 341
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 310
    check-cast p1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel$AddSuggestionsAsyncTask;->onPostExecute(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 3

    .prologue
    .line 332
    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertIsUIThread()V

    .line 333
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel$AddSuggestionsAsyncTask;->this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->access$502(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;Z)Z

    .line 334
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel$AddSuggestionsAsyncTask;->this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;

    invoke-static {v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->access$600(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;)V

    .line 335
    return-void
.end method
