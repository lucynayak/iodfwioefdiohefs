.class public final Le1/d0;
.super Ljava/io/OutputStream;
.source "SourceFile"

# interfaces
.implements Le1/f0;


# instance fields
.field public b:I

.field public final c:Landroid/os/Handler;

.field public d:Le1/u;

.field public e:Le1/g0;

.field public final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Le1/u;",
            "Le1/g0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 3

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Le1/d0;->f:Ljava/util/HashMap;

    iput-object p1, p0, Le1/d0;->c:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a(Le1/u;)V
    .registers 3

    iput-object p1, p0, Le1/d0;->d:Le1/u;

    if-eqz p1, :cond_0

    iget-object v0, p0, Le1/d0;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le1/g0;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Le1/d0;->e:Le1/g0;

    return-void
.end method

.method public final b(J)V
    .registers 6

    iget-object v0, p0, Le1/d0;->e:Le1/g0;

    if-nez v0, :cond_0

    new-instance v0, Le1/g0;

    iget-object v1, p0, Le1/d0;->c:Landroid/os/Handler;

    iget-object v2, p0, Le1/d0;->d:Le1/u;

    invoke-direct {v0, v1, v2}, Le1/g0;-><init>(Landroid/os/Handler;Le1/u;)V

    iput-object v0, p0, Le1/d0;->e:Le1/g0;

    iget-object v1, p0, Le1/d0;->f:Ljava/util/HashMap;

    iget-object v2, p0, Le1/d0;->d:Le1/u;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Le1/d0;->e:Le1/g0;

    .line 1
    iget-wide v1, v0, Le1/g0;->c:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Le1/g0;->c:J

    .line 2
    iget v0, p0, Le1/d0;->b:I

    int-to-long v0, v0

    add-long/2addr p1, v0

    long-to-int p2, p1

    iput p2, p0, Le1/d0;->b:I

    return-void
.end method

.method public final write(I)V
    .registers 4

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Le1/d0;->b(J)V

    return-void
.end method

.method public final write([B)V
    .registers 4

    array-length p1, p1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Le1/d0;->b(J)V

    return-void
.end method

.method public final write([BII)V
    .registers 4

    int-to-long p1, p3

    invoke-virtual {p0, p1, p2}, Le1/d0;->b(J)V

    return-void
.end method
