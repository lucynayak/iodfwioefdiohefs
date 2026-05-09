.class Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel$GetPeopleHubFriendFinderStateResultRunner;
.super Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetPeopleHubFriendFinderStateResultRunner"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable<",
        "Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel$GetPeopleHubFriendFinderStateResultRunner;->this$0:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public buildData()Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;
    .locals 1

    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getInstance()Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getSLSServiceManager()Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;->getPeopleHubFriendFinderState()Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildData()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel$GetPeopleHubFriendFinderStateResultRunner;->buildData()Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultErrorCode()J
    .locals 2

    const-wide/16 v0, 0xb

    return-wide v0
.end method

.method public onPostExcute(Lcom/microsoft/xbox/toolkit/AsyncResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult<",
            "Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel$GetPeopleHubFriendFinderStateResultRunner;->this$0:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;->updateWithNewData(Lcom/microsoft/xbox/toolkit/AsyncResult;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel$GetPeopleHubFriendFinderStateResultRunner;->this$0:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;->access$002(Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;Z)Z

    return-void
.end method
