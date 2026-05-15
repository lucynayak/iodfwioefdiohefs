.class public Lcom/microsoft/cll/android/EventQueueWriter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/cll/android/EventQueueWriter$SendResult;
    }
.end annotation


# static fields
.field private static backoffSeconds:I

.field public static future:Ljava/util/concurrent/ScheduledFuture;

.field public static running:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static s_threadCount:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final batcher:Lcom/microsoft/cll/android/EventBatcher;

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

.field private compressor:Lcom/microsoft/cll/android/EventCompressor;

.field private endpoint:Ljava/net/URL;

.field private final event:Lcom/microsoft/cll/android/SerializedEvent;

.field private final executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private handler:Lcom/microsoft/cll/android/EventHandler;

.field private final ids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final logger:Lcom/microsoft/cll/android/ILogger;

.field private final random:Ljava/util/Random;

.field private removedStorages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/microsoft/cll/android/IStorage;",
            ">;"
        }
    .end annotation
.end field

.field private sender:Lcom/microsoft/cll/android/EventSender;

.field private final storages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/microsoft/cll/android/IStorage;",
            ">;"
        }
    .end annotation
.end field

.field private final ticketCallback:Lcom/microsoft/cll/android/ITicketCallback;

.field private final ticketManager:Lcom/microsoft/cll/android/TicketManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/microsoft/cll/android/EventQueueWriter;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    sput v1, Lcom/microsoft/cll/android/EventQueueWriter;->backoffSeconds:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/microsoft/cll/android/EventQueueWriter;->s_threadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lcom/microsoft/cll/android/SerializedEvent;Ljava/util/List;Lcom/microsoft/cll/android/ClientTelemetry;Ljava/util/List;Lcom/microsoft/cll/android/ILogger;Ljava/util/concurrent/ScheduledExecutorService;Lcom/microsoft/cll/android/EventHandler;Lcom/microsoft/cll/android/ITicketCallback;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Lcom/microsoft/cll/android/SerializedEvent;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/microsoft/cll/android/ClientTelemetry;",
            "Ljava/util/List<",
            "Lcom/microsoft/cll/android/ICllEvents;",
            ">;",
            "Lcom/microsoft/cll/android/ILogger;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lcom/microsoft/cll/android/EventHandler;",
            "Lcom/microsoft/cll/android/ITicketCallback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AndroidCll-EventQueueWriter"

    iput-object v0, p0, Lcom/microsoft/cll/android/EventQueueWriter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/microsoft/cll/android/EventQueueWriter;->random:Ljava/util/Random;

    iput-object p5, p0, Lcom/microsoft/cll/android/EventQueueWriter;->cllEvents:Ljava/util/List;

    iput-object p2, p0, Lcom/microsoft/cll/android/EventQueueWriter;->event:Lcom/microsoft/cll/android/SerializedEvent;

    iput-object p3, p0, Lcom/microsoft/cll/android/EventQueueWriter;->ids:Ljava/util/List;

    iput-object p6, p0, Lcom/microsoft/cll/android/EventQueueWriter;->logger:Lcom/microsoft/cll/android/ILogger;

    iput-object p9, p0, Lcom/microsoft/cll/android/EventQueueWriter;->ticketCallback:Lcom/microsoft/cll/android/ITicketCallback;

    new-instance p2, Lcom/microsoft/cll/android/EventSender;

    invoke-direct {p2, p1, p4, p6}, Lcom/microsoft/cll/android/EventSender;-><init>(Ljava/net/URL;Lcom/microsoft/cll/android/ClientTelemetry;Lcom/microsoft/cll/android/ILogger;)V

    iput-object p2, p0, Lcom/microsoft/cll/android/EventQueueWriter;->sender:Lcom/microsoft/cll/android/EventSender;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/microsoft/cll/android/EventQueueWriter;->batcher:Lcom/microsoft/cll/android/EventBatcher;

    iput-object p2, p0, Lcom/microsoft/cll/android/EventQueueWriter;->storages:Ljava/util/List;

    iput-object p7, p0, Lcom/microsoft/cll/android/EventQueueWriter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p4, p0, Lcom/microsoft/cll/android/EventQueueWriter;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    iput-object p8, p0, Lcom/microsoft/cll/android/EventQueueWriter;->handler:Lcom/microsoft/cll/android/EventHandler;

    iput-object p1, p0, Lcom/microsoft/cll/android/EventQueueWriter;->endpoint:Ljava/net/URL;

    new-instance p1, Lcom/microsoft/cll/android/TicketManager;

    invoke-direct {p1, p9, p6}, Lcom/microsoft/cll/android/TicketManager;-><init>(Lcom/microsoft/cll/android/ITicketCallback;Lcom/microsoft/cll/android/ILogger;)V

    iput-object p1, p0, Lcom/microsoft/cll/android/EventQueueWriter;->ticketManager:Lcom/microsoft/cll/android/TicketManager;

    invoke-virtual {p4}, Lcom/microsoft/cll/android/ClientTelemetry;->IncrementEventsQueuedForUpload()V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/util/List;Lcom/microsoft/cll/android/ClientTelemetry;Ljava/util/List;Lcom/microsoft/cll/android/ILogger;Ljava/util/concurrent/ScheduledExecutorService;Lcom/microsoft/cll/android/ITicketCallback;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/util/List<",
            "Lcom/microsoft/cll/android/IStorage;",
            ">;",
            "Lcom/microsoft/cll/android/ClientTelemetry;",
            "Ljava/util/List<",
            "Lcom/microsoft/cll/android/ICllEvents;",
            ">;",
            "Lcom/microsoft/cll/android/ILogger;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lcom/microsoft/cll/android/ITicketCallback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AndroidCll-EventQueueWriter"

    iput-object v0, p0, Lcom/microsoft/cll/android/EventQueueWriter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/microsoft/cll/android/EventQueueWriter;->random:Ljava/util/Random;

    iput-object p4, p0, Lcom/microsoft/cll/android/EventQueueWriter;->cllEvents:Ljava/util/List;

    iput-object p2, p0, Lcom/microsoft/cll/android/EventQueueWriter;->storages:Ljava/util/List;

    iput-object p5, p0, Lcom/microsoft/cll/android/EventQueueWriter;->logger:Lcom/microsoft/cll/android/ILogger;

    iput-object p7, p0, Lcom/microsoft/cll/android/EventQueueWriter;->ticketCallback:Lcom/microsoft/cll/android/ITicketCallback;

    new-instance p2, Lcom/microsoft/cll/android/EventBatcher;

    invoke-direct {p2}, Lcom/microsoft/cll/android/EventBatcher;-><init>()V

    iput-object p2, p0, Lcom/microsoft/cll/android/EventQueueWriter;->batcher:Lcom/microsoft/cll/android/EventBatcher;

    new-instance p2, Lcom/microsoft/cll/android/EventSender;

    invoke-direct {p2, p1, p3, p5}, Lcom/microsoft/cll/android/EventSender;-><init>(Ljava/net/URL;Lcom/microsoft/cll/android/ClientTelemetry;Lcom/microsoft/cll/android/ILogger;)V

    iput-object p2, p0, Lcom/microsoft/cll/android/EventQueueWriter;->sender:Lcom/microsoft/cll/android/EventSender;

    new-instance p2, Lcom/microsoft/cll/android/EventCompressor;

    invoke-direct {p2, p5}, Lcom/microsoft/cll/android/EventCompressor;-><init>(Lcom/microsoft/cll/android/ILogger;)V

    iput-object p2, p0, Lcom/microsoft/cll/android/EventQueueWriter;->compressor:Lcom/microsoft/cll/android/EventCompressor;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/microsoft/cll/android/EventQueueWriter;->event:Lcom/microsoft/cll/android/SerializedEvent;

    iput-object p2, p0, Lcom/microsoft/cll/android/EventQueueWriter;->ids:Ljava/util/List;

    iput-object p6, p0, Lcom/microsoft/cll/android/EventQueueWriter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p3, p0, Lcom/microsoft/cll/android/EventQueueWriter;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    iput-object p1, p0, Lcom/microsoft/cll/android/EventQueueWriter;->endpoint:Ljava/net/URL;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/microsoft/cll/android/EventQueueWriter;->removedStorages:Ljava/util/List;

    new-instance p1, Lcom/microsoft/cll/android/TicketManager;

    invoke-direct {p1, p7, p5}, Lcom/microsoft/cll/android/TicketManager;-><init>(Lcom/microsoft/cll/android/ITicketCallback;Lcom/microsoft/cll/android/ILogger;)V

    iput-object p1, p0, Lcom/microsoft/cll/android/EventQueueWriter;->ticketManager:Lcom/microsoft/cll/android/TicketManager;

    return-void
