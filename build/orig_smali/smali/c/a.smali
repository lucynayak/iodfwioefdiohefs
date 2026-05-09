.class public final Lc/a;
.super Lc/c;
.source "SourceFile"


# static fields
.field public static volatile d:Lc/a;


# instance fields
.field public b:Lc/b;

.field public c:Lc/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lc/c;-><init>()V

    new-instance v0, Lc/b;

    invoke-direct {v0}, Lc/b;-><init>()V

    iput-object v0, p0, Lc/a;->c:Lc/b;

    iput-object v0, p0, Lc/a;->b:Lc/b;

    return-void
.end method

.method public static c()Lc/a;
    .locals 2

    sget-object v0, Lc/a;->d:Lc/a;

    if-eqz v0, :cond_0

    sget-object v0, Lc/a;->d:Lc/a;

    return-object v0

    :cond_0
    const-class v0, Lc/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lc/a;->d:Lc/a;

    if-nez v1, :cond_1

    new-instance v1, Lc/a;

    invoke-direct {v1}, Lc/a;-><init>()V

    sput-object v1, Lc/a;->d:Lc/a;

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lc/a;->d:Lc/a;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public final d()Z
    .locals 2

    iget-object v0, p0, Lc/a;->b:Lc/b;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
