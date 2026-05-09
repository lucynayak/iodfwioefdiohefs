.class public Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final _applicationContext:Landroid/content/Context;

.field private final _config:Lcom/microsoft/onlineid/sts/ServerConfig;

.field private final _configManager:Lcom/microsoft/onlineid/sts/ConfigManager;

.field private final _migrationManager:Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;

.field private final _serviceFinder:Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->_applicationContext:Landroid/content/Context;

    new-instance v0, Lcom/microsoft/onlineid/sts/ServerConfig;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/sts/ServerConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->_config:Lcom/microsoft/onlineid/sts/ServerConfig;

    new-instance v0, Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->_serviceFinder:Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;

    new-instance v0, Lcom/microsoft/onlineid/sts/ConfigManager;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/sts/ConfigManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->_configManager:Lcom/microsoft/onlineid/sts/ConfigManager;

    new-instance v0, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->_migrationManager:Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;

    return-void
.end method

.method private performRequestWithSelf(Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "Attempting to self-service request."

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->_serviceFinder:Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;->getSelfSsoService()Lcom/microsoft/onlineid/internal/sso/SsoService;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->performRequest(Lcom/microsoft/onlineid/internal/sso/SsoService;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getAccount(Lcom/microsoft/onlineid/OnlineIdConfiguration;Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/onlineid/OnlineIdConfiguration;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/microsoft/onlineid/internal/sso/client/SsoResponse<",
            "Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/microsoft/onlineid/internal/sso/client/request/GetAccountRequest;

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->_applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2, p1}, Lcom/microsoft/onlineid/internal/sso/client/request/GetAccountRequest;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/microsoft/onlineid/OnlineIdConfiguration;)V

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->performRequestWithFallback(Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;

    return-object p1
.end method

.method public getAccountById(Ljava/lang/String;Landroid/os/Bundle;)Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    .locals 2

    new-instance v0, Lcom/microsoft/onlineid/internal/sso/client/request/GetAccountByIdRequest;

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->_applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2, p1}, Lcom/microsoft/onlineid/internal/sso/client/request/GetAccountByIdRequest;-><init>(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->performRequestWithFallback(Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    return-object p1
.end method

.method public getAccountPickerIntent(Ljava/util/ArrayList;Lcom/microsoft/onlineid/OnlineIdConfiguration;Landroid/os/Bundle;)Landroid/app/PendingIntent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/microsoft/onlineid/OnlineIdConfiguration;",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    new-instance v0, Lcom/microsoft/onlineid/internal/sso/client/request/GetAccountPickerIntentRequest;

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->_applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1, p3, p1, p2}, Lcom/microsoft/onlineid/internal/sso/client/request/GetAccountPickerIntentRequest;-><init>(Landroid/content/Context;Landroid/os/Bundle;Ljava/util/ArrayList;Lcom/microsoft/onlineid/OnlineIdConfiguration;)V

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->performRequestWithFallback(Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    return-object p1
.end method

.method public getAllAccounts(Landroid/os/Bundle;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Set<",
            "Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/microsoft/onlineid/internal/sso/client/request/GetAllAccountsRequest;

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->_applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/microsoft/onlineid/internal/sso/client/request/GetAllAccountsRequest;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->performRequestWithFallback(Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    return-object p1
.end method

.method public getSignInIntent(Lcom/microsoft/onlineid/SignInOptions;Lcom/microsoft/onlineid/OnlineIdConfiguration;Landroid/os/Bundle;)Landroid/app/PendingIntent;
    .locals 2

    new-instance v0, Lcom/microsoft/onlineid/internal/sso/client/request/GetSignInIntentRequest;

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->_applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1, p3, p1, p2}, Lcom/microsoft/onlineid/internal/sso/client/request/GetSignInIntentRequest;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/microsoft/onlineid/SignInOptions;Lcom/microsoft/onlineid/OnlineIdConfiguration;)V

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->performRequestWithFallback(Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    return-object p1
.end method

.method public getSignOutIntent(Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/PendingIntent;
    .locals 2

    new-instance v0, Lcom/microsoft/onlineid/internal/sso/client/request/GetSignOutIntentRequest;

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->_applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2, p1}, Lcom/microsoft/onlineid/internal/sso/client/request/GetSignOutIntentRequest;-><init>(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->performRequestWithFallback(Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    return-object p1
.end method

.method public getSignUpIntent(Lcom/microsoft/onlineid/SignUpOptions;Lcom/microsoft/onlineid/OnlineIdConfiguration;Landroid/os/Bundle;)Landroid/app/PendingIntent;
    .locals 2

    new-instance v0, Lcom/microsoft/onlineid/internal/sso/client/request/GetSignUpIntentRequest;

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->_applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1, p3, p1, p2}, Lcom/microsoft/onlineid/internal/sso/client/request/GetSignUpIntentRequest;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/microsoft/onlineid/SignUpOptions;Lcom/microsoft/onlineid/OnlineIdConfiguration;)V

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->performRequestWithFallback(Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    return-object p1
.end method

.method public getTicket(Ljava/lang/String;Lcom/microsoft/onlineid/ISecurityScope;Lcom/microsoft/onlineid/OnlineIdConfiguration;Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/microsoft/onlineid/ISecurityScope;",
            "Lcom/microsoft/onlineid/OnlineIdConfiguration;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/microsoft/onlineid/internal/sso/client/SsoResponse<",
            "Lcom/microsoft/onlineid/Ticket;",
            ">;"
        }
    .end annotation

    new-instance v6, Lcom/microsoft/onlineid/internal/sso/client/request/GetTicketRequest;

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->_applicationContext:Landroid/content/Context;

    move-object v0, v6

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/onlineid/internal/sso/client/request/GetTicketRequest;-><init>(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Lcom/microsoft/onlineid/ISecurityScope;Lcom/microsoft/onlineid/OnlineIdConfiguration;)V

    invoke-virtual {p0, v6}, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->performRequestWithFallback(Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;

    return-object p1
.end method

.method public performRequestWithFallback(Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->_configManager:Lcom/microsoft/onlineid/sts/ConfigManager;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/ConfigManager;->updateIfFirstDownloadNeeded()Z

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->_migrationManager:Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->migrateAndUpgradeStorageIfNeeded()V

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->_config:Lcom/microsoft/onlineid/sts/ServerConfig;

    sget-object v1, Lcom/microsoft/onlineid/sts/ServerConfig$Int;->MaxTriesForSsoRequestWithFallback:Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/sts/ServerConfig;->getInt(Lcom/microsoft/onlineid/internal/configuration/ISetting;)I

    move-result v0

    const-string v1, "SSO fallback"

    const-string v2, "SDK"

    const/4 v3, 0x1

    if-ge v0, v3, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid MaxTriesForSsoRequestWithFallback: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;)V

    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v4

    invoke-interface {v4, v2, v1, v0}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    const/4 v0, 0x1

    :cond_0
    iget-object v4, p0, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->_serviceFinder:Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;

    invoke-virtual {v4}, Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;->getOrderedSsoServices()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/microsoft/onlineid/internal/sso/SsoService;

    goto :goto_0

    :cond_1
    move-object v5, v6

    :goto_0
    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1
    if-ge v8, v0, :cond_7

    if-eqz v5, :cond_7

    :try_start_0
    invoke-virtual {p1, v5}, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->performRequest(Lcom/microsoft/onlineid/internal/sso/SsoService;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lcom/microsoft/onlineid/internal/sso/MasterRedirectException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/microsoft/onlineid/internal/sso/client/ServiceBindingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/microsoft/onlineid/internal/sso/exception/ClientNotAuthorizedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/microsoft/onlineid/internal/sso/exception/UnsupportedClientVersionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/microsoft/onlineid/internal/sso/client/ClientConfigUpdateNeededException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v10

    const-string v11, "Client needs config update: "

    .line 1
    invoke-static {v11}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2
    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->_configManager:Lcom/microsoft/onlineid/sts/ConfigManager;

    invoke-virtual {v10}, Lcom/microsoft/onlineid/sts/ConfigManager;->update()Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v4, p0, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->_serviceFinder:Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;

    invoke-virtual {v4}, Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;->getOrderedSsoServices()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/microsoft/onlineid/internal/sso/SsoService;

    goto :goto_2

    :cond_2
    move-object v5, v6

    :goto_2
    if-nez v9, :cond_3

    add-int/lit8 v8, v8, -0x1

    :cond_3
    const/4 v9, 0x1

    goto :goto_4

    :catch_1
    invoke-direct {p0, p1}, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->performRequestWithSelf(Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_2
    invoke-direct {p0, p1}, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->performRequestWithSelf(Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_3

    :catch_4
    move-exception v5

    invoke-virtual {v5}, Lcom/microsoft/onlineid/internal/sso/MasterRedirectException;->getRedirectRequestTo()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Redirect to: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v5}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v12

    invoke-interface {v12, v2, v1, v11}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    iget-object v11, p0, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->_serviceFinder:Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;

    invoke-virtual {v11, v10}, Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;->getSsoService(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/sso/SsoService;

    move-result-object v10

    if-nez v10, :cond_5

    const-string v10, "Cannot find redirected master"

    invoke-static {v10, v5}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v5

    invoke-interface {v5, v2, v1, v10}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/microsoft/onlineid/internal/sso/SsoService;

    goto :goto_4

    :cond_4
    move-object v5, v6

    goto :goto_4

    :cond_5
    move-object v5, v10

    :cond_6
    :goto_4
    add-int/2addr v8, v3

    goto/16 :goto_1

    :cond_7
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const-string v4, "SSO request failed after %d tries"

    invoke-static {v0, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;)V

    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v3

    invoke-interface {v3, v2, v1, v0}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    invoke-direct {p0, p1}, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->performRequestWithSelf(Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
