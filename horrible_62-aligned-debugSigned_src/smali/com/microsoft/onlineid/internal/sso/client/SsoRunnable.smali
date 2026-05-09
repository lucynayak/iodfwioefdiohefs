.class public abstract Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final _failureCallback:Lcom/microsoft/onlineid/internal/IFailureCallback;

.field private final _state:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/microsoft/onlineid/internal/IFailureCallback;Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;->_failureCallback:Lcom/microsoft/onlineid/internal/IFailureCallback;

    iput-object p2, p0, Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;->_state:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public abstract performRequest()V
.end method

.method public run()V
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;->performRequest()V
    :try_end_0
    .catch Lcom/microsoft/onlineid/exception/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/microsoft/onlineid/exception/InternalException;

    invoke-direct {v1, v0}, Lcom/microsoft/onlineid/exception/InternalException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;->_failureCallback:Lcom/microsoft/onlineid/internal/IFailureCallback;

    iget-object v2, p0, Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;->_state:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/microsoft/onlineid/internal/IFailureCallback;->onFailure(Lcom/microsoft/onlineid/exception/AuthenticationException;Landroid/os/Bundle;)V

    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;->_failureCallback:Lcom/microsoft/onlineid/internal/IFailureCallback;

    iget-object v2, p0, Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;->_state:Landroid/os/Bundle;

    invoke-interface {v1, v0, v2}, Lcom/microsoft/onlineid/internal/IFailureCallback;->onFailure(Lcom/microsoft/onlineid/exception/AuthenticationException;Landroid/os/Bundle;)V

    return-void
.end method
