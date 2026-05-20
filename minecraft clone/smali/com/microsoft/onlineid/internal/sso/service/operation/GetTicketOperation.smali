.class public Lcom/microsoft/onlineid/internal/sso/service/operation/GetTicketOperation;
.super Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;
.source "GetTicketOperation.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;Lcom/microsoft/onlineid/internal/sts/TicketManager;)V
    .registers 5
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "accountManager"    # Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;
    .param p4, "ticketManager"    # Lcom/microsoft/onlineid/internal/sts/TicketManager;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;Lcom/microsoft/onlineid/internal/sts/TicketManager;)V

    .line 52
    return-void
.end method


# virtual methods
.method public call()Landroid/os/Bundle;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/internal/exception/AccountNotFoundException;,
            Lcom/microsoft/onlineid/sts/exception/InvalidResponseException;,
            Lcom/microsoft/onlineid/exception/NetworkException;,
            Lcom/microsoft/onlineid/sts/exception/StsException;,
            Lcom/microsoft/onlineid/exception/InternalException;
        }
    .end annotation

    .prologue
    const/4 v14, 0x0

    .line 62
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetTicketOperation;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.microsoft.onlineid.user_cid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 63
    .local v7, "cid":Ljava/lang/String;
    const-string v0, "com.microsoft.onlineid.user_cid"

    invoke-static {v7, v0}, Lcom/microsoft/onlineid/internal/Strings;->verifyArgumentNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetTicketOperation;->getAccountManager()Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;->getAccountByCid(Ljava/lang/String;)Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    move-result-object v6

    .line 66
    .local v6, "account":Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    if-nez v6, :cond_0

    .line 68
    new-instance v0, Lcom/microsoft/onlineid/internal/exception/AccountNotFoundException;

    invoke-direct {v0}, Lcom/microsoft/onlineid/internal/exception/AccountNotFoundException;-><init>()V

    throw v0

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetTicketOperation;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->scopeFromBundle(Landroid/os/Bundle;)Lcom/microsoft/onlineid/ISecurityScope;

    move-result-object v2

    .line 72
    .local v2, "scope":Lcom/microsoft/onlineid/ISecurityScope;
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetTicketOperation;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.microsoft.onlineid.cobranding_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 73
    .local v4, "cobrandingId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetTicketOperation;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.microsoft.onlineid.web_telemetry_requested"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 75
    .local v13, "webTelemetryRequested":Z
    new-instance v10, Lcom/microsoft/onlineid/internal/sso/service/operation/GetTicketOperation$1;

    invoke-direct {v10, p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetTicketOperation$1;-><init>(Lcom/microsoft/onlineid/internal/sso/service/operation/GetTicketOperation;)V

    .line 94
    .local v10, "receiver":Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;, "Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver<Lcom/microsoft/onlineid/Ticket;>;"
    new-instance v0, Lcom/microsoft/onlineid/internal/sts/TicketManager;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetTicketOperation;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/internal/sts/TicketManager;-><init>(Landroid/content/Context;)V

    .line 95
    invoke-virtual {v6}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->getPuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetTicketOperation;->getCallingPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetTicketOperation;->getCallerStateBundle()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/onlineid/internal/sts/TicketManager;->createTicketRequest(Ljava/lang/String;Lcom/microsoft/onlineid/ISecurityScope;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/ApiRequest;

    move-result-object v0

    .line 96
    invoke-virtual {v0, v13}, Lcom/microsoft/onlineid/internal/ApiRequest;->setIsWebFlowTelemetryRequested(Z)Lcom/microsoft/onlineid/internal/ApiRequest;

    move-result-object v0

    const/4 v1, 0x1

    .line 97
    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/ApiRequest;->setIsSdkRequest(Z)Lcom/microsoft/onlineid/internal/ApiRequest;

    move-result-object v0

    .line 98
    invoke-virtual {v0, v10}, Lcom/microsoft/onlineid/internal/ApiRequest;->setResultReceiver(Landroid/os/ResultReceiver;)Lcom/microsoft/onlineid/internal/ApiRequest;

    move-result-object v12

    .line 100
    .local v12, "ticketRequest":Lcom/microsoft/onlineid/internal/ApiRequest;
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetTicketOperation;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v12}, Lcom/microsoft/onlineid/internal/ApiRequest;->asIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 104
    :try_start_0
    invoke-virtual {v10}, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;->blockForResult()Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;

    move-result-object v11

    .line 106
    .local v11, "response":Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;, "Lcom/microsoft/onlineid/internal/sso/client/SsoResponse<Lcom/microsoft/onlineid/Ticket;>;"
    invoke-virtual {v11}, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;->hasData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {v11}, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/onlineid/Ticket;

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->ticketToBundle(Lcom/microsoft/onlineid/Ticket;)Landroid/os/Bundle;

    move-result-object v0

    .line 132
    .end local v11    # "response":Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;, "Lcom/microsoft/onlineid/internal/sso/client/SsoResponse<Lcom/microsoft/onlineid/Ticket;>;"
    :goto_0
    return-object v0

    .line 110
    .restart local v11    # "response":Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;, "Lcom/microsoft/onlineid/internal/sso/client/SsoResponse<Lcom/microsoft/onlineid/Ticket;>;"
    :cond_1
    invoke-virtual {v11}, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;->hasPendingIntent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    invoke-virtual {v11}, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->pendingIntentToBundle(Landroid/app/PendingIntent;)Landroid/os/Bundle;
    :try_end_0
    .catch Lcom/microsoft/onlineid/internal/exception/UserCancelledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 123
    .end local v11    # "response":Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;, "Lcom/microsoft/onlineid/internal/sso/client/SsoResponse<Lcom/microsoft/onlineid/Ticket;>;"
    :catch_0
    move-exception v8

    .line 127
    .local v8, "e":Lcom/microsoft/onlineid/internal/exception/UserCancelledException;
    const-string v0, "Unexpected UserCancelledException caught in GetTicketOperation."

    invoke-static {v14, v0}, Lcom/microsoft/onlineid/internal/Assertion;->check(ZLjava/lang/Object;)V

    .line 128
    invoke-static {v8}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->exceptionToBundle(Ljava/lang/Exception;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 130
    .end local v8    # "e":Lcom/microsoft/onlineid/internal/exception/UserCancelledException;
    :catch_1
    move-exception v8

    .line 132
    .local v8, "e":Ljava/lang/Exception;
    invoke-static {v8}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->exceptionToBundle(Ljava/lang/Exception;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 136
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v11    # "response":Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;, "Lcom/microsoft/onlineid/internal/sso/client/SsoResponse<Lcom/microsoft/onlineid/Ticket;>;"
    :cond_2
    const-string v9, "GetTicketOperation did not receive an expected result from MsaService."

    .line 137
    .local v9, "message":Ljava/lang/String;
    invoke-static {v14, v9}, Lcom/microsoft/onlineid/internal/Assertion;->check(ZLjava/lang/Object;)V

    .line 138
    new-instance v0, Lcom/microsoft/onlineid/exception/InternalException;

    invoke-direct {v0, v9}, Lcom/microsoft/onlineid/exception/InternalException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
