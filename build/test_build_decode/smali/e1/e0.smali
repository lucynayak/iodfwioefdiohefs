.class public final Le1/e0;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"

# interfaces
.implements Le1/f0;


# instance fields
.field public b:J

.field public c:Le1/g0;

.field public d:J

.field public e:J

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Le1/u;",
            "Le1/g0;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Le1/x;

.field public final h:J


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Le1/x;Ljava/util/Map;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Le1/x;",
            "Ljava/util/Map<",
            "Le1/u;",
            "Le1/g0;",
            ">;J)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p2, p0, Le1/e0;->g:Le1/x;

    iput-object p3, p0, Le1/e0;->f:Ljava/util/Map;

    iput-wide p4, p0, Le1/e0;->e:J

    sget-object p1, Le1/r;->a:Ljava/lang/Object;

    .line 1
    invoke-static {}, Lr0/e;->k()V

    sget-object p1, Le1/r;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide p1

    .line 2
    iput-wide p1, p0, Le1/e0;->h:J

    return-void
.end method


# virtual methods
.method public final a(Le1/u;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Le1/e0;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le1/g0;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Le1/e0;->c:Le1/g0;

    return-void
.end method

.method public final b(J)V
    .locals 7

    iget-object v0, p0, Le1/e0;->c:Le1/g0;

    if-eqz v0, :cond_1

    .line 1
    iget-wide v1, v0, Le1/g0;->d:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Le1/g0;->d:J

    iget-wide v3, v0, Le1/g0;->b:J

    iget-wide v5, v0, Le1/g0;->f:J

    add-long/2addr v3, v5

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    iget-wide v3, v0, Le1/g0;->c:J

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    :cond_0
    invoke-virtual {v0}, Le1/g0;->a()V

    .line 2
    :cond_1
    iget-wide v0, p0, Le1/e0;->b:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Le1/e0;->b:J

    iget-wide v0, p0, Le1/e0;->d:J

    iget-wide v2, p0, Le1/e0;->h:J

    add-long/2addr v0, v2

    cmp-long v2, p1, v0

    if-gez v2, :cond_2

    iget-wide v0, p0, Le1/e0;->e:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_3

    :cond_2
    invoke-virtual {p0}, Le1/e0;->c()V

    :cond_3
    return-void
.end method

.method public final c()V
    .locals 5

    iget-wide v0, p0, Le1/e0;->b:J

    iget-wide v2, p0, Le1/e0;->d:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    iget-object v0, p0, Le1/e0;->g:Le1/x;

    .line 1
    iget-object v0, v0, Le1/x;->c:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le1/x$a;

    instance-of v2, v1, Le1/x$b;

    if-eqz v2, :cond_0

    iget-object v2, p0, Le1/e0;->g:Le1/x;

    .line 3
    iget-object v2, v2, Le1/x;->b:Landroid/os/Handler;

    .line 4
    check-cast v1, Le1/x$b;

    if-nez v2, :cond_1

    invoke-interface {v1}, Le1/x$b;->a()V

    goto :goto_0

    :cond_1
    new-instance v3, Le1/e0$a;

    invoke-direct {v3, p0, v1}, Le1/e0$a;-><init>(Le1/e0;Le1/x$b;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Le1/e0;->b:J

    iput-wide v0, p0, Le1/e0;->d:J

    :cond_3
    return-void
.end method

.method public final close()V
    .locals 2

    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    iget-object v0, p0, Le1/e0;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le1/g0;

    invoke-virtual {v1}, Le1/g0;->a()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Le1/e0;->c()V

    return-void
.end method

.method public final write(I)V
    .locals 2

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Le1/e0;->b(J)V

    return-void
.end method

.method public final write([B)V
    .locals 2

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    array-length p1, p1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Le1/e0;->b(J)V

    return-void
.end method

.method public final write([BII)V
    .locals 1

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    int-to-long p1, p3

    invoke-virtual {p0, p1, p2}, Le1/e0;->b(J)V

    return-void
.end method
