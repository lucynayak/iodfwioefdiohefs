.class Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/xbox/idp/util/HttpCall$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->addUserToFollowingList(Ljava/lang/String;)Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;

.field public final synthetic val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic val$result:Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;Ljava/util/concurrent/atomic/AtomicReference;Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager$1;->this$0:Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;

    iput-object p2, p0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager$1;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager$1;->val$result:Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processHttpError(IILjava/lang/String;)V
    .locals 2

    iget-object p1, p0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager$1;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter p1

    const/16 v0, 0xcc

    if-ne p2, v0, :cond_0

    :try_start_0
    iget-object p2, p0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager$1;->val$result:Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;->setAddFollowingRequestStatus(Z)V

    iget-object p2, p0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager$1;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p3, Landroid/util/Pair;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager$1;->val$result:Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;

    invoke-direct {p3, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, p3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-class p2, Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;

    invoke-static {p3, p2}, Lcom/microsoft/xbox/toolkit/GsonUtil;->deserializeJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;

    iget-object p3, p0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager$1;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Landroid/util/Pair;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :goto_0
    iget-object p2, p0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager$1;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public processResponse(Ljava/io/InputStream;)V
    .locals 4

    iget-object p1, p0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager$1;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager$1;->val$result:Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;->setAddFollowingRequestStatus(Z)V

    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager$1;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager$1;->val$result:Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager$1;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
