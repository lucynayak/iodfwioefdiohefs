.class public Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;
.super Lcom/microsoft/xbox/service/model/ModelBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel$GetPeopleHubFriendFinderStateResultRunner;,
        Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel$LoadFailedCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/xbox/service/model/ModelBase<",
        "Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;


# instance fields
.field private callback:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel$LoadFailedCallback;

.field private result:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;

    invoke-direct {v0}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;->instance:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/microsoft/xbox/service/model/ModelBase;-><init>()V

    return-void
.end method

.method public static synthetic access$002(Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/microsoft/xbox/service/model/ModelBase;->isLoading:Z

    return p1
.end method

.method public static getInstance()Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;
    .registers 1

    sget-object v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;->instance:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;

    return-object v0
.end method


# virtual methods
.method public getResult()Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;->result:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;

    return-object v0
.end method

.method public isLoading()Z
    .registers 2

    iget-boolean v0, p0, Lcom/microsoft/xbox/service/model/ModelBase;->isLoading:Z

    return v0
.end method

.method public loadAsync(Z)V
    .registers 4

    sget-object v0, Lcom/microsoft/xbox/service/model/UpdateType;->FriendFinderFacebook:Lcom/microsoft/xbox/service/model/UpdateType;

    new-instance v1, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel$GetPeopleHubFriendFinderStateResultRunner;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel$GetPeopleHubFriendFinderStateResultRunner;-><init>(Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/microsoft/xbox/service/model/ModelBase;->loadInternal(ZLcom/microsoft/xbox/service/model/UpdateType;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)V

    return-void
.end method

.method public loadAsync(ZLcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel$LoadFailedCallback;)V
    .registers 3

    iput-object p2, p0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;->callback:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel$LoadFailedCallback;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;->loadAsync(Z)V

    return-void
.end method

.method public shouldRefresh()Z
    .registers 2

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ModelBase;->lastRefreshTime:Ljava/util/Date;

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/service/model/ModelBase;->shouldRefresh(Ljava/util/Date;)Z

    move-result v0

    return v0
.end method

.method public updateWithNewData(Lcom/microsoft/xbox/toolkit/AsyncResult;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult<",
            "Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    invoke-super {p0, p1}, Lcom/microsoft/xbox/service/model/ModelBase;->updateWithNewData(Lcom/microsoft/xbox/toolkit/AsyncResult;)V

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getStatus()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;->result:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;

    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->getInstance()Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;->result:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->setFacebookFriendFinderState(Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;)V

    new-instance v0, Lcom/microsoft/xbox/toolkit/AsyncResult;

    new-instance v1, Lcom/microsoft/xbox/service/model/UpdateData;

    sget-object v3, Lcom/microsoft/xbox/service/model/UpdateType;->FriendFinderFacebook:Lcom/microsoft/xbox/service/model/UpdateType;

    invoke-direct {v1, v3, v2}, Lcom/microsoft/xbox/service/model/UpdateData;-><init>(Lcom/microsoft/xbox/service/model/UpdateType;Z)V

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getException()Lcom/microsoft/xbox/toolkit/XLEException;

    move-result-object p1

    invoke-direct {v0, v1, p0, p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/xbox/toolkit/XLEException;)V

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/toolkit/XLEObservable;->notifyObservers(Lcom/microsoft/xbox/toolkit/AsyncResult;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;->callback:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel$LoadFailedCallback;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel$LoadFailedCallback;->onFriendFinderLoadFailed()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;->callback:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel$LoadFailedCallback;

    :cond_2
    :goto_1
    return-void
.end method
