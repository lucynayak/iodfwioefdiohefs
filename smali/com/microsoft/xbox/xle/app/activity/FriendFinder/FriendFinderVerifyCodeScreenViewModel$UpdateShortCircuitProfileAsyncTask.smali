.class Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel$UpdateShortCircuitProfileAsyncTask;
.super Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateShortCircuitProfileAsyncTask"
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

.field private verificationToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel$UpdateShortCircuitProfileAsyncTask;->this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;-><init>()V

    iput-object p2, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel$UpdateShortCircuitProfileAsyncTask;->verificationToken:Ljava/lang/String;

    return-void
.end method

.method private updateOptInSucceeded()Z
    .registers 5

    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getInstance()Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getSLSServiceManager()Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->ShareIdentity:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    invoke-interface {v0, v1}, Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;->getPrivacySetting(Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;)Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;->getPrivacySettingValue()Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;->NotSet:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    :goto_0
    sget-object v2, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;->NotSet:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    if-eq v0, v2, :cond_1

    sget-object v2, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;->Blocked:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    if-ne v0, v2, :cond_2

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;

    sget-object v3, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;->FriendCategoryShareIdentity:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    invoke-direct {v2, v1, v3}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;-><init>(Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getInstance()Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getSLSServiceManager()Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;

    move-result-object v1

    new-instance v2, Lcom/microsoft/xbox/service/model/privacy/PrivacySettingsResult;

    invoke-direct {v2, v0}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettingsResult;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {v1, v2}, Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;->setPrivacySettings(Lcom/microsoft/xbox/service/model/privacy/PrivacySettingsResult;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_2
    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getInstance()Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getSLSServiceManager()Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/service/model/friendfinder/LinkedAccountHelpers$LinkedAccountType;->Phone:Lcom/microsoft/xbox/service/model/friendfinder/LinkedAccountHelpers$LinkedAccountType;

    sget-object v2, Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;->OptedIn:Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;

    invoke-interface {v0, v1, v2}, Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;->setFriendFinderOptInStatus(Lcom/microsoft/xbox/service/model/friendfinder/LinkedAccountHelpers$LinkedAccountType;Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;)Z

    move-result v0

    return v0
.end method

.method private verifyPhoneNumberSucceeded()Z
    .registers 12

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

    const-string v3, ""

    const-string v4, "+"

    if-eqz v2, :cond_0

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1
    invoke-static {v4, v1}, La/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    new-instance v2, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileRequest;

    sget-object v5, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$MsgType;->PhoneVerification:Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$MsgType;

    iget-object v6, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel$UpdateShortCircuitProfileAsyncTask;->verificationToken:Ljava/lang/String;

    invoke-direct {v2, v5, v1, v0, v6}, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileRequest;-><init>(Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$MsgType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getInstance()Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getSLSServiceManager()Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;

    move-result-object v5

    invoke-interface {v5, v2}, Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;->sendShortCircuitProfile(Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileRequest;)Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileResponse;

    move-result-object v2

    iget-object v2, v2, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileResponse;->error:Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ErrorReturn;

    const-string v5, "PhoneAlreadyVerified:PhoneToVerifyTokenAlreadyVerified"

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_3

    iget-object v2, v2, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ErrorReturn;->code:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v2, 0x1

    :goto_2
    if-nez v2, :cond_8

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v8, v10, :cond_5

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    if-eqz v10, :cond_4

    add-int/lit8 v9, v9, 0x1

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_5
    const/16 v8, 0xa

    if-ne v9, v8, :cond_8

    new-instance v2, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileRequest;

    sget-object v8, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$MsgType;->PhoneVerification:Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$MsgType;

    const-string v9, "+1"

    .line 3
    invoke-static {v9}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 4
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel$UpdateShortCircuitProfileAsyncTask;->verificationToken:Ljava/lang/String;

    invoke-direct {v2, v8, v1, v0, v3}, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileRequest;-><init>(Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$MsgType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getInstance()Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getSLSServiceManager()Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;->sendShortCircuitProfile(Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileRequest;)Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileResponse;

    move-result-object v0

    iget-object v0, v0, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileResponse;->error:Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ErrorReturn;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ErrorReturn;->code:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v2, 0x1

    :cond_8
    :goto_5
    if-eqz v2, :cond_9

    return v7

    :cond_9
    return v6
.end method


# virtual methods
.method public checkShouldExecute()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public loadDataInBackground()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    .registers 2

    :try_start_0
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel$UpdateShortCircuitProfileAsyncTask;->verifyPhoneNumberSucceeded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel$UpdateShortCircuitProfileAsyncTask;->updateOptInSucceeded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel$UpdateShortCircuitProfileAsyncTask;->this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->getScreen()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackPhoneContactsLinkSuccess(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    :try_end_0
    .catch Lcom/microsoft/xbox/toolkit/XLEException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    sget-object v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    return-object v0
.end method

.method public bridge synthetic loadDataInBackground()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel$UpdateShortCircuitProfileAsyncTask;->loadDataInBackground()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

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

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel$UpdateShortCircuitProfileAsyncTask;->onError()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    return-object v0
.end method

.method public onNoAction()V
    .registers 1

    return-void
.end method

.method public onPostExecute(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .registers 3

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel$UpdateShortCircuitProfileAsyncTask;->this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;

    invoke-static {v0, p1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;->access$300(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel$UpdateShortCircuitProfileAsyncTask;->onPostExecute(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    return-void
.end method

.method public onPreExecute()V
    .registers 3

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel$UpdateShortCircuitProfileAsyncTask;->this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;->access$202(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;Z)Z

    return-void
.end method
