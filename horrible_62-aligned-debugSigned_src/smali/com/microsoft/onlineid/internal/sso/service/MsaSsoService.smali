.class public Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private _accountManager:Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

.field private final _binder:Lcom/microsoft/onlineid/internal/sso/service/IMsaSsoService$Stub;

.field private _configManager:Lcom/microsoft/onlineid/sts/ConfigManager;

.field private _migrationManager:Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;

.field private _signatureVerifier:Lcom/microsoft/onlineid/internal/sso/SignatureVerifier;

.field private _ticketManager:Lcom/microsoft/onlineid/internal/sts/TicketManager;

.field private _typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;

    invoke-direct {v0, p0}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;-><init>(Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->_binder:Lcom/microsoft/onlineid/internal/sso/service/IMsaSsoService$Stub;

    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;)Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;
    .registers 1

    iget-object p0, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->_accountManager:Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;)Lcom/microsoft/onlineid/internal/sts/TicketManager;
    .registers 1

    iget-object p0, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->_ticketManager:Lcom/microsoft/onlineid/internal/sts/TicketManager;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;)Lcom/microsoft/onlineid/internal/storage/TypedStorage;
    .registers 1

    iget-object p0, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    return-object p0
.end method


# virtual methods
.method public handleIncomingRequest(Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;)Landroid/os/Bundle;
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->_configManager:Lcom/microsoft/onlineid/sts/ConfigManager;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/ConfigManager;->updateIfFirstDownloadNeeded()Z

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->_migrationManager:Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->migrateAndUpgradeStorageIfNeeded()V

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->verifyStandardArguments()V

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->getCallerSsoVersion()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    sget-object p1, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->UnsupportedClientVersion:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    const-string v0, "Invalid SSO version."

    invoke-static {p1, v0}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->errorToBundle(Lcom/microsoft/onlineid/internal/sso/SsoServiceError;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->_signatureVerifier:Lcom/microsoft/onlineid/internal/sso/SignatureVerifier;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/microsoft/onlineid/internal/sso/SignatureVerifier;->isPackageInUid(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object p1, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->ClientNotAuthorized:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    const-string v0, "Invalid caller package name."

    invoke-static {p1, v0}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->errorToBundle(Lcom/microsoft/onlineid/internal/sso/SsoServiceError;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->getCallerConfigVersion()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->_configManager:Lcom/microsoft/onlineid/sts/ConfigManager;

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->getCallerConfigLastDownloadedTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/microsoft/onlineid/sts/ConfigManager;->hasConfigBeenUpdatedRecently(J)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->_configManager:Lcom/microsoft/onlineid/sts/ConfigManager;

    invoke-virtual {v2, v1}, Lcom/microsoft/onlineid/sts/ConfigManager;->isClientConfigVersionOlder(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object p1, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->ClientConfigUpdateNeededException:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The caller must update config to version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->_configManager:Lcom/microsoft/onlineid/sts/ConfigManager;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/ConfigManager;->getCurrentConfigVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->errorToBundle(Lcom/microsoft/onlineid/internal/sso/SsoServiceError;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v2, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->_configManager:Lcom/microsoft/onlineid/sts/ConfigManager;

    invoke-virtual {v2, v1}, Lcom/microsoft/onlineid/sts/ConfigManager;->updateIfNeeded(Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->_signatureVerifier:Lcom/microsoft/onlineid/internal/sso/SignatureVerifier;

    invoke-virtual {v1, v0}, Lcom/microsoft/onlineid/internal/sso/SignatureVerifier;->isTrusted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object p1, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->ClientNotAuthorized:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    const-string v0, "The caller is not authorized to invoke this service."

    invoke-static {p1, v0}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->errorToBundle(Lcom/microsoft/onlineid/internal/sso/SsoServiceError;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->call()Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "SSO Service caught exception"

    invoke-static {v0, p1}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p1}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->exceptionToBundle(Ljava/lang/Exception;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    iget-object p1, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->_binder:Lcom/microsoft/onlineid/internal/sso/service/IMsaSsoService$Stub;

    return-object p1
.end method

.method public onCreate()V
    .registers 3

    new-instance v0, Lcom/microsoft/onlineid/internal/sso/SignatureVerifier;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/internal/sso/SignatureVerifier;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->_signatureVerifier:Lcom/microsoft/onlineid/internal/sso/SignatureVerifier;

    new-instance v0, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->_accountManager:Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    new-instance v0, Lcom/microsoft/onlineid/internal/sts/TicketManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/internal/sts/TicketManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->_ticketManager:Lcom/microsoft/onlineid/internal/sts/TicketManager;

    new-instance v0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    new-instance v0, Lcom/microsoft/onlineid/sts/ConfigManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/sts/ConfigManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->_configManager:Lcom/microsoft/onlineid/sts/ConfigManager;

    new-instance v0, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->_migrationManager:Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;

    return-void
.end method
