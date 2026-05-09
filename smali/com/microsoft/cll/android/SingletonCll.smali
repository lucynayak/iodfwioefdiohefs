.class public Lcom/microsoft/cll/android/SingletonCll;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/cll/android/ISingletonCll;


# static fields
.field private static Instance:Lcom/microsoft/cll/android/SingletonCll;

.field private static InstanceLock:Ljava/lang/Object;


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

.field public final cllEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/microsoft/cll/android/ICllEvents;",
            ">;"
        }
    .end annotation
.end field

.field public correlationVector:Lcom/microsoft/cll/android/CorrelationVector;

.field public eventHandler:Lcom/microsoft/cll/android/EventHandler;

.field private executor:Ljava/util/concurrent/ScheduledExecutorService;

.field private final isChanging:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public logger:Lcom/microsoft/cll/android/ILogger;

.field public partA:Lcom/microsoft/cll/android/PartA;

.field public settingsSync:Lcom/microsoft/cll/android/SettingsSync;

.field public snapshotScheduler:Lcom/microsoft/cll/android/SnapshotScheduler;

.field private ticketCallback:Lcom/microsoft/cll/android/ITicketCallback;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/microsoft/cll/android/SingletonCll;->InstanceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/microsoft/cll/android/ILogger;Ljava/lang/String;Lcom/microsoft/cll/android/PartA;Lcom/microsoft/cll/android/CorrelationVector;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AndroidCll-SingletonCll"

    iput-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->TAG:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string v0, ""

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/microsoft/cll/android/Verbosity;->NONE:Lcom/microsoft/cll/android/Verbosity;

    invoke-interface {p2, v0}, Lcom/microsoft/cll/android/ILogger;->setVerbosity(Lcom/microsoft/cll/android/Verbosity;)V

    iput-object p5, p0, Lcom/microsoft/cll/android/SingletonCll;->correlationVector:Lcom/microsoft/cll/android/CorrelationVector;

    iput-object p2, p0, Lcom/microsoft/cll/android/SingletonCll;->logger:Lcom/microsoft/cll/android/ILogger;

    iput-object p4, p0, Lcom/microsoft/cll/android/SingletonCll;->partA:Lcom/microsoft/cll/android/PartA;

    new-instance p5, Lcom/microsoft/cll/android/ClientTelemetry;

    invoke-direct {p5}, Lcom/microsoft/cll/android/ClientTelemetry;-><init>()V

    iput-object p5, p0, Lcom/microsoft/cll/android/SingletonCll;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->cllEvents:Ljava/util/List;

    new-instance v1, Lcom/microsoft/cll/android/EventHandler;

    invoke-direct {v1, p5, v0, p2, p3}, Lcom/microsoft/cll/android/EventHandler;-><init>(Lcom/microsoft/cll/android/ClientTelemetry;Ljava/util/List;Lcom/microsoft/cll/android/ILogger;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/microsoft/cll/android/SingletonCll;->eventHandler:Lcom/microsoft/cll/android/EventHandler;

    new-instance p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p3, p0, Lcom/microsoft/cll/android/SingletonCll;->isChanging:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p3, p0, Lcom/microsoft/cll/android/SingletonCll;->isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p3, p0, Lcom/microsoft/cll/android/SingletonCll;->isPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p3, Lcom/microsoft/cll/android/SettingsSync;

    invoke-direct {p3, p5, p2, p1, p4}, Lcom/microsoft/cll/android/SettingsSync;-><init>(Lcom/microsoft/cll/android/ClientTelemetry;Lcom/microsoft/cll/android/ILogger;Ljava/lang/String;Lcom/microsoft/cll/android/PartA;)V

    iput-object p3, p0, Lcom/microsoft/cll/android/SingletonCll;->settingsSync:Lcom/microsoft/cll/android/SettingsSync;

    new-instance p1, Lcom/microsoft/cll/android/SnapshotScheduler;

    invoke-direct {p1, p5, p2, p0}, Lcom/microsoft/cll/android/SnapshotScheduler;-><init>(Lcom/microsoft/cll/android/ClientTelemetry;Lcom/microsoft/cll/android/ILogger;Lcom/microsoft/cll/android/ISingletonCll;)V

    iput-object p1, p0, Lcom/microsoft/cll/android/SingletonCll;->snapshotScheduler:Lcom/microsoft/cll/android/SnapshotScheduler;

    sget-object p1, Lcom/microsoft/cll/android/SettingsStore$Settings;->VORTEXPRODURL:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {p1}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsString(Lcom/microsoft/cll/android/SettingsStore$Settings;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/cll/android/SingletonCll;->setEndpointUrl(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "iKey cannot be null or \"\""

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getInstance(Ljava/lang/String;Lcom/microsoft/cll/android/ILogger;Ljava/lang/String;Lcom/microsoft/cll/android/PartA;Lcom/microsoft/cll/android/CorrelationVector;)Lcom/microsoft/cll/android/ISingletonCll;
    .registers 13

    sget-object v0, Lcom/microsoft/cll/android/SingletonCll;->Instance:Lcom/microsoft/cll/android/SingletonCll;

    if-nez v0, :cond_1

    sget-object v0, Lcom/microsoft/cll/android/SingletonCll;->InstanceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/microsoft/cll/android/SingletonCll;->Instance:Lcom/microsoft/cll/android/SingletonCll;

    if-nez v1, :cond_0

    new-instance v1, Lcom/microsoft/cll/android/SingletonCll;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/microsoft/cll/android/SingletonCll;-><init>(Ljava/lang/String;Lcom/microsoft/cll/android/ILogger;Ljava/lang/String;Lcom/microsoft/cll/android/PartA;Lcom/microsoft/cll/android/CorrelationVector;)V

    sput-object v1, Lcom/microsoft/cll/android/SingletonCll;->Instance:Lcom/microsoft/cll/android/SingletonCll;

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
    sget-object p0, Lcom/microsoft/cll/android/SingletonCll;->Instance:Lcom/microsoft/cll/android/SingletonCll;

    return-object p0
.end method


# virtual methods
.method public SubscribeCllEvents(Lcom/microsoft/cll/android/ICllEvents;)V
    .registers 2

    return-void
.end method

.method public getAppUserId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->partA:Lcom/microsoft/cll/android/PartA;

    invoke-virtual {v0}, Lcom/microsoft/cll/android/PartA;->getAppUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public log(Lcom/microsoft/telemetry/Base;Lcom/microsoft/cll/android/EventEnums$Latency;Lcom/microsoft/cll/android/EventEnums$Persistence;Ljava/util/EnumSet;DLjava/util/List;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/telemetry/Base;",
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

    move-object/from16 v9, p7

    iget-object v1, v0, Lcom/microsoft/cll/android/SingletonCll;->isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const-string v2, "AndroidCll-SingletonCll"

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/microsoft/cll/android/SingletonCll;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v3, "Cll must be started before logging events"

    invoke-interface {v1, v2, v3}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz v9, :cond_1

    iget-object v1, v0, Lcom/microsoft/cll/android/SingletonCll;->ticketCallback:Lcom/microsoft/cll/android/ITicketCallback;

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/microsoft/cll/android/SingletonCll;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v3, "You must set the ticket callback if you want to log ids with your events"

    invoke-interface {v1, v2, v3}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, v0, Lcom/microsoft/cll/android/SingletonCll;->partA:Lcom/microsoft/cll/android/PartA;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/microsoft/cll/android/PartA;->populate(Lcom/microsoft/telemetry/Base;Lcom/microsoft/cll/android/EventEnums$Latency;Lcom/microsoft/cll/android/EventEnums$Persistence;Ljava/util/EnumSet;DLjava/util/List;)Lcom/microsoft/cll/android/SerializedEvent;

    move-result-object v1

    iget-object v2, v0, Lcom/microsoft/cll/android/SingletonCll;->eventHandler:Lcom/microsoft/cll/android/EventHandler;

    invoke-virtual {v2, v1, v9}, Lcom/microsoft/cll/android/EventHandler;->log(Lcom/microsoft/cll/android/SerializedEvent;Ljava/util/List;)Z

    return-void
.end method

.method public pause()V
    .registers 4

    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->isChanging:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->isPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->eventHandler:Lcom/microsoft/cll/android/EventHandler;

    invoke-virtual {v0}, Lcom/microsoft/cll/android/ScheduledWorker;->pause()V

    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->settingsSync:Lcom/microsoft/cll/android/SettingsSync;

    invoke-virtual {v0}, Lcom/microsoft/cll/android/ScheduledWorker;->pause()V

    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->snapshotScheduler:Lcom/microsoft/cll/android/SnapshotScheduler;

    invoke-virtual {v0}, Lcom/microsoft/cll/android/ScheduledWorker;->pause()V

    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->isPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->isChanging:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    return-void
.end method

.method public resume()V
    .registers 4

    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->isChanging:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->isPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/microsoft/cll/android/SettingsStore$Settings;->THREADSTOUSEWITHEXECUTOR:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v0}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsInt(Lcom/microsoft/cll/android/SettingsStore$Settings;)I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v2, p0, Lcom/microsoft/cll/android/SingletonCll;->snapshotScheduler:Lcom/microsoft/cll/android/SnapshotScheduler;

    invoke-virtual {v2, v0}, Lcom/microsoft/cll/android/SnapshotScheduler;->resume(Ljava/util/concurrent/ScheduledExecutorService;)V

    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->eventHandler:Lcom/microsoft/cll/android/EventHandler;

    iget-object v2, p0, Lcom/microsoft/cll/android/SingletonCll;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, v2}, Lcom/microsoft/cll/android/ScheduledWorker;->resume(Ljava/util/concurrent/ScheduledExecutorService;)V

    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->settingsSync:Lcom/microsoft/cll/android/SettingsSync;

    iget-object v2, p0, Lcom/microsoft/cll/android/SingletonCll;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, v2}, Lcom/microsoft/cll/android/ScheduledWorker;->resume(Ljava/util/concurrent/ScheduledExecutorService;)V

    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->isPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->isChanging:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    return-void
.end method

.method public send()V
    .registers 4

    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->eventHandler:Lcom/microsoft/cll/android/EventHandler;

    invoke-virtual {v0}, Lcom/microsoft/cll/android/EventHandler;->send()Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v1, "AndroidCll-SingletonCll"

    const-string v2, "Cannot send while the CLL is stopped."

    invoke-interface {v0, v1, v2}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAppUserId(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->partA:Lcom/microsoft/cll/android/PartA;

    invoke-virtual {v0, p1}, Lcom/microsoft/cll/android/PartA;->setAppUserId(Ljava/lang/String;)V

    return-void
.end method

.method public setDebugVerbosity(Lcom/microsoft/cll/android/Verbosity;)V
    .registers 3

    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->logger:Lcom/microsoft/cll/android/ILogger;

    invoke-interface {v0, p1}, Lcom/microsoft/cll/android/ILogger;->setVerbosity(Lcom/microsoft/cll/android/Verbosity;)V

    return-void
.end method

.method public setEndpointUrl(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->eventHandler:Lcom/microsoft/cll/android/EventHandler;

    invoke-virtual {v0, p1}, Lcom/microsoft/cll/android/EventHandler;->setEndpointUrl(Ljava/lang/String;)V

    return-void
.end method

.method public setEventSender(Lcom/microsoft/cll/android/EventSender;)V
    .registers 3

    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->eventHandler:Lcom/microsoft/cll/android/EventHandler;

    invoke-virtual {v0, p1}, Lcom/microsoft/cll/android/EventHandler;->setSender(Lcom/microsoft/cll/android/EventSender;)V

    return-void
.end method

.method public setExperimentId(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->partA:Lcom/microsoft/cll/android/PartA;

    invoke-virtual {v0, p1}, Lcom/microsoft/cll/android/PartA;->setExpId(Ljava/lang/String;)V

    return-void
.end method

.method public setXuidCallback(Lcom/microsoft/cll/android/ITicketCallback;)V
    .registers 4

    iput-object p1, p0, Lcom/microsoft/cll/android/SingletonCll;->ticketCallback:Lcom/microsoft/cll/android/ITicketCallback;

    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->isPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->eventHandler:Lcom/microsoft/cll/android/EventHandler;

    invoke-virtual {v0, p1}, Lcom/microsoft/cll/android/EventHandler;->setXuidCallback(Lcom/microsoft/cll/android/ITicketCallback;)V

    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/microsoft/cll/android/SingletonCll;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v0, "AndroidCll-SingletonCll"

    const-string v1, "Xuid callback must be set before start."

    invoke-interface {p1, v0, v1}, Lcom/microsoft/cll/android/ILogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public start()V
    .registers 5

    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->isChanging:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v3, p0, Lcom/microsoft/cll/android/SingletonCll;->snapshotScheduler:Lcom/microsoft/cll/android/SnapshotScheduler;

    invoke-virtual {v3, v0}, Lcom/microsoft/cll/android/SnapshotScheduler;->start(Ljava/util/concurrent/ScheduledExecutorService;)V

    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->eventHandler:Lcom/microsoft/cll/android/EventHandler;

    iget-object v3, p0, Lcom/microsoft/cll/android/SingletonCll;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, v3}, Lcom/microsoft/cll/android/ScheduledWorker;->start(Ljava/util/concurrent/ScheduledExecutorService;)V

    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->settingsSync:Lcom/microsoft/cll/android/SettingsSync;

    iget-object v3, p0, Lcom/microsoft/cll/android/SingletonCll;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, v3}, Lcom/microsoft/cll/android/ScheduledWorker;->start(Ljava/util/concurrent/ScheduledExecutorService;)V

    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->isChanging:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    return-void
.end method

.method public stop()V
    .registers 4

    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->isChanging:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->eventHandler:Lcom/microsoft/cll/android/EventHandler;

    invoke-virtual {v0}, Lcom/microsoft/cll/android/EventHandler;->stop()V

    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->settingsSync:Lcom/microsoft/cll/android/SettingsSync;

    invoke-virtual {v0}, Lcom/microsoft/cll/android/ScheduledWorker;->stop()V

    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->snapshotScheduler:Lcom/microsoft/cll/android/SnapshotScheduler;

    invoke-virtual {v0}, Lcom/microsoft/cll/android/ScheduledWorker;->stop()V

    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->cllEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/cll/android/ICllEvents;

    invoke-interface {v2}, Lcom/microsoft/cll/android/ICllEvents;->stopped()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->isChanging:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2
    return-void
.end method

.method public synchronize()V
    .registers 2

    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->eventHandler:Lcom/microsoft/cll/android/EventHandler;

    invoke-virtual {v0}, Lcom/microsoft/cll/android/EventHandler;->synchronize()V

    return-void
.end method

.method public useLegacyCS(Z)V
    .registers 3

    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->partA:Lcom/microsoft/cll/android/PartA;

    invoke-virtual {v0, p1}, Lcom/microsoft/cll/android/PartA;->useLegacyCS(Z)V

    return-void
.end method
