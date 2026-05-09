.class Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel$AddShortCircuitProfileAsyncTask;
.super Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;
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
.field public final synthetic this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;


# direct methods
.method private constructor <init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel$AddShortCircuitProfileAsyncTask;->this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel$AddShortCircuitProfileAsyncTask;-><init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;)V

    return-void
.end method

.method private getAddType()Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$MsgType;
    .locals 2

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel$AddShortCircuitProfileAsyncTask;->this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;

    invoke-static {v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;->access$1100(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;)Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneState;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$MsgType;->Add:Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$MsgType;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel$AddShortCircuitProfileAsyncTask;->this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;

    invoke-static {v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;->access$1100(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;)Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneState;->isVerified:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel$AddShortCircuitProfileAsyncTask;->this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;

    invoke-static {v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;->access$1100(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;)Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneState;->hasXboxApplication:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Check for these before invoking this task"

    invoke-static {v1, v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertFalse(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel$AddShortCircuitProfileAsyncTask;->this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;

    invoke-static {v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;->access$1100(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;)Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneState;->isVerified:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$MsgType;->AddXbox:Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$MsgType;

    return-object v0

    :cond_2
    sget-object v0, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$MsgType;->Edit:Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$MsgType;

    return-object v0
.end method


# virtual methods
.method public checkShouldExecute()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public loadDataInBackground()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    .locals 8

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

    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel$AddShortCircuitProfileAsyncTask;->getAddType()Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$MsgType;

    move-result-object v5

    invoke-direct {v2, v5, v1, v0}, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileRequest;-><init>(Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$MsgType;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getInstance()Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getSLSServiceManager()Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;

    move-result-object v5

    invoke-interface {v5, v2}, Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;->sendShortCircuitProfile(Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileRequest;)Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileResponse;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v5, v2, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileResponse;->error:Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ErrorReturn;

    if-eqz v5, :cond_7

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_3

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_2

    add-int/lit8 v6, v6, 0x1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    const/16 v5, 0xa

    if-ne v6, v5, :cond_5

    new-instance v2, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileRequest;

    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel$AddShortCircuitProfileAsyncTask;->getAddType()Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$MsgType;

    move-result-object v5

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

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileResponse;->error:Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ErrorReturn;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    return-object v0

    :cond_4
    sget-object v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    return-object v0

    :cond_5
    iget-object v0, v2, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileResponse;->error:Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ErrorReturn;

    iget-object v0, v0, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ErrorReturn;->code:Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string v1, "PhoneAlreadyVerified"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

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
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel$AddShortCircuitProfileAsyncTask;->loadDataInBackground()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    return-object v0
.end method

.method public onError()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    .locals 1

    sget-object v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    return-object v0
.end method

.method public bridge synthetic onError()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel$AddShortCircuitProfileAsyncTask;->onError()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    return-object v0
.end method

.method public onNoAction()V
    .locals 0

    return-void
.end method

.method public onPostExecute(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel$AddShortCircuitProfileAsyncTask;->this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;

    invoke-static {v0, p1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;->access$1300(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel$AddShortCircuitProfileAsyncTask;->onPostExecute(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel$AddShortCircuitProfileAsyncTask;->this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;->access$1202(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;Z)Z

    return-void
.end method
