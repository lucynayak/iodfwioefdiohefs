.class public Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;
.super Ljava/lang/Object;
.source "TcuiHttpUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResponseBodySync(Lcom/microsoft/xbox/idp/util/HttpCall;)Ljava/lang/String;
    .registers 5
    .param p0, "httpCall"    # Lcom/microsoft/xbox/idp/util/HttpCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 89
    .local v0, "notifier":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/String;>;>;"
    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 91
    new-instance v1, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$3;

    invoke-direct {v1, v0}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$3;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {p0, v1}, Lcom/microsoft/xbox/idp/util/HttpCall;->getResponseAsync(Lcom/microsoft/xbox/idp/util/HttpCall$Callback;)V

    .line 124
    monitor-enter v0

    .line 126
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 127
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 129
    :catch_0
    move-exception v1

    .line 131
    :cond_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 131
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static getResponseSync(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .param p0, "httpCall"    # Lcom/microsoft/xbox/idp/util/HttpCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/microsoft/xbox/idp/util/HttpCall;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    .line 17
    .local p1, "returnClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 18
    .local v0, "notifier":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/util/Pair<Ljava/lang/Boolean;TT;>;>;"
    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 20
    new-instance v1, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$1;

    invoke-direct {v1, p1, v0}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$1;-><init>(Ljava/lang/Class;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {p0, v1}, Lcom/microsoft/xbox/idp/util/HttpCall;->getResponseAsync(Lcom/microsoft/xbox/idp/util/HttpCall$Callback;)V

    .line 40
    monitor-enter v0

    .line 42
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 45
    :catch_0
    move-exception v1

    .line 47
    :cond_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    return-object v1

    .line 47
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static getResponseSyncSucceeded(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/util/List;)Z
    .registers 4
    .param p0, "httpCall"    # Lcom/microsoft/xbox/idp/util/HttpCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/idp/util/HttpCall;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "acceptableStatusCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 55
    .local v0, "notifier":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Boolean;>;"
    new-instance v1, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$2;

    invoke-direct {v1, v0, p1}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$2;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/microsoft/xbox/idp/util/HttpCall;->getResponseAsync(Lcom/microsoft/xbox/idp/util/HttpCall$Callback;)V

    .line 75
    monitor-enter v0

    .line 77
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 78
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 80
    :catch_0
    move-exception v1

    .line 82
    :cond_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 82
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static throwIfNullOrFalse(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "result":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Lcom/microsoft/xbox/toolkit/XLEException;

    const-wide/16 v2, 0x2

    invoke-direct {v0, v2, v3}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(J)V

    throw v0

    .line 141
    :cond_0
    return-void
.end method
