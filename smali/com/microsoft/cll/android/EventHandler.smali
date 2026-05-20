.class public Lcom/microsoft/cll/android/EventHandler;
.super Lcom/microsoft/cll/android/ScheduledWorker;
.source "SourceFile"


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

.field private final cllEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/microsoft/cll/android/ICllEvents;",
            ">;"
        }
    .end annotation
.end field

.field public final criticalHandler:Lcom/microsoft/cll/android/AbstractHandler;

.field private endpoint:Ljava/net/URL;

.field private final logger:Lcom/microsoft/cll/android/ILogger;

.field public final normalHandler:Lcom/microsoft/cll/android/AbstractHandler;

.field private sampleId:D

.field private sender:Lcom/microsoft/cll/android/EventSender;

.field private ticketCallback:Lcom/microsoft/cll/android/ITicketCallback;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/microsoft/cll/android/EventHandler;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/microsoft/cll/android/EventHandler;->$assertionsDisabled:Z

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/cll/android/ClientTelemetry;Ljava/util/List;Lcom/microsoft/cll/android/ILogger;Lcom/microsoft/cll/android/AbstractHandler;Lcom/microsoft/cll/android/AbstractHandler;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/cll/android/ClientTelemetry;",
            "Ljava/util/List<",
            "Lcom/microsoft/cll/android/ICllEvents;",
            ">;",
            "Lcom/microsoft/cll/android/ILogger;",
            "Lcom/microsoft/cll/android/AbstractHandler;",
            "Lcom/microsoft/cll/android/AbstractHandler;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/microsoft/cll/android/SettingsStore$Settings;->QUEUEDRAININTERVAL:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v0}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsInt(Lcom/microsoft/cll/android/SettingsStore$Settings;)I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/microsoft/cll/android/ScheduledWorker;-><init>(J)V

    const-string v0, "AndroidCll-EventHandler"

    iput-object v0, p0, Lcom/microsoft/cll/android/EventHandler;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/microsoft/cll/android/EventHandler;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    iput-object p2, p0, Lcom/microsoft/cll/android/EventHandler;->cllEvents:Ljava/util/List;

    iput-object p3, p0, Lcom/microsoft/cll/android/EventHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    iput-object p4, p0, Lcom/microsoft/cll/android/EventHandler;->normalHandler:Lcom/microsoft/cll/android/AbstractHandler;

    iput-object p5, p0, Lcom/microsoft/cll/android/EventHandler;->criticalHandler:Lcom/microsoft/cll/android/AbstractHandler;

    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    iput-wide p1, p0, Lcom/microsoft/cll/android/EventHandler;->sampleId:D

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/cll/android/ClientTelemetry;Ljava/util/List;Lcom/microsoft/cll/android/ILogger;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/cll/android/ClientTelemetry;",
            "Ljava/util/List<",
            "Lcom/microsoft/cll/android/ICllEvents;",
            ">;",
            "Lcom/microsoft/cll/android/ILogger;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/microsoft/cll/android/SettingsStore$Settings;->QUEUEDRAININTERVAL:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v0}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsInt(Lcom/microsoft/cll/android/SettingsStore$Settings;)I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/microsoft/cll/android/ScheduledWorker;-><init>(J)V

    const-string v0, "AndroidCll-EventHandler"

    iput-object v0, p0, Lcom/microsoft/cll/android/EventHandler;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/microsoft/cll/android/EventHandler;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    iput-object p2, p0, Lcom/microsoft/cll/android/EventHandler;->cllEvents:Ljava/util/List;

    iput-object p3, p0, Lcom/microsoft/cll/android/EventHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    new-instance p2, Lcom/microsoft/cll/android/CriticalEventHandler;

    invoke-direct {p2, p3, p4, p1}, Lcom/microsoft/cll/android/CriticalEventHandler;-><init>(Lcom/microsoft/cll/android/ILogger;Ljava/lang/String;Lcom/microsoft/cll/android/ClientTelemetry;)V

    iput-object p2, p0, Lcom/microsoft/cll/android/EventHandler;->criticalHandler:Lcom/microsoft/cll/android/AbstractHandler;

    new-instance p2, Lcom/microsoft/cll/android/NormalEventHandler;

    invoke-direct {p2, p3, p4, p1}, Lcom/microsoft/cll/android/NormalEventHandler;-><init>(Lcom/microsoft/cll/android/ILogger;Ljava/lang/String;Lcom/microsoft/cll/android/ClientTelemetry;)V

    iput-object p2, p0, Lcom/microsoft/cll/android/EventHandler;->normalHandler:Lcom/microsoft/cll/android/AbstractHandler;

    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    iput-wide p1, p0, Lcom/microsoft/cll/android/EventHandler;->sampleId:D

    return-void
