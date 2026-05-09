.class Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$MyWorker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/xbox/idp/interop/Interop$EventInitializationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$MyWorker;->start(Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$MyWorker;

.field public final synthetic val$listener:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$MyWorker;Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;)V
    .registers 3

    iput-object p1, p0, Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$MyWorker;

    iput-object p2, p0, Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$MyWorker$1;->val$listener:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(IILjava/lang/String;)V
    .registers 6

    new-instance v0, Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$Result;

    new-instance v1, Lcom/microsoft/xbox/idp/toolkit/HttpError;

    invoke-direct {v1, p2, p1, p3}, Lcom/microsoft/xbox/idp/toolkit/HttpError;-><init>(IILjava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$Result;-><init>(Lcom/microsoft/xbox/idp/toolkit/HttpError;)V

    iget-object p1, p0, Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$MyWorker;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$MyWorker;->access$100(Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$MyWorker;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$MyWorker;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$MyWorker;->access$200(Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$MyWorker;)Lcom/microsoft/xbox/idp/util/ResultCache;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$MyWorker;

    invoke-static {p2}, Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$MyWorker;->access$200(Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$MyWorker;)Lcom/microsoft/xbox/idp/util/ResultCache;

    move-result-object p2

    iget-object p3, p0, Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$MyWorker;

    invoke-static {p3}, Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$MyWorker;->access$300(Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$MyWorker;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3, v0}, Lcom/microsoft/xbox/idp/util/ResultCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
    iget-object p1, p0, Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$MyWorker$1;->val$listener:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;

    invoke-interface {p1, v0}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess()V
    .registers 5

    new-instance v0, Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$Result;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$Result;-><init>(Lcom/microsoft/xbox/idp/toolkit/HttpError;)V

    iget-object v1, p0, Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$MyWorker;

    invoke-static {v1}, Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$MyWorker;->access$100(Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$MyWorker;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$MyWorker;

    invoke-static {v1}, Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$MyWorker;->access$200(Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$MyWorker;)Lcom/microsoft/xbox/idp/util/ResultCache;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$MyWorker;

    invoke-static {v2}, Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$MyWorker;->access$200(Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$MyWorker;)Lcom/microsoft/xbox/idp/util/ResultCache;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$MyWorker;

    invoke-static {v3}, Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$MyWorker;->access$300(Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$MyWorker;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/microsoft/xbox/idp/util/ResultCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$MyWorker$1;->val$listener:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;

    invoke-interface {v1, v0}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;->onResult(Ljava/lang/Object;)V

    return-void
.end method
