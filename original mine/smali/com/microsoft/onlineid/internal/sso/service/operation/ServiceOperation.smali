.class public abstract Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;
.super Ljava/lang/Object;
.source "ServiceOperation.java"


# instance fields
.field private final _accountManager:Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

.field private final _applicationContext:Landroid/content/Context;

.field private final _parameters:Landroid/os/Bundle;

.field private final _ticketManager:Lcom/microsoft/onlineid/internal/sts/TicketManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;Lcom/microsoft/onlineid/internal/sts/TicketManager;)V
    .registers 5
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "parameters"    # Landroid/os/Bundle;
    .param p3, "accountManager"    # Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;
    .param p4, "ticketManager"    # Lcom/microsoft/onlineid/internal/sts/TicketManager;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->_applicationContext:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->_parameters:Landroid/os/Bundle;

    .line 54
    iput-object p3, p0, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->_accountManager:Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    .line 55
    iput-object p4, p0, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->_ticketManager:Lcom/microsoft/onlineid/internal/sts/TicketManager;

    .line 56
    return-void
.end method


# virtual methods
.method public abstract call()Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/internal/exception/AccountNotFoundException;,
            Lcom/microsoft/onlineid/sts/exception/InvalidResponseException;,
            Lcom/microsoft/onlineid/exception/NetworkException;,
            Lcom/microsoft/onlineid/sts/exception/StsException;,
            Lcom/microsoft/onlineid/exception/InternalException;
        }
    .end annotation
.end method

.method protected getAccountManager()Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->_accountManager:Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    return-object v0
.end method

.method public getCallerConfigLastDownloadedTime()J
    .registers 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->_parameters:Landroid/os/Bundle;

    const-string v1, "com.microsoft.onlineid.client_config_last_downloaded_time"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCallerConfigVersion()Ljava/lang/String;
    .registers 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->_parameters:Landroid/os/Bundle;

    const-string v1, "com.microsoft.onlineid.client_config_version"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallerSdkVersion()Ljava/lang/String;
    .registers 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->_parameters:Landroid/os/Bundle;

    const-string v1, "com.microsoft.onlineid.client_sdk_version"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallerSsoVersion()I
    .registers 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->_parameters:Landroid/os/Bundle;

    const-string v1, "com.microsoft.onlineid.client_sso_version"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCallerStateBundle()Landroid/os/Bundle;
    .registers 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->_parameters:Landroid/os/Bundle;

    const-string v1, "com.microsoft.onlineid.client_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getCallingPackage()Ljava/lang/String;
    .registers 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->_parameters:Landroid/os/Bundle;

    const-string v1, "com.microsoft.onlineid.client_package_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->_applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public getParameters()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->_parameters:Landroid/os/Bundle;

    return-object v0
.end method

.method protected getPendingIntentBuilder(Landroid/content/Intent;)Lcom/microsoft/onlineid/internal/PendingIntentBuilder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 178
    new-instance v0, Lcom/microsoft/onlineid/internal/PendingIntentBuilder;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/internal/PendingIntentBuilder;-><init>(Landroid/content/Intent;)V

    return-object v0
.end method

.method protected getTicketManager()Lcom/microsoft/onlineid/internal/sts/TicketManager;
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->_ticketManager:Lcom/microsoft/onlineid/internal/sts/TicketManager;

    return-object v0
.end method

.method public verifyStandardArguments()V
    .registers 3

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Package name"

    invoke-static {v0, v1}, Lcom/microsoft/onlineid/internal/Strings;->verifyArgumentNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->getCallerSdkVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDK version"

    invoke-static {v0, v1}, Lcom/microsoft/onlineid/internal/Strings;->verifyArgumentNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->getCallerConfigVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Config version"

    invoke-static {v0, v1}, Lcom/microsoft/onlineid/internal/Strings;->verifyArgumentNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->getCallerSsoVersion()I

    move-result v0

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SSO version must not be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    return-void
.end method
