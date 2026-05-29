.class public Lcom/microsoft/cll/android/FileStorage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/cll/android/IStorage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/cll/android/FileStorage$FileFullException;
    }
.end annotation


# static fields
.field public static final fileLockList:Lcom/microsoft/cll/android/SynchronizedArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/cll/android/SynchronizedArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;

.field private eventsWritten:I

.field private filePathAndName:Ljava/lang/String;

.field private fileSize:J

.field private inputFile:Ljava/io/FileReader;

.field private isOpen:Z

.field private isWritable:Z

.field private final logger:Lcom/microsoft/cll/android/ILogger;

.field private outputFile:Ljava/io/FileWriter;

.field private parent:Lcom/microsoft/cll/android/AbstractHandler;

.field private reader:Ljava/io/BufferedReader;

.field private final serializer:Lcom/microsoft/cll/android/EventSerializer;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/microsoft/cll/android/SynchronizedArrayList;

    invoke-direct {v0}, Lcom/microsoft/cll/android/SynchronizedArrayList;-><init>()V

    sput-object v0, Lcom/microsoft/cll/android/FileStorage;->fileLockList:Lcom/microsoft/cll/android/SynchronizedArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/cll/android/ILogger;Ljava/lang/String;Lcom/microsoft/cll/android/AbstractHandler;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AndroidCll-FileStorage"

    iput-object v0, p0, Lcom/microsoft/cll/android/FileStorage;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/microsoft/cll/android/FileStorage;->logger:Lcom/microsoft/cll/android/ILogger;

    new-instance v0, Lcom/microsoft/cll/android/EventSerializer;

    invoke-direct {v0, p1}, Lcom/microsoft/cll/android/EventSerializer;-><init>(Lcom/microsoft/cll/android/ILogger;)V

    iput-object v0, p0, Lcom/microsoft/cll/android/FileStorage;->serializer:Lcom/microsoft/cll/android/EventSerializer;

    iput-object p2, p0, Lcom/microsoft/cll/android/FileStorage;->filePathAndName:Ljava/lang/String;

    iput-object p3, p0, Lcom/microsoft/cll/android/FileStorage;->parent:Lcom/microsoft/cll/android/AbstractHandler;

    sget-object p1, Lcom/microsoft/cll/android/FileStorage;->fileLockList:Lcom/microsoft/cll/android/SynchronizedArrayList;

    invoke-virtual {p1, p2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Could not get lock for file"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/microsoft/cll/android/ILogger;Ljava/lang/String;Lcom/microsoft/cll/android/AbstractHandler;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AndroidCll-FileStorage"

    iput-object v0, p0, Lcom/microsoft/cll/android/FileStorage;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/microsoft/cll/android/FileStorage;->eventsWritten:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/microsoft/cll/android/FileStorage;->fileSize:J

    .line 1
    invoke-static {p3}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/cll/android/FileStorage;->filePathAndName:Ljava/lang/String;

    iput-object p2, p0, Lcom/microsoft/cll/android/FileStorage;->logger:Lcom/microsoft/cll/android/ILogger;

    new-instance v1, Lcom/microsoft/cll/android/EventSerializer;

    invoke-direct {v1, p2}, Lcom/microsoft/cll/android/EventSerializer;-><init>(Lcom/microsoft/cll/android/ILogger;)V

    iput-object v1, p0, Lcom/microsoft/cll/android/FileStorage;->serializer:Lcom/microsoft/cll/android/EventSerializer;

    iput-object p4, p0, Lcom/microsoft/cll/android/FileStorage;->parent:Lcom/microsoft/cll/android/AbstractHandler;

    const/4 p4, 0x1

    :cond_0
    invoke-direct {p0}, Lcom/microsoft/cll/android/FileStorage;->openFile()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "/"

    .line 3
    invoke-static {p3, v1}, La/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/cll/android/FileStorage;->filePathAndName:Ljava/lang/String;

    add-int/lit8 p4, p4, 0x1

    const/4 v1, 0x5

    if-lt p4, v1, :cond_0

    const-string p1, "Could not create a file"

    invoke-interface {p2, v0, p1}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private getLock()Z
    .registers 3

    sget-object v0, Lcom/microsoft/cll/android/FileStorage;->fileLockList:Lcom/microsoft/cll/android/SynchronizedArrayList;

    iget-object v1, p0, Lcom/microsoft/cll/android/FileStorage;->filePathAndName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/microsoft/cll/android/SynchronizedArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private openFile()Z
    .registers 8

    invoke-direct {p0}, Lcom/microsoft/cll/android/FileStorage;->getLock()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "AndroidCll-FileStorage"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/cll/android/FileStorage;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v3, "Could not get lock for file"

    invoke-interface {v0, v2, v3}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/microsoft/cll/android/FileStorage;->filePathAndName:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    iput-boolean v1, p0, Lcom/microsoft/cll/android/FileStorage;->isWritable:Z

    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    iget-object v5, p0, Lcom/microsoft/cll/android/FileStorage;->filePathAndName:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/microsoft/cll/android/FileStorage;->inputFile:Ljava/io/FileReader;

    new-instance v3, Ljava/io/BufferedReader;

    iget-object v5, p0, Lcom/microsoft/cll/android/FileStorage;->inputFile:Ljava/io/FileReader;

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v3, p0, Lcom/microsoft/cll/android/FileStorage;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/microsoft/cll/android/FileStorage;->fileSize:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lcom/microsoft/cll/android/FileStorage;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v3, "Event file was not found"

    invoke-interface {v0, v2, v3}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    iput-boolean v4, p0, Lcom/microsoft/cll/android/FileStorage;->isWritable:Z

    iget-object v0, p0, Lcom/microsoft/cll/android/FileStorage;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v3, "Creating new file"

    invoke-interface {v0, v2, v3}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    new-instance v0, Ljava/io/FileWriter;

    iget-object v3, p0, Lcom/microsoft/cll/android/FileStorage;->filePathAndName:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/microsoft/cll/android/FileStorage;->outputFile:Ljava/io/FileWriter;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    iput-boolean v4, p0, Lcom/microsoft/cll/android/FileStorage;->isOpen:Z

    return v4

    :catch_1
    iget-object v0, p0, Lcom/microsoft/cll/android/FileStorage;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v3, "Error opening file"

    invoke-interface {v0, v2, v3}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method


# virtual methods
.method public add(Lcom/microsoft/cll/android/Tuple;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/cll/android/Tuple<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/microsoft/cll/android/FileStorage;->isOpen:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/microsoft/cll/android/FileStorage;->isWritable:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/microsoft/cll/android/FileStorage;->canAdd(Lcom/microsoft/cll/android/Tuple;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/microsoft/cll/android/Tuple;->b:Ljava/lang/Object;

    if-eqz v0, :cond_1

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/microsoft/cll/android/FileStorage;->outputFile:Ljava/io/FileWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "x:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/microsoft/cll/android/FileStorage;->outputFile:Ljava/io/FileWriter;

    iget-object v1, p1, Lcom/microsoft/cll/android/Tuple;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v0, p0, Lcom/microsoft/cll/android/FileStorage;->eventsWritten:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/microsoft/cll/android/FileStorage;->eventsWritten:I

    iget-wide v0, p0, Lcom/microsoft/cll/android/FileStorage;->fileSize:J

    iget-object p1, p1, Lcom/microsoft/cll/android/Tuple;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/microsoft/cll/android/FileStorage;->fileSize:J

    return-void

    :cond_2
    new-instance p1, Lcom/microsoft/cll/android/FileStorage$FileFullException;

    const-string v0, "The file is already full!"

    invoke-direct {p1, p0, v0}, Lcom/microsoft/cll/android/FileStorage$FileFullException;-><init>(Lcom/microsoft/cll/android/FileStorage;Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/microsoft/cll/android/FileStorage;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v0, "AndroidCll-FileStorage"

    const-string v1, "This file is not open or not writable"

    invoke-interface {p1, v0, v1}, Lcom/microsoft/cll/android/ILogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public add(Lcom/microsoft/telemetry/IJsonSerializable;)V
    .registers 4

    new-instance v0, Lcom/microsoft/cll/android/Tuple;

    iget-object v1, p0, Lcom/microsoft/cll/android/FileStorage;->serializer:Lcom/microsoft/cll/android/EventSerializer;

    invoke-virtual {v1, p1}, Lcom/microsoft/cll/android/EventSerializer;->serialize(Lcom/microsoft/telemetry/IJsonSerializable;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/microsoft/cll/android/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/microsoft/cll/android/FileStorage;->add(Lcom/microsoft/cll/android/Tuple;)V

    return-void
.end method

.method public canAdd(Lcom/microsoft/cll/android/Tuple;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/cll/android/Tuple<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/microsoft/cll/android/FileStorage;->isOpen:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/microsoft/cll/android/FileStorage;->isWritable:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/microsoft/cll/android/Tuple;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget v0, p0, Lcom/microsoft/cll/android/FileStorage;->eventsWritten:I

    sget-object v2, Lcom/microsoft/cll/android/SettingsStore$Settings;->MAXEVENTSPERPOST:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v2}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsInt(Lcom/microsoft/cll/android/SettingsStore$Settings;)I

    move-result v2

    if-ge v0, v2, :cond_1

    int-to-long v2, p1

    iget-wide v4, p0, Lcom/microsoft/cll/android/FileStorage;->fileSize:J

    add-long/2addr v2, v4

    sget-object p1, Lcom/microsoft/cll/android/SettingsStore$Settings;->MAXEVENTSIZEINBYTES:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {p1}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsInt(Lcom/microsoft/cll/android/SettingsStore$Settings;)I

    move-result p1

    int-to-long v4, p1

    cmp-long p1, v2, v4

    if-gez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/microsoft/cll/android/FileStorage;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v0, "AndroidCll-FileStorage"

    const-string v2, "This file is not open or not writable"

    invoke-interface {p1, v0, v2}, Lcom/microsoft/cll/android/ILogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public canAdd(Lcom/microsoft/telemetry/IJsonSerializable;)Z
    .registers 4

    new-instance v0, Lcom/microsoft/cll/android/Tuple;

    iget-object v1, p0, Lcom/microsoft/cll/android/FileStorage;->serializer:Lcom/microsoft/cll/android/EventSerializer;

    invoke-virtual {v1, p1}, Lcom/microsoft/cll/android/EventSerializer;->serialize(Lcom/microsoft/telemetry/IJsonSerializable;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/microsoft/cll/android/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/microsoft/cll/android/FileStorage;->canAdd(Lcom/microsoft/cll/android/Tuple;)Z

    move-result p1

    return p1
.end method

.method public close()V
    .registers 4

    iget-boolean v0, p0, Lcom/microsoft/cll/android/FileStorage;->isOpen:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/microsoft/cll/android/FileStorage;->flush()V

    sget-object v0, Lcom/microsoft/cll/android/FileStorage;->fileLockList:Lcom/microsoft/cll/android/SynchronizedArrayList;

    iget-object v1, p0, Lcom/microsoft/cll/android/FileStorage;->filePathAndName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/microsoft/cll/android/SynchronizedArrayList;->remove(Ljava/lang/Object;)Z

    :try_start_0
    iget-boolean v0, p0, Lcom/microsoft/cll/android/FileStorage;->isWritable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/cll/android/FileStorage;->outputFile:Ljava/io/FileWriter;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/microsoft/cll/android/FileStorage;->inputFile:Ljava/io/FileReader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    iget-object v0, p0, Lcom/microsoft/cll/android/FileStorage;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/cll/android/FileStorage;->isOpen:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object v0, p0, Lcom/microsoft/cll/android/FileStorage;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v1, "AndroidCll-FileStorage"

    const-string v2, "Error when closing file"

    invoke-interface {v0, v1, v2}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public discard()V
    .registers 4

    iget-object v0, p0, Lcom/microsoft/cll/android/FileStorage;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v1, "AndroidCll-FileStorage"

    const-string v2, "Discarding file"

    invoke-interface {v0, v1, v2}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/microsoft/cll/android/FileStorage;->close()V

    iget-object v0, p0, Lcom/microsoft/cll/android/FileStorage;->parent:Lcom/microsoft/cll/android/AbstractHandler;

    invoke-virtual {v0, p0}, Lcom/microsoft/cll/android/AbstractHandler;->dispose(Lcom/microsoft/cll/android/IStorage;)V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/microsoft/cll/android/FileStorage;->filePathAndName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public drain()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/cll/android/Tuple<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v1, p0, Lcom/microsoft/cll/android/FileStorage;->isOpen:Z

    const-string v2, "AndroidCll-FileStorage"

    if-nez v1, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/microsoft/cll/android/FileStorage;->openFile()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    return-object v0

    :catch_0
    iget-object v1, p0, Lcom/microsoft/cll/android/FileStorage;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v3, "Error opening file"

    invoke-interface {v1, v2, v3}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/microsoft/cll/android/FileStorage;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-eqz v1, :cond_3

    const-string v4, "x:"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    new-instance v4, Lcom/microsoft/cll/android/Tuple;

    invoke-direct {v4, v1, v3}, Lcom/microsoft/cll/android/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v1

    goto :goto_1

    :cond_2
    new-instance v4, Lcom/microsoft/cll/android/Tuple;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Lcom/microsoft/cll/android/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v1, p0, Lcom/microsoft/cll/android/FileStorage;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    iget-object v1, p0, Lcom/microsoft/cll/android/FileStorage;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v3, "Error reading from input file"

    invoke-interface {v1, v2, v3}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/microsoft/cll/android/FileStorage;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v3, "Read "

    .line 1
    invoke-static {v3}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " events from file"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public flush()V
    .registers 4

    iget-boolean v0, p0, Lcom/microsoft/cll/android/FileStorage;->isOpen:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/microsoft/cll/android/FileStorage;->isWritable:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/cll/android/FileStorage;->outputFile:Ljava/io/FileWriter;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object v0, p0, Lcom/microsoft/cll/android/FileStorage;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v1, "AndroidCll-FileStorage"

    const-string v2, "Could not flush file"

    invoke-interface {v0, v1, v2}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public size()J
    .registers 3

    iget-boolean v0, p0, Lcom/microsoft/cll/android/FileStorage;->isOpen:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/microsoft/cll/android/FileStorage;->filePathAndName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/microsoft/cll/android/FileStorage;->fileSize:J

    return-wide v0
.end method
