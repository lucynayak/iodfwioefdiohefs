.class Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$Worker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/toolkit/BitmapLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyWorker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$Worker<",
        "Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field private final cache:Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;

.field private final httpCall:Lcom/microsoft/xbox/idp/util/HttpCall;

.field private final resultKey:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;->$assertionsDisabled:Z

    return-void
.end method

.method private constructor <init>(Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;Ljava/lang/Object;Lcom/microsoft/xbox/idp/util/HttpCall;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;->cache:Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;

    iput-object p2, p0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;->resultKey:Ljava/lang/Object;

    iput-object p3, p0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;->httpCall:Lcom/microsoft/xbox/idp/util/HttpCall;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;Ljava/lang/Object;Lcom/microsoft/xbox/idp/util/HttpCall;Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;-><init>(Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;Ljava/lang/Object;Lcom/microsoft/xbox/idp/util/HttpCall;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;)Z
    .registers 1

    invoke-direct {p0}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;->hasCache()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$300(Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;)Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;
    .registers 1

    iget-object p0, p0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;->cache:Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;->resultKey:Ljava/lang/Object;

    return-object p0
.end method

.method private hasCache()Z
    .registers 2

    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;->cache:Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;->resultKey:Ljava/lang/Object;

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
            "Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;->hasCache()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;->cache:Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;->cache:Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;

    iget-object v2, p0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;->resultKey:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;->get(Ljava/lang/Object;)[B

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker$1;

    invoke-direct {v2, p0, p1, v1}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker$1;-><init>(Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;[B)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;->httpCall:Lcom/microsoft/xbox/idp/util/HttpCall;

    new-instance v1, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker$2;

    invoke-direct {v1, p0, p1}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker$2;-><init>(Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/idp/util/HttpCall;->getResponseAsync(Lcom/microsoft/xbox/idp/util/HttpCall$Callback;)V

    return-void
.end method
