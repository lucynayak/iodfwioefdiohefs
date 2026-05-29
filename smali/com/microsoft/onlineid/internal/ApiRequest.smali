.class public Lcom/microsoft/onlineid/internal/ApiRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/onlineid/internal/ApiRequest$Extras;
    }
.end annotation


# instance fields
.field public final _applicationContext:Landroid/content/Context;

.field public final _intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/ApiRequest;->_applicationContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/microsoft/onlineid/internal/ApiRequest;->_intent:Landroid/content/Intent;

    return-void
.end method

.method private sendResult(ILcom/microsoft/onlineid/internal/ApiResult;)V
    .registers 4

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ApiRequest;->getResultReceiver()Landroid/os/ResultReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/microsoft/onlineid/internal/ApiResult;->asBundle()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addTicket(Lcom/microsoft/onlineid/Ticket;)Lcom/microsoft/onlineid/internal/ApiRequest;
    .registers 4

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiRequest;->_intent:Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/microsoft/onlineid/Ticket;->getScope()Lcom/microsoft/onlineid/ISecurityScope;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/microsoft/onlineid/internal/ApiRequest;->getTicketKey(Lcom/microsoft/onlineid/ISecurityScope;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-object p0
.end method

.method public asIntent()Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiRequest;->_intent:Landroid/content/Intent;

    return-object v0
.end method

.method public executeAsync()V
    .registers 3

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ApiRequest;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ApiRequest;->_intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public getAccountName()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiRequest;->_intent:Landroid/content/Intent;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->AccountName:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccountPuid()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiRequest;->_intent:Landroid/content/Intent;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->AccountPuid:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientPackageName()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiRequest;->_intent:Landroid/content/Intent;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->ClientPackageName:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientStateBundle()Landroid/os/Bundle;
    .registers 3

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiRequest;->_intent:Landroid/content/Intent;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->ClientStateBundle:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getCobrandingId()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiRequest;->_intent:Landroid/content/Intent;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->CobrandingId:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiRequest;->_applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public getContinuation()Landroid/content/Intent;
    .registers 3

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiRequest;->_intent:Landroid/content/Intent;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->Continuation:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method public getFlowToken()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiRequest;->_intent:Landroid/content/Intent;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->FlowToken:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsWebFlowTelemetryRequested()Z
    .registers 4

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiRequest;->_intent:Landroid/content/Intent;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->WebFlowTelemetryRequested:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getResultReceiver()Landroid/os/ResultReceiver;
    .registers 3

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiRequest;->_intent:Landroid/content/Intent;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->ResultReceiver:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    return-object v0
.end method

.method public getScope()Lcom/microsoft/onlineid/ISecurityScope;
    .registers 3

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiRequest;->_intent:Landroid/content/Intent;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->Scope:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/microsoft/onlineid/ISecurityScope;

    return-object v0
.end method

.method public getTicket(Lcom/microsoft/onlineid/ISecurityScope;)Lcom/microsoft/onlineid/Ticket;
    .registers 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiRequest;->_intent:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/internal/ApiRequest;->getTicketKey(Lcom/microsoft/onlineid/ISecurityScope;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/microsoft/onlineid/Ticket;

    return-object p1
.end method

.method public getTicketKey(Lcom/microsoft/onlineid/ISecurityScope;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "com.microsoft.msa.authenticator"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Ticket"

    aput-object v2, v0, v1

    invoke-interface {p1}, Lcom/microsoft/onlineid/ISecurityScope;->getTarget()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    invoke-interface {p1}, Lcom/microsoft/onlineid/ISecurityScope;->getPolicy()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    const-string p1, "."

    invoke-static {p1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hasResultReceiver()Z
    .registers 2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ApiRequest;->getResultReceiver()Landroid/os/ResultReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSdkRequest()Z
    .registers 4

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiRequest;->_intent:Landroid/content/Intent;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->IsSdkRequest:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public sendFailure(Ljava/lang/Exception;)V
    .registers 3

    new-instance v0, Lcom/microsoft/onlineid/internal/ApiResult;

    invoke-direct {v0}, Lcom/microsoft/onlineid/internal/ApiResult;-><init>()V

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/ApiResult;->setException(Ljava/lang/Exception;)Lcom/microsoft/onlineid/internal/ApiResult;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/microsoft/onlineid/internal/ApiRequest;->sendResult(ILcom/microsoft/onlineid/internal/ApiResult;)V

    return-void
.end method

.method public sendSuccess(Lcom/microsoft/onlineid/internal/ApiResult;)V
    .registers 4

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ApiRequest;->getContinuation()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/ApiResult;->asBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ApiRequest;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_0
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1}, Lcom/microsoft/onlineid/internal/ApiRequest;->sendResult(ILcom/microsoft/onlineid/internal/ApiResult;)V

    return-void
.end method

.method public sendUINeeded(Landroid/app/PendingIntent;)V
    .registers 3

    new-instance v0, Lcom/microsoft/onlineid/internal/ApiResult;

    invoke-direct {v0}, Lcom/microsoft/onlineid/internal/ApiResult;-><init>()V

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/ApiResult;->setUINeededIntent(Landroid/app/PendingIntent;)Lcom/microsoft/onlineid/internal/ApiResult;

    move-result-object p1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/microsoft/onlineid/internal/ApiRequest;->sendResult(ILcom/microsoft/onlineid/internal/ApiResult;)V

    return-void
.end method

.method public sendUserCanceled()V
    .registers 3

    new-instance v0, Lcom/microsoft/onlineid/internal/ApiResult;

    invoke-direct {v0}, Lcom/microsoft/onlineid/internal/ApiResult;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/microsoft/onlineid/internal/ApiRequest;->sendResult(ILcom/microsoft/onlineid/internal/ApiResult;)V

    return-void
.end method

.method public setAccountName(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ApiRequest;
    .registers 4

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiRequest;->_intent:Landroid/content/Intent;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->AccountName:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public setAccountPuid(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ApiRequest;
    .registers 4

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiRequest;->_intent:Landroid/content/Intent;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->AccountPuid:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public setClientPackageName(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ApiRequest;
    .registers 4

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiRequest;->_intent:Landroid/content/Intent;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->ClientPackageName:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public setClientStateBundle(Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/ApiRequest;
    .registers 4

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiRequest;->_intent:Landroid/content/Intent;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->ClientStateBundle:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-object p0
.end method

.method public setCobrandingId(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ApiRequest;
    .registers 4

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiRequest;->_intent:Landroid/content/Intent;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->CobrandingId:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public setContinuation(Lcom/microsoft/onlineid/internal/ApiRequest;)Lcom/microsoft/onlineid/internal/ApiRequest;
    .registers 4

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiRequest;->_intent:Landroid/content/Intent;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->Continuation:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/ApiRequest;->asIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object p0
.end method

.method public setFlowToken(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ApiRequest;
    .registers 4

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiRequest;->_intent:Landroid/content/Intent;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->FlowToken:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public setIsSdkRequest(Z)Lcom/microsoft/onlineid/internal/ApiRequest;
    .registers 4

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiRequest;->_intent:Landroid/content/Intent;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->IsSdkRequest:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public setIsWebFlowTelemetryRequested(Z)Lcom/microsoft/onlineid/internal/ApiRequest;
    .registers 4

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiRequest;->_intent:Landroid/content/Intent;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->WebFlowTelemetryRequested:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public setResultReceiver(Landroid/os/ResultReceiver;)Lcom/microsoft/onlineid/internal/ApiRequest;
    .registers 4

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiRequest;->_intent:Landroid/content/Intent;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->ResultReceiver:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object p0
.end method

.method public setScope(Lcom/microsoft/onlineid/ISecurityScope;)Lcom/microsoft/onlineid/internal/ApiRequest;
    .registers 4

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiRequest;->_intent:Landroid/content/Intent;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->Scope:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-object p0
.end method
