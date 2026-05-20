.class Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel$AddShortCircuitProfileAsyncTask;
.super Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AddShortCircuitProfileAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/xbox/toolkit/NetworkAsyncTask<",
        "Lcom/microsoft/xbox/toolkit/AsyncActionStatus;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;

.field private useVoice:Z


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;Z)V
    .registers 3

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel$AddShortCircuitProfileAsyncTask;->this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;-><init>()V

    iput-boolean p2, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel$AddShortCircuitProfileAsyncTask;->useVoice:Z

    return-void
.end method


# virtual methods
.method public checkShouldExecute()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public loadDataInBackground()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    .registers 9

    :try_start_0
    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->getInstance()Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->getRegionWithCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->getInstance()Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->getUserEnteredNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Lcom/microsoft/xbox/toolkit/XLEException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ""

    const-string v4, "+"

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    new-instance v2, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileRequest;

    sget-object v5, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$MsgType;->Delete:Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$MsgType;

    invoke-direct {v2, v5, v1, v0}, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileRequest;-><init>(Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$MsgType;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getInstance()Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getSLSServiceManager()Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;

    move-result-object v5

    invoke-interface {v5, v2}, Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;->sendShortCircuitProfile(Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileRequest;)Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileResponse;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, v2, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileResponse;->error:Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ErrorReturn;

    if-eqz v2, :cond_2

    iget-object v2, v2, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ErrorReturn;->message:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v5, "Cannot edit or delete a phone that does not exist"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    return-object v0

    :cond_2
    new-instance v2, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileRequest;

    sget-object v5, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$MsgType;->Add:Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$MsgType;

    iget-boolean v6, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel$AddShortCircuitProfileAsyncTask;->useVoice:Z

    invoke-direct {v2, v5, v1, v0, v6}, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileRequest;-><init>(Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$MsgType;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getInstance()Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getSLSServiceManager()Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;

    move-result-object v5

    invoke-interface {v5, v2}, Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;->sendShortCircuitProfile(Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileRequest;)Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileResponse;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, v2, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileResponse;->error:Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ErrorReturn;

    if-eqz v2, :cond_7

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_4

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_3

    add-int/lit8 v5, v5, 0x1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    const/16 v2, 0xa

    if-ne v5, v2, :cond_6

    new-instance v2, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileRequest;

    sget-object v5, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$MsgType;->Add:Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$MsgType;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "+1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v5, v1, v0}, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileRequest;-><init>(Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$MsgType;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getInstance()Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getSLSServiceManager()Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;->sendShortCircuitProfile(Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileRequest;)Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileResponse;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileResponse;->error:Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ErrorReturn;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    return-object v0

    :cond_5
    sget-object v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    return-object v0

    :cond_6
    sget-object v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    :try_end_1
    .catch Lcom/microsoft/xbox/toolkit/XLEException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :cond_7
    sget-object v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    return-object v0

    :catch_0
    sget-object v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    return-object v0
.end method

.method public bridge synthetic loadDataInBackground()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel$AddShortCircuitProfileAsyncTask;->loadDataInBackground()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    return-object v0
.end method

.method public onError()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic onError()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel$AddShortCircuitProfileAsyncTask;->onError()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    return-object v0
.end method

.method public onNoAction()V
    .registers 1

    return-void
.end method

.method public onPostExecute(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .registers 3

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel$AddShortCircuitProfileAsyncTask;->this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;

    invoke-static {v0, p1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;->access$100(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel$AddShortCircuitProfileAsyncTask;->onPostExecute(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    return-void
.end method

.method public onPreExecute()V
    .registers 1

    return-void
.end method
