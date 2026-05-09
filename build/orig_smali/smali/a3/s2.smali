.class public final La3/s2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:La3/o1;

.field public b:La3/g1;

.field public c:La3/v;

.field public d:La3/g1;

.field public e:Lt/n;

.field public f:Z

.field public g:La3/b1;

.field public h:La3/c3;

.field public i:La3/j2;

.field public j:La3/t2;

.field public k:La3/g1;

.field public l:La3/c1;


# direct methods
.method public constructor <init>(La3/j2;La3/b0;La3/t2;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La3/v;

    invoke-direct {v0, p2, p3}, La3/v;-><init>(La3/b0;La3/t2;)V

    iput-object v0, p0, La3/s2;->c:La3/v;

    new-instance v1, La3/o1;

    invoke-direct {v1, v0, p2, p3}, La3/o1;-><init>(La3/v;La3/b0;La3/t2;)V

    iput-object v1, p0, La3/s2;->a:La3/o1;

    new-instance v0, La3/b1;

    invoke-direct {v0, p1, p2}, La3/b1;-><init>(La3/j2;La3/b0;)V

    iput-object v0, p0, La3/s2;->g:La3/b1;

    new-instance v0, La3/c3;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    .line 1
    invoke-direct/range {v1 .. v6}, La3/c3;-><init>(La3/c2;La3/b0;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2
    iput-object v0, p0, La3/s2;->h:La3/c3;

    new-instance p2, La3/g1;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, La3/g1;-><init>(Ljava/lang/Object;I)V

    iput-object p2, p0, La3/s2;->b:La3/g1;

    new-instance p2, La3/g1;

    invoke-direct {p2, p1, v0}, La3/g1;-><init>(Ljava/lang/Object;I)V

    iput-object p2, p0, La3/s2;->d:La3/g1;

    new-instance p2, La3/g1;

    invoke-direct {p2, p1, v0}, La3/g1;-><init>(Ljava/lang/Object;I)V

    iput-object p2, p0, La3/s2;->k:La3/g1;

    iput-object p1, p0, La3/s2;->i:La3/j2;

    iput-object p3, p0, La3/s2;->j:La3/t2;

    return-void
.end method


# virtual methods
.method public final a(La3/s0;)La3/n1;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, La3/s0;->u(II)La3/s0;

    move-result-object v0

    invoke-interface {p1}, La3/s0;->s()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, La3/s2;->h:La3/c3;

    invoke-virtual {p1, v0}, La3/c3;->o(La3/s0;)La3/n1;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, La3/s2;->h:La3/c3;

    return-object p1
.end method

.method public final b(La3/s;Ljava/lang/annotation/Annotation;)V
    .locals 6

    instance-of v0, p2, Ly2/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, La3/s2;->b:La3/g1;

    invoke-virtual {p0, p1, p2, v0}, La3/s2;->c(La3/s;Ljava/lang/annotation/Annotation;La3/g1;)V

    :cond_0
    instance-of v0, p2, Ly2/j;

    if-eqz v0, :cond_1

    iget-object v0, p0, La3/s2;->d:La3/g1;

    invoke-virtual {p0, p1, p2, v0}, La3/s2;->f(La3/s;Ljava/lang/annotation/Annotation;La3/g1;)V

    :cond_1
    instance-of v0, p2, Ly2/g;

    if-eqz v0, :cond_2

    iget-object v0, p0, La3/s2;->d:La3/g1;

    invoke-virtual {p0, p1, p2, v0}, La3/s2;->f(La3/s;Ljava/lang/annotation/Annotation;La3/g1;)V

    :cond_2
    instance-of v0, p2, Ly2/i;

    if-eqz v0, :cond_3

    iget-object v0, p0, La3/s2;->d:La3/g1;

    invoke-virtual {p0, p1, p2, v0}, La3/s2;->f(La3/s;Ljava/lang/annotation/Annotation;La3/g1;)V

    :cond_3
    instance-of v0, p2, Ly2/f;

    if-eqz v0, :cond_4

    iget-object v0, p0, La3/s2;->d:La3/g1;

    invoke-virtual {p0, p1, p2, v0}, La3/s2;->c(La3/s;Ljava/lang/annotation/Annotation;La3/g1;)V

    :cond_4
    instance-of v0, p2, Ly2/e;

    if-eqz v0, :cond_5

    iget-object v0, p0, La3/s2;->d:La3/g1;

    invoke-virtual {p0, p1, p2, v0}, La3/s2;->c(La3/s;Ljava/lang/annotation/Annotation;La3/g1;)V

    :cond_5
    instance-of v0, p2, Ly2/h;

    if-eqz v0, :cond_6

    iget-object v0, p0, La3/s2;->d:La3/g1;

    invoke-virtual {p0, p1, p2, v0}, La3/s2;->c(La3/s;Ljava/lang/annotation/Annotation;La3/g1;)V

    :cond_6
    instance-of v0, p2, Ly2/d;

    if-eqz v0, :cond_7

    iget-object v0, p0, La3/s2;->d:La3/g1;

    invoke-virtual {p0, p1, p2, v0}, La3/s2;->c(La3/s;Ljava/lang/annotation/Annotation;La3/g1;)V

    :cond_7
    instance-of v0, p2, Ly2/r;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_9

    .line 1
    iget-object v0, p0, La3/s2;->j:La3/t2;

    invoke-virtual {v0, p1, p2}, La3/t2;->c(La3/s;Ljava/lang/annotation/Annotation;)La3/c1;

    move-result-object v0

    iget-object v3, p0, La3/s2;->l:La3/c1;

    if-nez v3, :cond_8

    iput-object v0, p0, La3/s2;->l:La3/c1;

    goto :goto_0

    :cond_8
    new-instance p1, La3/d;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    const-string p2, "Multiple version annotations in %s"

    invoke-direct {p1, p2, v0}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    .line 2
    :cond_9
    :goto_0
    instance-of v0, p2, Ly2/p;

    if-eqz v0, :cond_c

    .line 3
    iget-object v0, p0, La3/s2;->j:La3/t2;

    invoke-virtual {v0, p1, p2}, La3/t2;->c(La3/s;Ljava/lang/annotation/Annotation;)La3/c1;

    move-result-object p1

    invoke-interface {p1}, La3/c1;->d()La3/s0;

    move-result-object v0

    invoke-interface {p1}, La3/c1;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, La3/s2;->h:La3/c3;

    invoke-interface {v0}, La3/s0;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {p0, v0}, La3/s2;->e(La3/s0;)La3/n1;

    move-result-object v4

    :cond_a
    iget-object v0, p0, La3/s2;->k:La3/g1;

    invoke-virtual {v0, v3}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b

    iget-object p2, p0, La3/s2;->g:La3/b1;

    invoke-virtual {p2, p1}, La3/b1;->a(La3/c1;)V

    invoke-interface {v4, p1}, La3/n1;->t(La3/c1;)V

    iget-object p2, p0, La3/s2;->k:La3/g1;

    invoke-virtual {p2, v3, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_b
    new-instance p1, La3/d;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    const-string p2, "Multiple text annotations in %s"

    invoke-direct {p1, p2, v0}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_c
    :goto_1
    return-void
.end method

.method public final c(La3/s;Ljava/lang/annotation/Annotation;La3/g1;)V
    .locals 2

    iget-object v0, p0, La3/s2;->j:La3/t2;

    invoke-virtual {v0, p1, p2}, La3/t2;->c(La3/s;Ljava/lang/annotation/Annotation;)La3/c1;

    move-result-object p2

    invoke-interface {p2}, La3/c1;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, La3/c1;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p2, p3}, La3/s2;->d(La3/c1;La3/g1;)V

    return-void

    :cond_0
    new-instance p2, La3/a2;

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v1, p3, v0

    const/4 v0, 0x1

    aput-object p1, p3, v0

    const-string p1, "Duplicate annotation of name \'%s\' on %s"

    invoke-direct {p2, p1, p3}, La3/a2;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2
.end method

.method public final d(La3/c1;La3/g1;)V
    .locals 4

    invoke-interface {p1}, La3/c1;->d()La3/s0;

    move-result-object v0

    invoke-interface {p1}, La3/c1;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, La3/s2;->h:La3/c3;

    invoke-interface {v0}, La3/s0;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v0}, La3/s2;->e(La3/s0;)La3/n1;

    move-result-object v2

    :cond_0
    iget-object v0, p0, La3/s2;->g:La3/b1;

    invoke-virtual {v0, p1}, La3/b1;->a(La3/c1;)V

    invoke-interface {v2, p1}, La3/n1;->t(La3/c1;)V

    invoke-virtual {p2, v1, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final e(La3/s0;)La3/n1;
    .locals 4

    iget-object v0, p0, La3/s2;->h:La3/c3;

    invoke-virtual {v0, p1}, La3/c3;->o(La3/s0;)La3/n1;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, La3/s2;->h:La3/c3;

    :goto_0
    if-eqz v0, :cond_3

    invoke-interface {p1}, La3/s0;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, La3/s0;->getFirst()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, La3/s0;->h()I

    move-result v3

    if-eqz v2, :cond_1

    invoke-interface {v0, v2, v1, v3}, La3/n1;->k(Ljava/lang/String;Ljava/lang/String;I)La3/n1;

    move-result-object v0

    :cond_1
    invoke-interface {p1}, La3/s0;->s()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p1}, La3/s0;->b()La3/s0;

    move-result-object p1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public final f(La3/s;Ljava/lang/annotation/Annotation;La3/g1;)V
    .locals 2

    iget-object v0, p0, La3/s2;->j:La3/t2;

    .line 1
    iget-object v0, v0, La3/t2;->f:La3/d1;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v1, La3/f1;

    invoke-direct {v1, p1, p2}, La3/f1;-><init>(La3/s;Ljava/lang/annotation/Annotation;)V

    .line 3
    invoke-virtual {v0, p1, p2, v1}, La3/d1;->a(La3/s;Ljava/lang/annotation/Annotation;Ljava/lang/Object;)La3/e1;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p1, La3/e1;->a:Ljava/util/List;

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 6
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, La3/c1;

    invoke-interface {p2}, La3/c1;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, La3/c1;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p2, p3}, La3/s2;->d(La3/c1;La3/g1;)V

    goto :goto_1

    :cond_1
    new-instance p1, La3/a2;

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v1, p3, v0

    const/4 v0, 0x1

    aput-object p2, p3, v0

    const-string p2, "Duplicate annotation of name \'%s\' on %s"

    invoke-direct {p1, p2, p3}, La3/a2;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_2
    return-void
.end method
