.class public Lcom/microsoft/cll/android/NormalEventHandler;
.super Lcom/microsoft/cll/android/AbstractHandler;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final queueSize:I

.field private queueStorage:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "Lcom/microsoft/cll/android/Tuple<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/microsoft/cll/android/ILogger;Ljava/lang/String;Lcom/microsoft/cll/android/ClientTelemetry;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/cll/android/AbstractHandler;-><init>(Lcom/microsoft/cll/android/ILogger;Ljava/lang/String;Lcom/microsoft/cll/android/ClientTelemetry;)V

    const-string p3, "AndroidCll-NormalEventHandler"

    iput-object p3, p0, Lcom/microsoft/cll/android/NormalEventHandler;->TAG:Ljava/lang/String;

    sget-object p3, Lcom/microsoft/cll/android/SettingsStore$Settings;->NORMALEVENTMEMORYQUEUESIZE:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {p3}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsInt(Lcom/microsoft/cll/android/SettingsStore$Settings;)I

    move-result p3

    iput p3, p0, Lcom/microsoft/cll/android/NormalEventHandler;->queueSize:I

    new-instance v0, Lcom/microsoft/cll/android/FileStorage;

    const-string v1, ".norm.cllevent"

    invoke-direct {v0, v1, p1, p2, p0}, Lcom/microsoft/cll/android/FileStorage;-><init>(Ljava/lang/String;Lcom/microsoft/cll/android/ILogger;Ljava/lang/String;Lcom/microsoft/cll/android/AbstractHandler;)V

    iput-object v0, p0, Lcom/microsoft/cll/android/AbstractHandler;->fileStorage:Lcom/microsoft/cll/android/FileStorage;

    new-instance p1, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {p1, p3}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object p1, p0, Lcom/microsoft/cll/android/NormalEventHandler;->queueStorage:Ljava/util/concurrent/ArrayBlockingQueue;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
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

    iget-object p1, p0, Lcom/microsoft/cll/android/NormalEventHandler;->queueStorage:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/microsoft/cll/android/NormalEventHandler;->writeQueueToDisk()V

    iget-object p1, p0, Lcom/microsoft/cll/android/NormalEventHandler;->queueStorage:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
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

    const-string v1, "AndroidCll-NormalEventHandler"

    const-string v2, "Closing normal file"

    invoke-interface {v0, v1, v2}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/microsoft/cll/android/NormalEventHandler;->writeQueueToDisk()V

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
    iget-object v0, p0, Lcom/microsoft/cll/android/NormalEventHandler;->queueStorage:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/microsoft/cll/android/NormalEventHandler;->writeQueueToDisk()V

    :cond_0
    iget-object v0, p0, Lcom/microsoft/cll/android/AbstractHandler;->fileStorage:Lcom/microsoft/cll/android/FileStorage;

    invoke-virtual {v0}, Lcom/microsoft/cll/android/FileStorage;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    iget-object v0, p0, Lcom/microsoft/cll/android/AbstractHandler;->fileStorage:Lcom/microsoft/cll/android/FileStorage;

    invoke-virtual {v0}, Lcom/microsoft/cll/android/FileStorage;->close()V

    const-string v0, ".norm.cllevent"

    invoke-virtual {p0, v0}, Lcom/microsoft/cll/android/AbstractHandler;->getFilesByExtensionForDraining(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/microsoft/cll/android/FileStorage;

    const-string v2, ".norm.cllevent"

    iget-object v3, p0, Lcom/microsoft/cll/android/AbstractHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    iget-object v4, p0, Lcom/microsoft/cll/android/AbstractHandler;->filePath:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, p0}, Lcom/microsoft/cll/android/FileStorage;-><init>(Ljava/lang/String;Lcom/microsoft/cll/android/ILogger;Ljava/lang/String;Lcom/microsoft/cll/android/AbstractHandler;)V

    iput-object v1, p0, Lcom/microsoft/cll/android/AbstractHandler;->fileStorage:Lcom/microsoft/cll/android/FileStorage;

    goto :goto_0

    :cond_1
    const-string v0, ".norm.cllevent"

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

