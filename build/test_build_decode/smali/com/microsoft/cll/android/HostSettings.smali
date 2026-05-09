.class public Lcom/microsoft/cll/android/HostSettings;
.super Lcom/microsoft/cll/android/AbstractSettings;
.source "SourceFile"


# instance fields
.field private final baseUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/microsoft/cll/android/ClientTelemetry;Lcom/microsoft/cll/android/ILogger;Ljava/lang/String;Lcom/microsoft/cll/android/PartA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, Lcom/microsoft/cll/android/AbstractSettings;-><init>(Lcom/microsoft/cll/android/ClientTelemetry;Lcom/microsoft/cll/android/ILogger;Lcom/microsoft/cll/android/PartA;)V

    const-string p1, "https://settings.data.microsoft.com/settings/v2.0/telemetry/"

    iput-object p1, p0, Lcom/microsoft/cll/android/HostSettings;->baseUrl:Ljava/lang/String;

    const-string p2, "AndroidCll-HostSettings"

    iput-object p2, p0, Lcom/microsoft/cll/android/AbstractSettings;->TAG:Ljava/lang/String;

    sget-object p2, Lcom/microsoft/cll/android/SettingsStore$Settings;->HOSTSETTINGSETAG:Lcom/microsoft/cll/android/SettingsStore$Settings;

    iput-object p2, p0, Lcom/microsoft/cll/android/AbstractSettings;->ETagSettingName:Lcom/microsoft/cll/android/SettingsStore$Settings;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/microsoft/cll/android/AbstractSettings;->disableUploadOn404:Z

    .line 1
    invoke-static {p1, p3}, La/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iput-object p1, p0, Lcom/microsoft/cll/android/AbstractSettings;->endpoint:Ljava/lang/String;

    const-string p1, "?os="

    .line 3
    invoke-static {p1}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 4
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
    .locals 7

    const-string v0, ""

    const-string v1, "settings"

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/microsoft/cll/android/AbstractSettings;->logger:Lcom/microsoft/cll/android/ILogger;

    iget-object v5, p0, Lcom/microsoft/cll/android/AbstractSettings;->TAG:Ljava/lang/String;

    const-string v6, "Bad Settings Format"

    invoke-interface {v4, v5, v6}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v4, " "

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/microsoft/cll/android/SettingsStore;->updateHostSetting(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/microsoft/cll/android/AbstractSettings;->logger:Lcom/microsoft/cll/android/ILogger;

    iget-object v0, p0, Lcom/microsoft/cll/android/AbstractSettings;->TAG:Ljava/lang/String;

    const-string v1, "Json result did not contain a \"settings\" field!"

    invoke-interface {p1, v0, v1}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object p1, p0, Lcom/microsoft/cll/android/AbstractSettings;->logger:Lcom/microsoft/cll/android/ILogger;

    iget-object v0, p0, Lcom/microsoft/cll/android/AbstractSettings;->TAG:Ljava/lang/String;

    const-string v1, "An exception occurred while parsing settings"

    invoke-interface {p1, v0, v1}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