.end method

.method private Filter(Lcom/microsoft/cll/android/SerializedEvent;)Z
    .registers 6

    invoke-virtual {p1}, Lcom/microsoft/cll/android/SerializedEvent;->getSerializedData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sget-object v1, Lcom/microsoft/cll/android/SettingsStore$Settings;->MAXEVENTSIZEINBYTES:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v1}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsInt(Lcom/microsoft/cll/android/SettingsStore$Settings;)I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "AndroidCll-EventHandler"

    if-le v0, v1, :cond_0

    iget-object p1, p0, Lcom/microsoft/cll/android/EventHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v0, "Event is too large"

    :goto_0
    invoke-interface {p1, v3, v0}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    invoke-direct {p0}, Lcom/microsoft/cll/android/EventHandler;->IsUploadEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/microsoft/cll/android/EventHandler;->IsInSample(Lcom/microsoft/cll/android/SerializedEvent;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/microsoft/cll/android/EventHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v0, "Filtered event"

    goto :goto_0
.end method

.method private IsInSample(Lcom/microsoft/cll/android/SerializedEvent;)Z
    .registers 8

    iget-wide v0, p0, Lcom/microsoft/cll/android/EventHandler;->sampleId:D

    const-wide v2, -0x411b074a771c970fL    # -1.0E-5

    cmpg-double v4, v0, v2

    if-gez v4, :cond_1

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/microsoft/cll/android/EventHandler;->sampleId:D

    invoke-virtual {p1}, Lcom/microsoft/cll/android/SerializedEvent;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-le v1, v2, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x7

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    const-wide/16 v3, 0x2710

    rem-long/2addr v1, v3

    long-to-double v1, v1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v3

    iput-wide v1, p0, Lcom/microsoft/cll/android/EventHandler;->sampleId:D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget-object v1, p0, Lcom/microsoft/cll/android/EventHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v2, "Sample Id is "

    .line 1
    invoke-static {v2}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2
    iget-wide v3, p0, Lcom/microsoft/cll/android/EventHandler;->sampleId:D

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " based on deviceId of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AndroidCll-EventHandler"

    invoke-interface {v1, v2, v0}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-wide v0, p0, Lcom/microsoft/cll/android/EventHandler;->sampleId:D

    const-wide v2, 0x3ee4f8b588e368f1L    # 1.0E-5

    invoke-virtual {p1}, Lcom/microsoft/cll/android/SerializedEvent;->getSampleRate()D

    move-result-wide v4

    add-double/2addr v4, v2

    cmpg-double p1, v0, v4

    if-gez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private IsUploadEnabled()Z
    .registers 2

    sget-object v0, Lcom/microsoft/cll/android/SettingsStore$Settings;->UPLOADENABLED:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v0}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsBoolean(Lcom/microsoft/cll/android/SettingsStore$Settings;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private startEventQueueWriter(Ljava/lang/Runnable;)Z
    .registers 6

    iget-object v0, p0, Lcom/microsoft/cll/android/EventHandler;->endpoint:Ljava/net/URL;

    const/4 v1, 0x0

    const-string v2, "AndroidCll-EventHandler"

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/microsoft/cll/android/EventHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v0, "No endpoint set"

    :goto_0
    invoke-interface {p1, v2, v0}, Lcom/microsoft/cll/android/ILogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/microsoft/cll/android/EventQueueWriter;

    iget-object v3, p0, Lcom/microsoft/cll/android/EventHandler;->sender:Lcom/microsoft/cll/android/EventSender;

    if-eqz v3, :cond_1

    invoke-virtual {v0, v3}, Lcom/microsoft/cll/android/EventQueueWriter;->setSender(Lcom/microsoft/cll/android/EventSender;)V

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/cll/android/ScheduledWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iget-object p1, p0, Lcom/microsoft/cll/android/EventHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v0, "Executor is null. Is the cll paused or stopped?"

    invoke-interface {p1, v2, v0}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 p1, 0x1

    return p1

    :catch_1
    iget-object p1, p0, Lcom/microsoft/cll/android/EventHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v0, "Could not start new thread for EventQueueWriter"

    goto :goto_0
.end method


# virtual methods
.method public addToStorage(Lcom/microsoft/cll/android/SerializedEvent;Ljava/util/List;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/cll/android/SerializedEvent;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    sget-object v0, Lcom/microsoft/cll/android/EventHandler$1;->$SwitchMap$com$microsoft$cll$android$EventEnums$Persistence:[I

    invoke-virtual {p1}, Lcom/microsoft/cll/android/SerializedEvent;->getPersistence()Lcom/microsoft/cll/android/EventEnums$Persistence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "No space on disk to store events"

    const-string v2, "Could not add event to normal storage"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "AndroidCll-EventHandler"

    if-eq v0, v3, :cond_2

    const/4 v6, 0x2

    if-eq v0, v6, :cond_1

    iget-object v0, p0, Lcom/microsoft/cll/android/EventHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v6, "Unknown persistence"

    invoke-interface {v0, v5, v6}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/microsoft/cll/android/EventHandler;->$assertionsDisabled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/cll/android/EventHandler;->criticalHandler:Lcom/microsoft/cll/android/AbstractHandler;

    invoke-virtual {p1}, Lcom/microsoft/cll/android/SerializedEvent;->getSerializedData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/microsoft/cll/android/AbstractHandler;->add(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/microsoft/cll/android/FileStorage$FileFullException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iget-object p1, p0, Lcom/microsoft/cll/android/EventHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    invoke-interface {p1, v5, v1}, Lcom/microsoft/cll/android/ILogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :catch_1
    iget-object p1, p0, Lcom/microsoft/cll/android/EventHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    invoke-interface {p1, v5, v2}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_2
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/microsoft/cll/android/EventHandler;->normalHandler:Lcom/microsoft/cll/android/AbstractHandler;

    invoke-virtual {p1}, Lcom/microsoft/cll/android/SerializedEvent;->getSerializedData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/microsoft/cll/android/AbstractHandler;->add(Ljava/lang/String;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/microsoft/cll/android/FileStorage$FileFullException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    return v3

    :catch_2
    iget-object p1, p0, Lcom/microsoft/cll/android/EventHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    invoke-interface {p1, v5, v1}, Lcom/microsoft/cll/android/ILogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :catch_3
    iget-object p1, p0, Lcom/microsoft/cll/android/EventHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    invoke-interface {p1, v5, v2}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v4
.end method

.method public log(Lcom/microsoft/cll/android/SerializedEvent;Ljava/util/List;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/cll/android/SerializedEvent;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/microsoft/cll/android/EventHandler;->Filter(Lcom/microsoft/cll/android/SerializedEvent;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/microsoft/cll/android/EventQueueWriter;->getRunningThreadCount()I

    move-result v0

    sget-object v2, Lcom/microsoft/cll/android/SettingsStore$Settings;->MAXEVENTSIZEINBYTES:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v2}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsInt(Lcom/microsoft/cll/android/SettingsStore$Settings;)I

    move-result v2

    const/4 v10, 0x1

    if-lt v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {p1}, Lcom/microsoft/cll/android/SerializedEvent;->getLatency()Lcom/microsoft/cll/android/EventEnums$Latency;

    move-result-object v0

    sget-object v2, Lcom/microsoft/cll/android/EventEnums$Latency;->LatencyRealtime:Lcom/microsoft/cll/android/EventEnums$Latency;

    if-ne v0, v2, :cond_2

    iget-boolean v0, p0, Lcom/microsoft/cll/android/ScheduledWorker;->isPaused:Z

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    new-instance v11, Lcom/microsoft/cll/android/EventQueueWriter;

    iget-object v1, p0, Lcom/microsoft/cll/android/EventHandler;->endpoint:Ljava/net/URL;

    iget-object v4, p0, Lcom/microsoft/cll/android/EventHandler;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    iget-object v5, p0, Lcom/microsoft/cll/android/EventHandler;->cllEvents:Ljava/util/List;

    iget-object v6, p0, Lcom/microsoft/cll/android/EventHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    iget-object v7, p0, Lcom/microsoft/cll/android/ScheduledWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v9, p0, Lcom/microsoft/cll/android/EventHandler;->ticketCallback:Lcom/microsoft/cll/android/ITicketCallback;

    move-object v0, v11

    move-object v2, p1

    move-object v3, p2

    move-object v8, p0

    invoke-direct/range {v0 .. v9}, Lcom/microsoft/cll/android/EventQueueWriter;-><init>(Ljava/net/URL;Lcom/microsoft/cll/android/SerializedEvent;Ljava/util/List;Lcom/microsoft/cll/android/ClientTelemetry;Ljava/util/List;Lcom/microsoft/cll/android/ILogger;Ljava/util/concurrent/ScheduledExecutorService;Lcom/microsoft/cll/android/EventHandler;Lcom/microsoft/cll/android/ITicketCallback;)V

    invoke-direct {p0, v11}, Lcom/microsoft/cll/android/EventHandler;->startEventQueueWriter(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v10

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/microsoft/cll/android/EventHandler;->addToStorage(Lcom/microsoft/cll/android/SerializedEvent;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public run()V
    .registers 9

    iget-wide v0, p0, Lcom/microsoft/cll/android/ScheduledWorker;->interval:J

    sget-object v2, Lcom/microsoft/cll/android/SettingsStore$Settings;->QUEUEDRAININTERVAL:Lcom/microsoft/cll/android/SettingsStore$Settings;

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
    sget-object v0, Lcom/microsoft/cll/android/EventQueueWriter;->future:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/microsoft/cll/android/EventHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v1, "AndroidCll-EventHandler"

    const-string v2, "Retry logic in progress, skipping normal send"

    invoke-interface {v0, v1, v2}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/cll/android/EventHandler;->send()Z

    return-void
.end method

.method public send()Z
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/microsoft/cll/android/EventHandler;->send(Lcom/microsoft/cll/android/EventEnums$Persistence;)Z

    move-result v0

    return v0
.end method

.method public send(Lcom/microsoft/cll/android/EventEnums$Persistence;)Z
    .registers 11

    iget-boolean v0, p0, Lcom/microsoft/cll/android/ScheduledWorker;->isPaused:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x1

    const-string v1, "AndroidCll-EventHandler"

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/microsoft/cll/android/EventHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v2, "Draining All events"

    invoke-interface {p1, v1, v2}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/microsoft/cll/android/EventHandler;->normalHandler:Lcom/microsoft/cll/android/AbstractHandler;

    invoke-virtual {p1}, Lcom/microsoft/cll/android/AbstractHandler;->getFilesForDraining()Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/microsoft/cll/android/EventHandler;->criticalHandler:Lcom/microsoft/cll/android/AbstractHandler;

    invoke-virtual {v1}, Lcom/microsoft/cll/android/AbstractHandler;->getFilesForDraining()Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    move-object v3, p1

    goto :goto_2

    :cond_1
    sget-object v2, Lcom/microsoft/cll/android/EventHandler$1;->$SwitchMap$com$microsoft$cll$android$EventEnums$Persistence:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    if-eq p1, v0, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    iget-object p1, p0, Lcom/microsoft/cll/android/EventHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v2, "Unknown persistence"

    invoke-interface {p1, v1, v2}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean p1, Lcom/microsoft/cll/android/EventHandler;->$assertionsDisabled:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    move-object v3, v1

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    iget-object p1, p0, Lcom/microsoft/cll/android/EventHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v2, "Draining Critical events"

    invoke-interface {p1, v1, v2}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/microsoft/cll/android/EventHandler;->criticalHandler:Lcom/microsoft/cll/android/AbstractHandler;

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/microsoft/cll/android/EventHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v2, "Draining normal events"

    invoke-interface {p1, v1, v2}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/microsoft/cll/android/EventHandler;->normalHandler:Lcom/microsoft/cll/android/AbstractHandler;

    :goto_1
    invoke-virtual {p1}, Lcom/microsoft/cll/android/AbstractHandler;->getFilesForDraining()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :goto_2
    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_5

    new-instance p1, Lcom/microsoft/cll/android/EventQueueWriter;

    iget-object v2, p0, Lcom/microsoft/cll/android/EventHandler;->endpoint:Ljava/net/URL;

    iget-object v4, p0, Lcom/microsoft/cll/android/EventHandler;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    iget-object v5, p0, Lcom/microsoft/cll/android/EventHandler;->cllEvents:Ljava/util/List;

    iget-object v6, p0, Lcom/microsoft/cll/android/EventHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    iget-object v7, p0, Lcom/microsoft/cll/android/ScheduledWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v8, p0, Lcom/microsoft/cll/android/EventHandler;->ticketCallback:Lcom/microsoft/cll/android/ITicketCallback;

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/microsoft/cll/android/EventQueueWriter;-><init>(Ljava/net/URL;Ljava/util/List;Lcom/microsoft/cll/android/ClientTelemetry;Ljava/util/List;Lcom/microsoft/cll/android/ILogger;Ljava/util/concurrent/ScheduledExecutorService;Lcom/microsoft/cll/android/ITicketCallback;)V

    invoke-direct {p0, p1}, Lcom/microsoft/cll/android/EventHandler;->startEventQueueWriter(Ljava/lang/Runnable;)Z

    move-result p1

    return p1

    :cond_5
    return v0
.end method

.method public setEndpointUrl(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/microsoft/cll/android/EventHandler;->endpoint:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object p1, p0, Lcom/microsoft/cll/android/EventHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v0, "AndroidCll-EventHandler"

    const-string v1, "Bad Endpoint URL Form"

    invoke-interface {p1, v0, v1}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSender(Lcom/microsoft/cll/android/EventSender;)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/cll/android/EventHandler;->sender:Lcom/microsoft/cll/android/EventSender;

    return-void
.end method

.method public setXuidCallback(Lcom/microsoft/cll/android/ITicketCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/cll/android/EventHandler;->ticketCallback:Lcom/microsoft/cll/android/ITicketCallback;

    return-void
.end method

.method public stop()V
    .registers 2

    invoke-super {p0}, Lcom/microsoft/cll/android/ScheduledWorker;->stop()V

    iget-object v0, p0, Lcom/microsoft/cll/android/EventHandler;->normalHandler:Lcom/microsoft/cll/android/AbstractHandler;

    invoke-virtual {v0}, Lcom/microsoft/cll/android/AbstractHandler;->close()V

    iget-object v0, p0, Lcom/microsoft/cll/android/EventHandler;->criticalHandler:Lcom/microsoft/cll/android/AbstractHandler;

    invoke-virtual {v0}, Lcom/microsoft/cll/android/AbstractHandler;->close()V

    return-void
.end method

.method public synchronize()V
    .registers 2

    iget-object v0, p0, Lcom/microsoft/cll/android/EventHandler;->normalHandler:Lcom/microsoft/cll/android/AbstractHandler;

    check-cast v0, Lcom/microsoft/cll/android/NormalEventHandler;

    invoke-virtual {v0}, Lcom/microsoft/cll/android/NormalEventHandler;->writeQueueToDisk()V

    return-void
.end method
