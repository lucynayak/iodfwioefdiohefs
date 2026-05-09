.class public Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;
.super Ljava/lang/Object;
.source "MigrationManager.java"


# static fields
.field public static final InitialSdkVersion:Ljava/lang/String; = "0"


# instance fields
.field private final _appSdkVersion:Ljava/lang/String;

.field private final _applicationContext:Landroid/content/Context;

.field private final _serviceFinder:Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;

.field private _ssoServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/microsoft/onlineid/internal/sso/SsoService;",
            ">;"
        }
    .end annotation
.end field

.field private final _typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->_applicationContext:Landroid/content/Context;

    .line 41
    new-instance v0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    .line 42
    new-instance v0, Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->_serviceFinder:Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;

    .line 43
    invoke-static {p1}, Lcom/microsoft/onlineid/internal/Resources;->getSdkVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->_appSdkVersion:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method protected createRetrieveBackupRequest(Landroid/content/Context;)Lcom/microsoft/onlineid/internal/sso/client/request/RetrieveBackupRequest;
    .registers 3
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 144
    new-instance v0, Lcom/microsoft/onlineid/internal/sso/client/request/RetrieveBackupRequest;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/internal/sso/client/request/RetrieveBackupRequest;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public migrateAndUpgradeStorageIfNeeded()V
    .registers 4

    .prologue
    .line 56
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->readSdkVersion()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "storageSdkVersion":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 65
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->writeSdkVersion(Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->_serviceFinder:Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;->getOrderedSsoServices()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->_ssoServices:Ljava/util/List;

    .line 67
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->_ssoServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->migrateStorage()V

    .line 74
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->_appSdkVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 76
    :cond_1
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->_appSdkVersion:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->upgradeStorage(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    iget-object v2, p0, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->_appSdkVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->writeSdkVersion(Ljava/lang/String;)V

    .line 81
    :cond_2
    return-void
.end method

.method protected migrateStorage()V
    .registers 11

    .prologue
    .line 88
    iget-object v6, p0, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->_applicationContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 89
    .local v5, "thisAppPackageName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 90
    .local v2, "migrationAttempts":I
    iget-object v6, p0, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->_ssoServices:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/microsoft/onlineid/internal/sso/SsoService;

    .line 92
    .local v3, "ssoService":Lcom/microsoft/onlineid/internal/sso/SsoService;
    invoke-virtual {v3}, Lcom/microsoft/onlineid/internal/sso/SsoService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 93
    .local v4, "ssoServicePackageName":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 97
    add-int/lit8 v2, v2, 0x1

    .line 98
    :try_start_0
    iget-object v7, p0, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->_applicationContext:Landroid/content/Context;

    invoke-virtual {p0, v7}, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->createRetrieveBackupRequest(Landroid/content/Context;)Lcom/microsoft/onlineid/internal/sso/client/request/RetrieveBackupRequest;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/microsoft/onlineid/internal/sso/client/request/RetrieveBackupRequest;->performRequest(Lcom/microsoft/onlineid/internal/sso/SsoService;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 100
    .local v0, "backup":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 102
    iget-object v7, p0, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v7, v0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->storeBackup(Landroid/os/Bundle;)V

    .line 103
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " migrated backup data from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .end local v0    # "backup":Landroid/os/Bundle;
    .end local v3    # "ssoService":Lcom/microsoft/onlineid/internal/sso/SsoService;
    .end local v4    # "ssoServicePackageName":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v6

    const-string v7, "Migration and Upgrade"

    const-string v8, "Migration attempts"

    .line 121
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 118
    invoke-interface {v6, v7, v8, v9}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    .line 122
    return-void

    .line 107
    .restart local v3    # "ssoService":Lcom/microsoft/onlineid/internal/sso/SsoService;
    .restart local v4    # "ssoServicePackageName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 111
    .local v1, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Encountered an error attempting to migrate storage from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v1}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v7

    invoke-interface {v7, v1}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logException(Ljava/lang/Throwable;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    goto :goto_0
.end method

.method protected upgradeStorage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "oldVersion"    # Ljava/lang/String;
    .param p2, "newVersion"    # Ljava/lang/String;

    .prologue
    .line 133
    return-void
.end method
