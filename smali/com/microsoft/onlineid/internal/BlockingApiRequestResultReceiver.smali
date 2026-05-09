.class public abstract Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;
.super Lcom/microsoft/onlineid/internal/ApiRequestResultReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/microsoft/onlineid/internal/ApiRequestResultReceiver;"
    }
.end annotation


# instance fields
.field private final _queue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver<",
            "TResultType;>.Result;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/microsoft/onlineid/internal/ApiRequestResultReceiver;-><init>(Landroid/os/Handler;)V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;->_queue:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method


# virtual methods
.method public blockForResult()Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/onlineid/internal/sso/client/SsoResponse<",
            "TResultType;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;->_queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;->access$000(Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;)Ljava/lang/Exception;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;->getSsoResponse()Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;->access$000(Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;)Ljava/lang/Exception;

    move-result-object v0

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expect a result to be available."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onFailure(Ljava/lang/Exception;)V
    .registers 5

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;->_queue:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;-><init>(Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;Ljava/lang/Exception;Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onUINeeded(Landroid/app/PendingIntent;)V
    .registers 5

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;->_queue:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;-><init>(Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;Landroid/app/PendingIntent;Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onUserCancel()V
    .registers 5

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;->_queue:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;

    new-instance v2, Lcom/microsoft/onlineid/internal/exception/UserCancelledException;

    invoke-direct {v2}, Lcom/microsoft/onlineid/internal/exception/UserCancelledException;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;-><init>(Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;Ljava/lang/Exception;Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setResult(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultType;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;->_queue:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;-><init>(Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;Ljava/lang/Object;Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method
