.class public final Landroid/support/v7/widget/m$p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "p"
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/m$v;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/m$v;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/m$v;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/widget/m$v;",
            ">;"
        }
    .end annotation
.end field

.field public e:I

.field public f:I

.field public g:Landroid/support/v7/widget/m$o;

.field public final synthetic h:Landroid/support/v7/widget/m;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/m;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v7/widget/m$p;->h:Landroid/support/v7/widget/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/m$p;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/m$p;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/m$p;->c:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/m$p;->d:Ljava/util/List;

    const/4 p1, 0x2

    iput p1, p0, Landroid/support/v7/widget/m$p;->e:I

    iput p1, p0, Landroid/support/v7/widget/m$p;->f:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/widget/m$v;)V
    .registers 6

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x4000

    .line 2
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/m$v;->f(I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_3

    .line 3
    iget-object v0, p0, Landroid/support/v7/widget/m$p;->h:Landroid/support/v7/widget/m;

    iget-object v0, v0, Landroid/support/v7/widget/m;->l:Landroid/support/v7/widget/m$q;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/support/v7/widget/m$q;->a()V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/m$p;->h:Landroid/support/v7/widget/m;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/support/v7/widget/m$p;->h:Landroid/support/v7/widget/m;

    iget-object v1, v0, Landroid/support/v7/widget/m;->b0:Landroid/support/v7/widget/m$s;

    if-eqz v1, :cond_1

    iget-object v0, v0, Landroid/support/v7/widget/m;->f:Landroid/support/v7/widget/v;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/v;->a(Landroid/support/v7/widget/m$v;)V

    .line 4
    :cond_1
    iput-object v3, p1, Landroid/support/v7/widget/m$v;->n:Landroid/support/v7/widget/m;

    invoke-virtual {p0}, Landroid/support/v7/widget/m$p;->d()Landroid/support/v7/widget/m$o;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {v0}, Landroid/support/v7/widget/m$o;->a()Landroid/support/v7/widget/m$o$a;

    move-result-object v1

    iget-object v1, v1, Landroid/support/v7/widget/m$o$a;->a:Ljava/util/ArrayList;

    iget-object v0, v0, Landroid/support/v7/widget/m$o;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/m$o$a;

    iget v0, v0, Landroid/support/v7/widget/m$o$a;->b:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v0, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/widget/m$v;->l()V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    .line 6
    :cond_3
    invoke-virtual {p1, v2, v0}, Landroid/support/v7/widget/m$v;->m(II)V

    invoke-static {v3, v3}, Ld0/l;->i(Landroid/view/View;Ld0/b;)V

    throw v3
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/m$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Landroid/support/v7/widget/m$p;->e()V

    return-void
.end method

.method public final c(I)I
    .registers 5

    if-ltz p1, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/m$p;->h:Landroid/support/v7/widget/m;

    iget-object v0, v0, Landroid/support/v7/widget/m;->b0:Landroid/support/v7/widget/m$s;

    invoke-virtual {v0}, Landroid/support/v7/widget/m$s;->a()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/m$p;->h:Landroid/support/v7/widget/m;

    iget-object v1, v0, Landroid/support/v7/widget/m;->b0:Landroid/support/v7/widget/m$s;

    .line 1
    iget-boolean v1, v1, Landroid/support/v7/widget/m$s;->e:Z

    if-nez v1, :cond_0

    return p1

    .line 2
    :cond_0
    iget-object v0, v0, Landroid/support/v7/widget/m;->d:Landroid/support/v7/widget/b;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/b;->a(II)I

    move-result p1

    return p1

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". State "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "item count is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/support/v7/widget/m$p;->h:Landroid/support/v7/widget/m;

    iget-object p1, p1, Landroid/support/v7/widget/m;->b0:Landroid/support/v7/widget/m$s;

    invoke-virtual {p1}, Landroid/support/v7/widget/m$s;->a()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/support/v7/widget/m$p;->h:Landroid/support/v7/widget/m;

    invoke-virtual {p1}, Landroid/support/v7/widget/m;->p()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d()Landroid/support/v7/widget/m$o;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/m$p;->g:Landroid/support/v7/widget/m$o;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/m$o;

    invoke-direct {v0}, Landroid/support/v7/widget/m$o;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/m$p;->g:Landroid/support/v7/widget/m$o;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/m$p;->g:Landroid/support/v7/widget/m$o;

    return-object v0
.end method

.method public final e()V
    .registers 4

    iget-object v0, p0, Landroid/support/v7/widget/m$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/m$p;->f(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/m$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-boolean v0, Landroid/support/v7/widget/m;->u0:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/m$p;->h:Landroid/support/v7/widget/m;

    iget-object v0, v0, Landroid/support/v7/widget/m;->a0:Landroid/support/v7/widget/f$b;

    iget-object v1, v0, Landroid/support/v7/widget/f$b;->c:[I

    if-eqz v1, :cond_1

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    :cond_1
    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/widget/f$b;->d:I

    :cond_2
    return-void
.end method

.method public final f(I)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/m$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/m$v;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/m$p;->a(Landroid/support/v7/widget/m$v;)V

    iget-object v0, p0, Landroid/support/v7/widget/m$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public final g(Landroid/support/v7/widget/m$v;)V
    .registers 3

    invoke-virtual {p1}, Landroid/support/v7/widget/m$v;->j()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    throw v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    throw v0
.end method

.method public final h(IJ)Landroid/support/v7/widget/m$v;
    .registers 13

    if-ltz p1, :cond_1e

    iget-object v0, p0, Landroid/support/v7/widget/m$p;->h:Landroid/support/v7/widget/m;

    iget-object v0, v0, Landroid/support/v7/widget/m;->b0:Landroid/support/v7/widget/m$s;

    invoke-virtual {v0}, Landroid/support/v7/widget/m$s;->a()I

    move-result v0

    if-ge p1, v0, :cond_1e

    iget-object v0, p0, Landroid/support/v7/widget/m$p;->h:Landroid/support/v7/widget/m;

    iget-object v0, v0, Landroid/support/v7/widget/m;->b0:Landroid/support/v7/widget/m$s;

    .line 1
    iget-boolean v0, v0, Landroid/support/v7/widget/m$s;->e:Z

    const/16 v1, 0x20

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/m$p;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_2

    iget-object v6, p0, Landroid/support/v7/widget/m$p;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/m$v;

    invoke-virtual {v6}, Landroid/support/v7/widget/m$v;->q()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v6}, Landroid/support/v7/widget/m$v;->d()I

    move-result v7

    if-ne v7, p1, :cond_1

    invoke-virtual {v6, v1}, Landroid/support/v7/widget/m$v;->b(I)V

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Landroid/support/v7/widget/m$p;->h:Landroid/support/v7/widget/m;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    throw v2

    :cond_3
    :goto_1
    move-object v6, v2

    :goto_2
    if-eqz v6, :cond_5

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    move-object v6, v2

    :cond_5
    const/4 v0, 0x0

    :goto_3
    if-nez v6, :cond_11

    .line 3
    iget-object v5, p0, Landroid/support/v7/widget/m$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v5, :cond_8

    iget-object v7, p0, Landroid/support/v7/widget/m$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/m$v;

    invoke-virtual {v7}, Landroid/support/v7/widget/m$v;->q()Z

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual {v7}, Landroid/support/v7/widget/m$v;->d()I

    move-result v8

    if-ne v8, p1, :cond_7

    invoke-virtual {v7}, Landroid/support/v7/widget/m$v;->h()Z

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, p0, Landroid/support/v7/widget/m$p;->h:Landroid/support/v7/widget/m;

    iget-object v8, v8, Landroid/support/v7/widget/m;->b0:Landroid/support/v7/widget/m$s;

    iget-boolean v8, v8, Landroid/support/v7/widget/m$s;->e:Z

    if-nez v8, :cond_6

    invoke-virtual {v7}, Landroid/support/v7/widget/m$v;->i()Z

    move-result v8

    if-nez v8, :cond_7

    :cond_6
    invoke-virtual {v7, v1}, Landroid/support/v7/widget/m$v;->b(I)V

    move-object v6, v7

    goto :goto_6

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_8
    iget-object v1, p0, Landroid/support/v7/widget/m$p;->h:Landroid/support/v7/widget/m;

    iget-object v1, v1, Landroid/support/v7/widget/m;->e:Landroid/support/v7/widget/c;

    .line 4
    iget-object v5, v1, Landroid/support/v7/widget/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_10

    .line 5
    iget-object v1, p0, Landroid/support/v7/widget/m$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v1, :cond_a

    iget-object v6, p0, Landroid/support/v7/widget/m$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/m$v;

    invoke-virtual {v6}, Landroid/support/v7/widget/m$v;->h()Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {v6}, Landroid/support/v7/widget/m$v;->d()I

    move-result v7

    if-ne v7, p1, :cond_9

    iget-object v1, p0, Landroid/support/v7/widget/m$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_6

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_a
    move-object v6, v2

    :goto_6
    if-eqz v6, :cond_11

    .line 6
    invoke-virtual {v6}, Landroid/support/v7/widget/m$v;->i()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/v7/widget/m$p;->h:Landroid/support/v7/widget/m;

    iget-object v0, v0, Landroid/support/v7/widget/m;->b0:Landroid/support/v7/widget/m$s;

    .line 7
    iget-boolean v0, v0, Landroid/support/v7/widget/m$s;->e:Z

    if-nez v0, :cond_d

    const/4 p1, 0x4

    .line 8
    invoke-virtual {v6, p1}, Landroid/support/v7/widget/m$v;->b(I)V

    invoke-virtual {v6}, Landroid/support/v7/widget/m$v;->j()Z

    move-result p1

    if-nez p1, :cond_b

    invoke-virtual {v6}, Landroid/support/v7/widget/m$v;->q()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {v6}, Landroid/support/v7/widget/m$v;->c()V

    goto :goto_7

    :cond_b
    iget-object p1, p0, Landroid/support/v7/widget/m$p;->h:Landroid/support/v7/widget/m;

    invoke-virtual {p1, v2, v4}, Landroid/support/v7/widget/m;->removeDetachedView(Landroid/view/View;Z)V

    invoke-virtual {v6}, Landroid/support/v7/widget/m$v;->p()V

    :cond_c
    :goto_7
    invoke-virtual {p0, v6}, Landroid/support/v7/widget/m$p;->g(Landroid/support/v7/widget/m$v;)V

    throw v2

    :cond_d
    const/4 v0, 0x1

    goto :goto_8

    .line 9
    :cond_e
    iget p1, v6, Landroid/support/v7/widget/m$v;->a:I

    if-ltz p1, :cond_f

    iget-object p1, p0, Landroid/support/v7/widget/m$p;->h:Landroid/support/v7/widget/m;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    throw v2

    :cond_f
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Inconsistency detected. Invalid view holder adapter position"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Landroid/support/v7/widget/m$p;->h:Landroid/support/v7/widget/m;

    invoke-virtual {p3}, Landroid/support/v7/widget/m;->p()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_10
    iget-object p1, v1, Landroid/support/v7/widget/c;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object p2, v1, Landroid/support/v7/widget/c;->a:Landroid/support/v7/widget/c$b;

    check-cast p2, Landroid/support/v7/widget/n;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {p1}, Landroid/support/v7/widget/m;->s(Landroid/view/View;)Landroid/support/v7/widget/m$v;

    .line 12
    throw v2

    :cond_11
    :goto_8
    if-nez v6, :cond_13

    .line 13
    iget-object p2, p0, Landroid/support/v7/widget/m$p;->h:Landroid/support/v7/widget/m;

    iget-object p2, p2, Landroid/support/v7/widget/m;->d:Landroid/support/v7/widget/b;

    .line 14
    invoke-virtual {p2, p1, v4}, Landroid/support/v7/widget/b;->a(II)I

    move-result p2

    if-ltz p2, :cond_12

    .line 15
    iget-object p1, p0, Landroid/support/v7/widget/m$p;->h:Landroid/support/v7/widget/m;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    throw v2

    :cond_12
    new-instance p3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Inconsistency detected. Invalid item position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "(offset:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "state:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/support/v7/widget/m$p;->h:Landroid/support/v7/widget/m;

    iget-object p1, p1, Landroid/support/v7/widget/m;->b0:Landroid/support/v7/widget/m$s;

    invoke-virtual {p1}, Landroid/support/v7/widget/m$s;->a()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/support/v7/widget/m$p;->h:Landroid/support/v7/widget/m;

    invoke-virtual {p1}, Landroid/support/v7/widget/m;->p()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_13
    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/support/v7/widget/m$p;->h:Landroid/support/v7/widget/m;

    iget-object v0, v0, Landroid/support/v7/widget/m;->b0:Landroid/support/v7/widget/m$s;

    .line 16
    iget-boolean v0, v0, Landroid/support/v7/widget/m$s;->e:Z

    if-nez v0, :cond_15

    const/16 v0, 0x2000

    .line 17
    invoke-virtual {v6, v0}, Landroid/support/v7/widget/m$v;->f(I)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v6, v4, v0}, Landroid/support/v7/widget/m$v;->m(II)V

    iget-object v0, p0, Landroid/support/v7/widget/m$p;->h:Landroid/support/v7/widget/m;

    iget-object v0, v0, Landroid/support/v7/widget/m;->b0:Landroid/support/v7/widget/m$s;

    iget-boolean v0, v0, Landroid/support/v7/widget/m$s;->g:Z

    if-nez v0, :cond_14

    goto :goto_9

    :cond_14
    invoke-static {v6}, Landroid/support/v7/widget/m$g;->a(Landroid/support/v7/widget/m$v;)I

    iget-object p1, p0, Landroid/support/v7/widget/m$p;->h:Landroid/support/v7/widget/m;

    iget-object p1, p1, Landroid/support/v7/widget/m;->H:Landroid/support/v7/widget/m$g;

    invoke-virtual {v6}, Landroid/support/v7/widget/m$v;->e()Ljava/util/List;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    throw v2

    .line 19
    :cond_15
    :goto_9
    iget-object v0, p0, Landroid/support/v7/widget/m$p;->h:Landroid/support/v7/widget/m;

    iget-object v0, v0, Landroid/support/v7/widget/m;->b0:Landroid/support/v7/widget/m$s;

    .line 20
    iget-boolean v0, v0, Landroid/support/v7/widget/m$s;->e:Z

    if-eqz v0, :cond_17

    .line 21
    invoke-virtual {v6}, Landroid/support/v7/widget/m$v;->g()Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_a

    :cond_16
    iput p1, v6, Landroid/support/v7/widget/m$v;->d:I

    goto :goto_d

    :cond_17
    :goto_a
    invoke-virtual {v6}, Landroid/support/v7/widget/m$v;->g()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 22
    iget v0, v6, Landroid/support/v7/widget/m$v;->f:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_b

    :cond_18
    const/4 v0, 0x0

    :goto_b
    if-nez v0, :cond_19

    .line 23
    invoke-virtual {v6}, Landroid/support/v7/widget/m$v;->h()Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_19
    iget-object v0, p0, Landroid/support/v7/widget/m$p;->h:Landroid/support/v7/widget/m;

    iget-object v0, v0, Landroid/support/v7/widget/m;->d:Landroid/support/v7/widget/b;

    .line 24
    invoke-virtual {v0, p1, v4}, Landroid/support/v7/widget/b;->a(II)I

    .line 25
    iget-object p1, p0, Landroid/support/v7/widget/m$p;->h:Landroid/support/v7/widget/m;

    iput-object p1, v6, Landroid/support/v7/widget/m$v;->n:Landroid/support/v7/widget/m;

    invoke-virtual {p1}, Landroid/support/v7/widget/m;->getNanoTime()J

    move-result-wide v0

    const-wide v5, 0x7fffffffffffffffL

    cmp-long p1, p2, v5

    if-eqz p1, :cond_1d

    iget-object p1, p0, Landroid/support/v7/widget/m$p;->g:Landroid/support/v7/widget/m$o;

    .line 26
    invoke-virtual {p1}, Landroid/support/v7/widget/m$o;->a()Landroid/support/v7/widget/m$o$a;

    move-result-object p1

    iget-wide v5, p1, Landroid/support/v7/widget/m$o$a;->c:J

    const-wide/16 v7, 0x0

    cmp-long p1, v5, v7

    if-eqz p1, :cond_1b

    add-long/2addr v0, v5

    cmp-long p1, v0, p2

    if-gez p1, :cond_1a

    goto :goto_c

    :cond_1a
    const/4 v3, 0x0

    :cond_1b
    :goto_c
    if-nez v3, :cond_1d

    .line 27
    :cond_1c
    :goto_d
    throw v2

    .line 28
    :cond_1d
    iget-object p1, p0, Landroid/support/v7/widget/m$p;->h:Landroid/support/v7/widget/m;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    throw v2

    .line 29
    :cond_1e
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid item position "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "). Item count:"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/support/v7/widget/m$p;->h:Landroid/support/v7/widget/m;

    iget-object p1, p1, Landroid/support/v7/widget/m;->b0:Landroid/support/v7/widget/m$s;

    invoke-virtual {p1}, Landroid/support/v7/widget/m$s;->a()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/support/v7/widget/m$p;->h:Landroid/support/v7/widget/m;

    invoke-virtual {p1}, Landroid/support/v7/widget/m;->p()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final i(Landroid/support/v7/widget/m$v;)V
    .registers 3

    iget-boolean v0, p1, Landroid/support/v7/widget/m$v;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/m$p;->b:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/m$p;->a:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v7/widget/m$v;->j:Landroid/support/v7/widget/m$p;

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v7/widget/m$v;->k:Z

    invoke-virtual {p1}, Landroid/support/v7/widget/m$v;->c()V

    return-void
.end method

.method public final j()V
    .registers 4

    iget-object v0, p0, Landroid/support/v7/widget/m$p;->h:Landroid/support/v7/widget/m;

    iget-object v0, v0, Landroid/support/v7/widget/m;->k:Landroid/support/v7/widget/m$j;

    iget v0, p0, Landroid/support/v7/widget/m$p;->e:I

    add-int/lit8 v0, v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/m$p;->f:I

    iget-object v0, p0, Landroid/support/v7/widget/m$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/m$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/m$p;->f:I

    if-le v1, v2, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/m$p;->f(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