.end method

.method private cancelBackoff()V
    .registers 2

    const/4 v0, 0x0

    sput-object v0, Lcom/microsoft/cll/android/EventQueueWriter;->future:Ljava/util/concurrent/ScheduledFuture;

    const/4 v0, 0x0

    sput v0, Lcom/microsoft/cll/android/EventQueueWriter;->backoffSeconds:I

    return-void
.end method

.method private getEventData(Ljava/lang/String;)[B
    .registers 3

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    return-object p1
.end method

.method public static getRunningThreadCount()I
    .registers 1

    sget-object v0, Lcom/microsoft/cll/android/EventQueueWriter;->s_threadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method private sendBatch(Ljava/lang/String;Lcom/microsoft/cll/android/IStorage;)Lcom/microsoft/cll/android/EventQueueWriter$SendResult;
    .registers 8

    iget-object v0, p0, Lcom/microsoft/cll/android/EventQueueWriter;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v1, "AndroidCll-EventQueueWriter"

    const-string v2, "Sending Batch of events"

    invoke-interface {v0, v1, v2}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/microsoft/cll/android/EventQueueWriter;->removedStorages:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p1, Lcom/microsoft/cll/android/EventQueueWriter$SendResult;->SUCCESS:Lcom/microsoft/cll/android/EventQueueWriter$SendResult;

    return-object p1

    :cond_0
    iget-object p2, p0, Lcom/microsoft/cll/android/EventQueueWriter;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v0, "Compressing events"

    invoke-interface {p2, v1, v0}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/microsoft/cll/android/EventQueueWriter;->compressor:Lcom/microsoft/cll/android/EventCompressor;

    invoke-virtual {p2, p1}, Lcom/microsoft/cll/android/EventCompressor;->compress(Ljava/lang/String;)[B

    move-result-object p2

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_1

    invoke-direct {p0, p1}, Lcom/microsoft/cll/android/EventQueueWriter;->getEventData(Ljava/lang/String;)[B

    move-result-object p2

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    iget-object v3, p0, Lcom/microsoft/cll/android/EventQueueWriter;->ticketManager:Lcom/microsoft/cll/android/TicketManager;

    invoke-virtual {v3, v2}, Lcom/microsoft/cll/android/TicketManager;->getHeaders(Z)Lcom/microsoft/cll/android/TicketHeaders;

    move-result-object v2

    :try_start_0
    iget-object v3, p0, Lcom/microsoft/cll/android/EventQueueWriter;->sender:Lcom/microsoft/cll/android/EventSender;

    invoke-virtual {v3, p2, p1, v2}, Lcom/microsoft/cll/android/EventSender;->sendEvent([BZLcom/microsoft/cll/android/TicketHeaders;)I

    move-result v2

    const/16 v3, 0x191

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/microsoft/cll/android/EventQueueWriter;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v4, "We got a 401 while sending the events, refreshing the tokens and trying again"

    invoke-interface {v2, v1, v4}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/microsoft/cll/android/EventQueueWriter;->ticketManager:Lcom/microsoft/cll/android/TicketManager;

    invoke-virtual {v2, v0}, Lcom/microsoft/cll/android/TicketManager;->getHeaders(Z)Lcom/microsoft/cll/android/TicketHeaders;

    move-result-object v2

    iget-object v4, p0, Lcom/microsoft/cll/android/EventQueueWriter;->sender:Lcom/microsoft/cll/android/EventSender;

    invoke-virtual {v4, p2, p1, v2}, Lcom/microsoft/cll/android/EventSender;->sendEvent([BZLcom/microsoft/cll/android/TicketHeaders;)I

    move-result v2

    if-ne v2, v3, :cond_2

    iget-object p1, p0, Lcom/microsoft/cll/android/EventQueueWriter;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string p2, "After refreshing the tokens we still got a 401. Most likely we couldn\'t get new tokens so we will keep these events on disk and try to get new tokens later"

    invoke-interface {p1, v1, p2}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    const/16 p1, 0xc8

    if-eq v2, p1, :cond_4

    const/16 p1, 0x190

    if-ne v2, p1, :cond_3

    goto :goto_1

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/microsoft/cll/android/EventQueueWriter;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v0, "Cannot send event: "

    .line 1
    invoke-static {v0}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v1, p1}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    sget-object p1, Lcom/microsoft/cll/android/EventQueueWriter$SendResult;->SUCCESS:Lcom/microsoft/cll/android/EventQueueWriter$SendResult;

    return-object p1

    :cond_5
    sget-object p1, Lcom/microsoft/cll/android/EventQueueWriter$SendResult;->ERROR:Lcom/microsoft/cll/android/EventQueueWriter$SendResult;

    return-object p1
.end method

.method private sendInternal()Lcom/microsoft/cll/android/EventQueueWriter$SendResult;
    .registers 9

    iget-object v0, p0, Lcom/microsoft/cll/android/EventQueueWriter;->storages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "AndroidCll-EventQueueWriter"

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/cll/android/IStorage;

    iget-object v3, p0, Lcom/microsoft/cll/android/EventQueueWriter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v0, Lcom/microsoft/cll/android/EventQueueWriter$SendResult;->SUCCESS:Lcom/microsoft/cll/android/EventQueueWriter$SendResult;

    goto/16 :goto_2

    :cond_0
    iget-object v3, p0, Lcom/microsoft/cll/android/EventQueueWriter;->ticketManager:Lcom/microsoft/cll/android/TicketManager;

    invoke-virtual {v3}, Lcom/microsoft/cll/android/TicketManager;->clean()V

    invoke-interface {v1}, Lcom/microsoft/cll/android/IStorage;->drain()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/microsoft/cll/android/Tuple;

    iget-object v5, p0, Lcom/microsoft/cll/android/EventQueueWriter;->ticketManager:Lcom/microsoft/cll/android/TicketManager;

    iget-object v6, v4, Lcom/microsoft/cll/android/Tuple;->b:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    invoke-virtual {v5, v6}, Lcom/microsoft/cll/android/TicketManager;->addTickets(Ljava/util/List;)V

    iget-object v5, p0, Lcom/microsoft/cll/android/EventQueueWriter;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    invoke-virtual {v5}, Lcom/microsoft/cll/android/ClientTelemetry;->IncrementEventsQueuedForUpload()V

    iget-object v5, v4, Lcom/microsoft/cll/android/Tuple;->a:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sget-object v6, Lcom/microsoft/cll/android/SettingsStore$Settings;->MAXEVENTSIZEINBYTES:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v6}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsInt(Lcom/microsoft/cll/android/SettingsStore$Settings;)I

    move-result v6

    if-le v5, v6, :cond_2

    iget-object v5, p0, Lcom/microsoft/cll/android/EventQueueWriter;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v6, "Dropping event because it is too large."

    invoke-interface {v5, v2, v6}, Lcom/microsoft/cll/android/ILogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/microsoft/cll/android/EventQueueWriter;->cllEvents:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/microsoft/cll/android/ICllEvents;

    iget-object v7, v4, Lcom/microsoft/cll/android/Tuple;->a:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6, v7}, Lcom/microsoft/cll/android/ICllEvents;->eventDropped(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/microsoft/cll/android/EventQueueWriter;->batcher:Lcom/microsoft/cll/android/EventBatcher;

    iget-object v6, v4, Lcom/microsoft/cll/android/Tuple;->a:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/microsoft/cll/android/EventBatcher;->tryAddingEventToBatch(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/microsoft/cll/android/EventQueueWriter;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v6, "Got a full batch, preparing to send"

    invoke-interface {v5, v2, v6}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/microsoft/cll/android/EventQueueWriter;->batcher:Lcom/microsoft/cll/android/EventBatcher;

    invoke-virtual {v5}, Lcom/microsoft/cll/android/EventBatcher;->getBatchedEvents()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/microsoft/cll/android/EventQueueWriter;->batcher:Lcom/microsoft/cll/android/EventBatcher;

    iget-object v4, v4, Lcom/microsoft/cll/android/Tuple;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Lcom/microsoft/cll/android/EventBatcher;->tryAddingEventToBatch(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/microsoft/cll/android/EventQueueWriter;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v6, "Could not add events to an empty batch"

    invoke-interface {v4, v2, v6}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0, v5, v1}, Lcom/microsoft/cll/android/EventQueueWriter;->sendBatch(Ljava/lang/String;Lcom/microsoft/cll/android/IStorage;)Lcom/microsoft/cll/android/EventQueueWriter$SendResult;

    move-result-object v4

    sget-object v5, Lcom/microsoft/cll/android/EventQueueWriter$SendResult;->ERROR:Lcom/microsoft/cll/android/EventQueueWriter$SendResult;

    if-ne v4, v5, :cond_1

    invoke-interface {v1}, Lcom/microsoft/cll/android/IStorage;->close()V

    return-object v4

    :cond_4
    iget-object v3, p0, Lcom/microsoft/cll/android/EventQueueWriter;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v4, "Preparing to send"

    invoke-interface {v3, v2, v4}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/microsoft/cll/android/EventQueueWriter;->batcher:Lcom/microsoft/cll/android/EventBatcher;

    invoke-virtual {v2}, Lcom/microsoft/cll/android/EventBatcher;->getBatchedEvents()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/microsoft/cll/android/EventQueueWriter;->sendBatch(Ljava/lang/String;Lcom/microsoft/cll/android/IStorage;)Lcom/microsoft/cll/android/EventQueueWriter$SendResult;

    move-result-object v2

    invoke-interface {v1}, Lcom/microsoft/cll/android/IStorage;->close()V

    sget-object v3, Lcom/microsoft/cll/android/EventQueueWriter$SendResult;->ERROR:Lcom/microsoft/cll/android/EventQueueWriter$SendResult;

    if-eq v2, v3, :cond_5

    invoke-interface {v1}, Lcom/microsoft/cll/android/IStorage;->discard()V

    goto/16 :goto_0

    :cond_5
    move-object v0, v2

    :goto_2
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/microsoft/cll/android/EventQueueWriter;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v1, "Sent "

    .line 1
    invoke-static {v1}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    iget-object v3, p0, Lcom/microsoft/cll/android/EventQueueWriter;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    iget-object v3, v3, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:Lb/a;

    .line 3
    iget v3, v3, Lb/a;->d:I

    .line 4
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " events."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/microsoft/cll/android/EventQueueWriter;->cllEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/cll/android/ICllEvents;

    invoke-interface {v1}, Lcom/microsoft/cll/android/ICllEvents;->sendComplete()V

    goto :goto_3

    :cond_7
    sget-object v0, Lcom/microsoft/cll/android/EventQueueWriter$SendResult;->SUCCESS:Lcom/microsoft/cll/android/EventQueueWriter$SendResult;

    return-object v0
.end method


# virtual methods
.method public generateBackoffInterval()I
    .registers 8

    sget-object v0, Lcom/microsoft/cll/android/SettingsStore$Settings;->CONSTANTFORRETRYPERIOD:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v0}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsInt(Lcom/microsoft/cll/android/SettingsStore$Settings;)I

    move-result v0

    sget-object v1, Lcom/microsoft/cll/android/SettingsStore$Settings;->MAXRETRYPERIOD:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v1}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsInt(Lcom/microsoft/cll/android/SettingsStore$Settings;)I

    move-result v1

    sget-object v2, Lcom/microsoft/cll/android/SettingsStore$Settings;->BASERETRYPERIOD:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v2}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsInt(Lcom/microsoft/cll/android/SettingsStore$Settings;)I

    move-result v2

    sget v3, Lcom/microsoft/cll/android/EventQueueWriter;->backoffSeconds:I

    if-nez v3, :cond_0

    const/4 v3, 0x0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/microsoft/cll/android/EventQueueWriter;->backoffSeconds:I

    :cond_0
    iget-object v0, p0, Lcom/microsoft/cll/android/EventQueueWriter;->logger:Lcom/microsoft/cll/android/ILogger;

    invoke-interface {v0}, Lcom/microsoft/cll/android/ILogger;->getVerbosity()Lcom/microsoft/cll/android/Verbosity;

    move-result-object v0

    sget-object v3, Lcom/microsoft/cll/android/Verbosity;->INFO:Lcom/microsoft/cll/android/Verbosity;

    const-string v4, "AndroidCll-EventQueueWriter"

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/microsoft/cll/android/EventQueueWriter;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v5, "Generating new backoff interval using \"Random.nextInt("

    .line 1
    invoke-static {v5}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2
    sget v6, Lcom/microsoft/cll/android/EventQueueWriter;->backoffSeconds:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") seconds\" formula."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/microsoft/cll/android/EventQueueWriter;->random:Ljava/util/Random;

    sget v5, Lcom/microsoft/cll/android/EventQueueWriter;->backoffSeconds:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sget v5, Lcom/microsoft/cll/android/EventQueueWriter;->backoffSeconds:I

    mul-int v2, v2, v5

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    sput v1, Lcom/microsoft/cll/android/EventQueueWriter;->backoffSeconds:I

    iget-object v1, p0, Lcom/microsoft/cll/android/EventQueueWriter;->logger:Lcom/microsoft/cll/android/ILogger;

    invoke-interface {v1}, Lcom/microsoft/cll/android/ILogger;->getVerbosity()Lcom/microsoft/cll/android/Verbosity;

    move-result-object v1

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/microsoft/cll/android/EventQueueWriter;->logger:Lcom/microsoft/cll/android/ILogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The generated backoff interval is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v0
.end method

.method public run()V
    .registers 1

    # Telemetry disabled
    return-void
.end method

.method public send()V
    .registers 12

    invoke-direct {p0}, Lcom/microsoft/cll/android/EventQueueWriter;->sendInternal()Lcom/microsoft/cll/android/EventQueueWriter$SendResult;

    move-result-object v0

    sget-object v1, Lcom/microsoft/cll/android/EventQueueWriter$SendResult;->SUCCESS:Lcom/microsoft/cll/android/EventQueueWriter$SendResult;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/microsoft/cll/android/EventQueueWriter;->cancelBackoff()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/cll/android/EventQueueWriter;->generateBackoffInterval()I

    move-result v0

    iget-object v1, p0, Lcom/microsoft/cll/android/EventQueueWriter;->storages:Ljava/util/List;

    iget-object v2, p0, Lcom/microsoft/cll/android/EventQueueWriter;->removedStorages:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    new-instance v1, Lcom/microsoft/cll/android/EventQueueWriter;

    iget-object v4, p0, Lcom/microsoft/cll/android/EventQueueWriter;->endpoint:Ljava/net/URL;

    iget-object v5, p0, Lcom/microsoft/cll/android/EventQueueWriter;->storages:Ljava/util/List;

    iget-object v6, p0, Lcom/microsoft/cll/android/EventQueueWriter;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    iget-object v7, p0, Lcom/microsoft/cll/android/EventQueueWriter;->cllEvents:Ljava/util/List;

    iget-object v8, p0, Lcom/microsoft/cll/android/EventQueueWriter;->logger:Lcom/microsoft/cll/android/ILogger;

    iget-object v9, p0, Lcom/microsoft/cll/android/EventQueueWriter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v10, p0, Lcom/microsoft/cll/android/EventQueueWriter;->ticketCallback:Lcom/microsoft/cll/android/ITicketCallback;

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/microsoft/cll/android/EventQueueWriter;-><init>(Ljava/net/URL;Ljava/util/List;Lcom/microsoft/cll/android/ClientTelemetry;Ljava/util/List;Lcom/microsoft/cll/android/ILogger;Ljava/util/concurrent/ScheduledExecutorService;Lcom/microsoft/cll/android/ITicketCallback;)V

    iget-object v2, p0, Lcom/microsoft/cll/android/EventQueueWriter;->sender:Lcom/microsoft/cll/android/EventSender;

    invoke-virtual {v1, v2}, Lcom/microsoft/cll/android/EventQueueWriter;->setSender(Lcom/microsoft/cll/android/EventSender;)V

    iget-object v2, p0, Lcom/microsoft/cll/android/EventQueueWriter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    int-to-long v3, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v1, v3, v4, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    sput-object v0, Lcom/microsoft/cll/android/EventQueueWriter;->future:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public sendRealTimeEvent(Lcom/microsoft/cll/android/SerializedEvent;)V
    .registers 7

    invoke-virtual {p1}, Lcom/microsoft/cll/android/SerializedEvent;->getSerializedData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sget-object v2, Lcom/microsoft/cll/android/SettingsStore$Settings;->MAXEVENTSIZEINBYTES:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v2}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsInt(Lcom/microsoft/cll/android/SettingsStore$Settings;)I

    move-result v2

    if-le v1, v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/microsoft/cll/android/EventQueueWriter;->ticketManager:Lcom/microsoft/cll/android/TicketManager;

    invoke-virtual {v3}, Lcom/microsoft/cll/android/TicketManager;->clean()V

    iget-object v3, p0, Lcom/microsoft/cll/android/EventQueueWriter;->ticketManager:Lcom/microsoft/cll/android/TicketManager;

    iget-object v4, p0, Lcom/microsoft/cll/android/EventQueueWriter;->ids:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/microsoft/cll/android/TicketManager;->addTickets(Ljava/util/List;)V

    iget-object v3, p0, Lcom/microsoft/cll/android/EventQueueWriter;->ticketManager:Lcom/microsoft/cll/android/TicketManager;

    invoke-virtual {v3, v2}, Lcom/microsoft/cll/android/TicketManager;->getHeaders(Z)Lcom/microsoft/cll/android/TicketHeaders;

    move-result-object v3

    invoke-direct {p0, v0}, Lcom/microsoft/cll/android/EventQueueWriter;->getEventData(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v4, p0, Lcom/microsoft/cll/android/EventQueueWriter;->sender:Lcom/microsoft/cll/android/EventSender;

    invoke-virtual {v4, v0, v2, v3}, Lcom/microsoft/cll/android/EventSender;->sendEvent([BZLcom/microsoft/cll/android/TicketHeaders;)I

    move-result v3

    const/16 v4, 0x191

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/microsoft/cll/android/EventQueueWriter;->ticketManager:Lcom/microsoft/cll/android/TicketManager;

    invoke-virtual {v3, v1}, Lcom/microsoft/cll/android/TicketManager;->getHeaders(Z)Lcom/microsoft/cll/android/TicketHeaders;

    move-result-object v3

    iget-object v4, p0, Lcom/microsoft/cll/android/EventQueueWriter;->sender:Lcom/microsoft/cll/android/EventSender;

    invoke-virtual {v4, v0, v2, v3}, Lcom/microsoft/cll/android/EventSender;->sendEvent([BZLcom/microsoft/cll/android/TicketHeaders;)I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    const/16 v0, 0xc8

    if-eq v3, v0, :cond_3

    const/16 v0, 0x190

    if-ne v3, v0, :cond_2

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lcom/microsoft/cll/android/EventQueueWriter;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v1, "AndroidCll-EventQueueWriter"

    const-string v3, "Cannot send event"

    invoke-interface {v0, v1, v3}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/microsoft/cll/android/EventQueueWriter;->cancelBackoff()V

    iget-object p1, p0, Lcom/microsoft/cll/android/EventQueueWriter;->cllEvents:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/cll/android/ICllEvents;

    invoke-interface {v0}, Lcom/microsoft/cll/android/ICllEvents;->sendComplete()V

    goto :goto_1

    :cond_4
    :goto_2
    return-void

    :cond_5
    iget-object v0, p0, Lcom/microsoft/cll/android/EventQueueWriter;->handler:Lcom/microsoft/cll/android/EventHandler;

    iget-object v1, p0, Lcom/microsoft/cll/android/EventQueueWriter;->ids:Ljava/util/List;

    invoke-virtual {v0, p1, v1}, Lcom/microsoft/cll/android/EventHandler;->addToStorage(Lcom/microsoft/cll/android/SerializedEvent;Ljava/util/List;)Z

    return-void
.end method

.method public setSender(Lcom/microsoft/cll/android/EventSender;)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/cll/android/EventQueueWriter;->sender:Lcom/microsoft/cll/android/EventSender;

    return-void
.end method
