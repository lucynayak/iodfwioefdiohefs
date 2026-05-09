.class public Lcom/microsoft/cll/android/SettingsSync;
.super Lcom/microsoft/cll/android/ScheduledWorker;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

.field private final logger:Lcom/microsoft/cll/android/ILogger;

.field private final settingsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/microsoft/cll/android/AbstractSettings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/microsoft/cll/android/ClientTelemetry;Lcom/microsoft/cll/android/ILogger;Ljava/lang/String;Lcom/microsoft/cll/android/PartA;)V
    .locals 2

    sget-object v0, Lcom/microsoft/cll/android/SettingsStore$Settings;->SYNCREFRESHINTERVAL:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v0}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsLong(Lcom/microsoft/cll/android/SettingsStore$Settings;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/microsoft/cll/android/ScheduledWorker;-><init>(J)V

    const-string v0, "AndroidCll-SettingsSync"

    iput-object v0, p0, Lcom/microsoft/cll/android/SettingsSync;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/microsoft/cll/android/SettingsSync;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    iput-object p2, p0, Lcom/microsoft/cll/android/SettingsSync;->logger:Lcom/microsoft/cll/android/ILogger;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/microsoft/cll/android/SettingsSync;->settingsList:Ljava/util/List;

    new-instance v1, Lcom/microsoft/cll/android/CllSettings;

    invoke-direct {v1, p1, p2, p0, p4}, Lcom/microsoft/cll/android/CllSettings;-><init>(Lcom/microsoft/cll/android/ClientTelemetry;Lcom/microsoft/cll/android/ILogger;Lcom/microsoft/cll/android/SettingsSync;Lcom/microsoft/cll/android/PartA;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, ""

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/microsoft/cll/android/HostSettings;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/microsoft/cll/android/HostSettings;-><init>(Lcom/microsoft/cll/android/ClientTelemetry;Lcom/microsoft/cll/android/ILogger;Ljava/lang/String;Lcom/microsoft/cll/android/PartA;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private GetCloudSettings()V
    .locals 4

    iget-object v0, p0, Lcom/microsoft/cll/android/SettingsSync;->settingsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/cll/android/AbstractSettings;

    invoke-virtual {v1}, Lcom/microsoft/cll/android/AbstractSettings;->getSettings()Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v1, p0, Lcom/microsoft/cll/android/SettingsSync;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v2, "AndroidCll-SettingsSync"

    const-string v3, "Could not get or parse settings"

    invoke-interface {v1, v2, v3}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Lcom/microsoft/cll/android/AbstractSettings;->ParseSettings(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/microsoft/cll/android/SettingsSync;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v1, "AndroidCll-SettingsSync"

    const-string v2, "Cloud sync!"

    invoke-interface {v0, v1, v2}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/microsoft/cll/android/SettingsSync;->GetCloudSettings()V

    return-void
.end method
