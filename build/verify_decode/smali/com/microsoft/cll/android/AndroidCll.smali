.class public Lcom/microsoft/cll/android/AndroidCll;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/cll/android/ICll;
.implements Lcom/microsoft/cll/android/SettingsStore$UpdateListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field public cll:Lcom/microsoft/cll/android/ISingletonCll;

.field private final cllPreferences:Landroid/content/SharedPreferences;

.field private final hostPreferences:Landroid/content/SharedPreferences;

.field private final logger:Lcom/microsoft/cll/android/ILogger;

.field private final sharedCllPreferencesName:Ljava/lang/String;

.field private final sharedHostPreferencesName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AndroidCll-AndroidCll"

    iput-object v0, p0, Lcom/microsoft/cll/android/AndroidCll;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/microsoft/cll/android/AndroidLogger;->getInstance()Lcom/microsoft/cll/android/ILogger;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/cll/android/AndroidCll;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v0, "AndroidCllSettingsSharedPreferences"

    iput-object v0, p0, Lcom/microsoft/cll/android/AndroidCll;->sharedCllPreferencesName:Ljava/lang/String;

    const-string v0, "AndroidHostSettingsSharedPreferences"

    iput-object v0, p0, Lcom/microsoft/cll/android/AndroidCll;->sharedHostPreferencesName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/cll/android/AndroidCll;->cllPreferences:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/microsoft/cll/android/AndroidCll;->hostPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AndroidCll-AndroidCll"

    iput-object v0, p0, Lcom/microsoft/cll/android/AndroidCll;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/microsoft/cll/android/AndroidLogger;->getInstance()Lcom/microsoft/cll/android/ILogger;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/cll/android/AndroidCll;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v0, "AndroidCllSettingsSharedPreferences"

    iput-object v0, p0, Lcom/microsoft/cll/android/AndroidCll;->sharedCllPreferencesName:Ljava/lang/String;

    const-string v1, "AndroidHostSettingsSharedPreferences"

    iput-object v1, p0, Lcom/microsoft/cll/android/AndroidCll;->sharedHostPreferencesName:Ljava/lang/String;

    new-instance v2, Lcom/microsoft/cll/android/CorrelationVector;

    invoke-direct {v2}, Lcom/microsoft/cll/android/CorrelationVector;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/microsoft/cll/android/AndroidPartA;

    invoke-static {}, Lcom/microsoft/cll/android/AndroidLogger;->getInstance()Lcom/microsoft/cll/android/ILogger;

    move-result-object v5

    invoke-direct {v4, v5, p1, p2, v2}, Lcom/microsoft/cll/android/AndroidPartA;-><init>(Lcom/microsoft/cll/android/ILogger;Ljava/lang/String;Landroid/content/Context;Lcom/microsoft/cll/android/CorrelationVector;)V

    invoke-static {}, Lcom/microsoft/cll/android/AndroidLogger;->getInstance()Lcom/microsoft/cll/android/ILogger;

    move-result-object v5

    invoke-static {p1, v5, v3, v4, v2}, Lcom/microsoft/cll/android/SingletonCll;->getInstance(Ljava/lang/String;Lcom/microsoft/cll/android/ILogger;Ljava/lang/String;Lcom/microsoft/cll/android/PartA;Lcom/microsoft/cll/android/CorrelationVector;)Lcom/microsoft/cll/android/ISingletonCll;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/cll/android/AndroidCll;->cll:Lcom/microsoft/cll/android/ISingletonCll;

    const/4 p1, 0x0

    invoke-virtual {p2, v0, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/cll/android/AndroidCll;->cllPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p2, v1, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/cll/android/AndroidCll;->hostPreferences:Landroid/content/SharedPreferences;

    invoke-static {p0}, Lcom/microsoft/cll/android/SettingsStore;->setUpdateListener(Lcom/microsoft/cll/android/SettingsStore$UpdateListener;)V

    invoke-direct {p0}, Lcom/microsoft/cll/android/AndroidCll;->setSettingsStoreValues()V

    return-void
.end method

.method private setSettingsStoreValues()V
    .locals 3

    iget-object v0, p0, Lcom/microsoft/cll/android/AndroidCll;->cllPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/microsoft/cll/android/SettingsStore$Settings;->valueOf(Ljava/lang/String;)Lcom/microsoft/cll/android/SettingsStore$Settings;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/microsoft/cll/android/SettingsStore;->updateCllSetting(Lcom/microsoft/cll/android/SettingsStore$Settings;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    iget-object v2, p0, Lcom/microsoft/cll/android/AndroidCll;->cllPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/microsoft/cll/android/AndroidCll;->hostPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/microsoft/cll/android/SettingsStore;->updateHostSetting(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public OnCllSettingUpdate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/cll/android/AndroidCll;->cllPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public OnHostSettingUpdate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/cll/android/AndroidCll;->hostPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public SubscribeCllEvents(Lcom/microsoft/cll/android/ICllEvents;)V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/cll/android/AndroidCll;->cll:Lcom/microsoft/cll/android/ISingletonCll;

    invoke-interface {v0, p1}, Lcom/microsoft/cll/android/ISingletonCll;->SubscribeCllEvents(Lcom/microsoft/cll/android/ICllEvents;)V

    return-void
.end method

.method public getAppUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/cll/android/AndroidCll;->cll:Lcom/microsoft/cll/android/ISingletonCll;

    invoke-interface {v0}, Lcom/microsoft/cll/android/ISingletonCll;->getAppUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCorrelationVector()Lcom/microsoft/cll/android/CorrelationVector;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/cll/android/AndroidCll;->cll:Lcom/microsoft/cll/android/ISingletonCll;

    check-cast v0, Lcom/microsoft/cll/android/SingletonCll;

    iget-object v0, v0, Lcom/microsoft/cll/android/SingletonCll;->correlationVector:Lcom/microsoft/cll/android/CorrelationVector;

    return-object v0
.end method

.method public log(LMicrosoft/Telemetry/Base;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/microsoft/cll/android/AndroidCll;->log(LMicrosoft/Telemetry/Base;Ljava/util/List;)V

    return-void
.end method

.method public log(LMicrosoft/Telemetry/Base;Lcom/microsoft/cll/android/EventEnums$Latency;Lcom/microsoft/cll/android/EventEnums$Persistence;Ljava/util/EnumSet;DLjava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LMicrosoft/Telemetry/Base;",
            "Lcom/microsoft/cll/android/EventEnums$Latency;",
            "Lcom/microsoft/cll/android/EventEnums$Persistence;",
            "Ljava/util/EnumSet<",
            "Lcom/microsoft/cll/android/EventEnums$Sensitivity;",
            ">;D",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    iget-object v1, v0, Lcom/microsoft/cll/android/AndroidCll;->logger:Lcom/microsoft/cll/android/ILogger;

    move-object v2, p1

    invoke-static {v1, p1}, Lcom/microsoft/cll/android/PreSerializedEvent;->createFromStaticEvent(Lcom/microsoft/cll/android/ILogger;LMicrosoft/Telemetry/Base;)Lcom/microsoft/cll/android/PreSerializedEvent;

    move-result-object v3

    iget-object v2, v0, Lcom/microsoft/cll/android/AndroidCll;->cll:Lcom/microsoft/cll/android/ISingletonCll;

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-wide v7, p5

    move-object/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Lcom/microsoft/cll/android/ISingletonCll;->log(Lcom/microsoft/telemetry/Base;Lcom/microsoft/cll/android/EventEnums$Latency;Lcom/microsoft/cll/android/EventEnums$Persistence;Ljava/util/EnumSet;DLjava/util/List;)V

    return-void
.end method

.method public log(LMicrosoft/Telemetry/Base;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LMicrosoft/Telemetry/Base;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v2, Lcom/microsoft/cll/android/EventEnums$Latency;->LatencyUnspecified:Lcom/microsoft/cll/android/EventEnums$Latency;

    sget-object v3, Lcom/microsoft/cll/android/EventEnums$Persistence;->PersistenceUnspecified:Lcom/microsoft/cll/android/EventEnums$Persistence;

    sget-object v0, Lcom/microsoft/cll/android/EventEnums$Sensitivity;->SensitivityUnspecified:Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    move-object v0, p0

    move-object v1, p1

    move-object v7, p2

    invoke-virtual/range {v0 .. v7}, Lcom/microsoft/cll/android/AndroidCll;->log(LMicrosoft/Telemetry/Base;Lcom/microsoft/cll/android/EventEnums$Latency;Lcom/microsoft/cll/android/EventEnums$Persistence;Ljava/util/EnumSet;DLjava/util/List;)V

    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/cll/android/EventEnums$Latency;Lcom/microsoft/cll/android/EventEnums$Persistence;Ljava/util/EnumSet;DLjava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/microsoft/cll/android/EventEnums$Latency;",
            "Lcom/microsoft/cll/android/EventEnums$Persistence;",
            "Ljava/util/EnumSet<",
            "Lcom/microsoft/cll/android/EventEnums$Sensitivity;",
            ">;D",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    const-string v1, "."

    move-object v2, p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/microsoft/cll/android/AndroidCll;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v2, "AndroidCll-AndroidCll"

    const-string v3, "Event Name does not follow a valid format. Your event must have at least one . between two words. E.g. Microsoft.MyEvent"

    invoke-interface {v1, v2, v3}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/microsoft/cll/android/PreSerializedEvent;->createFromDynamicEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/cll/android/PreSerializedEvent;

    move-result-object v5

    iget-object v4, v0, Lcom/microsoft/cll/android/AndroidCll;->cll:Lcom/microsoft/cll/android/ISingletonCll;

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-wide/from16 v9, p6

    move-object/from16 v11, p8

    invoke-interface/range {v4 .. v11}, Lcom/microsoft/cll/android/ISingletonCll;->log(Lcom/microsoft/telemetry/Base;Lcom/microsoft/cll/android/EventEnums$Latency;Lcom/microsoft/cll/android/EventEnums$Persistence;Ljava/util/EnumSet;DLjava/util/List;)V

    return-void
.end method

.method public logInternal(Lcom/microsoft/telemetry/Base;)V
    .locals 8

    iget-object v0, p0, Lcom/microsoft/cll/android/AndroidCll;->cll:Lcom/microsoft/cll/android/ISingletonCll;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-interface/range {v0 .. v7}, Lcom/microsoft/cll/android/ISingletonCll;->log(Lcom/microsoft/telemetry/Base;Lcom/microsoft/cll/android/EventEnums$Latency;Lcom/microsoft/cll/android/EventEnums$Persistence;Ljava/util/EnumSet;DLjava/util/List;)V

    return-void
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/cll/android/AndroidCll;->cll:Lcom/microsoft/cll/android/ISingletonCll;

    invoke-interface {v0}, Lcom/microsoft/cll/android/ISingletonCll;->pause()V

    return-void
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/cll/android/AndroidCll;->cll:Lcom/microsoft/cll/android/ISingletonCll;

    invoke-interface {v0}, Lcom/microsoft/cll/android/ISingletonCll;->resume()V

    return-void
.end method

.method public send()V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/cll/android/AndroidCll;->cll:Lcom/microsoft/cll/android/ISingletonCll;

    invoke-interface {v0}, Lcom/microsoft/cll/android/ISingletonCll;->send()V

    return-void
.end method

.method public setAppUserId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/cll/android/AndroidCll;->cll:Lcom/microsoft/cll/android/ISingletonCll;

    invoke-interface {v0, p1}, Lcom/microsoft/cll/android/ISingletonCll;->setAppUserId(Ljava/lang/String;)V

    return-void
.end method

.method public setDebugVerbosity(Lcom/microsoft/cll/android/Verbosity;)V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/cll/android/AndroidCll;->cll:Lcom/microsoft/cll/android/ISingletonCll;

    invoke-interface {v0, p1}, Lcom/microsoft/cll/android/ISingletonCll;->setDebugVerbosity(Lcom/microsoft/cll/android/Verbosity;)V

    return-void
.end method

.method public setEndpointUrl(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/cll/android/AndroidCll;->cll:Lcom/microsoft/cll/android/ISingletonCll;

    invoke-interface {v0, p1}, Lcom/microsoft/cll/android/ISingletonCll;->setEndpointUrl(Ljava/lang/String;)V

    return-void
.end method

.method public setExperimentId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/cll/android/AndroidCll;->cll:Lcom/microsoft/cll/android/ISingletonCll;

    invoke-interface {v0, p1}, Lcom/microsoft/cll/android/ISingletonCll;->setExperimentId(Ljava/lang/String;)V

    return-void
.end method

.method public setXuidCallback(Lcom/microsoft/cll/android/ITicketCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/cll/android/AndroidCll;->cll:Lcom/microsoft/cll/android/ISingletonCll;

    invoke-interface {v0, p1}, Lcom/microsoft/cll/android/ISingletonCll;->setXuidCallback(Lcom/microsoft/cll/android/ITicketCallback;)V

    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/cll/android/AndroidCll;->cll:Lcom/microsoft/cll/android/ISingletonCll;

    invoke-interface {v0}, Lcom/microsoft/cll/android/ISingletonCll;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/cll/android/AndroidCll;->cll:Lcom/microsoft/cll/android/ISingletonCll;

    invoke-interface {v0}, Lcom/microsoft/cll/android/ISingletonCll;->stop()V

    return-void
.end method

.method public synchronize()V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/cll/android/AndroidCll;->cll:Lcom/microsoft/cll/android/ISingletonCll;

    invoke-interface {v0}, Lcom/microsoft/cll/android/ISingletonCll;->synchronize()V

    return-void
.end method

.method public useLegacyCS(Z)V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/cll/android/AndroidCll;->cll:Lcom/microsoft/cll/android/ISingletonCll;

    invoke-interface {v0, p1}, Lcom/microsoft/cll/android/ISingletonCll;->useLegacyCS(Z)V

    return-void
.end method
