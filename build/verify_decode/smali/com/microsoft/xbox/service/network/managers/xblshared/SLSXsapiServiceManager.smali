.class public Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "SLSXsapiServiceManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public SearchGamertag(Ljava/lang/String;)Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;
    .locals 4

    sget-object v0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "SearchGamertag"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    :try_start_0
    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getGamertagSearchUrlFormat()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v3, "utf-8"

    invoke-static {p1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    new-instance p1, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v2, "GET"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-direct {p1, v2, v0, v1}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "2"

    invoke-static {p1, v0}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object p1

    const-class v0, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;

    invoke-static {p1, v0}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSync(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/microsoft/xbox/toolkit/XLEException;

    const-wide/16 v1, 0xf

    invoke-direct {v0, v1, v2, p1}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(JLjava/lang/Throwable;)V

    throw v0
.end method

.method public addFriendToShareIdentitySetting(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    sget-object v0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "addFriendToShareIdentitySetting"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    new-instance v0, Lcom/microsoft/xbox/idp/util/HttpCall;

    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getAddFriendsToShareIdentityUrlFormat()Ljava/lang/String;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v3

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "POST"

    const-string v4, ""

    invoke-direct {v0, v1, p1, v4}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "4"

    invoke-static {v0, p1}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/microsoft/xbox/idp/util/HttpCall;->setRequestBody(Ljava/lang/String;)V

    new-array p2, v2, [Ljava/lang/Integer;

    const/16 v0, 0xcc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v3

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSyncSucceeded(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/util/List;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p2}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    return p1
.end method

.method public addUserToFavoriteList(Ljava/lang/String;)Z
    .locals 6

    sget-object v0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "addUserToFavoriteList"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    new-instance v0, Lcom/microsoft/xbox/idp/util/HttpCall;

    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getProfileFavoriteListUrl()Ljava/lang/String;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "add"

    aput-object v5, v4, v3

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "POST"

    const-string v5, ""

    invoke-direct {v0, v4, v1, v5}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/idp/util/HttpCall;->setRequestBody(Ljava/lang/String;)V

    new-array p1, v2, [Ljava/lang/Integer;

    const/16 v1, 0xcc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v3

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSyncSucceeded(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/util/List;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    return p1
.end method

.method public addUserToFollowingList(Ljava/lang/String;)Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;
    .locals 6

    sget-object v0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "addUserToFollowingList"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    new-instance v0, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v1, "POST"

    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->updateProfileFollowingListUrl()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v5, "add"

    aput-object v5, v2, v3

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/idp/util/HttpCall;->setRequestBody(Ljava/lang/String;)V

    new-instance p1, Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;

    invoke-direct {p1}, Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;-><init>()V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v2, Landroid/util/Pair;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    new-instance v2, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager$1;

    invoke-direct {v2, p0, v1, p1}, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager$1;-><init>(Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;Ljava/util/concurrent/atomic/AtomicReference;Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;)V

    invoke-virtual {v0, v2}, Lcom/microsoft/xbox/idp/util/HttpCall;->getResponseAsync(Lcom/microsoft/xbox/idp/util/HttpCall$Callback;)V

    monitor-enter v1

    :goto_1
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;

    return-object p1

    :goto_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public addUserToMutedList(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    sget-object v0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "addUserToMutedList"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    new-instance v0, Lcom/microsoft/xbox/idp/util/HttpCall;

    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getMutedServiceUrlFormat()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "PUT"

    const-string v2, ""

    invoke-direct {v0, v1, p1, v2}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "1"

    invoke-static {v0, p1}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/microsoft/xbox/idp/util/HttpCall;->setRequestBody(Ljava/lang/String;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p1, p2}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSyncSucceeded(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/util/List;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p2}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    return p1
.end method

.method public addUserToNeverList(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    sget-object v0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "addUserToNeverList"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    new-instance v0, Lcom/microsoft/xbox/idp/util/HttpCall;

    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getProfileNeverListUrlFormat()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "PUT"

    const-string v2, ""

    invoke-direct {v0, v1, p1, v2}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "1"

    invoke-static {v0, p1}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/microsoft/xbox/idp/util/HttpCall;->setRequestBody(Ljava/lang/String;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p1, p2}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSyncSucceeded(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/util/List;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p2}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    return p1
.end method

.method public getFamilySettings(Ljava/lang/String;)Lcom/microsoft/xbox/service/network/managers/FamilySettings;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getFriendFinderSettings()Lcom/microsoft/xbox/xle/app/FriendFinderSettings;
    .locals 5

    sget-object v0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "getFriendFinderSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    new-instance v0, Lcom/microsoft/xbox/idp/util/HttpCall;

    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getFriendFinderSettingsUrl()Ljava/lang/String;

    move-result-object v1

    const-string v3, "GET"

    const-string v4, ""

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v0

    const-class v1, Lcom/microsoft/xbox/xle/app/FriendFinderSettings;

    invoke-static {v0, v1}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSync(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/xle/app/FriendFinderSettings;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getMutedListInfo(Ljava/lang/String;)Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedListResult;
    .locals 4

    sget-object v0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "getMutedListInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    new-instance v0, Lcom/microsoft/xbox/idp/util/HttpCall;

    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getMutedServiceUrlFormat()Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "GET"

    const-string v2, ""

    invoke-direct {v0, v1, p1, v2}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "1"

    invoke-static {v0, p1}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object p1

    const-class v0, Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedListResult;

    invoke-static {p1, v0}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSync(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedListResult;

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    return-object p1
.end method

.method public getMyShortCircuitProfile()Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileResponse;
    .locals 7

    sget-object v0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "getMyShortCircuitProfile"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    invoke-static {}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getInstance()Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getSCDRpsTicket()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "Expected to have acquired a ticket already"

    invoke-static {v2, v1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertFalse(Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v2, 0x2

    if-nez v1, :cond_2

    new-instance v1, Lcom/microsoft/xbox/idp/util/HttpCall;

    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getShortCircuitProfileUrlFormat()Ljava/lang/String;

    move-result-object v4

    const-string v5, "GET"

    const-string v6, ""

    invoke-direct {v1, v5, v4, v6}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "PS-MSAAuthTicket"

    invoke-virtual {v1, v4, v0}, Lcom/microsoft/xbox/idp/util/HttpCall;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PS-ApplicationId"

    const-string v4, "44445A65-4A71-4083-8C90-041A22856E69"

    invoke-virtual {v1, v0, v4}, Lcom/microsoft/xbox/idp/util/HttpCall;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PS-Scenario"

    const-string v4, "Minecraft TCUI Friend Finder"

    invoke-virtual {v1, v0, v4}, Lcom/microsoft/xbox/idp/util/HttpCall;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-Type"

    const-string v4, "application/x-www-form-urlencoded"

    invoke-virtual {v1, v0, v4}, Lcom/microsoft/xbox/idp/util/HttpCall;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseBodySync(Lcom/microsoft/xbox/idp/util/HttpCall;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileResponse;->parseJson(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileResponse;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Lcom/microsoft/xbox/toolkit/XLEException;

    invoke-direct {v0, v2, v3}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(J)V

    throw v0

    :cond_2
    new-instance v0, Lcom/microsoft/xbox/toolkit/XLEException;

    invoke-direct {v0, v2, v3}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(J)V

    throw v0
.end method

.method public getNeverListInfo(Ljava/lang/String;)Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;
    .locals 4

    sget-object v0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "getNeverListInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    new-instance v0, Lcom/microsoft/xbox/idp/util/HttpCall;

    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getProfileNeverListUrlFormat()Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "GET"

    const-string v2, ""

    invoke-direct {v0, v1, p1, v2}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "1"

    invoke-static {v0, p1}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object p1

    const-class v0, Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;

    invoke-static {p1, v0}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSync(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    return-object p1
.end method

.method public getPeopleHubFriendFinderState()Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;
    .locals 4

    sget-object v0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "getPeopleHubFriendFinderState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    new-instance v0, Lcom/microsoft/xbox/idp/util/HttpCall;

    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getPeopleHubFriendFinderStateUrlFormat()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GET"

    const-string v3, ""

    invoke-direct {v0, v2, v1, v3}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v0

    invoke-static {}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getInstance()Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getLegalLocale()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Accept-Language"

    invoke-virtual {v0, v3, v2}, Lcom/microsoft/xbox/idp/util/HttpCall;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "X-XBL-Contract-Version"

    invoke-virtual {v0, v2, v1}, Lcom/microsoft/xbox/idp/util/HttpCall;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getInstance()Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getRegion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-XBL-Market"

    invoke-virtual {v0, v2, v1}, Lcom/microsoft/xbox/idp/util/HttpCall;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-class v1, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;

    invoke-static {v0, v1}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSync(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getPeopleHubRecommendations()Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPeopleSummary;
    .locals 4

    sget-object v0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "getPeopleHubRecommendations"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    new-instance v0, Lcom/microsoft/xbox/idp/util/HttpCall;

    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getPeopleHubRecommendationsUrlFormat()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GET"

    const-string v3, ""

    invoke-direct {v0, v2, v1, v3}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v0

    invoke-static {}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getInstance()Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getLegalLocale()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Accept-Language"

    invoke-virtual {v0, v3, v2}, Lcom/microsoft/xbox/idp/util/HttpCall;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "X-XBL-Contract-Version"

    invoke-virtual {v0, v2, v1}, Lcom/microsoft/xbox/idp/util/HttpCall;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getInstance()Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getRegion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-XBL-Market"

    invoke-virtual {v0, v2, v1}, Lcom/microsoft/xbox/idp/util/HttpCall;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-class v1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPeopleSummary;

    invoke-static {v0, v1}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSync(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPeopleSummary;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getPrivacySetting(Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;)Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;
    .locals 4

    sget-object v0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "getPrivacySetting"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getProfileSettingUrlFormat()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    new-instance p1, Lcom/microsoft/xbox/idp/util/HttpCall;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GET"

    const-string v2, ""

    invoke-direct {p1, v1, v0, v2}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "4"

    invoke-static {p1, v0}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object p1

    const-class v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;

    invoke-static {p1, v0}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSync(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    return-object p1
.end method

.method public getProfilePreferredColor(Ljava/lang/String;)Lcom/microsoft/xbox/service/network/managers/ProfilePreferredColor;
    .locals 3

    sget-object v0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "getProfilePreferredColor"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    new-instance v0, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v1, "GET"

    const-string v2, ""

    invoke-direct {v0, v1, p1, v2}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object p1

    const-class v0, Lcom/microsoft/xbox/service/network/managers/ProfilePreferredColor;

    invoke-static {p1, v0}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSync(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/service/network/managers/ProfilePreferredColor;

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    return-object p1
.end method

.method public getProfileSummaryInfo(Ljava/lang/String;)Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;
    .locals 4

    sget-object v0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "getProfileSummaryInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    new-instance v0, Lcom/microsoft/xbox/idp/util/HttpCall;

    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getProfileSummaryUrlFormat()Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "GET"

    const-string v2, ""

    invoke-direct {v0, v1, p1, v2}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "2"

    invoke-static {v0, p1}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object p1

    const-class v0, Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;

    invoke-static {p1, v0}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSync(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    return-object p1
.end method

.method public getUserProfileInfo(Ljava/lang/String;)Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;
    .locals 4

    sget-object v0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "getUserProfileInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    new-instance v0, Lcom/microsoft/xbox/idp/util/HttpCall;

    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getUserProfileInfoUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "POST"

    const-string v3, ""

    invoke-direct {v0, v2, v1, v3}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "2"

    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/idp/util/HttpCall;->setRequestBody(Ljava/lang/String;)V

    const-class p1, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;

    invoke-static {v0, p1}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSync(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    return-object p1
.end method

.method public getUserProfilePrivacySettings()Lcom/microsoft/xbox/service/model/privacy/PrivacySettingsResult;
    .locals 4

    sget-object v0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "getUserProfilePrivacySettings"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    new-instance v0, Lcom/microsoft/xbox/idp/util/HttpCall;

    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getUserProfileSettingUrlFormat()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GET"

    const-string v3, ""

    invoke-direct {v0, v2, v1, v3}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "4"

    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v0

    const-class v1, Lcom/microsoft/xbox/service/model/privacy/PrivacySettingsResult;

    invoke-static {v0, v1}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSync(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettingsResult;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getXTokenPrivileges()[I
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public removeFriendFromShareIdentitySetting(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    sget-object v0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "removeFriendFromShareIdentitySetting"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    new-instance v0, Lcom/microsoft/xbox/idp/util/HttpCall;

    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getRemoveUsersFromShareIdentityUrlFormat()Ljava/lang/String;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v3

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "POST"

    const-string v4, ""

    invoke-direct {v0, v1, p1, v4}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "4"

    invoke-static {v0, p1}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/microsoft/xbox/idp/util/HttpCall;->setRequestBody(Ljava/lang/String;)V

    new-array p2, v2, [Ljava/lang/Integer;

    const/16 v0, 0xcc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v3

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSyncSucceeded(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/util/List;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p2}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    return p1
.end method

.method public removeUserFromFavoriteList(Ljava/lang/String;)Z
    .locals 6

    sget-object v0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "removeUserFromFavoriteList"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    new-instance v0, Lcom/microsoft/xbox/idp/util/HttpCall;

    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getProfileFavoriteListUrl()Ljava/lang/String;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "remove"

    aput-object v5, v4, v3

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "POST"

    const-string v5, ""

    invoke-direct {v0, v4, v1, v5}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/idp/util/HttpCall;->setRequestBody(Ljava/lang/String;)V

    new-array p1, v2, [Ljava/lang/Integer;

    const/16 v1, 0xcc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v3

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSyncSucceeded(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/util/List;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    return p1
.end method

.method public removeUserFromFollowingList(Ljava/lang/String;)Z
    .locals 6

    sget-object v0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "removeUserFromFollowingList"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    new-instance v0, Lcom/microsoft/xbox/idp/util/HttpCall;

    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->updateProfileFollowingListUrl()Ljava/lang/String;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "remove"

    aput-object v5, v4, v3

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "POST"

    const-string v5, ""

    invoke-direct {v0, v4, v1, v5}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/idp/util/HttpCall;->setRequestBody(Ljava/lang/String;)V

    new-array p1, v2, [Ljava/lang/Integer;

    const/16 v1, 0xcc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v3

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSyncSucceeded(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/util/List;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    return p1
.end method

.method public removeUserFromMutedList(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    sget-object v0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "removeUserFromMutedList"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    new-instance v0, Lcom/microsoft/xbox/idp/util/HttpCall;

    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getMutedServiceUrlFormat()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "DELETE"

    const-string v2, ""

    invoke-direct {v0, v1, p1, v2}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "1"

    invoke-static {v0, p1}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/microsoft/xbox/idp/util/HttpCall;->setRequestBody(Ljava/lang/String;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p1, p2}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSyncSucceeded(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/util/List;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p2}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    return p1
.end method

.method public removeUserFromNeverList(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    sget-object v0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "removeUserFromNeverList"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    new-instance v0, Lcom/microsoft/xbox/idp/util/HttpCall;

    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getProfileNeverListUrlFormat()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "DELETE"

    const-string v2, ""

    invoke-direct {v0, v1, p1, v2}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "1"

    invoke-static {v0, p1}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/microsoft/xbox/idp/util/HttpCall;->setRequestBody(Ljava/lang/String;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p1, p2}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSyncSucceeded(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/util/List;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p2}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    return p1
.end method

.method public sendShortCircuitProfile(Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileRequest;)Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileResponse;
    .locals 7

    sget-object v0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "sendShortCircuitProfile"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    invoke-static {}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getInstance()Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getSCDRpsTicket()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "Expected to have acquired a ticket already"

    invoke-static {v2, v1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertFalse(Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v2, 0x2

    if-nez v1, :cond_2

    new-instance v1, Lcom/microsoft/xbox/idp/util/HttpCall;

    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getShortCircuitProfileUrlFormat()Ljava/lang/String;

    move-result-object v4

    const-string v5, "POST"

    const-string v6, ""

    invoke-direct {v1, v5, v4, v6}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "PS-MSAAuthTicket"

    invoke-virtual {v1, v4, v0}, Lcom/microsoft/xbox/idp/util/HttpCall;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PS-ApplicationId"

    const-string v4, "44445A65-4A71-4083-8C90-041A22856E69"

    invoke-virtual {v1, v0, v4}, Lcom/microsoft/xbox/idp/util/HttpCall;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PS-Scenario"

    const-string v4, "Minecraft TCUI Friend Finder"

    invoke-virtual {v1, v0, v4}, Lcom/microsoft/xbox/idp/util/HttpCall;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-Type"

    const-string v4, "application/x-www-form-urlencoded"

    invoke-virtual {v1, v0, v4}, Lcom/microsoft/xbox/idp/util/HttpCall;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileRequest;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/microsoft/xbox/idp/util/HttpCall;->setRequestBody(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseBodySync(Lcom/microsoft/xbox/idp/util/HttpCall;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileResponse;->parseJson(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileResponse;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Lcom/microsoft/xbox/toolkit/XLEException;

    invoke-direct {p1, v2, v3}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(J)V

    throw p1

    :cond_2
    new-instance p1, Lcom/microsoft/xbox/toolkit/XLEException;

    invoke-direct {p1, v2, v3}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(J)V

    throw p1
.end method

.method public setFriendFinderOptInStatus(Lcom/microsoft/xbox/service/model/friendfinder/LinkedAccountHelpers$LinkedAccountType;Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;)Z
    .locals 4

    sget-object v0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "setFriendFinderOptInStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getSetFriendFinderOptInStatusUrlFormat()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;->OptedIn:Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;

    if-ne p2, v0, :cond_1

    const-string p2, "?status=OptedIn&waitForUpdate=true"

    goto :goto_1

    :cond_1
    const-string p2, "?status=OptedOut"

    :goto_1
    new-instance v0, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v1, "PUT"

    invoke-direct {v0, v1, p1, p2}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "1"

    invoke-static {v0, p1}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object p1

    const-string p2, "Content-Length"

    const-string v0, "0"

    invoke-virtual {p1, p2, v0}, Lcom/microsoft/xbox/idp/util/HttpCall;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-array p2, v2, [Ljava/lang/Integer;

    const/16 v0, 0xcc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v3

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSyncSucceeded(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/util/List;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p2}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    return p1
.end method

.method public setPrivacySettings(Lcom/microsoft/xbox/service/model/privacy/PrivacySettingsResult;)Z
    .locals 6

    sget-object v0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "setPrivacySettings"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    new-instance v0, Lcom/microsoft/xbox/idp/util/HttpCall;

    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getUserProfileSettingUrlFormat()Ljava/lang/String;

    move-result-object v1

    const-string v4, "PUT"

    const-string v5, ""

    invoke-direct {v0, v4, v1, v5}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "4"

    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v0

    invoke-static {p1}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettingsResult;->getPrivacySettingRequestBody(Lcom/microsoft/xbox/service/model/privacy/PrivacySettingsResult;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/idp/util/HttpCall;->setRequestBody(Ljava/lang/String;)V

    new-array p1, v2, [Ljava/lang/Integer;

    const/16 v1, 0xc9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v3

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSyncSucceeded(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/util/List;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    return p1
.end method

.method public submitFeedback(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    sget-object v0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "submitFeedback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    new-instance v0, Lcom/microsoft/xbox/idp/util/HttpCall;

    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getSubmitFeedbackUrlFormat()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "POST"

    const-string v2, ""

    invoke-direct {v0, v1, p1, v2}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "101"

    invoke-static {v0, p1}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/microsoft/xbox/idp/util/HttpCall;->setRequestBody(Ljava/lang/String;)V

    new-instance p2, Ljava/util/ArrayList;

    const/16 v0, 0xca

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p1, p2}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSyncSucceeded(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/util/List;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p2}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    return p1
.end method

.method public updatePhoneContacts(Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$UploadPhoneContactsRequest;)Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$UploadPhoneContactsResponse;
    .locals 7

    sget-object v0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "updatePhoneContacts"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    invoke-static {}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getInstance()Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getSCDRpsTicket()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "Expected to have acquired a ticket already"

    invoke-static {v2, v1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertFalse(Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v2, 0x2

    if-nez v1, :cond_2

    new-instance v1, Lcom/microsoft/xbox/idp/util/HttpCall;

    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getUploadingPhoneContactsUrlFormat()Ljava/lang/String;

    move-result-object v4

    const-string v5, "POST"

    const-string v6, ""

    invoke-direct {v1, v5, v4, v6}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "X-TicketToken"

    invoke-virtual {v1, v4, v0}, Lcom/microsoft/xbox/idp/util/HttpCall;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "X-AppId"

    const-string v4, "44445A65-4A71-4083-8C90-041A22856E69"

    invoke-virtual {v1, v0, v4}, Lcom/microsoft/xbox/idp/util/HttpCall;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "X-Scenario"

    const-string v4, "Minecraft TCUI Friend Finder"

    invoke-virtual {v1, v0, v4}, Lcom/microsoft/xbox/idp/util/HttpCall;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-Type"

    const-string v4, "application/x-www-form-urlencoded"

    invoke-virtual {v1, v0, v4}, Lcom/microsoft/xbox/idp/util/HttpCall;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$UploadPhoneContactsRequest;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/microsoft/xbox/idp/util/HttpCall;->setRequestBody(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseBodySync(Lcom/microsoft/xbox/idp/util/HttpCall;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$UploadPhoneContactsResponse;->parseJson(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$UploadPhoneContactsResponse;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Lcom/microsoft/xbox/toolkit/XLEException;

    invoke-direct {p1, v2, v3}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(J)V

    throw p1

    :cond_2
    new-instance p1, Lcom/microsoft/xbox/toolkit/XLEException;

    invoke-direct {p1, v2, v3}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(J)V

    throw p1
.end method

.method public updateThirdPartyToken(Lcom/microsoft/xbox/service/model/friendfinder/LinkedAccountHelpers$LinkedAccountType;Ljava/lang/String;)Z
    .locals 5

    sget-object v0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "updateThirdPartyToken"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getUpdateThirdPartyTokenUrlFormat()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    new-instance p1, Lcom/microsoft/xbox/idp/util/HttpCall;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PUT"

    const-string v4, ""

    invoke-direct {p1, v1, v0, v4}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "1"

    invoke-static {p1, v0}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object p1

    new-instance v0, Lcom/microsoft/xbox/service/model/friendfinder/UpdateThirdPartyTokenRequest;

    invoke-direct {v0, p2}, Lcom/microsoft/xbox/service/model/friendfinder/UpdateThirdPartyTokenRequest;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/microsoft/xbox/service/model/friendfinder/UpdateThirdPartyTokenRequest;->getUpdateThirdPartyTokenRequestBody(Lcom/microsoft/xbox/service/model/friendfinder/UpdateThirdPartyTokenRequest;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/xbox/idp/util/HttpCall;->setRequestBody(Ljava/lang/String;)V

    new-array p2, v2, [Ljava/lang/Integer;

    const/16 v0, 0xcc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v3

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSyncSucceeded(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/util/List;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p2}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    return p1
.end method
