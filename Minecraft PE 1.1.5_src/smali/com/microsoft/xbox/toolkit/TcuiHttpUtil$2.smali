.class final Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$2;
.super Ljava/lang/Object;
.source "TcuiHttpUtil.java"

# interfaces
.implements Lcom/microsoft/xbox/idp/util/HttpCall$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSyncSucceeded(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/util/List;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$acceptableStatusCodes:Ljava/util/List;

.field final synthetic val$notifier:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/List;)V
    .registers 3

    .prologue
    .line 55
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$2;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$2;->val$acceptableStatusCodes:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processHttpError(IILjava/lang/String;)V
    .registers 8
    .param p1, "errorCode"    # I
    .param p2, "httpStatus"    # I
    .param p3, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 66
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$2;->val$acceptableStatusCodes:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 68
    .local v0, "result":Z
    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$2;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v2

    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$2;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 70
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$2;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 71
    monitor-exit v2

    .line 72
    return-void

    .line 71
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public processResponse(Ljava/io/InputStream;)V
    .registers 5
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$2;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$2;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 60
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$2;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 61
    monitor-exit v1

    .line 62
    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
