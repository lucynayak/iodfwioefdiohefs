.class public Lcom/microsoft/onlineid/internal/configuration/Settings;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AreTestHooksEnabled:Ljava/lang/String; = "areTestHooksEnabled"

.field public static final HasUnlockProcedureCheckRun:Ljava/lang/String; = "hasUnlockProcedureCheckRun"

.field private static Instance:Lcom/microsoft/onlineid/internal/configuration/Settings; = null

.field public static final IsCertificateTelemetryNeeded:Ljava/lang/String; = "isCertificateTelemetryNeeded"

.field public static final IsLoggingEnabled:Ljava/lang/String; = "isLoggingEnabled"

.field public static final IsPseudoLocBuild:Ljava/lang/String; = "isPseudoLocBuild"

.field public static final IsRedactionEnabled:Ljava/lang/String; = "isRedactionEnabled"

.field public static final ShouldCheckSsoCertificatesInDebug:Ljava/lang/String; = "shouldCheckSsoCertificatesInDebug"

.field public static final ShowMockNotifications:Ljava/lang/String; = "showMockNotifications"

.field public static final ShowMockNotificationsCompactStyle:Ljava/lang/String; = "showMockNotificationsCompactStyle"

.field private static final StorageFile:Ljava/lang/String; = "settings"


# instance fields
.field private _defaultSettingsMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _storage:Lcom/microsoft/onlineid/internal/storage/Storage;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/configuration/Settings;->_defaultSettingsMap:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Lcom/microsoft/onlineid/internal/storage/Storage;

    const-string v1, "settings"

    invoke-direct {v0, p1, v1}, Lcom/microsoft/onlineid/internal/storage/Storage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/configuration/Settings;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    iget-object p1, p0, Lcom/microsoft/onlineid/internal/configuration/Settings;->_defaultSettingsMap:Ljava/util/concurrent/ConcurrentMap;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "areTestHooksEnabled"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/microsoft/onlineid/internal/configuration/Settings;->_defaultSettingsMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "isPseudoLocBuild"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/microsoft/onlineid/internal/configuration/Settings;->_defaultSettingsMap:Ljava/util/concurrent/ConcurrentMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "isLoggingEnabled"

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/microsoft/onlineid/internal/configuration/Settings;->_defaultSettingsMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "isRedactionEnabled"

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/microsoft/onlineid/internal/configuration/Settings;->_defaultSettingsMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "hasUnlockProcedureCheckRun"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/microsoft/onlineid/internal/configuration/Settings;->_defaultSettingsMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "isCertificateTelemetryNeeded"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/microsoft/onlineid/internal/configuration/Settings;
    .locals 2

    const-class v0, Lcom/microsoft/onlineid/internal/configuration/Settings;

    sget-object v1, Lcom/microsoft/onlineid/internal/configuration/Settings;->Instance:Lcom/microsoft/onlineid/internal/configuration/Settings;

    if-nez v1, :cond_1

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/microsoft/onlineid/internal/configuration/Settings;->Instance:Lcom/microsoft/onlineid/internal/configuration/Settings;

    if-nez v1, :cond_0

    new-instance v1, Lcom/microsoft/onlineid/internal/configuration/Settings;

    invoke-direct {v1, p0}, Lcom/microsoft/onlineid/internal/configuration/Settings;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/microsoft/onlineid/internal/configuration/Settings;->Instance:Lcom/microsoft/onlineid/internal/configuration/Settings;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/microsoft/onlineid/internal/configuration/Settings;->Instance:Lcom/microsoft/onlineid/internal/configuration/Settings;

    return-object p0
.end method

.method public static isDebugBuild()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static resetSettings()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/microsoft/onlineid/internal/configuration/Settings;->Instance:Lcom/microsoft/onlineid/internal/configuration/Settings;

    return-void
.end method


# virtual methods
.method public getSetting(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/configuration/Settings;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/configuration/Settings;->_defaultSettingsMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/microsoft/onlineid/internal/storage/Storage;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/Assertion;->check(Z)V

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/configuration/Settings;->_defaultSettingsMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public isSettingEnabled(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/internal/configuration/Settings;->getSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "true"

    invoke-static {p1, v0}, Lcom/microsoft/onlineid/internal/Strings;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public removeSetting(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/configuration/Settings;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/storage/Storage;->edit()Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->remove(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->apply()V

    return-void
.end method

.method public setSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/configuration/Settings;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/storage/Storage;->edit()Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->writeString(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->apply()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "SettingName cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setStorage(Lcom/microsoft/onlineid/internal/storage/Storage;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/configuration/Settings;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    return-void
.end method
