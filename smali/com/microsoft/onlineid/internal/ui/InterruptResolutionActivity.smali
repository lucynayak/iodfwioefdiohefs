.class public Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$DelegatedResultReceiver;,
        Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$TicketResultReceiver;,
        Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$WebFlowResultHandler;
    }
.end annotation


# static fields
.field private static final PendingActivityRequestCode:I = 0x1

.field private static final WebFlowRequestCode:I = 0x2


# instance fields
.field private _accountCid:Ljava/lang/String;

.field private _accountPuid:Ljava/lang/String;

.field private _clientPackageName:Ljava/lang/String;

.field private _clientState:Landroid/os/Bundle;

.field private _cobrandingId:Ljava/lang/String;

.field private _requestedScope:Lcom/microsoft/onlineid/ISecurityScope;

.field private _resultSender:Lcom/microsoft/onlineid/internal/ActivityResultSender;

.field private _storage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

.field private _ticketReceiver:Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$TicketResultReceiver;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static getResolutionIntent(Landroid/content/Context;Landroid/net/Uri;Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;Lcom/microsoft/onlineid/ISecurityScope;Ljava/lang/String;ZLjava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .registers 10

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p2}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->getPuid()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.microsoft.onlineid.user_puid"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p2}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->getCid()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.microsoft.onlineid.user_cid"

    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "com.microsoft.onlineid.cobranding_id"

    invoke-virtual {p0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "com.microsoft.onlineid.web_telemetry_requested"

    invoke-virtual {p0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "com.microsoft.onlineid.client_package_name"

    invoke-virtual {p0, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "com.microsoft.onlineid.client_state"

    invoke-virtual {p0, p1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p3, :cond_0

    if-eqz p6, :cond_0

    invoke-static {p3}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->scopeToBundle(Lcom/microsoft/onlineid/ISecurityScope;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_2

    if-eqz p6, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "A ticket scope requires a client package name to make a request."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-object p0
.end method


# virtual methods
.method public addTelemetryToResult(Landroid/content/Intent;)V
    .registers 3

    if-eqz p1, :cond_0

    new-instance v0, Lcom/microsoft/onlineid/internal/ApiResult;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/internal/ApiResult;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ApiResult;->hasWebFlowTelemetryEvents()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_resultSender:Lcom/microsoft/onlineid/internal/ActivityResultSender;

    invoke-virtual {p1, v0}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->putWebFlowTelemetryFields(Lcom/microsoft/onlineid/internal/ApiResult;)Lcom/microsoft/onlineid/internal/ActivityResultSender;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->set()V

    :cond_0
    return-void
.end method

.method public getAccountCid()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_accountCid:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountPuid()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_accountPuid:Ljava/lang/String;

    return-object v0
.end method

.method public getClientPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_clientPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestedScope()Lcom/microsoft/onlineid/ISecurityScope;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_requestedScope:Lcom/microsoft/onlineid/ISecurityScope;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->addTelemetryToResult(Landroid/content/Intent;)V

    new-instance p1, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$WebFlowResultHandler;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$WebFlowResultHandler;-><init>(Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$1;)V

    invoke-virtual {p1, p2, p3}, Lcom/microsoft/onlineid/internal/ActivityResultHandler;->onActivityResult(ILandroid/content/Intent;)V

    return-void

    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->onUserCancel()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_storage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    new-instance v0, Lcom/microsoft/onlineid/internal/ActivityResultSender;

    sget-object v1, Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;->Ticket:Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;

    invoke-direct {v0, p0, v1}, Lcom/microsoft/onlineid/internal/ActivityResultSender;-><init>(Landroid/app/Activity;Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_resultSender:Lcom/microsoft/onlineid/internal/ActivityResultSender;

    new-instance v0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$TicketResultReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$TicketResultReceiver;-><init>(Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$1;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_ticketReceiver:Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$TicketResultReceiver;

    invoke-virtual {v0, p0}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$DelegatedResultReceiver;->setActivity(Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->hasScope(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->scopeFromBundle(Landroid/os/Bundle;)Lcom/microsoft/onlineid/ISecurityScope;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_requestedScope:Lcom/microsoft/onlineid/ISecurityScope;
    :try_end_0
    .catch Lcom/microsoft/onlineid/internal/sso/BundleMarshallerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->onFailure(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.microsoft.onlineid.user_puid"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_accountPuid:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.microsoft.onlineid.user_cid"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_accountCid:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.microsoft.onlineid.client_package_name"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_clientPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.microsoft.onlineid.cobranding_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_cobrandingId:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.microsoft.onlineid.client_state"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_clientState:Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.microsoft.onlineid.web_telemetry_requested"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    new-instance v1, Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;

    invoke-direct {v1}, Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;-><init>()V

    invoke-virtual {v1, v0}, Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;->setIsWebTelemetryRequested(Z)Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_clientPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;->setCallingAppPackageName(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_clientPackageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/microsoft/onlineid/internal/PackageInfoHelper;->getAppVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;->setCallingAppVersionName(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;->setWasPrecachingEnabled(Z)Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;

    move-result-object v0

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "com.microsoft.onlineid.internal.RESOLVE_INTERRUPT"

    invoke-static {p1, v1, v3, v2, v0}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->getFlowRequest(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;ZLcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;)Lcom/microsoft/onlineid/internal/ApiRequest;

    move-result-object p1

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_accountPuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/microsoft/onlineid/internal/ApiRequest;->setAccountPuid(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ApiRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/ApiRequest;->asIntent()Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x10000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_ticketReceiver:Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$TicketResultReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$DelegatedResultReceiver;->setActivity(Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onFailure(Ljava/lang/Exception;)V
    .registers 5

    new-instance v0, Lcom/microsoft/onlineid/internal/ApiRequest;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/internal/ApiRequest;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ApiRequest;->isSdkRequest()Z

    move-result v1

    if-eqz v1, :cond_1

    instance-of v0, p1, Lcom/microsoft/onlineid/internal/exception/AccountNotFoundException;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_resultSender:Lcom/microsoft/onlineid/internal/ActivityResultSender;

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_accountCid:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->putSignedOutCid(Ljava/lang/String;Z)Lcom/microsoft/onlineid/internal/ActivityResultSender;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_resultSender:Lcom/microsoft/onlineid/internal/ActivityResultSender;

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->putException(Ljava/lang/Exception;)Lcom/microsoft/onlineid/internal/ActivityResultSender;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->set()V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/ApiRequest;->sendFailure(Ljava/lang/Exception;)V

    :goto_1
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->finishActivity(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onTicketAcquired(Lcom/microsoft/onlineid/Ticket;)V
    .registers 4

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_storage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_accountPuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->readAccount(Ljava/lang/String;)Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Lcom/microsoft/onlineid/internal/exception/AccountNotFoundException;

    invoke-direct {p1}, Lcom/microsoft/onlineid/internal/exception/AccountNotFoundException;-><init>()V

    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->onFailure(Ljava/lang/Exception;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_resultSender:Lcom/microsoft/onlineid/internal/ActivityResultSender;

    invoke-virtual {v1, p1}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->putTicket(Lcom/microsoft/onlineid/Ticket;)Lcom/microsoft/onlineid/internal/ActivityResultSender;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->putLimitedUserAccount(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;)Lcom/microsoft/onlineid/internal/ActivityResultSender;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->set()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->finishActivity(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onUiNeeded(Landroid/app/PendingIntent;)V
    .registers 9

    :try_start_0
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    iget-object p1, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_resultSender:Lcom/microsoft/onlineid/internal/ActivityResultSender;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->putWereAllWebFlowTelemetryEventsCaptured(Z)Lcom/microsoft/onlineid/internal/ActivityResultSender;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->set()V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->onFailure(Ljava/lang/Exception;)V

    return-void
.end method

.method public onUserCancel()V
    .registers 4

    new-instance v0, Lcom/microsoft/onlineid/internal/ApiRequest;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/internal/ApiRequest;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ApiRequest;->hasResultReceiver()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ApiRequest;->sendUserCanceled()V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->finishActivity(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onWebFlowSucceeded(Ljava/lang/String;)V
    .registers 11

    new-instance v0, Lcom/microsoft/onlineid/internal/ApiRequest;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/internal/ApiRequest;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ApiRequest;->isSdkRequest()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_requestedScope:Lcom/microsoft/onlineid/ISecurityScope;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_ticketReceiver:Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$TicketResultReceiver;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Scope must not be null for SSO ticket request."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$DelegatedResultReceiver;->onFailure(Ljava/lang/Exception;)V

    :cond_0
    new-instance v3, Lcom/microsoft/onlineid/internal/sts/TicketManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/microsoft/onlineid/internal/sts/TicketManager;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_accountPuid:Ljava/lang/String;

    iget-object v5, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_requestedScope:Lcom/microsoft/onlineid/ISecurityScope;

    iget-object v6, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_clientPackageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_cobrandingId:Ljava/lang/String;

    iget-object v8, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_clientState:Landroid/os/Bundle;

    invoke-virtual/range {v3 .. v8}, Lcom/microsoft/onlineid/internal/sts/TicketManager;->createTicketRequest(Ljava/lang/String;Lcom/microsoft/onlineid/ISecurityScope;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/ApiRequest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/ApiRequest;->setFlowToken(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ApiRequest;

    move-result-object p1

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_ticketReceiver:Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$TicketResultReceiver;

    invoke-virtual {p1, v0}, Lcom/microsoft/onlineid/internal/ApiRequest;->setResultReceiver(Landroid/os/ResultReceiver;)Lcom/microsoft/onlineid/internal/ApiRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/ApiRequest;->asIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->showPendingActivity()V

    return-void

    :cond_1
    new-instance v1, Lcom/microsoft/onlineid/internal/ApiResult;

    invoke-direct {v1}, Lcom/microsoft/onlineid/internal/ApiResult;-><init>()V

    iget-object v2, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_accountPuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/microsoft/onlineid/internal/ApiResult;->setAccountPuid(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ApiResult;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/microsoft/onlineid/internal/ApiResult;->setFlowToken(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ApiResult;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/ApiRequest;->sendSuccess(Lcom/microsoft/onlineid/internal/ApiResult;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public showPendingActivity()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.microsoft.onlineid.authenticator.AccountAddPendingActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
