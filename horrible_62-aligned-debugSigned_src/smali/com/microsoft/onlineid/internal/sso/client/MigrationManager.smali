.class public Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final InitialSdkVersion:Ljava/lang/String; = "0"


# instance fields
.field private final _appSdkVersion:Ljava/lang/String;

.field private final _applicationContext:Landroid/content/Context;

.field private final _serviceFinder:Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;

.field private _ssoServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/microsoft/onlineid/internal/sso/SsoService;",
            ">;"
        }
    .end annotation
.end field

.field private final _typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->_applicationContext:Landroid/content/Context;

    new-instance v0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    new-instance v0, Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->_serviceFinder:Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;

    invoke-static {p1}, Lcom/microsoft/onlineid/internal/Resources;->getSdkVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->_appSdkVersion:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createRetrieveBackupRequest(Landroid/content/Context;)Lcom/microsoft/onlineid/internal/sso/client/request/RetrieveBackupRequest;
    .registers 3

    new-instance v0, Lcom/microsoft/onlineid/internal/sso/client/request/RetrieveBackupRequest;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/internal/sso/client/request/RetrieveBackupRequest;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public migrateAndUpgradeStorageIfNeeded()V
    .registers 4

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->readSdkVersion()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->writeSdkVersion(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->_serviceFinder:Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;->getOrderedSsoServices()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->_ssoServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->migrateStorage()V

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->_appSdkVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->_appSdkVersion:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->upgradeStorage(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->_appSdkVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->writeSdkVersion(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public migrateStorage()V
    .registers 8

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->_applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->_ssoServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/microsoft/onlineid/internal/sso/SsoService;

    invoke-virtual {v3}, Lcom/microsoft/onlineid/internal/sso/SsoService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    :try_start_0
    iget-object v5, p0, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->_applicationContext:Landroid/content/Context;

    invoke-virtual {p0, v5}, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->createRetrieveBackupRequest(Landroid/content/Context;)Lcom/microsoft/onlineid/internal/sso/client/request/RetrieveBackupRequest;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->performRequest(Lcom/microsoft/onlineid/internal/sso/SsoService;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v5, v3}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->storeBackup(Landroid/os/Bundle;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " migrated backup data from "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Encountered an error attempting to migrate storage from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logException(Ljava/lang/Throwable;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Migration and Upgrade"

    const-string v3, "Migration attempts"

    invoke-interface {v0, v2, v3, v1}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    return-void
.end method

.method public upgradeStorage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method
