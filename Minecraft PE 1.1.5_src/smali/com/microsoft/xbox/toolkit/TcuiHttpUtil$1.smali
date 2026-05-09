.class final Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$1;
.super Ljava/lang/Object;
.source "TcuiHttpUtil.java"

# interfaces
.implements Lcom/microsoft/xbox/idp/util/HttpCall$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSync(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/Class;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$returnClass:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 3

    .prologue
    .line 20
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$1;->val$returnClass:Ljava/lang/Class;

    iput-object p2, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$1;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processHttpError(IILjava/lang/String;)V
    .registers 9
    .param p1, "errorCode"    # I
    .param p2, "httpStatus"    # I
    .param p3, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 33
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$1;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$1;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Landroid/util/Pair;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 35
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$1;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 36
    monitor-exit v1

    .line 37
    return-void

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public processResponse(Ljava/io/InputStream;)V
    .registers 7
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 23
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$1;->val$returnClass:Ljava/lang/Class;

    invoke-static {p1, v1}, Lcom/microsoft/xbox/toolkit/GsonUtil;->deserializeJson(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 25
    .local v0, "result":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$1;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v2

    .line 26
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$1;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v3, Landroid/util/Pair;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 27
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$1;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 28
    monitor-exit v2

    .line 29
    return-void

    .line 28
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
