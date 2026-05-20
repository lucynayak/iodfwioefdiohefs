.class public Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;
.super Ljava/lang/Object;
.source "SLSXsapiServiceManager.java"

# interfaces
.implements Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const-class v0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public SearchGamertag(Ljava/lang/String;)Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;
    .registers 11
    .param p1, "gamertag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 520
    sget-object v6, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v7, "SearchGamertag"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    sget-object v7, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v6, v7, :cond_0

    :goto_0
    invoke-static {v4}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 524
    :try_start_0
    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getGamertagSearchUrlFormat()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "utf-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 525
    .local v3, "url":Ljava/lang/String;
    new-instance v4, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v5, "GET"

    const-string v6, ""

    invoke-direct {v4, v5, v3, v6}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "2"

    invoke-static {v4, v5}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v1

    .line 527
    .local v1, "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    const-class v4, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;

    invoke-static {v1, v4}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSync(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;

    .line 528
    .local v2, "result":Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;
    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    return-object v2

    .end local v1    # "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    .end local v2    # "result":Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;
    .end local v3    # "url":Ljava/lang/String;
    :cond_0
    move v4, v5

    .line 521
    goto :goto_0

    .line 532
    :catch_0
    move-exception v0

    .line 533
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Lcom/microsoft/xbox/toolkit/XLEException;

    const-wide/16 v6, 0xf

    invoke-direct {v4, v6, v7, v0}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(JLjava/lang/Throwable;)V

    throw v4
.end method

.method public addFriendToShareIdentitySetting(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p1, "xuid"    # Ljava/lang/String;
    .param p2, "postBody"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 65
    sget-object v3, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v6, "addFriendToShareIdentitySetting"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    sget-object v6, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v3, v6, :cond_0

    move v3, v4

    :goto_0
    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 67
    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getAddFriendsToShareIdentityUrlFormat()Ljava/lang/String;

    move-result-object v3

    new-array v6, v4, [Ljava/lang/Object;

    aput-object p1, v6, v5

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v6, "POST"

    const-string v7, ""

    invoke-direct {v3, v6, v2, v7}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "4"

    invoke-static {v3, v6}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v0

    .line 70
    .local v0, "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    invoke-virtual {v0, p2}, Lcom/microsoft/xbox/idp/util/HttpCall;->setRequestBody(Ljava/lang/String;)V

    .line 72
    new-array v3, v4, [Ljava/lang/Integer;

    const/16 v4, 0xcc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSyncSucceeded(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/util/List;)Z

    move-result v1

    .line 73
    .local v1, "result":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    .line 74
    return v1

    .end local v0    # "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    .end local v1    # "result":Z
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    move v3, v5

    .line 66
    goto :goto_0
.end method

.method public addUserToFavoriteList(Ljava/lang/String;)Z
    .registers 10
    .param p1, "postBody"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 79
    sget-object v3, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v6, "addUserToFavoriteList"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    sget-object v6, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v3, v6, :cond_0

    move v3, v4

    :goto_0
    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 81
    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getProfileFavoriteListUrl()Ljava/lang/String;

    move-result-object v3

    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "add"

    aput-object v7, v6, v5

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v6, "POST"

    const-string v7, ""

    invoke-direct {v3, v6, v2, v7}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "1"

    invoke-static {v3, v6}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v0

    .line 84
    .local v0, "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/idp/util/HttpCall;->setRequestBody(Ljava/lang/String;)V

    .line 86
    new-array v3, v4, [Ljava/lang/Integer;

    const/16 v4, 0xcc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSyncSucceeded(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/util/List;)Z

    move-result v1

    .line 87
    .local v1, "result":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    .line 88
    return v1

    .end local v0    # "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    .end local v1    # "result":Z
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    move v3, v5

    .line 80
    goto :goto_0
.end method

.method public addUserToFollowingList(Ljava/lang/String;)Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;
    .registers 10
    .param p1, "postBody"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 107
    sget-object v4, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v7, "addUserToFollowingList"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    sget-object v7, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v4, v7, :cond_1

    move v4, v5

    :goto_0
    invoke-static {v4}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 109
    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->updateProfileFollowingListUrl()Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    const-string v7, "add"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, "url":Ljava/lang/String;
    new-instance v4, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v5, "POST"

    const-string v7, ""

    invoke-direct {v4, v5, v3, v7}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "1"

    invoke-static {v4, v5}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v0

    .line 112
    .local v0, "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/idp/util/HttpCall;->setRequestBody(Ljava/lang/String;)V

    .line 114
    new-instance v2, Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;

    invoke-direct {v2}, Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;-><init>()V

    .line 116
    .local v2, "result":Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 117
    .local v1, "notifier":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/util/Pair<Ljava/lang/Boolean;Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;>;>;"
    new-instance v4, Landroid/util/Pair;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 119
    new-instance v4, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager$1;

    invoke-direct {v4, p0, v1, v2}, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager$1;-><init>(Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;Ljava/util/concurrent/atomic/AtomicReference;Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;)V

    invoke-virtual {v0, v4}, Lcom/microsoft/xbox/idp/util/HttpCall;->getResponseAsync(Lcom/microsoft/xbox/idp/util/HttpCall$Callback;)V

    .line 145
    monitor-enter v1

    .line 147
    :goto_1
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 148
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 150
    :catch_0
    move-exception v4

    .line 152
    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v4}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    .line 155
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;

    return-object v4

    .end local v0    # "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    .end local v1    # "notifier":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/util/Pair<Ljava/lang/Boolean;Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;>;>;"
    .end local v2    # "result":Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;
    .end local v3    # "url":Ljava/lang/String;
    :cond_1
    move v4, v6

    .line 108
    goto :goto_0

    .line 152
    .restart local v0    # "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    .restart local v1    # "notifier":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/util/Pair<Ljava/lang/Boolean;Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;>;>;"
    .restart local v2    # "result":Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;
    .restart local v3    # "url":Ljava/lang/String;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method public addUserToMutedList(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p1, "xuid"    # Ljava/lang/String;
    .param p2, "postBody"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 288
    sget-object v3, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v6, "addUserToMutedList"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    sget-object v6, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v3, v6, :cond_0

    move v3, v4

    :goto_0
    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 290
    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getMutedServiceUrlFormat()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 292
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v4, "PUT"

    const-string v6, ""

    invoke-direct {v3, v4, v2, v6}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "1"

    invoke-static {v3, v4}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v0

    .line 293
    .local v0, "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    invoke-virtual {v0, p2}, Lcom/microsoft/xbox/idp/util/HttpCall;->setRequestBody(Ljava/lang/String;)V

    .line 295
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0, v3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSyncSucceeded(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/util/List;)Z

    move-result v1

    .line 296
    .local v1, "result":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    .line 297
    return v1

    .end local v0    # "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    .end local v1    # "result":Z
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    move v3, v5

    .line 289
    goto :goto_0
.end method

.method public addUserToNeverList(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p1, "xuid"    # Ljava/lang/String;
    .param p2, "postBody"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 246
    sget-object v3, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v6, "addUserToNeverList"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    sget-object v6, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v3, v6, :cond_0

    move v3, v4

    :goto_0
    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 248
    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getProfileNeverListUrlFormat()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 250
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v4, "PUT"

    const-string v6, ""

    invoke-direct {v3, v4, v2, v6}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "1"

    invoke-static {v3, v4}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v0

    .line 251
    .local v0, "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    invoke-virtual {v0, p2}, Lcom/microsoft/xbox/idp/util/HttpCall;->setRequestBody(Ljava/lang/String;)V

    .line 253
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0, v3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSyncSucceeded(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/util/List;)Z

    move-result v1

    .line 254
    .local v1, "result":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    .line 255
    return v1

    .end local v0    # "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    .end local v1    # "result":Z
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    move v3, v5

    .line 247
    goto :goto_0
.end method

.method public getFamilySettings(Ljava/lang/String;)Lcom/microsoft/xbox/service/network/managers/FamilySettings;
    .registers 3
    .param p1, "xuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFriendFinderSettings()Lcom/microsoft/xbox/xle/app/FriendFinderSettings;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 330
    sget-object v3, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v5, "getFriendFinderSettings"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    sget-object v5, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v3, v5, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 332
    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getFriendFinderSettingsUrl()Ljava/lang/String;

    move-result-object v2

    .line 334
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v5, "GET"

    const-string v6, ""

    invoke-direct {v3, v5, v2, v6, v4}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v4, "1"

    invoke-static {v3, v4}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v0

    .line 336
    .local v0, "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    const-class v3, Lcom/microsoft/xbox/xle/app/FriendFinderSettings;

    invoke-static {v0, v3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSync(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/xle/app/FriendFinderSettings;

    .line 337
    .local v1, "result":Lcom/microsoft/xbox/xle/app/FriendFinderSettings;
    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    .line 338
    return-object v1

    .end local v0    # "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    .end local v1    # "result":Lcom/microsoft/xbox/xle/app/FriendFinderSettings;
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    move v3, v4

    .line 331
    goto :goto_0
.end method

.method public getMutedListInfo(Ljava/lang/String;)Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedListResult;
    .registers 9
    .param p1, "xuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 274
    sget-object v3, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v6, "getMutedListInfo"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    sget-object v6, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v3, v6, :cond_0

    move v3, v4

    :goto_0
    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 276
    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v4

    :goto_1
    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 277
    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getMutedServiceUrlFormat()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 279
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v4, "GET"

    const-string v5, ""

    invoke-direct {v3, v4, v2, v5}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "1"

    invoke-static {v3, v4}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v0

    .line 281
    .local v0, "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    const-class v3, Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedListResult;

    invoke-static {v0, v3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSync(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedListResult;

    .line 282
    .local v1, "result":Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedListResult;
    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    .line 283
    return-object v1

    .end local v0    # "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    .end local v1    # "result":Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedListResult;
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    move v3, v5

    .line 275
    goto :goto_0

    :cond_1
    move v3, v5

    .line 276
    goto :goto_1
.end method

.method public getMyShortCircuitProfile()Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileResponse;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x2

    .line 431
    sget-object v4, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v5, "getMyShortCircuitProfile"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    sget-object v5, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 434
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getInstance()Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getSCDRpsTicket()Ljava/lang/String;

    move-result-object v2

    .line 435
    .local v2, "rpsTicket":Ljava/lang/String;
    const-string v4, "Expected to have acquired a ticket already"

    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertFalse(Ljava/lang/String;Z)V

    .line 437
    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 438
    new-instance v4, Lcom/microsoft/xbox/toolkit/XLEException;

    invoke-direct {v4, v6, v7}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(J)V

    throw v4

    .line 432
    .end local v2    # "rpsTicket":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 441
    .restart local v2    # "rpsTicket":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getShortCircuitProfileUrlFormat()Ljava/lang/String;

    move-result-object v3

    .line 443
    .local v3, "url":Ljava/lang/String;
    new-instance v0, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v4, "GET"

    const-string v5, ""

    invoke-direct {v0, v4, v3, v5}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    .local v0, "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    const-string v4, "PS-MSAAuthTicket"

    invoke-virtual {v0, v4, v2}, Lcom/microsoft/xbox/idp/util/HttpCall;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const-string v4, "PS-ApplicationId"

    const-string v5, "44445A65-4A71-4083-8C90-041A22856E69"

    invoke-virtual {v0, v4, v5}, Lcom/microsoft/xbox/idp/util/HttpCall;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    const-string v4, "PS-Scenario"

    const-string v5, "Minecraft TCUI Friend Finder"

    invoke-virtual {v0, v4, v5}, Lcom/microsoft/xbox/idp/util/HttpCall;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    const-string v4, "Content-Type"

    const-string v5, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v4, v5}, Lcom/microsoft/xbox/idp/util/HttpCall;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseBodySync(Lcom/microsoft/xbox/idp/util/HttpCall;)Ljava/lang/String;

    move-result-object v1

    .line 451
    .local v1, "result":Ljava/lang/String;
    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 452
    new-instance v4, Lcom/microsoft/xbox/toolkit/XLEException;

    invoke-direct {v4, v6, v7}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(J)V

    throw v4

    .line 455
    :cond_2
    invoke-static {v1}, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileResponse;->parseJson(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileResponse;

    move-result-object v4

    return-object v4
.end method

.method public getNeverListInfo(Ljava/lang/String;)Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;
    .registers 9
    .param p1, "xuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 232
    sget-object v3, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v6, "getNeverListInfo"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    sget-object v6, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v3, v6, :cond_0

    move v3, v4

    :goto_0
    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 234
    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v4

    :goto_1
    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 235
    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getProfileNeverListUrlFormat()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 237
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v4, "GET"

    const-string v5, ""

    invoke-direct {v3, v4, v2, v5}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "1"

    invoke-static {v3, v4}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v0

    .line 239
    .local v0, "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    const-class v3, Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;

    invoke-static {v0, v3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSync(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;

    .line 240
    .local v1, "result":Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;
    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    .line 241
    return-object v1

    .end local v0    # "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    .end local v1    # "result":Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    move v3, v5

    .line 233
    goto :goto_0

    :cond_1
    move v3, v5

    .line 234
    goto :goto_1
.end method

.method public getPeopleHubFriendFinderState()Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    .line 343
    sget-object v3, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v4, "getPeopleHubFriendFinderState"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    sget-object v4, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 345
    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getPeopleHubFriendFinderStateUrlFormat()Ljava/lang/String;

    move-result-object v2

    .line 347
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v4, "GET"

    const-string v5, ""

    invoke-direct {v3, v4, v2, v5}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "1"

    invoke-static {v3, v4}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v0

    .line 348
    .local v0, "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    const-string v3, "Accept-Language"

    invoke-static {}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getInstance()Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getLegalLocale()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/microsoft/xbox/idp/util/HttpCall;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string v3, "X-XBL-Contract-Version"

    const-string v4, "1"

    invoke-virtual {v0, v3, v4}, Lcom/microsoft/xbox/idp/util/HttpCall;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string v3, "X-XBL-Market"

    invoke-static {}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getInstance()Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getRegion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/microsoft/xbox/idp/util/HttpCall;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-class v3, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;

    invoke-static {v0, v3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSync(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;

    .line 353
    .local v1, "result":Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;
    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    .line 354
    return-object v1

    .line 344
    .end local v0    # "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    .end local v1    # "result":Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getPeopleHubRecommendations()Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPeopleSummary;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    .line 415
    sget-object v3, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v4, "getPeopleHubRecommendations"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    sget-object v4, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 417
    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getPeopleHubRecommendationsUrlFormat()Ljava/lang/String;

    move-result-object v2

    .line 419
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v4, "GET"

    const-string v5, ""

    invoke-direct {v3, v4, v2, v5}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "1"

    invoke-static {v3, v4}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v0

    .line 420
    .local v0, "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    const-string v3, "Accept-Language"

    invoke-static {}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getInstance()Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getLegalLocale()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/microsoft/xbox/idp/util/HttpCall;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const-string v3, "X-XBL-Contract-Version"

    const-string v4, "1"

    invoke-virtual {v0, v3, v4}, Lcom/microsoft/xbox/idp/util/HttpCall;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const-string v3, "X-XBL-Market"

    invoke-static {}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getInstance()Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getRegion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/microsoft/xbox/idp/util/HttpCall;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const-class v3, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPeopleSummary;

    invoke-static {v0, v3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSync(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPeopleSummary;

    .line 425
    .local v1, "result":Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPeopleSummary;
    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    .line 426
    return-object v1

    .line 416
    .end local v0    # "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    .end local v1    # "result":Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPeopleSummary;
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getPrivacySetting(Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;)Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;
    .registers 9
    .param p1, "settingId"    # Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 359
    sget-object v3, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v6, "getPrivacySetting"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    sget-object v6, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v3, v6, :cond_0

    move v3, v4

    :goto_0
    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 361
    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getProfileSettingUrlFormat()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 363
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v4, "GET"

    const-string v5, ""

    invoke-direct {v3, v4, v2, v5}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "4"

    invoke-static {v3, v4}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v0

    .line 365
    .local v0, "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    const-class v3, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;

    invoke-static {v0, v3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSync(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;

    .line 366
    .local v1, "result":Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;
    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    .line 367
    return-object v1

    .end local v0    # "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    .end local v1    # "result":Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    move v3, v5

    .line 360
    goto :goto_0
.end method

.method public getProfilePreferredColor(Ljava/lang/String;)Lcom/microsoft/xbox/service/network/managers/ProfilePreferredColor;
    .registers 7
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    .line 207
    sget-object v2, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v3, "getProfilePreferredColor"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    sget-object v3, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 210
    new-instance v2, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v3, "GET"

    const-string v4, ""

    invoke-direct {v2, v3, p1, v4}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v0

    .line 212
    .local v0, "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    const-class v2, Lcom/microsoft/xbox/service/network/managers/ProfilePreferredColor;

    invoke-static {v0, v2}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSync(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/service/network/managers/ProfilePreferredColor;

    .line 213
    .local v1, "result":Lcom/microsoft/xbox/service/network/managers/ProfilePreferredColor;
    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    .line 214
    return-object v1

    .line 208
    .end local v0    # "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    .end local v1    # "result":Lcom/microsoft/xbox/service/network/managers/ProfilePreferredColor;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getProfileSummaryInfo(Ljava/lang/String;)Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;
    .registers 9
    .param p1, "xuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 160
    sget-object v3, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v6, "getProfileSummaryInfo"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    sget-object v6, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v3, v6, :cond_0

    move v3, v4

    :goto_0
    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 162
    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v4

    :goto_1
    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 163
    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getProfileSummaryUrlFormat()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v4, "GET"

    const-string v5, ""

    invoke-direct {v3, v4, v2, v5}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "2"

    invoke-static {v3, v4}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v0

    .line 167
    .local v0, "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    const-class v3, Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;

    invoke-static {v0, v3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSync(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;

    .line 168
    .local v1, "result":Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;
    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    .line 169
    return-object v1

    .end local v0    # "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    .end local v1    # "result":Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    move v3, v5

    .line 161
    goto :goto_0

    :cond_1
    move v3, v5

    .line 162
    goto :goto_1
.end method

.method public getUserProfileInfo(Ljava/lang/String;)Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;
    .registers 8
    .param p1, "postBody"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    .line 188
    sget-object v3, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v4, "getUserProfileInfo"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    sget-object v4, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 190
    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getUserProfileInfoUrl()Ljava/lang/String;

    move-result-object v2

    .line 192
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v4, "POST"

    const-string v5, ""

    invoke-direct {v3, v4, v2, v5}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "2"

    invoke-static {v3, v4}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v0

    .line 193
    .local v0, "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/idp/util/HttpCall;->setRequestBody(Ljava/lang/String;)V

    .line 195
    const-class v3, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;

    invoke-static {v0, v3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSync(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;

    .line 196
    .local v1, "result":Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;
    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    .line 197
    return-object v1

    .line 189
    .end local v0    # "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    .end local v1    # "result":Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getUserProfilePrivacySettings()Lcom/microsoft/xbox/service/model/privacy/PrivacySettingsResult;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    .line 219
    sget-object v3, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v4, "getUserProfilePrivacySettings"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    sget-object v4, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 221
    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getUserProfileSettingUrlFormat()Ljava/lang/String;

    move-result-object v2

    .line 223
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v4, "GET"

    const-string v5, ""

    invoke-direct {v3, v4, v2, v5}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "4"

    invoke-static {v3, v4}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v0

    .line 225
    .local v0, "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    const-class v3, Lcom/microsoft/xbox/service/model/privacy/PrivacySettingsResult;

    invoke-static {v0, v3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSync(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/service/model/privacy/PrivacySettingsResult;

    .line 226
    .local v1, "result":Lcom/microsoft/xbox/service/model/privacy/PrivacySettingsResult;
    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    .line 227
    return-object v1

    .line 220
    .end local v0    # "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    .end local v1    # "result":Lcom/microsoft/xbox/service/model/privacy/PrivacySettingsResult;
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getXTokenPrivileges()[I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    .line 202
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public removeFriendFromShareIdentitySetting(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p1, "xuid"    # Ljava/lang/String;
    .param p2, "postBody"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 51
    sget-object v3, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v6, "removeFriendFromShareIdentitySetting"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    sget-object v6, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v3, v6, :cond_0

    move v3, v4

    :goto_0
    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 53
    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getRemoveUsersFromShareIdentityUrlFormat()Ljava/lang/String;

    move-result-object v3

    new-array v6, v4, [Ljava/lang/Object;

    aput-object p1, v6, v5

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v6, "POST"

    const-string v7, ""

    invoke-direct {v3, v6, v2, v7}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "4"

    invoke-static {v3, v6}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v0

    .line 56
    .local v0, "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    invoke-virtual {v0, p2}, Lcom/microsoft/xbox/idp/util/HttpCall;->setRequestBody(Ljava/lang/String;)V

    .line 58
    new-array v3, v4, [Ljava/lang/Integer;

    const/16 v4, 0xcc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSyncSucceeded(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/util/List;)Z

    move-result v1

    .line 59
    .local v1, "result":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    .line 60
    return v1

    .end local v0    # "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    .end local v1    # "result":Z
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    move v3, v5

    .line 52
    goto :goto_0
.end method

.method public removeUserFromFavoriteList(Ljava/lang/String;)Z
    .registers 10
    .param p1, "postBody"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 93
    sget-object v3, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v6, "removeUserFromFavoriteList"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    sget-object v6, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v3, v6, :cond_0

    move v3, v4

    :goto_0
    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 95
    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getProfileFavoriteListUrl()Ljava/lang/String;

    move-result-object v3

    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "remove"

    aput-object v7, v6, v5

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v6, "POST"

    const-string v7, ""

    invoke-direct {v3, v6, v2, v7}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "1"

    invoke-static {v3, v6}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v0

    .line 98
    .local v0, "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/idp/util/HttpCall;->setRequestBody(Ljava/lang/String;)V

    .line 100
    new-array v3, v4, [Ljava/lang/Integer;

    const/16 v4, 0xcc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSyncSucceeded(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/util/List;)Z

    move-result v1

    .line 101
    .local v1, "result":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    .line 102
    return v1

    .end local v0    # "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    .end local v1    # "result":Z
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    move v3, v5

    .line 94
    goto :goto_0
.end method

.method public removeUserFromFollowingList(Ljava/lang/String;)Z
    .registers 10
    .param p1, "postBody"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 174
    sget-object v3, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v6, "removeUserFromFollowingList"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    sget-object v6, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v3, v6, :cond_0

    move v3, v4

    :goto_0
    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 176
    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->updateProfileFollowingListUrl()Ljava/lang/String;

    move-result-object v3

    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "remove"

    aput-object v7, v6, v5

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v6, "POST"

    const-string v7, ""

    invoke-direct {v3, v6, v2, v7}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "1"

    invoke-static {v3, v6}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v0

    .line 179
    .local v0, "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/idp/util/HttpCall;->setRequestBody(Ljava/lang/String;)V

    .line 181
    new-array v3, v4, [Ljava/lang/Integer;

    const/16 v4, 0xcc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSyncSucceeded(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/util/List;)Z

    move-result v1

    .line 182
    .local v1, "result":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    .line 183
    return v1

    .end local v0    # "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    .end local v1    # "result":Z
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    move v3, v5

    .line 175
    goto :goto_0
.end method

.method public removeUserFromMutedList(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p1, "xuid"    # Ljava/lang/String;
    .param p2, "postBody"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 302
    sget-object v3, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v6, "removeUserFromMutedList"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    sget-object v6, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v3, v6, :cond_0

    move v3, v4

    :goto_0
    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 304
    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getMutedServiceUrlFormat()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 306
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v4, "DELETE"

    const-string v6, ""

    invoke-direct {v3, v4, v2, v6}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "1"

    invoke-static {v3, v4}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v0

    .line 307
    .local v0, "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    invoke-virtual {v0, p2}, Lcom/microsoft/xbox/idp/util/HttpCall;->setRequestBody(Ljava/lang/String;)V

    .line 309
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0, v3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSyncSucceeded(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/util/List;)Z

    move-result v1

    .line 310
    .local v1, "result":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    .line 311
    return v1

    .end local v0    # "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    .end local v1    # "result":Z
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    move v3, v5

    .line 303
    goto :goto_0
.end method

.method public removeUserFromNeverList(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p1, "xuid"    # Ljava/lang/String;
    .param p2, "postBody"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 260
    sget-object v3, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v6, "removeUserFromNeverList"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    sget-object v6, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v3, v6, :cond_0

    move v3, v4

    :goto_0
    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 262
    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getProfileNeverListUrlFormat()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 264
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v4, "DELETE"

    const-string v6, ""

    invoke-direct {v3, v4, v2, v6}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "1"

    invoke-static {v3, v4}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v0

    .line 265
    .local v0, "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    invoke-virtual {v0, p2}, Lcom/microsoft/xbox/idp/util/HttpCall;->setRequestBody(Ljava/lang/String;)V

    .line 267
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0, v3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSyncSucceeded(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/util/List;)Z

    move-result v1

    .line 268
    .local v1, "result":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    .line 269
    return v1

    .end local v0    # "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    .end local v1    # "result":Z
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    move v3, v5

    .line 261
    goto :goto_0
.end method

.method public sendShortCircuitProfile(Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileRequest;)Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileResponse;
    .registers 10
    .param p1, "request"    # Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x2

    .line 460
    sget-object v4, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v5, "sendShortCircuitProfile"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    sget-object v5, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 463
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getInstance()Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getSCDRpsTicket()Ljava/lang/String;

    move-result-object v2

    .line 464
    .local v2, "rpsTicket":Ljava/lang/String;
    const-string v4, "Expected to have acquired a ticket already"

    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertFalse(Ljava/lang/String;Z)V

    .line 466
    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 467
    new-instance v4, Lcom/microsoft/xbox/toolkit/XLEException;

    invoke-direct {v4, v6, v7}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(J)V

    throw v4

    .line 461
    .end local v2    # "rpsTicket":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 470
    .restart local v2    # "rpsTicket":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getShortCircuitProfileUrlFormat()Ljava/lang/String;

    move-result-object v3

    .line 472
    .local v3, "url":Ljava/lang/String;
    new-instance v0, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v4, "POST"

    const-string v5, ""

    invoke-direct {v0, v4, v3, v5}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    .local v0, "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    const-string v4, "PS-MSAAuthTicket"

    invoke-virtual {v0, v4, v2}, Lcom/microsoft/xbox/idp/util/HttpCall;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    const-string v4, "PS-ApplicationId"

    const-string v5, "44445A65-4A71-4083-8C90-041A22856E69"

    invoke-virtual {v0, v4, v5}, Lcom/microsoft/xbox/idp/util/HttpCall;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const-string v4, "PS-Scenario"

    const-string v5, "Minecraft TCUI Friend Finder"

    invoke-virtual {v0, v4, v5}, Lcom/microsoft/xbox/idp/util/HttpCall;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    const-string v4, "Content-Type"

    const-string v5, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v4, v5}, Lcom/microsoft/xbox/idp/util/HttpCall;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    invoke-virtual {p1}, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileRequest;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/microsoft/xbox/idp/util/HttpCall;->setRequestBody(Ljava/lang/String;)V

    .line 479
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseBodySync(Lcom/microsoft/xbox/idp/util/HttpCall;)Ljava/lang/String;

    move-result-object v1

    .line 481
    .local v1, "result":Ljava/lang/String;
    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 482
    new-instance v4, Lcom/microsoft/xbox/toolkit/XLEException;

    invoke-direct {v4, v6, v7}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(J)V

    throw v4

    .line 485
    :cond_2
    invoke-static {v1}, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileResponse;->parseJson(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileResponse;

    move-result-object v4

    return-object v4
.end method

.method public setFriendFinderOptInStatus(Lcom/microsoft/xbox/service/model/friendfinder/LinkedAccountHelpers$LinkedAccountType;Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;)Z
    .registers 12
    .param p1, "type"    # Lcom/microsoft/xbox/service/model/friendfinder/LinkedAccountHelpers$LinkedAccountType;
    .param p2, "optInStatus"    # Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 386
    sget-object v4, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v7, "setFriendFinderOptInStatus"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    sget-object v7, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v4, v7, :cond_0

    move v4, v5

    :goto_0
    invoke-static {v4}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 388
    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getSetFriendFinderOptInStatusUrlFormat()Ljava/lang/String;

    move-result-object v4

    new-array v7, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/microsoft/xbox/service/model/friendfinder/LinkedAccountHelpers$LinkedAccountType;->name()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 389
    .local v3, "url":Ljava/lang/String;
    sget-object v4, Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;->OptedIn:Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;

    if-ne p2, v4, :cond_1

    const-string v1, "?status=OptedIn&waitForUpdate=true"

    .line 391
    .local v1, "query":Ljava/lang/String;
    :goto_1
    new-instance v4, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v7, "PUT"

    invoke-direct {v4, v7, v3, v1}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "1"

    invoke-static {v4, v7}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v0

    .line 392
    .local v0, "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    const-string v4, "Content-Length"

    const-string v7, "0"

    invoke-virtual {v0, v4, v7}, Lcom/microsoft/xbox/idp/util/HttpCall;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    new-array v4, v5, [Ljava/lang/Integer;

    const/16 v5, 0xcc

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSyncSucceeded(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/util/List;)Z

    move-result v2

    .line 395
    .local v2, "result":Z
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    .line 396
    return v2

    .end local v0    # "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    .end local v1    # "query":Ljava/lang/String;
    .end local v2    # "result":Z
    .end local v3    # "url":Ljava/lang/String;
    :cond_0
    move v4, v6

    .line 387
    goto :goto_0

    .line 389
    .restart local v3    # "url":Ljava/lang/String;
    :cond_1
    const-string v1, "?status=OptedOut"

    goto :goto_1
.end method

.method public setPrivacySettings(Lcom/microsoft/xbox/service/model/privacy/PrivacySettingsResult;)Z
    .registers 10
    .param p1, "settings"    # Lcom/microsoft/xbox/service/model/privacy/PrivacySettingsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 372
    sget-object v3, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v6, "setPrivacySettings"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    sget-object v6, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v3, v6, :cond_0

    move v3, v4

    :goto_0
    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 374
    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getUserProfileSettingUrlFormat()Ljava/lang/String;

    move-result-object v2

    .line 376
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v6, "PUT"

    const-string v7, ""

    invoke-direct {v3, v6, v2, v7}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "4"

    invoke-static {v3, v6}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v0

    .line 377
    .local v0, "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    invoke-static {p1}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettingsResult;->getPrivacySettingRequestBody(Lcom/microsoft/xbox/service/model/privacy/PrivacySettingsResult;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/microsoft/xbox/idp/util/HttpCall;->setRequestBody(Ljava/lang/String;)V

    .line 379
    new-array v3, v4, [Ljava/lang/Integer;

    const/16 v4, 0xc9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSyncSucceeded(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/util/List;)Z

    move-result v1

    .line 380
    .local v1, "result":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    .line 381
    return v1

    .end local v0    # "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    .end local v1    # "result":Z
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    move v3, v5

    .line 373
    goto :goto_0
.end method

.method public submitFeedback(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p1, "xuid"    # Ljava/lang/String;
    .param p2, "postBody"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 316
    sget-object v3, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v6, "submitFeedback"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    sget-object v6, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v3, v6, :cond_0

    move v3, v4

    :goto_0
    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 318
    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getSubmitFeedbackUrlFormat()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 320
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v4, "POST"

    const-string v5, ""

    invoke-direct {v3, v4, v2, v5}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "101"

    invoke-static {v3, v4}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v0

    .line 321
    .local v0, "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    invoke-virtual {v0, p2}, Lcom/microsoft/xbox/idp/util/HttpCall;->setRequestBody(Ljava/lang/String;)V

    .line 323
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xca

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0, v3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSyncSucceeded(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/util/List;)Z

    move-result v1

    .line 324
    .local v1, "result":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    .line 325
    return v1

    .end local v0    # "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    .end local v1    # "result":Z
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    move v3, v5

    .line 317
    goto :goto_0
.end method

.method public updatePhoneContacts(Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$UploadPhoneContactsRequest;)Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$UploadPhoneContactsResponse;
    .registers 10
    .param p1, "request"    # Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$UploadPhoneContactsRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x2

    .line 490
    sget-object v4, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v5, "updatePhoneContacts"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    sget-object v5, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 493
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getInstance()Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getSCDRpsTicket()Ljava/lang/String;

    move-result-object v2

    .line 494
    .local v2, "rpsTicket":Ljava/lang/String;
    const-string v4, "Expected to have acquired a ticket already"

    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertFalse(Ljava/lang/String;Z)V

    .line 496
    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 497
    new-instance v4, Lcom/microsoft/xbox/toolkit/XLEException;

    invoke-direct {v4, v6, v7}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(J)V

    throw v4

    .line 491
    .end local v2    # "rpsTicket":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 500
    .restart local v2    # "rpsTicket":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getUploadingPhoneContactsUrlFormat()Ljava/lang/String;

    move-result-object v3

    .line 502
    .local v3, "url":Ljava/lang/String;
    new-instance v0, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v4, "POST"

    const-string v5, ""

    invoke-direct {v0, v4, v3, v5}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    .local v0, "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    const-string v4, "X-TicketToken"

    invoke-virtual {v0, v4, v2}, Lcom/microsoft/xbox/idp/util/HttpCall;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    const-string v4, "X-AppId"

    const-string v5, "44445A65-4A71-4083-8C90-041A22856E69"

    invoke-virtual {v0, v4, v5}, Lcom/microsoft/xbox/idp/util/HttpCall;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const-string v4, "X-Scenario"

    const-string v5, "Minecraft TCUI Friend Finder"

    invoke-virtual {v0, v4, v5}, Lcom/microsoft/xbox/idp/util/HttpCall;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const-string v4, "Content-Type"

    const-string v5, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v4, v5}, Lcom/microsoft/xbox/idp/util/HttpCall;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    invoke-virtual {p1}, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$UploadPhoneContactsRequest;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/microsoft/xbox/idp/util/HttpCall;->setRequestBody(Ljava/lang/String;)V

    .line 509
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseBodySync(Lcom/microsoft/xbox/idp/util/HttpCall;)Ljava/lang/String;

    move-result-object v1

    .line 511
    .local v1, "result":Ljava/lang/String;
    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 512
    new-instance v4, Lcom/microsoft/xbox/toolkit/XLEException;

    invoke-direct {v4, v6, v7}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(J)V

    throw v4

    .line 515
    :cond_2
    invoke-static {v1}, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$UploadPhoneContactsResponse;->parseJson(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$UploadPhoneContactsResponse;

    move-result-object v4

    return-object v4
.end method

.method public updateThirdPartyToken(Lcom/microsoft/xbox/service/model/friendfinder/LinkedAccountHelpers$LinkedAccountType;Ljava/lang/String;)Z
    .registers 11
    .param p1, "type"    # Lcom/microsoft/xbox/service/model/friendfinder/LinkedAccountHelpers$LinkedAccountType;
    .param p2, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 401
    sget-object v3, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v6, "updateThirdPartyToken"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    sget-object v6, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v3, v6, :cond_0

    move v3, v4

    :goto_0
    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 403
    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getUpdateThirdPartyTokenUrlFormat()Ljava/lang/String;

    move-result-object v3

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/microsoft/xbox/service/model/friendfinder/LinkedAccountHelpers$LinkedAccountType;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 405
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v6, "PUT"

    const-string v7, ""

    invoke-direct {v3, v6, v2, v7}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "1"

    invoke-static {v3, v6}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v0

    .line 406
    .local v0, "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    new-instance v3, Lcom/microsoft/xbox/service/model/friendfinder/UpdateThirdPartyTokenRequest;

    invoke-direct {v3, p2}, Lcom/microsoft/xbox/service/model/friendfinder/UpdateThirdPartyTokenRequest;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/microsoft/xbox/service/model/friendfinder/UpdateThirdPartyTokenRequest;->getUpdateThirdPartyTokenRequestBody(Lcom/microsoft/xbox/service/model/friendfinder/UpdateThirdPartyTokenRequest;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/microsoft/xbox/idp/util/HttpCall;->setRequestBody(Ljava/lang/String;)V

    .line 408
    new-array v3, v4, [Ljava/lang/Integer;

    const/16 v4, 0xcc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSyncSucceeded(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/util/List;)Z

    move-result v1

    .line 409
    .local v1, "result":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    .line 410
    return v1

    .end local v0    # "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    .end local v1    # "result":Z
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    move v3, v5

    .line 402
    goto :goto_0
.end method
