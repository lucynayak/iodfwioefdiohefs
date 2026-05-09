.class public abstract Lcom/microsoft/cll/android/ScheduledWorker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public executor:Ljava/util/concurrent/ScheduledExecutorService;

.field public interval:J

.field public isPaused:Z

.field public nextExecution:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method public constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/microsoft/cll/android/ScheduledWorker;->interval:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/microsoft/cll/android/ScheduledWorker;->isPaused:Z

    return-void
.end method

.method private setupExecutor(Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 9

    iput-object p1, p0, Lcom/microsoft/cll/android/ScheduledWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    iget-wide v4, p0, Lcom/microsoft/cll/android/ScheduledWorker;->interval:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/cll/android/ScheduledWorker;->nextExecution:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method public pause()V
    .registers 3

    iget-object v0, p0, Lcom/microsoft/cll/android/ScheduledWorker;->nextExecution:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/microsoft/cll/android/ScheduledWorker;->isPaused:Z

    return-void
.end method

.method public resume(Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/microsoft/cll/android/ScheduledWorker;->setupExecutor(Ljava/util/concurrent/ScheduledExecutorService;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/microsoft/cll/android/ScheduledWorker;->isPaused:Z

    return-void
.end method

.method public abstract run()V
.end method

.method public start(Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/microsoft/cll/android/ScheduledWorker;->setupExecutor(Ljava/util/concurrent/ScheduledExecutorService;)V

    return-void
.end method

.method public stop()V
    .registers 3

    iget-object v0, p0, Lcom/microsoft/cll/android/ScheduledWorker;->nextExecution:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void
.end method
