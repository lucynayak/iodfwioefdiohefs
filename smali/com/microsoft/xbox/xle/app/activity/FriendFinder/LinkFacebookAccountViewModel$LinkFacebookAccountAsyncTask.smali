.class public Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel$LinkFacebookAccountAsyncTask;
.super Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LinkFacebookAccountAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/xbox/toolkit/NetworkAsyncTask<",
        "Lcom/microsoft/xbox/toolkit/AsyncActionStatus;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel;)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel$LinkFacebookAccountAsyncTask;->this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel;

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;-><init>()V

    return-void
.end method

.method private needUpdatePrivacy(Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;)Z
    .registers 3

    invoke-virtual {p1}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;->getPrivacySettingValue()Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    move-result-object p1

    sget-object v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;->NotSet:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;->Blocked:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public checkShouldExecute()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public loadDataInBackground()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    .registers 5

    :try_start_0
    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getInstance()Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getSLSServiceManager()Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->ShareIdentity:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    invoke-interface {v0, v1}, Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;->getPrivacySetting(Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;)Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel$LinkFacebookAccountAsyncTask;->needUpdatePrivacy(Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;)Z

    move-result v0

    if-eqz v0, :cond_0

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

    if-nez v0, :cond_0

    sget-object v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getInstance()Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getSLSServiceManager()Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/service/model/friendfinder/LinkedAccountHelpers$LinkedAccountType;->Facebook:Lcom/microsoft/xbox/service/model/friendfinder/LinkedAccountHelpers$LinkedAccountType;

    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->getInstance()Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->getTokenString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;->updateThirdPartyToken(Lcom/microsoft/xbox/service/model/friendfinder/LinkedAccountHelpers$LinkedAccountType;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    return-object v0

    :cond_1
    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getInstance()Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getSLSServiceManager()Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;

    move-result-object v0

    sget-object v2, Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;->OptedIn:Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;

    invoke-interface {v0, v1, v2}, Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;->setFriendFinderOptInStatus(Lcom/microsoft/xbox/service/model/friendfinder/LinkedAccountHelpers$LinkedAccountType;Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    return-object v0

    :cond_2
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

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel$LinkFacebookAccountAsyncTask;->loadDataInBackground()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

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

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel$LinkFacebookAccountAsyncTask;->onError()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    return-object v0
.end method

.method public onNoAction()V
    .registers 1

    return-void
.end method

.method public onPostExecute(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .registers 3

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel$LinkFacebookAccountAsyncTask;->this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel;

    invoke-static {v0, p1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel;->access$000(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel$LinkFacebookAccountAsyncTask;->onPostExecute(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    return-void
.end method

.method public onPreExecute()V
    .registers 1

    return-void
.end method
