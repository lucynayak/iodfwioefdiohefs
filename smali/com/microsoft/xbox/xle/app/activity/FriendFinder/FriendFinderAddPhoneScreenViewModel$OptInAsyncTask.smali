.class Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel$OptInAsyncTask;
.super Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OptInAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/xbox/toolkit/NetworkAsyncTask<",
        "Lcom/microsoft/xbox/toolkit/AsyncActionStatus;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;


# direct methods
.method private constructor <init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel$OptInAsyncTask;->this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel$OptInAsyncTask;-><init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;)V

    return-void
.end method


# virtual methods
.method public checkShouldExecute()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public loadDataInBackground()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getInstance()Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getSLSServiceManager()Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/service/model/friendfinder/LinkedAccountHelpers$LinkedAccountType;->Phone:Lcom/microsoft/xbox/service/model/friendfinder/LinkedAccountHelpers$LinkedAccountType;

    sget-object v2, Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;->OptedIn:Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;

    invoke-interface {v0, v1, v2}, Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;->setFriendFinderOptInStatus(Lcom/microsoft/xbox/service/model/friendfinder/LinkedAccountHelpers$LinkedAccountType;Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;)Z

    sget-object v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    :try_end_0
    .catch Lcom/microsoft/xbox/toolkit/XLEException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    sget-object v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    return-object v0
.end method

.method public bridge synthetic loadDataInBackground()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel$OptInAsyncTask;->loadDataInBackground()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

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

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel$OptInAsyncTask;->onError()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    return-object v0
.end method

.method public onNoAction()V
    .registers 1

    return-void
.end method

.method public onPostExecute(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .registers 3

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel$OptInAsyncTask;->this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;

    invoke-static {v0, p1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;->access$1500(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel$OptInAsyncTask;->onPostExecute(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    return-void
.end method

.method public onPreExecute()V
    .registers 3

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel$OptInAsyncTask;->this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;->access$1402(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;Z)Z

    return-void
.end method
