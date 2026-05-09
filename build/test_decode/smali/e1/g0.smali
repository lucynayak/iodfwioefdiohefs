.class public final Le1/g0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/os/Handler;

.field public b:J

.field public c:J

.field public d:J

.field public final e:Le1/u;

.field public final f:J


# direct methods
.method public constructor <init>(Landroid/os/Handler;Le1/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Le1/g0;->e:Le1/u;

    iput-object p1, p0, Le1/g0;->a:Landroid/os/Handler;

    sget-object p1, Le1/r;->a:Ljava/lang/Object;

    .line 1
    invoke-static {}, Lr0/e;->k()V

    sget-object p1, Le1/r;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide p1

    .line 2
    iput-wide p1, p0, Le1/g0;->f:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    iget-wide v2, p0, Le1/g0;->d:J

    iget-wide v0, p0, Le1/g0;->b:J

    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    iget-object v0, p0, Le1/g0;->e:Le1/u;

    .line 1
    iget-object v0, v0, Le1/u;->b:Le1/u$c;

    .line 2
    iget-wide v4, p0, Le1/g0;->c:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_1

    instance-of v1, v0, Le1/u$e;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Le1/u$e;

    iget-object v6, p0, Le1/g0;->a:Landroid/os/Handler;

    if-nez v6, :cond_0

    invoke-interface {v1}, Le1/u$e;->b()V

    goto :goto_0

    :cond_0
    new-instance v7, Le1/g0$a;

    move-object v0, v7

    invoke-direct/range {v0 .. v5}, Le1/g0$a;-><init>(Le1/u$e;JJ)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    iget-wide v0, p0, Le1/g0;->d:J

    iput-wide v0, p0, Le1/g0;->b:J

    :cond_1
    return-void
.end method
