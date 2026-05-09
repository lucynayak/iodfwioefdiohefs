.class Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$Worker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/toolkit/XTokenLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyWorker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$Worker<",
        "Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;",
        ">;"
    }
.end annotation


# instance fields
.field private final cache:Lcom/microsoft/xbox/idp/util/ResultCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/xbox/idp/util/ResultCache<",
            "Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;",
            ">;"
        }
    .end annotation
.end field

.field private final resultKey:Ljava/lang/Object;

.field private final userPtr:J


# direct methods
.method public constructor <init>(JLcom/microsoft/xbox/idp/util/ResultCache;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/microsoft/xbox/idp/util/ResultCache<",
            "Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;->userPtr:J

    iput-object p3, p0, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;->cache:Lcom/microsoft/xbox/idp/util/ResultCache;

    iput-object p4, p0, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;->resultKey:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;)Z
    .registers 1

    invoke-direct {p0}, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;->hasCache()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;)Lcom/microsoft/xbox/idp/util/ResultCache;
    .registers 1

    iget-object p0, p0, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;->cache:Lcom/microsoft/xbox/idp/util/ResultCache;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;->resultKey:Ljava/lang/Object;

    return-object p0
.end method

.method private hasCache()Z
    .registers 2

    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;->cache:Lcom/microsoft/xbox/idp/util/ResultCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;->resultKey:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public cancel()V
    .registers 1

    return-void
.end method

.method public start(Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener<",
            "Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;->hasCache()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;->cache:Lcom/microsoft/xbox/idp/util/ResultCache;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;->cache:Lcom/microsoft/xbox/idp/util/ResultCache;

    iget-object v2, p0, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;->resultKey:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/microsoft/xbox/idp/util/ResultCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {p1, v1}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;->onResult(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    iget-wide v0, p0, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;->userPtr:J

    new-instance v2, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker$1;

    invoke-direct {v2, p0, p1}, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker$1;-><init>(Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;)V

    invoke-static {v0, v1, v2}, Lcom/microsoft/xbox/idp/interop/Interop;->InvokeXTokenCallback(JLcom/microsoft/xbox/idp/interop/Interop$Callback;)V

    return-void
.end method
