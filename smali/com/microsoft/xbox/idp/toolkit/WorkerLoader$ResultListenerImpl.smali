.class Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResultListenerImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener<",
        "TD;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;


# direct methods
.method private constructor <init>(Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListenerImpl;->this$0:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListenerImpl;-><init>(Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;)V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListenerImpl;->this$0:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->access$100(Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListenerImpl;->this$0:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;

    invoke-static {v1}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->access$200(Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;)Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;

    move-result-object v1

    if-eq p0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListenerImpl;->this$0:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->access$202(Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;)Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;

    iget-object v2, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListenerImpl;->this$0:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;

    invoke-static {v2}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->access$300(Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListenerImpl$1;

    invoke-direct {v3, p0, v1, p1}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListenerImpl$1;-><init>(Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListenerImpl;ZLjava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
