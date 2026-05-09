.class public final La3/c3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La3/n1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La3/c3$a;
    }
.end annotation


# instance fields
.field public b:La3/g1;

.field public c:La3/b0;

.field public d:La3/g1;

.field public e:La3/s0;

.field public f:I

.field public g:La3/c1;

.field public h:La3/g1;

.field public i:Ljava/lang/String;

.field public j:La3/c3$a;

.field public k:La3/c2;

.field public l:Ljava/lang/String;

.field public m:La3/c1;


# direct methods
.method public constructor <init>(La3/c2;La3/b0;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La3/g1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, La3/g1;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, La3/c3;->b:La3/g1;

    new-instance v0, La3/g1;

    invoke-direct {v0, p1, v1}, La3/g1;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, La3/c3;->d:La3/g1;

    new-instance v0, La3/g1;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, La3/g1;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, La3/c3;->h:La3/g1;

    new-instance v0, La3/c3$a;

    invoke-direct {v0}, La3/c3$a;-><init>()V

    iput-object v0, p0, La3/c3;->j:La3/c3$a;

    iput-object p2, p0, La3/c3;->c:La3/b0;

    iput-object p1, p0, La3/c3;->k:La3/c2;

    iput-object p4, p0, La3/c3;->l:Ljava/lang/String;

    iput p5, p0, La3/c3;->f:I

    iput-object p3, p0, La3/c3;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 3

    iget-object v0, p0, La3/c3;->h:La3/g1;

    invoke-virtual {v0}, La3/g1;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La3/p1;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La3/n1;

    if-eqz v2, :cond_1

    invoke-interface {v2}, La3/n1;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_2
    iget-object v0, p0, La3/c3;->h:La3/g1;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    return v0

    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final B(La3/c1;)V
    .locals 3

    invoke-interface {p1}, La3/c1;->d()La3/s0;

    move-result-object p1

    iget-object v0, p0, La3/c3;->e:La3/s0;

    if-eqz v0, :cond_1

    invoke-interface {v0}, La3/s0;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, La3/s0;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p1, v1, v0

    const/4 p1, 0x2

    iget-object v0, p0, La3/c3;->c:La3/b0;

    aput-object v0, v1, p1

    new-instance p1, La3/d;

    const-string v0, "Path \'%s\' does not match \'%s\' in %s"

    invoke-direct {p1, v0, v1}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_1
    iput-object p1, p0, La3/c3;->e:La3/s0;

    :goto_0
    return-void
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La3/c3;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final c()La3/g1;
    .locals 1

    iget-object v0, p0, La3/c3;->b:La3/g1;

    invoke-virtual {v0}, La3/g1;->B()La3/g1;

    move-result-object v0

    return-object v0
.end method

.method public final d()La3/s0;
    .locals 1

    iget-object v0, p0, La3/c3;->e:La3/s0;

    return-object v0
.end method

.method public final f()La3/c1;
    .locals 1

    iget-object v0, p0, La3/c3;->g:La3/c1;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, La3/c3;->m:La3/c1;

    return-object v0
.end method

.method public final g()La3/g1;
    .locals 1

    iget-object v0, p0, La3/c3;->d:La3/g1;

    invoke-virtual {v0}, La3/g1;->B()La3/g1;

    move-result-object v0

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La3/c3;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final h()I
    .locals 1

    iget v0, p0, La3/c3;->f:I

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, La3/c3;->m:La3/c1;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, La3/c3;->d:La3/g1;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, La3/c3;->b:La3/g1;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, La3/c3;->A()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, La3/c3;->j:La3/c3$a;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final j(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, La3/c3;->b:La3/g1;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final k(Ljava/lang/String;Ljava/lang/String;I)La3/n1;
    .locals 7

    iget-object v0, p0, La3/c3;->h:La3/g1;

    invoke-virtual {v0, p1, p3}, La3/g1;->v(Ljava/lang/String;I)La3/n1;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1
    new-instance v0, La3/c3;

    iget-object v2, p0, La3/c3;->k:La3/c2;

    iget-object v3, p0, La3/c3;->c:La3/b0;

    move-object v1, v0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, La3/c3;-><init>(La3/c2;La3/b0;Ljava/lang/String;Ljava/lang/String;I)V

    if-eqz p1, :cond_1

    iget-object p2, p0, La3/c3;->h:La3/g1;

    .line 2
    invoke-virtual {p2, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, La3/p1;

    if-nez p3, :cond_0

    new-instance p3, La3/p1;

    invoke-direct {p3}, La3/p1;-><init>()V

    invoke-virtual {p2, p1, p3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p3, v0}, La3/p1;->A(La3/n1;)V

    .line 3
    iget-object p2, p0, La3/c3;->j:La3/c3$a;

    invoke-virtual {p2, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public final n(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, La3/c3;->b:La3/g1;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final o(La3/s0;)La3/n1;
    .locals 3

    invoke-interface {p1}, La3/s0;->getFirst()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, La3/s0;->h()I

    move-result v1

    invoke-virtual {p0, v0, v1}, La3/c3;->v(Ljava/lang/String;I)La3/n1;

    move-result-object v0

    invoke-interface {p1}, La3/s0;->s()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, La3/s0;->u(II)La3/s0;

    move-result-object p1

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, La3/n1;->o(La3/s0;)La3/n1;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final p()La3/g1;
    .locals 8

    iget-object v0, p0, La3/c3;->h:La3/g1;

    .line 1
    new-instance v1, La3/g1;

    iget-object v2, v0, La3/g1;->c:Ljava/lang/Object;

    check-cast v2, La3/b0;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, La3/g1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0}, Ljava/util/AbstractMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La3/p1;

    if-eqz v5, :cond_1

    .line 2
    new-instance v6, La3/p1;

    invoke-direct {v6}, La3/p1;-><init>()V

    invoke-virtual {v5}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, La3/n1;

    invoke-virtual {v6, v7}, La3/p1;->A(La3/n1;)V

    goto :goto_1

    :cond_0
    move-object v5, v6

    .line 3
    :cond_1
    invoke-virtual {v1, v4}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v1, v4, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v4, v1, v2

    iget-object v0, v0, La3/g1;->c:Ljava/lang/Object;

    check-cast v0, La3/b0;

    aput-object v0, v1, v3

    new-instance v0, La3/d;

    const-string v2, "Path with name \'%s\' is a duplicate in %s "

    invoke-direct {v0, v2, v1}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_3
    return-object v1
.end method

.method public final t(La3/c1;)V
    .locals 6

    invoke-interface {p1}, La3/c1;->isAttribute()Z

    move-result v0

    const-string v1, "Duplicate annotation of name \'%s\' on %s"

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 1
    invoke-interface {p1}, La3/c1;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, La3/c3;->b:La3/g1;

    invoke-virtual {v5, v0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    iget-object v1, p0, La3/c3;->b:La3/g1;

    invoke-virtual {v1, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance v5, La3/d;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    aput-object p1, v2, v3

    invoke-direct {v5, v1, v2}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v5

    .line 2
    :cond_1
    invoke-interface {p1}, La3/c1;->isText()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p0, La3/c3;->m:La3/c1;

    if-nez v0, :cond_2

    iput-object p1, p0, La3/c3;->m:La3/c1;

    return-void

    :cond_2
    new-instance v0, La3/d;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "Duplicate text annotation on %s"

    invoke-direct {v0, p1, v1}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 4
    :cond_3
    invoke-interface {p1}, La3/c1;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, La3/c3;->d:La3/g1;

    invoke-virtual {v5, v0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_6

    iget-object v1, p0, La3/c3;->j:La3/c3$a;

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, La3/c3;->j:La3/c3$a;

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-interface {p1}, La3/c1;->q()Z

    move-result v1

    if-eqz v1, :cond_5

    iput-object p1, p0, La3/c3;->g:La3/c1;

    :cond_5
    iget-object v1, p0, La3/c3;->d:La3/g1;

    invoke-virtual {v1, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_6
    new-instance v5, La3/d;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    aput-object p1, v2, v3

    invoke-direct {v5, v1, v2}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v5
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, La3/c3;->i:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, La3/c3;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "model \'%s[%s]\'"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v(Ljava/lang/String;I)La3/n1;
    .locals 1

    iget-object v0, p0, La3/c3;->h:La3/g1;

    invoke-virtual {v0, p1, p2}, La3/g1;->v(Ljava/lang/String;I)La3/n1;

    move-result-object p1

    return-object p1
.end method

.method public final x(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, La3/c3;->h:La3/g1;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final y(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, La3/c3;->d:La3/g1;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final z(Ljava/lang/Class;)V
    .locals 10

    .line 1
    iget-object v0, p0, La3/c3;->d:La3/g1;

    invoke-virtual {v0}, La3/g1;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La3/c1;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, La3/c3;->B(La3/c1;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, La3/c3;->b:La3/g1;

    invoke-virtual {v0}, La3/g1;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La3/c1;

    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, La3/c3;->B(La3/c1;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, La3/c3;->m:La3/c1;

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, La3/c3;->B(La3/c1;)V

    .line 2
    :cond_4
    iget-object v0, p0, La3/c3;->b:La3/g1;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v5, p0, La3/c3;->b:La3/g1;

    invoke-virtual {v5, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La3/c1;

    if-eqz v5, :cond_6

    iget-object v2, p0, La3/c3;->e:La3/s0;

    if-eqz v2, :cond_5

    invoke-interface {v2, v1}, La3/s0;->e(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    :cond_6
    new-instance v0, La3/d;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    aput-object p1, v3, v4

    const-string p1, "Ordered attribute \'%s\' does not exist in %s"

    invoke-direct {v0, p1, v3}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 3
    :cond_7
    iget-object v0, p0, La3/c3;->d:La3/g1;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v5, p0, La3/c3;->h:La3/g1;

    invoke-virtual {v5, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La3/p1;

    iget-object v6, p0, La3/c3;->d:La3/g1;

    invoke-virtual {v6, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, La3/c1;

    if-nez v5, :cond_a

    if-eqz v6, :cond_9

    goto :goto_4

    :cond_9
    new-instance v0, La3/d;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    aput-object p1, v3, v4

    const-string p1, "Ordered element \'%s\' does not exist in %s"

    invoke-direct {v0, p1, v3}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_a
    :goto_4
    if-eqz v5, :cond_c

    if-eqz v6, :cond_c

    invoke-virtual {v5}, La3/p1;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_5

    :cond_b
    new-instance v0, La3/d;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    aput-object p1, v3, v4

    const-string p1, "Element \'%s\' is also a path name in %s"

    invoke-direct {v0, p1, v3}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_c
    :goto_5
    iget-object v5, p0, La3/c3;->e:La3/s0;

    if-eqz v5, :cond_8

    invoke-interface {v5, v1}, La3/s0;->i(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_3

    .line 4
    :cond_d
    iget-object v0, p0, La3/c3;->h:La3/g1;

    invoke-virtual {v0}, La3/g1;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La3/p1;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v5, 0x1

    :cond_f
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, La3/n1;

    if-eqz v6, :cond_f

    invoke-interface {v6}, La3/n1;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6}, La3/n1;->h()I

    move-result v8

    add-int/lit8 v9, v5, 0x1

    if-ne v8, v5, :cond_10

    invoke-interface {v6, p1}, La3/n1;->z(Ljava/lang/Class;)V

    move v5, v9

    goto :goto_6

    :cond_10
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v7, v0, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    aput-object p1, v0, v3

    new-instance p1, La3/d;

    const-string v1, "Path section \'%s[%s]\' is out of sequence in %s"

    invoke-direct {p1, v1, v0}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    .line 5
    :cond_11
    iget-object v0, p0, La3/c3;->m:La3/c1;

    if-eqz v0, :cond_14

    iget-object v0, p0, La3/c3;->d:La3/g1;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, La3/c3;->A()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_7

    :cond_12
    new-array v0, v3, [Ljava/lang/Object;

    iget-object v1, p0, La3/c3;->m:La3/c1;

    aput-object v1, v0, v2

    aput-object p1, v0, v4

    new-instance p1, La3/d;

    const-string v1, "Text annotation %s can not be used with paths in %s"

    invoke-direct {p1, v1, v0}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_13
    new-array v0, v3, [Ljava/lang/Object;

    iget-object v1, p0, La3/c3;->m:La3/c1;

    aput-object v1, v0, v2

    aput-object p1, v0, v4

    new-instance p1, La3/d;

    const-string v1, "Text annotation %s used with elements in %s"

    invoke-direct {p1, v1, v0}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_14
    :goto_7
    return-void
.end method
