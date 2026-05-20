.class public abstract Lcom/microsoft/cll/android/AbstractHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final criticalEventFileExtension:Ljava/lang/String; = ".crit.cllevent"

.field public static final normalEventFileExtension:Ljava/lang/String; = ".norm.cllevent"

.field public static totalStorageUsed:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final TAG:Ljava/lang/String;

.field public final clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

.field public filePath:Ljava/lang/String;

.field public fileStorage:Lcom/microsoft/cll/android/FileStorage;

.field public final logger:Lcom/microsoft/cll/android/ILogger;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/microsoft/cll/android/AbstractHandler;->totalStorageUsed:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/cll/android/ILogger;Ljava/lang/String;Lcom/microsoft/cll/android/ClientTelemetry;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AndroidCll-AbstractHandler"

    iput-object v0, p0, Lcom/microsoft/cll/android/AbstractHandler;->TAG:Ljava/lang/String;

    iput-object p2, p0, Lcom/microsoft/cll/android/AbstractHandler;->filePath:Ljava/lang/String;

    iput-object p1, p0, Lcom/microsoft/cll/android/AbstractHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    iput-object p3, p0, Lcom/microsoft/cll/android/AbstractHandler;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    invoke-direct {p0}, Lcom/microsoft/cll/android/AbstractHandler;->setFileStorageUsed()V

    return-void
.end method

.method private deleteFile(Ljava/io/File;)Z
    .registers 4

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/microsoft/cll/android/AbstractHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v1, "Exception while deleting the file: "

    .line 1
    invoke-static {v1}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AndroidCll-AbstractHandler"

    invoke-interface {v0, v1, p1}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method private setFileStorageUsed()V
    .registers 9

    sget-object v0, Lcom/microsoft/cll/android/AbstractHandler;->totalStorageUsed:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    const-string v0, ".crit.cllevent"

    invoke-virtual {p0, v0}, Lcom/microsoft/cll/android/AbstractHandler;->findExistingFiles(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    sget-object v5, Lcom/microsoft/cll/android/AbstractHandler;->totalStorageUsed:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v0, ".norm.cllevent"

    invoke-virtual {p0, v0}, Lcom/microsoft/cll/android/AbstractHandler;->findExistingFiles(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    sget-object v4, Lcom/microsoft/cll/android/AbstractHandler;->totalStorageUsed:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public abstract add(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public canAdd(Lcom/microsoft/cll/android/Tuple;)Z
    .registers 6

    sget-object v0, Lcom/microsoft/cll/android/AbstractHandler;->totalStorageUsed:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    iget-object p1, p1, Lcom/microsoft/cll/android/Tuple;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    sget-object p1, Lcom/microsoft/cll/android/SettingsStore$Settings;->MAXFILESSPACE:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {p1}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsInt(Lcom/microsoft/cll/android/SettingsStore$Settings;)I

    move-result p1

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public abstract close()V
.end method

.method public abstract dispose(Lcom/microsoft/cll/android/IStorage;)V
.end method

.method public dropOldestFile(Z)Z
    .registers 11

    const-string v0, ".norm.cllevent"

    invoke-virtual {p0, v0}, Lcom/microsoft/cll/android/AbstractHandler;->findExistingFiles(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    if-eqz p1, :cond_0

    const-string p1, ".crit.cllevent"

    invoke-virtual {p0, p1}, Lcom/microsoft/cll/android/AbstractHandler;->findExistingFiles(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    :cond_0
    array-length p1, v0

    const/4 v1, 0x0

    if-gt p1, v2, :cond_1

    iget-object p1, p0, Lcom/microsoft/cll/android/AbstractHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v0, "AndroidCll-AbstractHandler"

    const-string v2, "There are no files to delete"

    invoke-interface {p1, v0, v2}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    aget-object p1, v0, v1

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    aget-object p1, v0, v1

    array-length v4, v0

    :goto_0
    if-ge v1, v4, :cond_3

    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    cmp-long v8, v6, v2

    if-gez v8, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    move-object p1, v5

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-direct {p0, p1}, Lcom/microsoft/cll/android/AbstractHandler;->deleteFile(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object v2, Lcom/microsoft/cll/android/AbstractHandler;->totalStorageUsed:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v0, v0

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    return p1

    :cond_4
    move v1, p1

    :goto_1
    return v1
.end method

.method public ensureCanAdd(Lcom/microsoft/cll/android/Tuple;Lcom/microsoft/cll/android/EventEnums$Persistence;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/cll/android/Tuple<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/microsoft/cll/android/EventEnums$Persistence;",
            ")Z"
        }
    .end annotation

    sget-object v0, Lcom/microsoft/cll/android/SettingsStore$Settings;->MAXCRITICALCANADDATTEMPTS:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v0}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsInt(Lcom/microsoft/cll/android/SettingsStore$Settings;)I

    move-result v0

    sget-object v1, Lcom/microsoft/cll/android/EventEnums$Persistence;->PersistenceCritical:Lcom/microsoft/cll/android/EventEnums$Persistence;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p2, v1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/microsoft/cll/android/AbstractHandler;->canAdd(Lcom/microsoft/cll/android/Tuple;)Z

    move-result v1

    :goto_1
    if-nez v1, :cond_1

    if-ge v2, v0, :cond_1

    if-eqz v3, :cond_1

    iget-object v1, p0, Lcom/microsoft/cll/android/AbstractHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v3, "AndroidCll-AbstractHandler"

    const-string v4, "Out of storage space. Attempting to drop one oldest file."

    invoke-interface {v1, v3, v4}, Lcom/microsoft/cll/android/ILogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/microsoft/cll/android/AbstractHandler;->dropOldestFile(Z)Z

    move-result v3

    invoke-virtual {p0, p1}, Lcom/microsoft/cll/android/AbstractHandler;->canAdd(Lcom/microsoft/cll/android/Tuple;)Z

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return v1
.end method

.method public findExistingFiles(Ljava/lang/String;)[Ljava/io/File;
    .registers 4

    new-instance v0, Lcom/microsoft/cll/android/AbstractHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/microsoft/cll/android/AbstractHandler$1;-><init>(Lcom/microsoft/cll/android/AbstractHandler;Ljava/lang/String;)V

    new-instance p1, Ljava/io/File;

    iget-object v1, p0, Lcom/microsoft/cll/android/AbstractHandler;->filePath:Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/io/File;

    :cond_0
    return-object p1
.end method

.method public getFilesByExtensionForDraining(Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/microsoft/cll/android/IStorage;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/microsoft/cll/android/AbstractHandler;->findExistingFiles(Ljava/lang/String;)[Ljava/io/File;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    :try_start_0
    new-instance v4, Lcom/microsoft/cll/android/FileStorage;

    iget-object v5, p0, Lcom/microsoft/cll/android/AbstractHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, p0}, Lcom/microsoft/cll/android/FileStorage;-><init>(Lcom/microsoft/cll/android/ILogger;Ljava/lang/String;Lcom/microsoft/cll/android/AbstractHandler;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Lcom/microsoft/cll/android/IStorage;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iget-object v4, p0, Lcom/microsoft/cll/android/AbstractHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v5, "File "

    .line 1
    invoke-static {v5}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is in use still"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "AndroidCll-AbstractHandler"

    invoke-interface {v4, v5, v3}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public abstract getFilesForDraining()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/cll/android/IStorage;",
            ">;"
        }
    .end annotation
.end method
