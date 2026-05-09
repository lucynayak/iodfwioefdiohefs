.class public abstract Lcom/microsoft/onlineid/internal/ApiRequestResultReceiver;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public abstract onFailure(Ljava/lang/Exception;)V
.end method

.method public onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    new-instance v0, Lcom/microsoft/onlineid/internal/ApiResult;

    invoke-direct {v0, p2}, Lcom/microsoft/onlineid/internal/ApiResult;-><init>(Landroid/os/Bundle;)V

    const/4 p2, -0x1

    if-eq p1, p2, :cond_3

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    invoke-virtual {p0, v0, p1}, Lcom/microsoft/onlineid/internal/ApiRequestResultReceiver;->onUnknownResult(Lcom/microsoft/onlineid/internal/ApiResult;I)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ApiResult;->getUINeededIntent()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/internal/ApiRequestResultReceiver;->onUINeeded(Landroid/app/PendingIntent;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ApiResult;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/internal/ApiRequestResultReceiver;->onFailure(Ljava/lang/Exception;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ApiRequestResultReceiver;->onUserCancel()V

    return-void

    :cond_3
    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/internal/ApiRequestResultReceiver;->onSuccess(Lcom/microsoft/onlineid/internal/ApiResult;)V

    return-void
.end method

.method public abstract onSuccess(Lcom/microsoft/onlineid/internal/ApiResult;)V
.end method

.method public abstract onUINeeded(Landroid/app/PendingIntent;)V
.end method

.method public onUnknownResult(Lcom/microsoft/onlineid/internal/ApiResult;I)V
    .locals 2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown result code: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Lcom/microsoft/onlineid/internal/Assertion;->check(ZLjava/lang/Object;)V

    new-instance p1, Lcom/microsoft/onlineid/exception/InternalException;

    .line 1
    invoke-static {v0, p2}, La/c;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-direct {p1, p2}, Lcom/microsoft/onlineid/exception/InternalException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/internal/ApiRequestResultReceiver;->onFailure(Ljava/lang/Exception;)V

    return-void
.end method

.method public abstract onUserCancel()V
.end method
