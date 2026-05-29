.class final Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/xbox/idp/util/HttpCall$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSync(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/Class;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic val$returnClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 3

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$1;->val$returnClass:Ljava/lang/Class;

    iput-object p2, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$1;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processHttpError(IILjava/lang/String;)V
    .registers 6

    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$1;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$1;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p3, Landroid/util/Pair;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {p3, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, p3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$1;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public processResponse(Ljava/io/InputStream;)V
    .registers 6

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$1;->val$returnClass:Ljava/lang/Class;

    invoke-static {p1, v0}, Lcom/microsoft/xbox/toolkit/GsonUtil;->deserializeJson(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$1;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$1;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Landroid/util/Pair;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v2, v3, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$1;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
