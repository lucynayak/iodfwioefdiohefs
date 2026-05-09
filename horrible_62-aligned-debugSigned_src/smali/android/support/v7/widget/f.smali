.class public final Landroid/support/v7/widget/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/f$b;,
        Landroid/support/v7/widget/f$c;
    }
.end annotation


# static fields
.field public static final f:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/support/v7/widget/f;",
            ">;"
        }
    .end annotation
.end field

.field public static g:Landroid/support/v7/widget/f$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/support/v7/widget/f$c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/m;",
            ">;"
        }
    .end annotation
.end field

.field public c:J

.field public d:J

.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/f$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/v7/widget/f;->f:Ljava/lang/ThreadLocal;

    new-instance v0, Landroid/support/v7/widget/f$a;

    invoke-direct {v0}, Landroid/support/v7/widget/f$a;-><init>()V

    sput-object v0, Landroid/support/v7/widget/f;->g:Landroid/support/v7/widget/f$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/f;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/f;->e:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/widget/m;II)V
    .registers 9

    invoke-virtual {p1}, Landroid/support/v7/widget/m;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/support/v7/widget/f;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/m;->getNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v7/widget/f;->c:J

    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p1, p1, Landroid/support/v7/widget/m;->a0:Landroid/support/v7/widget/f$b;

    iput p2, p1, Landroid/support/v7/widget/f$b;->a:I

    iput p3, p1, Landroid/support/v7/widget/f$b;->b:I

    return-void
.end method

.method public final b(J)V
    .registers 15

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v4, p0, Landroid/support/v7/widget/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/m;

    invoke-virtual {v4}, Landroid/view/View;->getWindowVisibility()I

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v4, Landroid/support/v7/widget/m;->a0:Landroid/support/v7/widget/f$b;

    .line 2
    iput v1, v5, Landroid/support/v7/widget/f$b;->d:I

    iget-object v5, v5, Landroid/support/v7/widget/f$b;->c:[I

    if-eqz v5, :cond_0

    const/4 v6, -0x1

    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([II)V

    .line 3
    :cond_0
    iget-object v4, v4, Landroid/support/v7/widget/m;->a0:Landroid/support/v7/widget/f$b;

    iget v4, v4, Landroid/support/v7/widget/f$b;->d:I

    add-int/2addr v3, v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/support/v7/widget/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v2, v0, :cond_7

    iget-object v4, p0, Landroid/support/v7/widget/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/m;

    invoke-virtual {v4}, Landroid/view/View;->getWindowVisibility()I

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_5

    :cond_3
    iget-object v5, v4, Landroid/support/v7/widget/m;->a0:Landroid/support/v7/widget/f$b;

    iget v6, v5, Landroid/support/v7/widget/f$b;->a:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, v5, Landroid/support/v7/widget/f$b;->b:I

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v7, v6

    const/4 v6, 0x0

    :goto_2
    iget v8, v5, Landroid/support/v7/widget/f$b;->d:I

    mul-int/lit8 v8, v8, 0x2

    if-ge v6, v8, :cond_6

    iget-object v8, p0, Landroid/support/v7/widget/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v3, v8, :cond_4

    new-instance v8, Landroid/support/v7/widget/f$c;

    invoke-direct {v8}, Landroid/support/v7/widget/f$c;-><init>()V

    iget-object v9, p0, Landroid/support/v7/widget/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    iget-object v8, p0, Landroid/support/v7/widget/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/f$c;

    :goto_3
    iget-object v9, v5, Landroid/support/v7/widget/f$b;->c:[I

    add-int/lit8 v10, v6, 0x1

    aget v10, v9, v10

    if-gt v10, v7, :cond_5

    const/4 v11, 0x1

    goto :goto_4

    :cond_5
    const/4 v11, 0x0

    :goto_4
    iput-boolean v11, v8, Landroid/support/v7/widget/f$c;->a:Z

    iput v7, v8, Landroid/support/v7/widget/f$c;->b:I

    iput v10, v8, Landroid/support/v7/widget/f$c;->c:I

    iput-object v4, v8, Landroid/support/v7/widget/f$c;->d:Landroid/support/v7/widget/m;

    aget v9, v9, v6

    iput v9, v8, Landroid/support/v7/widget/f$c;->e:I

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v6, v6, 0x2

    goto :goto_2

    :cond_6
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/f;->e:Ljava/util/ArrayList;

    sget-object v2, Landroid/support/v7/widget/f;->g:Landroid/support/v7/widget/f$a;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4
    iget-object v0, p0, Landroid/support/v7/widget/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    iget-object v0, p0, Landroid/support/v7/widget/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/f$c;

    iget-object v1, v0, Landroid/support/v7/widget/f$c;->d:Landroid/support/v7/widget/m;

    if-nez v1, :cond_8

    goto :goto_6

    .line 5
    :cond_8
    iget-boolean v2, v0, Landroid/support/v7/widget/f$c;->a:Z

    if-eqz v2, :cond_9

    const-wide p1, 0x7fffffffffffffffL

    :cond_9
    iget v0, v0, Landroid/support/v7/widget/f$c;->e:I

    invoke-virtual {p0, v1, v0, p1, p2}, Landroid/support/v7/widget/f;->c(Landroid/support/v7/widget/m;IJ)V

    const/4 p1, 0x0

    throw p1

    :cond_a
    :goto_6
    return-void
.end method

.method public final c(Landroid/support/v7/widget/m;IJ)V
    .registers 8

    .line 1
    iget-object v0, p1, Landroid/support/v7/widget/m;->e:Landroid/support/v7/widget/c;

    invoke-virtual {v0}, Landroid/support/v7/widget/c;->e()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-gtz v0, :cond_0

    .line 2
    iget-object v0, p1, Landroid/support/v7/widget/m;->b:Landroid/support/v7/widget/m$p;

    :try_start_0
    invoke-virtual {p1}, Landroid/support/v7/widget/m;->y()V

    invoke-virtual {v0, p2, p3, p4}, Landroid/support/v7/widget/m$p;->h(IJ)Landroid/support/v7/widget/m$v;

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p2

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/m;->z(Z)V

    throw p2

    .line 3
    :cond_0
    iget-object p1, p1, Landroid/support/v7/widget/m;->e:Landroid/support/v7/widget/c;

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/c;->d(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v7/widget/m;->s(Landroid/view/View;)Landroid/support/v7/widget/m$v;

    throw v1
.end method

.method public final run()V
    .registers 9

    const-wide/16 v0, 0x0

    :try_start_0
    const-string v2, "RV Prefetch"

    .line 1
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2
    iget-object v2, p0, Landroid/support/v7/widget/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    iput-wide v0, p0, Landroid/support/v7/widget/f;->c:J

    .line 3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    .line 4
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/support/v7/widget/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move-wide v4, v0

    :goto_0
    if-ge v3, v2, :cond_2

    iget-object v6, p0, Landroid/support/v7/widget/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/m;

    invoke-virtual {v6}, Landroid/view/View;->getWindowVisibility()I

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v6}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v6

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    cmp-long v2, v4, v0

    if-nez v2, :cond_3

    iput-wide v0, p0, Landroid/support/v7/widget/f;->c:J

    .line 5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    .line 6
    :cond_3
    :try_start_2
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    iget-wide v4, p0, Landroid/support/v7/widget/f;->d:J

    add-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Landroid/support/v7/widget/f;->b(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput-wide v0, p0, Landroid/support/v7/widget/f;->c:J

    .line 7
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception v2

    .line 8
    iput-wide v0, p0, Landroid/support/v7/widget/f;->c:J

    .line 9
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 10
    throw v2
.end method
