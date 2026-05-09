.class public Lcom/microsoft/onlineid/internal/sso/service/operation/GetTicketOperation;
.super Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;Lcom/microsoft/onlineid/internal/sts/TicketManager;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;Lcom/microsoft/onlineid/internal/sts/TicketManager;)V

    return-void
.end method


# virtual methods
.method public call()Landroid/os/Bundle;
    .registers 10

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.microsoft.onlineid.user_cid"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/microsoft/onlineid/internal/Strings;->verifyArgumentNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->getAccountManager()Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;->getAccountByCid(Ljava/lang/String;)Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->getParameters()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->scopeFromBundle(Landroid/os/Bundle;)Lcom/microsoft/onlineid/ISecurityScope;

    move-result-object v4

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->getParameters()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.microsoft.onlineid.cobranding_id"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->getParameters()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.microsoft.onlineid.web_telemetry_requested"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    new-instance v8, Lcom/microsoft/onlineid/internal/sso/service/operation/GetTicketOperation$1;

    invoke-direct {v8, p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetTicketOperation$1;-><init>(Lcom/microsoft/onlineid/internal/sso/service/operation/GetTicketOperation;)V

    new-instance v2, Lcom/microsoft/onlineid/internal/sts/TicketManager;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/microsoft/onlineid/internal/sts/TicketManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->getPuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->getCallingPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->getCallerStateBundle()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/microsoft/onlineid/internal/sts/TicketManager;->createTicketRequest(Ljava/lang/String;Lcom/microsoft/onlineid/ISecurityScope;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/ApiRequest;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/ApiRequest;->setIsWebFlowTelemetryRequested(Z)Lcom/microsoft/onlineid/internal/ApiRequest;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/ApiRequest;->setIsSdkRequest(Z)Lcom/microsoft/onlineid/internal/ApiRequest;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/microsoft/onlineid/internal/ApiRequest;->setResultReceiver(Landroid/os/ResultReceiver;)Lcom/microsoft/onlineid/internal/ApiRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ApiRequest;->asIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v8}, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;->blockForResult()Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;->hasData()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/onlineid/Ticket;

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->ticketToBundle(Lcom/microsoft/onlineid/Ticket;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;->hasPendingIntent()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->pendingIntentToBundle(Landroid/app/PendingIntent;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Lcom/microsoft/onlineid/internal/exception/UserCancelledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_1
    const-string v1, "GetTicketOperation did not receive an expected result from MsaService."

    invoke-static {v0, v1}, Lcom/microsoft/onlineid/internal/Assertion;->check(ZLjava/lang/Object;)V

    new-instance v0, Lcom/microsoft/onlineid/exception/InternalException;

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/exception/InternalException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->exceptionToBundle(Ljava/lang/Exception;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :catch_1
    move-exception v1

    const-string v2, "Unexpected UserCancelledException caught in GetTicketOperation."

    invoke-static {v0, v2}, Lcom/microsoft/onlineid/internal/Assertion;->check(ZLjava/lang/Object;)V

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->exceptionToBundle(Ljava/lang/Exception;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Lcom/microsoft/onlineid/internal/exception/AccountNotFoundException;

    invoke-direct {v0}, Lcom/microsoft/onlineid/internal/exception/AccountNotFoundException;-><init>()V

    throw v0
.end method
