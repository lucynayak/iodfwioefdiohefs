.class public final La3/q1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La3/k2;


# instance fields
.field public b:La3/g1;

.field public c:La3/g1;

.field public d:La3/n1;

.field public e:La3/g1;


# direct methods
.method public constructor <init>(La3/n1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La3/q1;->d:La3/n1;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La3/q1;->d:La3/n1;

    invoke-interface {v0}, La3/n1;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()La3/g1;
    .locals 1

    iget-object v0, p0, La3/q1;->b:La3/g1;

    if-nez v0, :cond_0

    iget-object v0, p0, La3/q1;->d:La3/n1;

    invoke-interface {v0}, La3/n1;->c()La3/g1;

    move-result-object v0

    iput-object v0, p0, La3/q1;->b:La3/g1;

    :cond_0
    iget-object v0, p0, La3/q1;->b:La3/g1;

    return-object v0
.end method

.method public final e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La3/q1;->d:La3/n1;

    invoke-interface {v0}, La3/n1;->d()La3/s0;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-interface {v0, p1}, La3/s0;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final f()La3/c1;
    .locals 1

    iget-object v0, p0, La3/q1;->d:La3/n1;

    invoke-interface {v0}, La3/n1;->f()La3/c1;

    move-result-object v0

    return-object v0
.end method

.method public final g()La3/g1;
    .locals 1

    iget-object v0, p0, La3/q1;->c:La3/g1;

    if-nez v0, :cond_0

    iget-object v0, p0, La3/q1;->d:La3/n1;

    invoke-interface {v0}, La3/n1;->g()La3/g1;

    move-result-object v0

    iput-object v0, p0, La3/q1;->c:La3/g1;

    :cond_0
    iget-object v0, p0, La3/q1;->c:La3/g1;

    return-object v0
.end method

.method public final i(Ljava/lang/String;)La3/c1;
    .locals 1

    .line 1
    iget-object v0, p0, La3/q1;->c:La3/g1;

    if-nez v0, :cond_0

    iget-object v0, p0, La3/q1;->d:La3/n1;

    invoke-interface {v0}, La3/n1;->g()La3/g1;

    move-result-object v0

    iput-object v0, p0, La3/q1;->c:La3/g1;

    :cond_0
    iget-object v0, p0, La3/q1;->c:La3/g1;

    .line 2
    invoke-virtual {v0, p1}, La3/g1;->A(Ljava/lang/String;)La3/c1;

    move-result-object p1

    return-object p1
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

    iget-object v1, p0, La3/q1;->d:La3/n1;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

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

.method public final q(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La3/q1;->d:La3/n1;

    invoke-interface {v0}, La3/n1;->d()La3/s0;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-interface {v0, p1}, La3/s0;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final r(Ljava/lang/String;)La3/k2;
    .locals 3

    .line 1
    iget-object v0, p0, La3/q1;->e:La3/g1;

    if-nez v0, :cond_0

    iget-object v0, p0, La3/q1;->d:La3/n1;

    invoke-interface {v0}, La3/n1;->p()La3/g1;

    move-result-object v0

    iput-object v0, p0, La3/q1;->e:La3/g1;

    :cond_0
    iget-object v0, p0, La3/q1;->e:La3/g1;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La3/p1;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 3
    :cond_1
    invoke-virtual {p1}, La3/p1;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La3/n1;

    invoke-interface {v1}, La3/n1;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_3

    .line 4
    new-instance p1, La3/q1;

    invoke-direct {p1, v1}, La3/q1;-><init>(La3/n1;)V

    return-object p1

    :cond_3
    return-object v0
.end method
