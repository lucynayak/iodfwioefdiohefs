.class final Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/xbox/idp/util/HttpCall$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSyncSucceeded(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/util/List;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic val$acceptableStatusCodes:Ljava/util/List;

.field public final synthetic val$notifier:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$2;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$2;->val$acceptableStatusCodes:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processHttpError(IILjava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$2;->val$acceptableStatusCodes:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    iget-object p2, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$2;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter p2

    :try_start_0
    iget-object p3, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$2;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$2;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public processResponse(Ljava/io/InputStream;)V
    .locals 2

    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$2;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$2;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$2;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
