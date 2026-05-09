.class public final Lf1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lf1/f$a;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Lf1/f$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lf1/f$a;Lf1/f$b;)V
    .locals 0

    iput-object p1, p0, Lf1/c;->c:Landroid/content/Context;

    iput-object p2, p0, Lf1/c;->b:Lf1/f$a;

    iput-object p3, p0, Lf1/c;->d:Lf1/f$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lf1/c;->c:Landroid/content/Context;

    iget-object v1, p0, Lf1/c;->b:Lf1/f$a;

    .line 1
    invoke-static {v0, v1}, Lf1/f;->e(Landroid/content/Context;Lf1/f$a;)Lf1/f$f;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lf1/c;->d:Lf1/f$b;

    .line 3
    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Lf1/f$f;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, v0, Lf1/f$f;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    const/16 v3, 0x3e8

    if-lt v2, v3, :cond_0

    iget v1, v0, Lf1/f$f;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lf1/f$f;->e:I

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lf1/f$f;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :goto_0
    monitor-exit v0

    .line 4
    sget-object v1, Lf1/f;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 5
    :try_start_1
    sget-object v0, Lf1/f;->j:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget v2, Lf1/f;->f:I

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x2

    if-eq v2, v0, :cond_1

    .line 6
    :try_start_3
    invoke-static {}, Lf1/f;->c()I

    move-result v0

    const/16 v2, 0x64

    if-le v0, v2, :cond_1

    .line 7
    invoke-static {}, Le1/r;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v2, Lf1/d;

    invoke-direct {v2}, Lf1/d;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 8
    :cond_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    :catchall_0
    move-exception v2

    .line 9
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2

    :catchall_1
    move-exception v0

    .line 10
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :catchall_2
    move-exception v1

    .line 11
    monitor-exit v0

    throw v1
.end method
