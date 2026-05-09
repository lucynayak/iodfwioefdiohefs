.class public Lcom/microsoft/cll/android/CriticalEventHandler;
.super Lcom/microsoft/cll/android/AbstractHandler;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/microsoft/cll/android/ILogger;Ljava/lang/String;Lcom/microsoft/cll/android/ClientTelemetry;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/cll/android/AbstractHandler;-><init>(Lcom/microsoft/cll/android/ILogger;Ljava/lang/String;Lcom/microsoft/cll/android/ClientTelemetry;)V

    const-string p3, "AndroidCll-CriticalEventHandler"

    iput-object p3, p0, Lcom/microsoft/cll/android/CriticalEventHandler;->TAG:Ljava/lang/String;

    new-instance p3, Lcom/microsoft/cll/android/FileStorage;

    const-string v0, ".crit.cllevent"

    invoke-direct {p3, v0, p1, p2, p0}, Lcom/microsoft/cll/android/FileStorage;-><init>(Ljava/lang/String;Lcom/microsoft/cll/android/ILogger;Ljava/lang/String;Lcom/microsoft/cll/android/AbstractHandler;)V

    iput-object p3, p0, Lcom/microsoft/cll/android/AbstractHandler;->fileStorage:Lcom/microsoft/cll/android/FileStorage;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/microsoft/cll/android/Tuple;

    invoke-direct {v0, p1, p2}, Lcom/microsoft/cll/android/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p2, Lcom/microsoft/cll/android/EventEnums$Persistence;->PersistenceCritical:Lcom/microsoft/cll/android/EventEnums$Persistence;

    invoke-virtual {p0, v0, p2}, Lcom/microsoft/cll/android/AbstractHandler;->ensureCanAdd(Lcom/microsoft/cll/android/Tuple;Lcom/microsoft/cll/android/EventEnums$Persistence;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/microsoft/cll/android/AbstractHandler;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    invoke-virtual {p2}, Lcom/microsoft/cll/android/ClientTelemetry;->IncrementEventsDroppedDueToQuota()V

    iget-object p2, p0, Lcom/microsoft/cll/android/AbstractHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v1, "AndroidCll-CriticalEventHandler"

    const-string v2, "Out of storage space for critical events. Logged event was dropped."

    invoke-interface {p2, v1, v2}, Lcom/microsoft/cll/android/ILogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p2, p0, Lcom/microsoft/cll/android/AbstractHandler;->fileStorage:Lcom/microsoft/cll/android/FileStorage;

    invoke-virtual {p2, v0}, Lcom/microsoft/cll/android/FileStorage;->canAdd(Lcom/microsoft/cll/android/Tuple;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/microsoft/cll/android/AbstractHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v1, "AndroidCll-CriticalEventHandler"

    const-string v2, "Closing full file and opening a new one"

    invoke-interface {p2, v1, v2}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/microsoft/cll/android/AbstractHandler;->fileStorage:Lcom/microsoft/cll/android/FileStorage;

    invoke-virtual {p2}, Lcom/microsoft/cll/android/FileStorage;->close()V

    new-instance p2, Lcom/microsoft/cll/android/FileStorage;

    const-string v1, ".crit.cllevent"

    iget-object v2, p0, Lcom/microsoft/cll/android/AbstractHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    iget-object v3, p0, Lcom/microsoft/cll/android/AbstractHandler;->filePath:Ljava/lang/String;

    invoke-direct {p2, v1, v2, v3, p0}, Lcom/microsoft/cll/android/FileStorage;-><init>(Ljava/lang/String;Lcom/microsoft/cll/android/ILogger;Ljava/lang/String;Lcom/microsoft/cll/android/AbstractHandler;)V

    iput-object p2, p0, Lcom/microsoft/cll/android/AbstractHandler;->fileStorage:Lcom/microsoft/cll/android/FileStorage;

    :cond_1
    iget-object p2, p0, Lcom/microsoft/cll/android/AbstractHandler;->fileStorage:Lcom/microsoft/cll/android/FileStorage;

    invoke-virtual {p2, v0}, Lcom/microsoft/cll/android/FileStorage;->add(Lcom/microsoft/cll/android/Tuple;)V

    sget-object p2, Lcom/microsoft/cll/android/AbstractHandler;->totalStorageUsed:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    iget-object p1, p0, Lcom/microsoft/cll/android/AbstractHandler;->fileStorage:Lcom/microsoft/cll/android/FileStorage;

    invoke-virtual {p1}, Lcom/microsoft/cll/android/FileStorage;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public close()V
    .locals 3

    iget-object v0, p0, Lcom/microsoft/cll/android/AbstractHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v1, "AndroidCll-CriticalEventHandler"

    const-string v2, "Closing critical file"

    invoke-interface {v0, v1, v2}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/microsoft/cll/android/AbstractHandler;->fileStorage:Lcom/microsoft/cll/android/FileStorage;

    invoke-virtual {v0}, Lcom/microsoft/cll/android/FileStorage;->close()V

    return-void
.end method

.method public dispose(Lcom/microsoft/cll/android/IStorage;)V
    .locals 5

    sget-object v0, Lcom/microsoft/cll/android/AbstractHandler;->totalStorageUsed:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-interface {p1}, Lcom/microsoft/cll/android/IStorage;->size()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    mul-long v1, v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    return-void
.end method

.method public getFilesForDraining()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/cll/android/IStorage;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/microsoft/cll/android/AbstractHandler;->fileStorage:Lcom/microsoft/cll/android/FileStorage;

    invoke-virtual {v0}, Lcom/microsoft/cll/android/FileStorage;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lcom/microsoft/cll/android/AbstractHandler;->fileStorage:Lcom/microsoft/cll/android/FileStorage;

    invoke-virtual {v0}, Lcom/microsoft/cll/android/FileStorage;->close()V

    const-string v0, ".crit.cllevent"

    invoke-virtual {p0, v0}, Lcom/microsoft/cll/android/AbstractHandler;->getFilesByExtensionForDraining(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/microsoft/cll/android/FileStorage;

    const-string v2, ".crit.cllevent"

    iget-object v3, p0, Lcom/microsoft/cll/android/AbstractHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    iget-object v4, p0, Lcom/microsoft/cll/android/AbstractHandler;->filePath:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, p0}, Lcom/microsoft/cll/android/FileStorage;-><init>(Ljava/lang/String;Lcom/microsoft/cll/android/ILogger;Ljava/lang/String;Lcom/microsoft/cll/android/AbstractHandler;)V

    iput-object v1, p0, Lcom/microsoft/cll/android/AbstractHandler;->fileStorage:Lcom/microsoft/cll/android/FileStorage;

    goto :goto_0

    :cond_0
    const-string v0, ".crit.cllevent"

    invoke-virtual {p0, v0}, Lcom/microsoft/cll/android/AbstractHandler;->getFilesByExtensionForDraining(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
