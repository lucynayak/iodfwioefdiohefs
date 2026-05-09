.class public Lcom/microsoft/cll/android/CllSettings;
.super Lcom/microsoft/cll/android/AbstractSettings;
.source "SourceFile"


# instance fields
.field private final settingsSync:Lcom/microsoft/cll/android/SettingsSync;


# direct methods
.method public constructor <init>(Lcom/microsoft/cll/android/ClientTelemetry;Lcom/microsoft/cll/android/ILogger;Lcom/microsoft/cll/android/SettingsSync;Lcom/microsoft/cll/android/PartA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, Lcom/microsoft/cll/android/AbstractSettings;-><init>(Lcom/microsoft/cll/android/ClientTelemetry;Lcom/microsoft/cll/android/ILogger;Lcom/microsoft/cll/android/PartA;)V

    iput-object p3, p0, Lcom/microsoft/cll/android/CllSettings;->settingsSync:Lcom/microsoft/cll/android/SettingsSync;

    const-string p1, "AndroidCll-CllSettings"

    iput-object p1, p0, Lcom/microsoft/cll/android/AbstractSettings;->TAG:Ljava/lang/String;

    sget-object p1, Lcom/microsoft/cll/android/SettingsStore$Settings;->CLLSETTINGSETAG:Lcom/microsoft/cll/android/SettingsStore$Settings;

    iput-object p1, p0, Lcom/microsoft/cll/android/AbstractSettings;->ETagSettingName:Lcom/microsoft/cll/android/SettingsStore$Settings;

    sget-object p1, Lcom/microsoft/cll/android/SettingsStore$Settings;->CLLSETTINGSURL:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {p1}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsString(Lcom/microsoft/cll/android/SettingsStore$Settings;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/cll/android/AbstractSettings;->endpoint:Ljava/lang/String;

    const-string p1, "?iKey="

    .line 1
    invoke-static {p1}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2
    iget-object p2, p4, Lcom/microsoft/cll/android/PartA;->iKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&os="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p4, Lcom/microsoft/cll/android/PartA;->osName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&osVer="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p4, Lcom/microsoft/cll/android/PartA;->osVer:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&deviceClass="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p4, Lcom/microsoft/cll/android/PartA;->deviceExt:Lcom/microsoft/telemetry/extensions/device;

    invoke-virtual {p2}, Lcom/microsoft/telemetry/extensions/device;->getDeviceClass()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&deviceId="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p4, Lcom/microsoft/cll/android/PartA;->deviceExt:Lcom/microsoft/telemetry/extensions/device;

    invoke-virtual {p2}, Lcom/microsoft/telemetry/extensions/device;->getLocalId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/cll/android/AbstractSettings;->queryParam:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public ParseSettings(Lorg/json/JSONObject;)V
    .locals 11

    const-string v0, "settings"

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "refreshInterval"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    sget-object v2, Lcom/microsoft/cll/android/SettingsStore$Settings;->SYNCREFRESHINTERVAL:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v2}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsInt(Lcom/microsoft/cll/android/SettingsStore$Settings;)I

    move-result v3

    if-eq v1, v3, :cond_0

    sget-object v3, Lcom/microsoft/cll/android/SettingsStore;->cllSettings:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/microsoft/cll/android/CllSettings;->settingsSync:Lcom/microsoft/cll/android/SettingsSync;

    iget-object v1, v1, Lcom/microsoft/cll/android/ScheduledWorker;->nextExecution:Ljava/util/concurrent/ScheduledFuture;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    iget-object v1, p0, Lcom/microsoft/cll/android/CllSettings;->settingsSync:Lcom/microsoft/cll/android/SettingsSync;

    iget-object v4, v1, Lcom/microsoft/cll/android/ScheduledWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v2}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsLong(Lcom/microsoft/cll/android/SettingsStore$Settings;)J

    move-result-wide v6

    invoke-static {v2}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsLong(Lcom/microsoft/cll/android/SettingsStore$Settings;)J

    move-result-wide v8

    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v5, v1

    invoke-interface/range {v4 .. v10}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    iput-object v2, v1, Lcom/microsoft/cll/android/ScheduledWorker;->nextExecution:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v1}, Lcom/microsoft/cll/android/SettingsStore$Settings;->valueOf(Ljava/lang/String;)Lcom/microsoft/cll/android/SettingsStore$Settings;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/microsoft/cll/android/SettingsStore;->updateCllSetting(Lcom/microsoft/cll/android/SettingsStore$Settings;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/microsoft/cll/android/AbstractSettings;->logger:Lcom/microsoft/cll/android/ILogger;

    iget-object v4, p0, Lcom/microsoft/cll/android/AbstractSettings;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Json Settings, Key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    :try_start_2
    iget-object v2, p0, Lcom/microsoft/cll/android/AbstractSettings;->logger:Lcom/microsoft/cll/android/ILogger;

    iget-object v3, p0, Lcom/microsoft/cll/android/AbstractSettings;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " was not found"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/microsoft/cll/android/ILogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    iget-object p1, p0, Lcom/microsoft/cll/android/AbstractSettings;->logger:Lcom/microsoft/cll/android/ILogger;

    iget-object v0, p0, Lcom/microsoft/cll/android/AbstractSettings;->TAG:Ljava/lang/String;

    const-string v1, "An exception occurred while parsing settings"

    invoke-interface {p1, v0, v1}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