.method public writeQueueToDisk()V
    .locals 6

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/microsoft/cll/android/NormalEventHandler;->queueSize:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/microsoft/cll/android/NormalEventHandler;->queueStorage:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->drainTo(Ljava/util/Collection;)I

    iget-object v1, p0, Lcom/microsoft/cll/android/AbstractHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v2, "AndroidCll-NormalEventHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Writing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " events to disk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/cll/android/Tuple;

    sget-object v2, Lcom/microsoft/cll/android/EventEnums$Persistence;->PersistenceNormal:Lcom/microsoft/cll/android/EventEnums$Persistence;

    invoke-virtual {p0, v1, v2}, Lcom/microsoft/cll/android/AbstractHandler;->ensureCanAdd(Lcom/microsoft/cll/android/Tuple;Lcom/microsoft/cll/android/EventEnums$Persistence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, p0, Lcom/microsoft/cll/android/AbstractHandler;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    invoke-virtual {v1}, Lcom/microsoft/cll/android/ClientTelemetry;->IncrementEventsDroppedDueToQuota()V

    iget-object v1, p0, Lcom/microsoft/cll/android/AbstractHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v2, "AndroidCll-NormalEventHandler"

    const-string v3, "Out of storage space for normal events. Logged event was dropped."

    invoke-interface {v1, v2, v3}, Lcom/microsoft/cll/android/ILogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/microsoft/cll/android/AbstractHandler;->fileStorage:Lcom/microsoft/cll/android/FileStorage;

    invoke-virtual {v2, v1}, Lcom/microsoft/cll/android/FileStorage;->canAdd(Lcom/microsoft/cll/android/Tuple;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/microsoft/cll/android/AbstractHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v3, "AndroidCll-NormalEventHandler"

    const-string v4, "Closing full file and opening a new one"

    invoke-interface {v2, v3, v4}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/microsoft/cll/android/AbstractHandler;->fileStorage:Lcom/microsoft/cll/android/FileStorage;

    invoke-virtual {v2}, Lcom/microsoft/cll/android/FileStorage;->close()V

    new-instance v2, Lcom/microsoft/cll/android/FileStorage;

    const-string v3, ".norm.cllevent"

    iget-object v4, p0, Lcom/microsoft/cll/android/AbstractHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    iget-object v5, p0, Lcom/microsoft/cll/android/AbstractHandler;->filePath:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, p0}, Lcom/microsoft/cll/android/FileStorage;-><init>(Ljava/lang/String;Lcom/microsoft/cll/android/ILogger;Ljava/lang/String;Lcom/microsoft/cll/android/AbstractHandler;)V

    iput-object v2, p0, Lcom/microsoft/cll/android/AbstractHandler;->fileStorage:Lcom/microsoft/cll/android/FileStorage;

    :cond_1
    iget-object v2, p0, Lcom/microsoft/cll/android/AbstractHandler;->fileStorage:Lcom/microsoft/cll/android/FileStorage;

    invoke-virtual {v2, v1}, Lcom/microsoft/cll/android/FileStorage;->add(Lcom/microsoft/cll/android/Tuple;)V

    sget-object v2, Lcom/microsoft/cll/android/AbstractHandler;->totalStorageUsed:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, v1, Lcom/microsoft/cll/android/Tuple;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/microsoft/cll/android/AbstractHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v1, "AndroidCll-NormalEventHandler"

    const-string v2, "Could not write events to disk"

    invoke-interface {v0, v1, v2}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/microsoft/cll/android/AbstractHandler;->fileStorage:Lcom/microsoft/cll/android/FileStorage;

    invoke-virtual {v0}, Lcom/microsoft/cll/android/FileStorage;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method
