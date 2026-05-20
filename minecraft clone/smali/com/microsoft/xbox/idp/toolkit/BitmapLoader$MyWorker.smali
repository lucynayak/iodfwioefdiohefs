.class Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;
.super Ljava/lang/Object;
.source "BitmapLoader.java"

# interfaces
.implements Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$Worker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/toolkit/BitmapLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyWorker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$Worker",
        "<",
        "Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final cache:Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;

.field private final httpCall:Lcom/microsoft/xbox/idp/util/HttpCall;

.field private final resultKey:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 68
    const-class v0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;Ljava/lang/Object;Lcom/microsoft/xbox/idp/util/HttpCall;)V
    .registers 5
    .param p1, "cache"    # Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;
    .param p2, "resultKey"    # Ljava/lang/Object;
    .param p3, "httpCall"    # Lcom/microsoft/xbox/idp/util/HttpCall;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    sget-boolean v0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 75
    :cond_0
    iput-object p1, p0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;->cache:Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;

    .line 76
    iput-object p2, p0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;->resultKey:Ljava/lang/Object;

    .line 77
    iput-object p3, p0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;->httpCall:Lcom/microsoft/xbox/idp/util/HttpCall;

    .line 78
    return-void
.end method

.method synthetic constructor <init>(Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;Ljava/lang/Object;Lcom/microsoft/xbox/idp/util/HttpCall;Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$1;)V
    .registers 5
    .param p1, "x0"    # Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Lcom/microsoft/xbox/idp/util/HttpCall;
    .param p4, "x3"    # Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$1;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;-><init>(Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;Ljava/lang/Object;Lcom/microsoft/xbox/idp/util/HttpCall;)V

    return-void
.end method

.method static synthetic access$200(Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;)Z
    .registers 2
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;->hasCache()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;)Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;
    .registers 2
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;->cache:Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;

    return-object v0
.end method

.method static synthetic access$400(Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;->resultKey:Ljava/lang/Object;

    return-object v0
.end method

.method private hasCache()Z
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;->cache:Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;->resultKey:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .registers 1

    .prologue
    .line 134
    return-void
.end method

.method public start(Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener",
            "<",
            "Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "listener":Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;, "Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener<Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;>;"
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;->hasCache()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    iget-object v2, p0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;->cache:Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;

    monitor-enter v2

    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;->cache:Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;

    iget-object v3, p0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;->resultKey:Ljava/lang/Object;

    invoke-interface {v1, v3}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;->get(Ljava/lang/Object;)[B

    move-result-object v0

    .line 90
    .local v0, "data":[B
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    if-eqz v0, :cond_0

    .line 92
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker$1;-><init>(Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;[B)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 97
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 130
    .end local v0    # "data":[B
    :goto_0
    return-void

    .line 90
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;->httpCall:Lcom/microsoft/xbox/idp/util/HttpCall;

    new-instance v2, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker$2;

    invoke-direct {v2, p0, p1}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker$2;-><init>(Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;)V

    invoke-virtual {v1, v2}, Lcom/microsoft/xbox/idp/util/HttpCall;->getResponseAsync(Lcom/microsoft/xbox/idp/util/HttpCall$Callback;)V

    goto :goto_0
.end method
