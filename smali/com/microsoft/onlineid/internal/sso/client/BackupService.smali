.class public Lcom/microsoft/onlineid/internal/sso/client/BackupService;
.super Landroid/app/IntentService;
.source "SourceFile"


# static fields
.field public static final ActionPushBackup:Ljava/lang/String; = "com.microsoft.onlineid.internal.sso.client.PUSH_BACKUP"

.field public static final ActionPushBackupIfNeeded:Ljava/lang/String; = "com.microsoft.onlineid.internal.sso.client.PUSH_BACKUP_IF_NEEDED"


# instance fields
.field private _applicationContext:Landroid/content/Context;

.field private _config:Lcom/microsoft/onlineid/sts/ServerConfig;

.field private _msaSsoClient:Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;

.field private _serviceFinder:Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;

.field private _storage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-class v0, Lcom/microsoft/onlineid/internal/sso/client/BackupService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static pushBackup(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/microsoft/onlineid/internal/sso/client/BackupService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.microsoft.onlineid.internal.sso.client.PUSH_BACKUP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static pushBackupIfNeeded(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/microsoft/onlineid/internal/sso/client/BackupService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.microsoft.onlineid.internal.sso.client.PUSH_BACKUP_IF_NEEDED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 3

    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/BackupService;->_applicationContext:Landroid/content/Context;

    new-instance v0, Lcom/microsoft/onlineid/sts/ServerConfig;

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/BackupService;->_applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/sts/ServerConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/BackupService;->_config:Lcom/microsoft/onlineid/sts/ServerConfig;

    new-instance v0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/BackupService;->_applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/BackupService;->_storage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    new-instance v0, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/BackupService;->_applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/BackupService;->_msaSsoClient:Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;

    new-instance v0, Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/BackupService;->_applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/BackupService;->_serviceFinder:Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;

    return-void
.end method

.method public onHandleIntent(Landroid/content/Intent;)V
    .registers 4

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.microsoft.onlineid.internal.sso.client.PUSH_BACKUP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/client/BackupService;->retrieveAndPushBackup()V

    return-void

    :cond_0
    const-string v0, "com.microsoft.onlineid.internal.sso.client.PUSH_BACKUP_IF_NEEDED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/client/BackupService;->retrieveAndPushBackupIfNeeded()V

    return-void

    :cond_1
    new-instance v0, Lcom/microsoft/onlineid/exception/InternalException;

    const-string v1, "Unknown action: "

    .line 1
    invoke-static {v1, p1}, La/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/exception/InternalException;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logException(Ljava/lang/Throwable;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    const-string p1, "Backup failed."

    invoke-static {p1, v0}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public retrieveAndPushBackup()V
    .registers 6

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/BackupService;->_serviceFinder:Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;->getOrderedSsoServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/BackupService;->_applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/microsoft/onlineid/internal/sso/SsoService;

    invoke-virtual {v3}, Lcom/microsoft/onlineid/internal/sso/SsoService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/onlineid/internal/sso/SsoService;

    invoke-virtual {p0, v1}, Lcom/microsoft/onlineid/internal/sso/client/BackupService;->retrieveBackup(Lcom/microsoft/onlineid/internal/sso/SsoService;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/microsoft/onlineid/internal/sso/client/BackupService;->_config:Lcom/microsoft/onlineid/sts/ServerConfig;

    sget-object v4, Lcom/microsoft/onlineid/sts/ServerConfig$Int;->BackupSlaveCount:Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    invoke-virtual {v3, v4}, Lcom/microsoft/onlineid/sts/ServerConfig;->getInt(Lcom/microsoft/onlineid/internal/configuration/ISetting;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x1

    :goto_0
    if-gt v3, v2, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/microsoft/onlineid/internal/sso/SsoService;

    invoke-virtual {p0, v4, v1}, Lcom/microsoft/onlineid/internal/sso/client/BackupService;->storeBackup(Lcom/microsoft/onlineid/internal/sso/SsoService;Landroid/os/Bundle;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/BackupService;->_storage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->writeLastBackupPushedTime()V

    :cond_1
    return-void
.end method

.method public retrieveAndPushBackupIfNeeded()V
    .registers 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/microsoft/onlineid/internal/sso/client/BackupService;->_storage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v2}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->readLastBackupPushedTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-object v2, p0, Lcom/microsoft/onlineid/internal/sso/client/BackupService;->_config:Lcom/microsoft/onlineid/sts/ServerConfig;

    sget-object v3, Lcom/microsoft/onlineid/sts/ServerConfig$Int;->MaxSecondsBetweenBackups:Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    invoke-virtual {v2, v3}, Lcom/microsoft/onlineid/sts/ServerConfig;->getInt(Lcom/microsoft/onlineid/internal/configuration/ISetting;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/client/BackupService;->retrieveAndPushBackup()V

    :cond_0
    return-void
.end method

.method public retrieveBackup(Lcom/microsoft/onlineid/internal/sso/SsoService;)Landroid/os/Bundle;
    .registers 4

    :try_start_0
    iget-object p1, p0, Lcom/microsoft/onlineid/internal/sso/client/BackupService;->_msaSsoClient:Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;

    new-instance v0, Lcom/microsoft/onlineid/internal/sso/client/request/RetrieveBackupRequest;

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/BackupService;->_applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/internal/sso/client/request/RetrieveBackupRequest;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->performRequestWithFallback(Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "Retrieve backup failed."

    invoke-static {v0, p1}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logException(Ljava/lang/Throwable;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    const/4 p1, 0x0

    return-object p1
.end method

.method public storeBackup(Lcom/microsoft/onlineid/internal/sso/SsoService;Landroid/os/Bundle;)V
    .registers 5

    :try_start_0
    new-instance v0, Lcom/microsoft/onlineid/internal/sso/client/request/StoreBackupRequest;

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/BackupService;->_applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/microsoft/onlineid/internal/sso/client/request/StoreBackupRequest;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->performRequest(Lcom/microsoft/onlineid/internal/sso/SsoService;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Store backup failed."

    invoke-static {p2, p1}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logException(Ljava/lang/Throwable;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    return-void
.end method
