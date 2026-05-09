.class Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/xbox/idp/util/HttpCall$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->start(Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;

.field public final synthetic val$listener:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;

    iput-object p2, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;->val$listener:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processHttpError(IILjava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", httpStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", errorMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;

    new-instance v1, Lcom/microsoft/xbox/idp/toolkit/HttpError;

    invoke-direct {v1, p1, p2, p3}, Lcom/microsoft/xbox/idp/toolkit/HttpError;-><init>(IILjava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;-><init>(Lcom/microsoft/xbox/idp/toolkit/HttpError;)V

    iget-object p1, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->access$300(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->access$400(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;)Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;

    invoke-static {p2}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->access$400(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;)Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;

    move-result-object p2

    iget-object p3, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;

    invoke-static {p3}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->access$500(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;)Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p2, p3, v0}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;->put(Ljava/lang/Object;Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;)Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;->val$listener:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;

    invoke-interface {p1, v0}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method public processResponse(Ljava/io/InputStream;)V
    .locals 5

    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->access$100(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Void;

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;->val$listener:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;

    new-instance v0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;->onResult(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance p1, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;

    iget-object v2, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;

    invoke-static {v2}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->access$200(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;)Lp1/e;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;

    invoke-static {v3}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->access$100(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lp1/e;->c(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;-><init>(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;

    invoke-static {v2}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->access$300(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;

    invoke-static {v2}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->access$400(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;)Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;

    move-result-object v2

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v3, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;

    invoke-static {v3}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->access$400(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;)Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;

    move-result-object v3

    iget-object v4, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;

    invoke-static {v4}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->access$500(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4, p1}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;->put(Ljava/lang/Object;Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;)Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;->val$listener:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;

    invoke-interface {v2, p1}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;->onResult(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-virtual {v0}, Ljava/io/StringWriter;->close()V

    return-void

    :catchall_1
    move-exception p1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, Ljava/io/StringWriter;->close()V

    throw p1
.end method
