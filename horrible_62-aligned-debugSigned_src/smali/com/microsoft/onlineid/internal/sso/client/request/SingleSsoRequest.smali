.class public abstract Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/content/ServiceConnection;"
    }
.end annotation


# static fields
.field public static final MaxTriesErrorMessage:Ljava/lang/String; = "Max SSO tries exceeded."

.field public static final MaxWaitTimeForServiceBindingInMillis:I = 0xbb8


# instance fields
.field public final _applicationContext:Landroid/content/Context;

.field public final _clientState:Landroid/os/Bundle;

.field public final _config:Lcom/microsoft/onlineid/sts/ServerConfig;

.field private final _lock:Ljava/lang/Object;

.field public _msaSsoService:Lcom/microsoft/onlineid/internal/sso/service/IMsaSsoService;

.field public _serviceConnected:Z

.field public final _storage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->_lock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->_applicationContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->_clientState:Landroid/os/Bundle;

    new-instance p2, Lcom/microsoft/onlineid/sts/ServerConfig;

    invoke-direct {p2, p1}, Lcom/microsoft/onlineid/sts/ServerConfig;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->_config:Lcom/microsoft/onlineid/sts/ServerConfig;

    new-instance p2, Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-direct {p2, p1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->_storage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->_msaSsoService:Lcom/microsoft/onlineid/internal/sso/service/IMsaSsoService;

    return-void
.end method

.method public static checkForErrors(Landroid/os/Bundle;)V
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->checkForErrors(Landroid/os/Bundle;Z)V

    return-void
.end method

.method public static checkForErrors(Landroid/os/Bundle;Z)V
    .registers 8

    invoke-static {p0}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->hasError(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const-string p1, "com.microsoft.onlineid.error_code"

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->get(I)Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    move-result-object p1

    const-string v0, "com.microsoft.onlineid.error_message"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "SSO error"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const-string v3, "%s: %s, %s"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;)V

    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SDK"

    invoke-interface {v1, v0, v4, p1}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    :cond_0
    invoke-static {p0}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->exceptionFromBundle(Landroid/os/Bundle;)Lcom/microsoft/onlineid/exception/AuthenticationException;

    move-result-object p0

    throw p0

    :cond_1
    return-void
.end method


# virtual methods
.method public bind(Lcom/microsoft/onlineid/internal/sso/SsoService;)Z
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.microsoft.msa.action.SSO_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/sso/SsoService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->_applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " attempting to bind to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/sso/SsoService;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->_applicationContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    return p1
.end method

.method public getDefaultCallingParams()Landroid/os/Bundle;
    .registers 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->_applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->_applicationContext:Landroid/content/Context;

    const-class v4, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.microsoft.onlineid.client_package_name"

    iget-object v3, p0, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->_applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "com.microsoft.onlineid.client_sso_version"

    const-string v3, "com.microsoft.msa.service.sso_version"

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "com.microsoft.onlineid.client_sdk_version"

    const-string v3, "com.microsoft.msa.service.sdk_version"

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.microsoft.onlineid.client_config_version"

    iget-object v2, p0, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->_config:Lcom/microsoft/onlineid/sts/ServerConfig;

    sget-object v3, Lcom/microsoft/onlineid/sts/ServerConfig;->Version:Lcom/microsoft/onlineid/internal/configuration/Setting;

    invoke-virtual {v2, v3}, Lcom/microsoft/onlineid/sts/ServerConfig;->getString(Lcom/microsoft/onlineid/internal/configuration/ISetting;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.microsoft.onlineid.client_config_last_downloaded_time"

    iget-object v2, p0, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->_storage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v2}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->readConfigLastDownloadedTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "com.microsoft.onlineid.client_state"

    iget-object v2, p0, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->_clientState:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "Could not find calling SSO service meta-data."

    invoke-static {v2, v1}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public getIsServiceConnected()Z
    .registers 2

    iget-boolean v0, p0, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->_serviceConnected:Z

    return v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    invoke-static {p2}, Lcom/microsoft/onlineid/internal/sso/service/IMsaSsoService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/microsoft/onlineid/internal/sso/service/IMsaSsoService;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->_msaSsoService:Lcom/microsoft/onlineid/internal/sso/service/IMsaSsoService;

    iget-object p1, p0, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->_lock:Ljava/lang/Object;

    monitor-enter p1

    const/4 p2, 0x1

    :try_start_0
    iput-boolean p2, p0, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->_serviceConnected:Z

    iget-object p2, p0, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->_lock:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->_msaSsoService:Lcom/microsoft/onlineid/internal/sso/service/IMsaSsoService;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->_serviceConnected:Z

    return-void
.end method

.method public performRequest(Lcom/microsoft/onlineid/internal/sso/SsoService;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/onlineid/internal/sso/SsoService;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->_config:Lcom/microsoft/onlineid/sts/ServerConfig;

    sget-object v1, Lcom/microsoft/onlineid/sts/ServerConfig$Int;->MaxTriesForSsoRequestToSingleService:Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/sts/ServerConfig;->getInt(Lcom/microsoft/onlineid/internal/configuration/ISetting;)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid MaxTriesForSsoRequestToSingleService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;)V

    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v2

    const-string v3, "SDK"

    const-string v4, "SSO fallback"

    invoke-interface {v2, v3, v4, v0}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    const/4 v0, 0x1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-gt v1, v0, :cond_1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->tryPerformRequest(Lcom/microsoft/onlineid/internal/sso/SsoService;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lcom/microsoft/onlineid/internal/sso/client/ServiceBindingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/microsoft/onlineid/internal/sso/client/ServiceBindingException;

    const-string v0, "Max SSO tries exceeded."

    invoke-direct {p1, v0, v2}, Lcom/microsoft/onlineid/internal/sso/client/ServiceBindingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public abstract performRequestTask()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public tryPerformRequest(Lcom/microsoft/onlineid/internal/sso/SsoService;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/onlineid/internal/sso/SsoService;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->bind(Lcom/microsoft/onlineid/internal/sso/SsoService;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->_lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Lcom/microsoft/onlineid/exception/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v2, p0, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->_serviceConnected:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->_lock:Ljava/lang/Object;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V

    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-boolean v1, p0, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->_serviceConnected:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bound to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/sso/SsoService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->performRequestTask()Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Lcom/microsoft/onlineid/exception/AuthenticationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->unbind()V

    return-object p1

    :cond_1
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timed out after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xbb8

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " milliseconds when trying to bind to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/sso/SsoService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;)V

    new-instance v2, Lcom/microsoft/onlineid/internal/sso/client/ServiceBindingException;

    invoke-direct {v2, v1}, Lcom/microsoft/onlineid/internal/sso/client/ServiceBindingException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catch Lcom/microsoft/onlineid/exception/AuthenticationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to bind to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/sso/SsoService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;)V

    new-instance v2, Lcom/microsoft/onlineid/internal/sso/client/ServiceBindingException;

    invoke-direct {v2, v1}, Lcom/microsoft/onlineid/internal/sso/client/ServiceBindingException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catch Lcom/microsoft/onlineid/exception/AuthenticationException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_6
    const-string v1, "SSO service request threw an unhandled exception."

    invoke-static {v1, p1}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Lcom/microsoft/onlineid/exception/InternalException;

    invoke-direct {v1, p1}, Lcom/microsoft/onlineid/exception/InternalException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught a SecurityException while trying to bind to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/sso/SsoService;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", service may not be exported correctly."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ["

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Lcom/microsoft/onlineid/internal/sso/client/ServiceBindingException;

    invoke-direct {p1, v1}, Lcom/microsoft/onlineid/internal/sso/client/ServiceBindingException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p1

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->unbind()V

    :cond_3
    throw p1
.end method

.method public unbind()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->_serviceConnected:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->_msaSsoService:Lcom/microsoft/onlineid/internal/sso/service/IMsaSsoService;

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->_applicationContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method
