.class final Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$3;
.super Ljava/lang/Object;
.source "TcuiHttpUtil.java"

# interfaces
.implements Lcom/microsoft/xbox/idp/util/HttpCall$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseBodySync(Lcom/microsoft/xbox/idp/util/HttpCall;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$notifier:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 2

    .prologue
    .line 91
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$3;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

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
    .line 117
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$3;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$3;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Landroid/util/Pair;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$3;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 120
    monitor-exit v1

    .line 121
    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public processResponse(Ljava/io/InputStream;)V
    .registers 11
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 94
    const/4 v3, 0x0

    .line 96
    .local v3, "responseBody":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    const-string v6, "UTF-8"

    invoke-direct {v5, p1, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v6, 0x1000

    invoke-direct {v2, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 97
    .local v2, "reader":Ljava/io/BufferedReader;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 100
    .local v1, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 101
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 107
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to read ShortCircuitProfileMessage string - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Ljava/lang/String;Z)V

    .line 109
    .end local v0    # "ioe":Ljava/io/IOException;
    :goto_1
    iget-object v6, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$3;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v6

    .line 110
    :try_start_1
    iget-object v5, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$3;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v7, Landroid/util/Pair;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {v7, v8, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v7}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 111
    iget-object v5, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$3;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/lang/Object;->notify()V

    .line 112
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    return-void

    .line 104
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    goto :goto_1

    .line 112
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5
.end method
