.class Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;
.super Ljava/lang/Object;
.source "ObjectLoader.java"

# interfaces
.implements Lcom/microsoft/xbox/idp/util/HttpCall$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->start(Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;

.field final synthetic val$listener:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;)V
    .registers 3
    .param p1, "this$0"    # Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;

    .prologue
    .line 95
    .local p0, "this":Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;, "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;"
    iput-object p1, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;

    iput-object p2, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;->val$listener:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;

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
    .line 123
    .local p0, "this":Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;, "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;"
    invoke-static {}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader;->access$600()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "errorCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", httpStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", errorMessage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance v0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;

    new-instance v1, Lcom/microsoft/xbox/idp/toolkit/HttpError;

    invoke-direct {v1, p1, p2, p3}, Lcom/microsoft/xbox/idp/toolkit/HttpError;-><init>(IILjava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;-><init>(Lcom/microsoft/xbox/idp/toolkit/HttpError;)V

    .line 125
    .local v0, "result":Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;, "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<TT;>;"
    iget-object v1, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;

    invoke-static {v1}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->access$300(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;

    invoke-static {v1}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->access$400(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;)Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;

    move-result-object v2

    monitor-enter v2

    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;

    invoke-static {v1}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->access$400(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;)Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;

    move-result-object v1

    iget-object v3, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;

    invoke-static {v3}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->access$500(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;->put(Ljava/lang/Object;Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;)Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;

    .line 128
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;->val$listener:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;

    invoke-interface {v1, v0}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;->onResult(Ljava/lang/Object;)V

    .line 131
    return-void

    .line 128
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public processResponse(Ljava/io/InputStream;)V
    .registers 8
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;, "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;"
    iget-object v3, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;

    invoke-static {v3}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->access$100(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;)Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/Void;

    if-ne v3, v4, :cond_0

    .line 99
    iget-object v3, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;->val$listener:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;

    new-instance v4, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;->onResult(Ljava/lang/Object;)V

    .line 119
    :goto_0
    return-void

    .line 101
    :cond_0
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 103
    .local v2, "sw":Ljava/io/StringWriter;
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 105
    .local v0, "r":Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v1, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;

    iget-object v3, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;

    invoke-static {v3}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->access$200(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;)Lcom/google/gson/Gson;

    move-result-object v3

    iget-object v4, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;

    invoke-static {v4}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->access$100(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;-><init>(Ljava/lang/Object;)V

    .line 106
    .local v1, "result":Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;, "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<TT;>;"
    iget-object v3, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;

    invoke-static {v3}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->access$300(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 107
    iget-object v3, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;

    invoke-static {v3}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->access$400(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;)Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;

    move-result-object v4

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 108
    :try_start_2
    iget-object v3, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;

    invoke-static {v3}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->access$400(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;)Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;

    move-result-object v3

    iget-object v5, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;

    invoke-static {v5}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->access$500(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5, v1}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;->put(Ljava/lang/Object;Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;)Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;

    .line 109
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;->val$listener:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;

    invoke-interface {v3, v1}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;->onResult(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 113
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 116
    invoke-virtual {v2}, Ljava/io/StringWriter;->close()V

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v3

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 113
    .end local v1    # "result":Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;, "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<TT;>;"
    :catchall_1
    move-exception v3

    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 116
    .end local v0    # "r":Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v3

    invoke-virtual {v2}, Ljava/io/StringWriter;->close()V

    throw v3
.end method
