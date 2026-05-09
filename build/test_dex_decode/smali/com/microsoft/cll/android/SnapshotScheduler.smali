.class public Lcom/microsoft/cll/android/SnapshotScheduler;
.super Lcom/microsoft/cll/android/ScheduledWorker;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

.field private final cll:Lcom/microsoft/cll/android/ISingletonCll;

.field private final logger:Lcom/microsoft/cll/android/ILogger;


# direct methods
.method public constructor <init>(Lcom/microsoft/cll/android/ClientTelemetry;Lcom/microsoft/cll/android/ILogger;Lcom/microsoft/cll/android/ISingletonCll;)V
    .locals 2

    sget-object v0, Lcom/microsoft/cll/android/SettingsStore$Settings;->SNAPSHOTSCHEDULEINTERVAL:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v0}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsLong(Lcom/microsoft/cll/android/SettingsStore$Settings;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/microsoft/cll/android/ScheduledWorker;-><init>(J)V

    const-string v0, "AndroidCll-SnapshotScheduler"

    iput-object v0, p0, Lcom/microsoft/cll/android/SnapshotScheduler;->TAG:Ljava/lang/String;

    iput-object p3, p0, Lcom/microsoft/cll/android/SnapshotScheduler;->cll:Lcom/microsoft/cll/android/ISingletonCll;

    iput-object p1, p0, Lcom/microsoft/cll/android/SnapshotScheduler;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    iput-object p2, p0, Lcom/microsoft/cll/android/SnapshotScheduler;->logger:Lcom/microsoft/cll/android/ILogger;

    return-void
.end method

.method private recordStatistics()V
    .locals 9

    iget-object v0, p0, Lcom/microsoft/cll/android/SnapshotScheduler;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    invoke-virtual {v0}, Lcom/microsoft/cll/android/ClientTelemetry;->GetEvent()LMicrosoft/Android/LoggingLibrary/Snapshot;

    move-result-object v2

    iget-object v1, p0, Lcom/microsoft/cll/android/SnapshotScheduler;->cll:Lcom/microsoft/cll/android/ISingletonCll;

    sget-object v3, Lcom/microsoft/cll/android/EventEnums$Latency;->LatencyUnspecified:Lcom/microsoft/cll/android/EventEnums$Latency;

    sget-object v4, Lcom/microsoft/cll/android/EventEnums$Persistence;->PersistenceUnspecified:Lcom/microsoft/cll/android/EventEnums$Persistence;

    sget-object v0, Lcom/microsoft/cll/android/EventEnums$Sensitivity;->SensitivityUnspecified:Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v5

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const/4 v8, 0x0

    invoke-interface/range {v1 .. v8}, Lcom/microsoft/cll/android/ISingletonCll;->log(Lcom/microsoft/telemetry/Base;Lcom/microsoft/cll/android/EventEnums$Latency;Lcom/microsoft/cll/android/EventEnums$Persistence;Ljava/util/EnumSet;DLjava/util/List;)V

    iget-object v0, p0, Lcom/microsoft/cll/android/SnapshotScheduler;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    invoke-virtual {v0}, Lcom/microsoft/cll/android/ClientTelemetry;->Reset()V

    return-void
.end method


# virtual methods
.method public resume(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 7

    iput-object p1, p0, Lcom/microsoft/cll/android/ScheduledWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    iget-wide v4, p0, Lcom/microsoft/cll/android/ScheduledWorker;->interval:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v0, p1

    move-object v1, p0

    move-wide v2, v4

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/cll/android/ScheduledWorker;->nextExecution:Ljava/util/concurrent/ScheduledFuture;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/microsoft/cll/android/ScheduledWorker;->isPaused:Z

    return-void
.end method

.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/microsoft/cll/android/SnapshotScheduler;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v1, "AndroidCll-SnapshotScheduler"

    const-string v2, "Uploading snapshot"

    invoke-interface {v0, v1, v2}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/microsoft/cll/android/ScheduledWorker;->interval:J

    sget-object v2, Lcom/microsoft/cll/android/SettingsStore$Settings;->SNAPSHOTSCHEDULEINTERVAL:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v2}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsInt(Lcom/microsoft/cll/android/SettingsStore$Settings;)I

    move-result v3

    int-to-long v3, v3

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    iget-object v0, p0, Lcom/microsoft/cll/android/ScheduledWorker;->nextExecution:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    invoke-static {v2}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsInt(Lcom/microsoft/cll/android/SettingsStore$Settings;)I

    move-result v0

    int-to-long v5, v0

    iput-wide v5, p0, Lcom/microsoft/cll/android/ScheduledWorker;->interval:J

    iget-object v1, p0, Lcom/microsoft/cll/android/ScheduledWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v2, p0

    move-wide v3, v5

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/cll/android/ScheduledWorker;->nextExecution:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    invoke-direct {p0}, Lcom/microsoft/cll/android/SnapshotScheduler;->recordStatistics()V

    return-void
.end method

.method public start(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 7

    iput-object p1, p0, Lcom/microsoft/cll/android/ScheduledWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    iget-wide v4, p0, Lcom/microsoft/cll/android/ScheduledWorker;->interval:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v0, p1

    move-object v1, p0

    move-wide v2, v4

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/cll/android/ScheduledWorker;->nextExecution:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
