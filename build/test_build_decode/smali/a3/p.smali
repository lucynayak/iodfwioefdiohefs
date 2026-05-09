.class public final La3/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La3/w;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La3/p$a;,
        La3/p$b;
    }
.end annotation


# instance fields
.field public final b:La3/q;

.field public final c:La3/m;

.field public final d:La3/s1;

.field public final e:La3/r;

.field public final f:La3/h2;

.field public final g:Lc3/c;


# direct methods
.method public constructor <init>(La3/q;Lc3/c;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, La3/s1;

    invoke-direct {p3, p1, p2}, La3/s1;-><init>(La3/q;Lc3/c;)V

    iput-object p3, p0, La3/p;->d:La3/s1;

    new-instance p3, La3/r;

    invoke-direct {p3, p1, p2}, La3/r;-><init>(La3/q;Lc3/c;)V

    iput-object p3, p0, La3/p;->e:La3/r;

    new-instance p3, La3/m;

    invoke-direct {p3}, La3/m;-><init>()V

    iput-object p3, p0, La3/p;->c:La3/m;

    new-instance p3, La3/h2;

    invoke-direct {p3}, La3/h2;-><init>()V

    iput-object p3, p0, La3/p;->f:La3/h2;

    iput-object p1, p0, La3/p;->b:La3/q;

    iput-object p2, p0, La3/p;->g:Lc3/c;

    return-void
.end method


# virtual methods
.method public final a(Ld3/m;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, La3/p;->b:La3/q;

    invoke-virtual {v1, v0}, La3/q;->f(Ljava/lang/Class;)La3/k;

    move-result-object v0

    .line 1
    iget-object v1, v0, La3/k;->a:La3/i;

    .line 2
    iget-object v2, v0, La3/k;->e:La3/k2;

    .line 3
    invoke-virtual {p0, p1, p2, v0}, La3/p;->i(Ld3/m;Ljava/lang/Object;La3/k;)V

    .line 4
    invoke-interface {v2}, La3/k2;->f()La3/c1;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, v0}, La3/p;->f(Ld3/m;Ljava/lang/Object;La3/c1;)Ljava/lang/Object;

    .line 5
    :cond_0
    invoke-virtual {p0, p1, p2, v2}, La3/p;->d(Ld3/m;Ljava/lang/Object;La3/k2;)V

    invoke-virtual {p0, p1, p2, v2}, La3/p;->e(Ld3/m;Ljava/lang/Object;La3/k2;)V

    .line 6
    iget-object v0, p0, La3/p;->c:La3/m;

    invoke-virtual {v0, p2}, La3/m;->A(Ljava/lang/Object;)V

    .line 7
    iget-object v0, v1, La3/i;->g:La3/x0;

    if-eqz v0, :cond_1

    iget-object v2, v1, La3/i;->c:La3/q;

    invoke-virtual {v0, v2, p2}, La3/x0;->a(La3/q;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_1
    iget-object v0, v1, La3/i;->a:La3/x0;

    if-eqz v0, :cond_2

    iget-object v2, v1, La3/i;->c:La3/q;

    invoke-virtual {v0, v2, p2}, La3/x0;->a(La3/q;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_2
    invoke-virtual {p0, p1, p2, v1}, La3/p;->g(Ld3/m;Ljava/lang/Object;La3/i;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ld3/m;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, La3/p;->d:La3/s1;

    invoke-virtual {v0, p1}, La3/s1;->f(Ld3/m;)La3/z0;

    move-result-object v0

    invoke-interface {v0}, La3/z0;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0}, La3/z0;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, La3/z0;->d()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v2, p0, La3/p;->b:La3/q;

    .line 1
    iget-object v2, v2, La3/q;->d:Ljava/lang/Object;

    check-cast v2, La3/t2;

    invoke-virtual {v2, v1}, La3/t2;->h(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2
    invoke-interface {v0}, La3/z0;->a()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, La3/p;->e:La3/r;

    invoke-virtual {v2, p1, v1}, La3/r;->i(Ld3/m;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    if-eqz v1, :cond_1

    invoke-interface {v0, p1}, La3/z0;->c(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p1

    .line 3
    :cond_2
    iget-object v2, p0, La3/p;->b:La3/q;

    invoke-virtual {v2, v1}, La3/q;->f(Ljava/lang/Class;)La3/k;

    move-result-object v1

    .line 4
    iget-object v2, v1, La3/k;->a:La3/i;

    .line 5
    iget-object v3, v1, La3/k;->b:Lt/n;

    .line 6
    iget-object v4, v3, Lt/n;->c:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-gt v4, v6, :cond_3

    iget-object v3, v3, Lt/n;->e:Ljava/lang/Object;

    check-cast v3, La3/x;

    if-eqz v3, :cond_3

    const/4 v5, 0x1

    :cond_3
    if-eqz v5, :cond_4

    .line 7
    new-instance v3, La3/p$a;

    iget-object v4, p0, La3/p;->c:La3/m;

    invoke-direct {v3, p0, v4, v1, v0}, La3/p$a;-><init>(La3/p;La3/y;La3/k;La3/z0;)V

    goto :goto_0

    :cond_4
    new-instance v3, La3/p$b;

    iget-object v4, p0, La3/p;->c:La3/m;

    invoke-direct {v3, p0, v4, v1, v0}, La3/p$b;-><init>(La3/p;La3/y;La3/k;La3/z0;)V

    .line 8
    :goto_0
    invoke-virtual {v3, p1}, La3/p$a;->a(Ld3/m;)Ljava/lang/Object;

    move-result-object v1

    .line 9
    iget-object v3, v2, La3/i;->g:La3/x0;

    if-eqz v3, :cond_5

    iget-object v4, v2, La3/i;->c:La3/q;

    invoke-virtual {v3, v4, v1}, La3/x0;->a(La3/q;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_5
    iget-object v3, v2, La3/i;->a:La3/x0;

    if-eqz v3, :cond_6

    iget-object v4, v2, La3/i;->c:La3/q;

    invoke-virtual {v3, v4, v1}, La3/x0;->a(La3/q;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_6
    invoke-interface {v0, v1}, La3/z0;->c(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, v1, v2}, La3/p;->g(Ld3/m;Ljava/lang/Object;La3/i;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ld3/z;Ljava/lang/Object;)V
    .locals 7

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, La3/p;->b:La3/q;

    invoke-virtual {v1, v0}, La3/q;->f(Ljava/lang/Class;)La3/k;

    move-result-object v0

    .line 1
    iget-object v1, v0, La3/k;->a:La3/i;

    .line 2
    :try_start_0
    iget-boolean v2, v0, La3/k;->c:Z

    if-eqz v2, :cond_0

    .line 3
    iget-object v0, p0, La3/p;->e:La3/r;

    invoke-virtual {v0, p1, p2}, La3/r;->c(Ld3/z;Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v2, v1, La3/i;->d:La3/x0;

    if-eqz v2, :cond_1

    iget-object v3, v1, La3/i;->c:La3/q;

    invoke-virtual {v2, v3, p2}, La3/x0;->a(La3/q;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_1
    iget-object v2, v0, La3/k;->e:La3/k2;

    .line 6
    iget-object v3, v0, La3/k;->d:Ly2/r;

    .line 7
    iget-object v0, v0, La3/k;->h:La3/c1;

    if-eqz v3, :cond_3

    .line 8
    iget-object v4, p0, La3/p;->f:La3/h2;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v3}, Ly2/r;->revision()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-object v5, p0, La3/p;->f:La3/h2;

    invoke-virtual {v5, v3, v4}, La3/h2;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, La3/c1;->e()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    invoke-virtual {p0, p1, v3, v0}, La3/p;->k(Ld3/z;Ljava/lang/Object;La3/c1;)V

    .line 9
    :cond_3
    invoke-virtual {p0, p1, p2, v2}, La3/p;->l(Ld3/z;Ljava/lang/Object;La3/k2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :goto_0
    iget-object p1, v1, La3/i;->b:La3/x0;

    if-eqz p1, :cond_4

    iget-object v0, v1, La3/i;->c:La3/q;

    invoke-virtual {p1, v0, p2}, La3/x0;->a(La3/q;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    iget-object v0, v1, La3/i;->b:La3/x0;

    if-eqz v0, :cond_5

    iget-object v1, v1, La3/i;->c:La3/q;

    invoke-virtual {v0, v1, p2}, La3/x0;->a(La3/q;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_5
    throw p1
.end method

.method public final d(Ld3/m;Ljava/lang/Object;La3/k2;)V
    .locals 6

    invoke-interface {p1}, Ld3/m;->c()Ld3/t;

    move-result-object v0

    invoke-interface {p3}, La3/k2;->c()La3/g1;

    move-result-object v1

    check-cast v0, Ld3/n;

    invoke-virtual {v0}, Ld3/n;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v2}, Ld3/m;->e(Ljava/lang/String;)Ld3/m;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1
    invoke-interface {v2}, Ld3/q;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v3}, La3/k2;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, La3/g1;->A(Ljava/lang/String;)La3/c1;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-interface {v2}, Ld3/m;->getPosition()Landroid/arch/lifecycle/h;

    move-result-object v2

    iget-object v4, p0, La3/p;->b:La3/q;

    iget-object v5, p0, La3/p;->g:Lc3/c;

    invoke-virtual {v4, v5, p2}, La3/q;->h(Lc3/c;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v4

    iget-object v5, p0, La3/p;->b:La3/q;

    invoke-virtual {v1, v5}, La3/g1;->C(La3/q;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, La3/p;->f:La3/h2;

    .line 2
    iget-boolean v5, v5, La3/h2;->a:Z

    if-nez v5, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    new-instance p1, La3/d;

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object v3, p2, p3

    const/4 p3, 0x1

    aput-object v4, p2, p3

    const/4 p3, 0x2

    aput-object v2, p2, p3

    const-string p3, "Attribute \'%s\' does not have a match in %s at %s"

    invoke-direct {p1, p3, p2}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_2
    invoke-virtual {p0, v2, p2, v4}, La3/p;->f(Ld3/m;Ljava/lang/Object;La3/c1;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_3
    invoke-virtual {p0, p1, v1, p2}, La3/p;->j(Ld3/m;La3/g1;Ljava/lang/Object;)V

    return-void
.end method

.method public final e(Ld3/m;Ljava/lang/Object;La3/k2;)V
    .locals 7

    invoke-interface {p3}, La3/k2;->g()La3/g1;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ld3/m;->o()Ld3/m;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ld3/q;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v2}, La3/k2;->r(Ljava/lang/String;)La3/k2;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1, p2, v2}, La3/p;->h(Ld3/m;Ljava/lang/Object;La3/k2;)V

    goto :goto_0

    .line 1
    :cond_1
    invoke-interface {v1}, Ld3/q;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v2}, La3/k2;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, La3/g1;->A(Ljava/lang/String;)La3/c1;

    move-result-object v3

    if-nez v3, :cond_2

    iget-object v3, p0, La3/p;->c:La3/m;

    .line 2
    iget-object v3, v3, La3/m;->b:La3/m$a;

    invoke-virtual {v3, v2}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La3/e3;

    :cond_2
    const/4 v4, 0x0

    if-nez v3, :cond_5

    .line 3
    invoke-interface {v1}, Ld3/m;->getPosition()Landroid/arch/lifecycle/h;

    move-result-object v3

    iget-object v5, p0, La3/p;->b:La3/q;

    iget-object v6, p0, La3/p;->g:Lc3/c;

    invoke-virtual {v5, v6, p2}, La3/q;->h(Lc3/c;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v5

    iget-object v6, p0, La3/p;->b:La3/q;

    invoke-virtual {v0, v6}, La3/g1;->C(La3/q;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, La3/p;->f:La3/h2;

    .line 4
    iget-boolean v6, v6, La3/h2;->a:Z

    if-nez v6, :cond_3

    goto :goto_1

    .line 5
    :cond_3
    new-instance p1, La3/d;

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    aput-object v2, p2, v4

    const/4 p3, 0x1

    aput-object v5, p2, p3

    const/4 p3, 0x2

    aput-object v3, p2, p3

    const-string p3, "Element \'%s\' does not have a match in %s at %s"

    invoke-direct {p1, p3, p2}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ld3/m;->p()V

    goto :goto_0

    .line 6
    :cond_5
    invoke-virtual {p0, v1, p2, v3}, La3/p;->f(Ld3/m;Ljava/lang/Object;La3/c1;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3}, La3/c1;->o()[Ljava/lang/String;

    move-result-object v2

    array-length v5, v2

    :goto_2
    if-ge v4, v5, :cond_6

    aget-object v6, v2, v4

    invoke-virtual {v0, v6}, La3/g1;->A(Ljava/lang/String;)La3/c1;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    invoke-interface {v3}, La3/c1;->s()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, La3/p;->c:La3/m;

    invoke-virtual {v2, v3, v1}, La3/m;->B(La3/c1;Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_7
    invoke-virtual {p0, p1, v0, p2}, La3/p;->j(Ld3/m;La3/g1;Ljava/lang/Object;)V

    return-void
.end method

.method public final f(Ld3/m;Ljava/lang/Object;La3/c1;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, La3/p;->b:La3/q;

    invoke-interface {p3, v0}, La3/c1;->l(La3/q;)La3/w;

    move-result-object v0

    invoke-interface {p3}, La3/c1;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, La3/p;->c:La3/m;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface {p3}, La3/c1;->getKey()Ljava/lang/Object;

    move-result-object v2

    iget-object v1, v1, La3/m;->c:La3/m$a;

    invoke-virtual {v1, v2}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La3/e3;

    .line 3
    invoke-interface {p3}, La3/c1;->n()La3/s;

    move-result-object v2

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, v1, La3/e3;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 5
    invoke-interface {v2, p2}, La3/s;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    :goto_0
    invoke-interface {v0, p1, v1}, La3/w;->a(Ld3/m;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-interface {v0, p1}, La3/w;->b(Ld3/m;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_3

    .line 6
    invoke-interface {p1}, Ld3/m;->getPosition()Landroid/arch/lifecycle/h;

    move-result-object p1

    iget-object v1, p0, La3/p;->b:La3/q;

    iget-object v2, p0, La3/p;->g:Lc3/c;

    invoke-virtual {v1, v2, p2}, La3/q;->h(Lc3/c;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p2

    invoke-interface {p3}, La3/c1;->e()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, La3/p;->f:La3/h2;

    .line 7
    iget-boolean v1, v1, La3/h2;->a:Z

    if-nez v1, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    new-instance v0, La3/d;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 p3, 0x1

    aput-object p2, v1, p3

    const/4 p2, 0x2

    aput-object p1, v1, p2

    const-string p1, "Empty value for %s in %s at %s"

    invoke-direct {v0, p1, v1}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_3
    iget-object p1, p0, La3/p;->b:La3/q;

    invoke-interface {p3, p1}, La3/c1;->m(La3/q;)Ljava/lang/Object;

    move-result-object p1

    if-eq v0, p1, :cond_4

    iget-object p1, p0, La3/p;->c:La3/m;

    invoke-virtual {p1, p3, v0}, La3/m;->B(La3/c1;Ljava/lang/Object;)V

    :cond_4
    :goto_2
    return-object v0
.end method

.method public final g(Ld3/m;Ljava/lang/Object;La3/i;)Ljava/lang/Object;
    .locals 3

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ld3/m;->getPosition()Landroid/arch/lifecycle/h;

    move-result-object p1

    .line 1
    iget-object v0, p3, La3/i;->f:La3/x0;

    if-eqz v0, :cond_0

    iget-object p3, p3, La3/i;->c:La3/q;

    invoke-virtual {v0, p3, p2}, La3/x0;->a(La3/q;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 2
    :cond_0
    iget-object p3, p0, La3/p;->g:Lc3/c;

    invoke-interface {p3}, Lc3/c;->a()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p2, La3/d;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p3, v1, v0

    const/4 p3, 0x2

    aput-object p1, v1, p3

    const-string p1, "Type %s does not match %s at %s"

    invoke-direct {p2, p1, v1}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2

    :cond_2
    :goto_0
    return-object p2
.end method

.method public final h(Ld3/m;Ljava/lang/Object;La3/k2;)V
    .locals 1

    .line 1
    invoke-interface {p3}, La3/k2;->f()La3/c1;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, v0}, La3/p;->f(Ld3/m;Ljava/lang/Object;La3/c1;)Ljava/lang/Object;

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, La3/p;->d(Ld3/m;Ljava/lang/Object;La3/k2;)V

    invoke-virtual {p0, p1, p2, p3}, La3/p;->e(Ld3/m;Ljava/lang/Object;La3/k2;)V

    return-void
.end method

.method public final i(Ld3/m;Ljava/lang/Object;La3/k;)V
    .locals 2

    .line 1
    iget-object p3, p3, La3/k;->h:La3/c1;

    .line 2
    iget-object v0, p0, La3/p;->g:Lc3/c;

    invoke-interface {v0}, Lc3/c;->a()Ljava/lang/Class;

    move-result-object v0

    if-eqz p3, :cond_1

    invoke-interface {p3}, La3/c1;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ld3/m;->c()Ld3/t;

    move-result-object p1

    check-cast p1, Ld3/n;

    invoke-virtual {p1, v1}, Ld3/n;->D(Ljava/lang/String;)Ld3/q;

    move-result-object p1

    check-cast p1, Ld3/m;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, La3/p;->f(Ld3/m;Ljava/lang/Object;La3/c1;)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, La3/p;->g:Lc3/c;

    invoke-interface {p2}, Lc3/c;->a()Ljava/lang/Class;

    move-result-object p2

    if-eqz p1, :cond_1

    iget-object p3, p0, La3/p;->b:La3/q;

    .line 4
    invoke-virtual {p3, p2}, La3/q;->e(Ljava/lang/Class;)La3/j2;

    move-result-object p2

    invoke-interface {p2}, La3/j2;->q()Ly2/r;

    move-result-object p2

    .line 5
    invoke-interface {p2}, Ly2/r;->revision()D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    iget-object p3, p0, La3/p;->f:La3/h2;

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p0, La3/p;->f:La3/h2;

    invoke-virtual {p3, p2, p1}, La3/h2;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, La3/p;->b:La3/q;

    .line 7
    invoke-virtual {p1, v0}, La3/q;->e(Ljava/lang/Class;)La3/j2;

    move-result-object p1

    invoke-interface {p1}, La3/j2;->q()Ly2/r;

    move-result-object p1

    .line 8
    iget-object p2, p0, La3/p;->f:La3/h2;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-interface {p1}, Ly2/r;->revision()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iget-object v0, p0, La3/p;->c:La3/m;

    invoke-virtual {v0, p3, p2}, La3/m;->B(La3/c1;Ljava/lang/Object;)V

    iget-object p3, p0, La3/p;->f:La3/h2;

    invoke-virtual {p3, p1, p2}, La3/h2;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final j(Ld3/m;La3/g1;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, La3/p;->b:La3/q;

    iget-object v1, p0, La3/p;->g:Lc3/c;

    invoke-virtual {v0, v1, p3}, La3/q;->h(Lc3/c;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p3

    invoke-interface {p1}, Ld3/m;->getPosition()Landroid/arch/lifecycle/h;

    move-result-object p1

    invoke-virtual {p2}, La3/g1;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La3/c1;

    invoke-interface {v0}, La3/c1;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, La3/p;->f:La3/h2;

    .line 1
    iget-boolean v1, v1, La3/h2;->a:Z

    if-nez v1, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    new-instance p2, La3/d;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p3, v1, v0

    const/4 p3, 0x2

    aput-object p1, v1, p3

    const-string p1, "Unable to satisfy %s for %s at %s"

    invoke-direct {p2, p1, v1}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2

    :cond_2
    :goto_1
    iget-object v1, p0, La3/p;->b:La3/q;

    invoke-interface {v0, v1}, La3/c1;->m(La3/q;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, La3/p;->c:La3/m;

    invoke-virtual {v2, v0, v1}, La3/m;->B(La3/c1;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final k(Ld3/z;Ljava/lang/Object;La3/c1;)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-interface {p3}, La3/c1;->h()La3/r1;

    move-result-object v0

    invoke-interface {p3}, La3/c1;->getName()Ljava/lang/String;

    move-result-object p3

    iget-object v1, p0, La3/p;->d:La3/s1;

    invoke-virtual {v1, p2}, La3/l;->g(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p3, p2}, Ld3/z;->j(Ljava/lang/String;Ljava/lang/String;)Ld3/z;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, La3/r1;->b(Ld3/z;La3/r1;)V

    :cond_0
    return-void
.end method

.method public final l(Ld3/z;Ljava/lang/Object;La3/k2;)V
    .locals 12

    invoke-interface {p1}, Ld3/z;->i()Ld3/p;

    move-result-object v0

    invoke-interface {p3}, La3/k2;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_1

    check-cast v0, Ld3/b0;

    invoke-virtual {v0, v1}, Ld3/b0;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Ld3/z;->g(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-array p1, v4, [Ljava/lang/Object;

    aput-object v1, p1, v3

    iget-object p2, p0, La3/p;->g:Lc3/c;

    aput-object p2, p1, v2

    new-instance p2, La3/d;

    const-string p3, "Namespace prefix \'%s\' in %s is not in scope"

    invoke-direct {p2, p3, p1}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2

    .line 1
    :cond_1
    :goto_0
    invoke-interface {p3}, La3/k2;->c()La3/g1;

    move-result-object v0

    invoke-virtual {v0}, La3/g1;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v5, "Value for %s is null in %s"

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La3/c1;

    invoke-interface {v1}, La3/c1;->n()La3/s;

    move-result-object v6

    invoke-interface {v6, p2}, La3/s;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p0, La3/p;->b:La3/q;

    iget-object v8, p0, La3/p;->g:Lc3/c;

    invoke-virtual {v7, v8, p2}, La3/q;->h(Lc3/c;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v7

    if-nez v6, :cond_2

    iget-object v6, p0, La3/p;->b:La3/q;

    invoke-interface {v1, v6}, La3/c1;->m(La3/q;)Ljava/lang/Object;

    move-result-object v6

    :cond_2
    if-nez v6, :cond_4

    invoke-interface {v1}, La3/c1;->e()Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, La3/d;

    new-array p2, v4, [Ljava/lang/Object;

    aput-object v1, p2, v3

    aput-object v7, p2, v2

    invoke-direct {p1, v5, p2}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_4
    :goto_2
    invoke-virtual {p0, p1, v6, v1}, La3/p;->k(Ld3/z;Ljava/lang/Object;La3/c1;)V

    goto :goto_1

    .line 2
    :cond_5
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p3, v1}, La3/k2;->r(Ljava/lang/String;)La3/k2;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-interface {p1, v1}, Ld3/z;->k(Ljava/lang/String;)Ld3/z;

    move-result-object v1

    invoke-virtual {p0, v1, p2, v6}, La3/p;->l(Ld3/z;Ljava/lang/Object;La3/k2;)V

    goto :goto_3

    :cond_7
    invoke-interface {p3, v1}, La3/k2;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p3, v6}, La3/k2;->i(Ljava/lang/String;)La3/c1;

    move-result-object v6

    iget-object v7, p0, La3/p;->b:La3/q;

    iget-object v8, p0, La3/p;->g:Lc3/c;

    invoke-virtual {v7, v8, p2}, La3/q;->h(Lc3/c;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v7

    iget-object v8, p0, La3/p;->c:La3/m;

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v6, :cond_8

    .line 3
    invoke-interface {v6}, La3/c1;->getKey()Ljava/lang/Object;

    move-result-object v9

    iget-object v8, v8, La3/m;->c:La3/m$a;

    invoke-virtual {v8, v9}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, La3/e3;

    goto :goto_4

    :cond_8
    const/4 v8, 0x0

    :goto_4
    if-nez v8, :cond_6

    if-eqz v6, :cond_f

    .line 4
    invoke-interface {v6}, La3/c1;->n()La3/s;

    move-result-object v1

    invoke-interface {v1, p2}, La3/s;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v7, p0, La3/p;->b:La3/q;

    iget-object v8, p0, La3/p;->g:Lc3/c;

    invoke-virtual {v7, v8, p2}, La3/q;->h(Lc3/c;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v7

    if-nez v1, :cond_a

    invoke-interface {v6}, La3/c1;->e()Z

    move-result v8

    if-nez v8, :cond_9

    goto :goto_5

    :cond_9
    new-instance p1, La3/d;

    new-array p2, v4, [Ljava/lang/Object;

    aput-object v6, p2, v3

    aput-object v7, p2, v2

    invoke-direct {p1, v5, p2}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_a
    :goto_5
    if-eqz v1, :cond_b

    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    iget-object v8, p0, La3/p;->b:La3/q;

    .line 6
    invoke-virtual {v8, v7}, La3/q;->e(Ljava/lang/Class;)La3/j2;

    move-result-object v7

    invoke-interface {v7, v8}, La3/j2;->c(La3/q;)La3/i;

    move-result-object v7

    .line 7
    iget-object v8, v7, La3/i;->e:La3/x0;

    if-eqz v8, :cond_b

    iget-object v7, v7, La3/i;->c:La3/q;

    invoke-virtual {v8, v7, v1}, La3/x0;->a(La3/q;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :cond_b
    if-eqz v1, :cond_e

    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-interface {v6, v7}, La3/c1;->u(Ljava/lang/Class;)La3/c1;

    move-result-object v8

    invoke-interface {v8}, La3/c1;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v7}, La3/c1;->p(Ljava/lang/Class;)Lc3/c;

    move-result-object v7

    invoke-interface {p1, v9}, Ld3/z;->k(Ljava/lang/String;)Ld3/z;

    move-result-object v9

    invoke-interface {v8}, La3/c1;->s()Z

    move-result v10

    if-nez v10, :cond_c

    .line 9
    invoke-interface {v7}, Lc3/c;->a()Ljava/lang/Class;

    move-result-object v10

    iget-object v11, p0, La3/p;->b:La3/q;

    .line 10
    invoke-virtual {v11, v10}, La3/q;->e(Ljava/lang/Class;)La3/j2;

    move-result-object v10

    invoke-interface {v10}, La3/j2;->h()La3/r1;

    move-result-object v10

    .line 11
    invoke-interface {v8}, La3/c1;->h()La3/r1;

    move-result-object v11

    invoke-virtual {v11, v9, v10}, La3/r1;->b(Ld3/z;La3/r1;)V

    .line 12
    :cond_c
    invoke-interface {v8}, La3/c1;->s()Z

    move-result v10

    if-nez v10, :cond_d

    .line 13
    iget-object v10, p0, La3/p;->d:La3/s1;

    invoke-virtual {v10, v7, v1, v9}, La3/t0;->d(Lc3/c;Ljava/lang/Object;Ld3/z;)Z

    move-result v7

    if-nez v7, :cond_e

    .line 14
    :cond_d
    iget-object v7, p0, La3/p;->b:La3/q;

    invoke-interface {v8, v7}, La3/c1;->l(La3/q;)La3/w;

    move-result-object v7

    invoke-interface {v8}, La3/c1;->w()Z

    move-result v8

    invoke-interface {v9, v8}, Ld3/z;->n(Z)V

    .line 15
    invoke-interface {v7, v9, v1}, La3/w;->c(Ld3/z;Ljava/lang/Object;)V

    .line 16
    :cond_e
    iget-object v7, p0, La3/p;->c:La3/m;

    invoke-virtual {v7, v6, v1}, La3/m;->B(La3/c1;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 17
    :cond_f
    new-instance p1, La3/d;

    new-array p2, v4, [Ljava/lang/Object;

    aput-object v1, p2, v3

    aput-object v7, p2, v2

    const-string p3, "Element \'%s\' not defined in %s"

    invoke-direct {p1, p3, p2}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    .line 18
    :cond_10
    invoke-interface {p3}, La3/k2;->f()La3/c1;

    move-result-object p3

    if-eqz p3, :cond_14

    invoke-interface {p3}, La3/c1;->n()La3/s;

    move-result-object v0

    invoke-interface {v0, p2}, La3/s;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, La3/p;->b:La3/q;

    iget-object v6, p0, La3/p;->g:Lc3/c;

    invoke-virtual {v1, v6, p2}, La3/q;->h(Lc3/c;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p2

    if-nez v0, :cond_11

    iget-object v0, p0, La3/p;->b:La3/q;

    invoke-interface {p3, v0}, La3/c1;->m(La3/q;)Ljava/lang/Object;

    move-result-object v0

    :cond_11
    if-nez v0, :cond_13

    invoke-interface {p3}, La3/c1;->e()Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_6

    :cond_12
    new-instance p1, La3/d;

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p3, v0, v3

    aput-object p2, v0, v2

    invoke-direct {p1, v5, v0}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_13
    :goto_6
    if-eqz v0, :cond_14

    .line 19
    invoke-interface {p3}, La3/c1;->q()Z

    move-result p2

    if-nez p2, :cond_14

    iget-object p2, p0, La3/p;->d:La3/s1;

    invoke-virtual {p2, v0}, La3/l;->g(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3}, La3/c1;->w()Z

    move-result p3

    invoke-interface {p1, p3}, Ld3/z;->n(Z)V

    invoke-interface {p1, p2}, Ld3/z;->f(Ljava/lang/String;)V

    :cond_14
    return-void
.end method
