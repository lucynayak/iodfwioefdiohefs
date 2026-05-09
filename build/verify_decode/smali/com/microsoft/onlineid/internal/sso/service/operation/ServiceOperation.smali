.class public abstract Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final _accountManager:Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

.field private final _applicationContext:Landroid/content/Context;

.field private final _parameters:Landroid/os/Bundle;

.field private final _ticketManager:Lcom/microsoft/onlineid/internal/sts/TicketManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;Lcom/microsoft/onlineid/internal/sts/TicketManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->_applicationContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->_parameters:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->_accountManager:Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    iput-object p4, p0, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->_ticketManager:Lcom/microsoft/onlineid/internal/sts/TicketManager;

    return-void
.end method


# virtual methods
.method public abstract call()Landroid/os/Bundle;
.end method

.method public getAccountManager()Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->_accountManager:Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    return-object v0
.end method

.method public getCallerConfigLastDownloadedTime()J
    .locals 2

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->_parameters:Landroid/os/Bundle;

    const-string v1, "com.microsoft.onlineid.client_config_last_downloaded_time"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCallerConfigVersion()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->_parameters:Landroid/os/Bundle;

    const-string v1, "com.microsoft.onlineid.client_config_version"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallerSdkVersion()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->_parameters:Landroid/os/Bundle;

    const-string v1, "com.microsoft.onlineid.client_sdk_version"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallerSsoVersion()I
    .locals 2

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->_parameters:Landroid/os/Bundle;

    const-string v1, "com.microsoft.onlineid.client_sso_version"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCallerStateBundle()Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->_parameters:Landroid/os/Bundle;

    const-string v1, "com.microsoft.onlineid.client_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getCallingPackage()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->_parameters:Landroid/os/Bundle;

    const-string v1, "com.microsoft.onlineid.client_package_name"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->_applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public getParameters()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->_parameters:Landroid/os/Bundle;

    return-object v0
.end method

.method public getPendingIntentBuilder(Landroid/content/Intent;)Lcom/microsoft/onlineid/internal/PendingIntentBuilder;
    .locals 1

    new-instance v0, Lcom/microsoft/onlineid/internal/PendingIntentBuilder;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/internal/PendingIntentBuilder;-><init>(Landroid/content/Intent;)V

    return-object v0
.end method

.method public getTicketManager()Lcom/microsoft/onlineid/internal/sts/TicketManager;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->_ticketManager:Lcom/microsoft/onlineid/internal/sts/TicketManager;

    return-object v0
.end method

.method public verifyStandardArguments()V
    .locals 2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Package name"

    invoke-static {v0, v1}, Lcom/microsoft/onlineid/internal/Strings;->verifyArgumentNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->getCallerSdkVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDK version"

    invoke-static {v0, v1}, Lcom/microsoft/onlineid/internal/Strings;->verifyArgumentNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->getCallerConfigVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Config version"

    invoke-static {v0, v1}, Lcom/microsoft/onlineid/internal/Strings;->verifyArgumentNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->getCallerSsoVersion()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SSO version must not be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
