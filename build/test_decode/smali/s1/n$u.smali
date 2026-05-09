.class public final Ls1/n$u;
.super Lp1/a0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lp1/a0<",
        "Lp1/p;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lp1/a0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lv1/a;)Lp1/p;
    .locals 3

    invoke-virtual {p1}, Lv1/a;->v()I

    move-result v0

    invoke-static {v0}, Lz0/a;->a(I)I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lv1/a;->r()V

    sget-object p1, Lp1/r;->a:Lp1/r;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    new-instance v0, Lp1/u;

    invoke-virtual {p1}, Lv1/a;->l()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, Lp1/u;-><init>(Ljava/lang/Boolean;)V

    return-object v0

    :cond_2
    new-instance v0, Lp1/u;

    new-instance v1, Lr1/l;

    invoke-virtual {p1}, Lv1/a;->t()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lr1/l;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lp1/u;-><init>(Ljava/lang/Number;)V

    return-object v0

    :cond_3
    new-instance v0, Lp1/u;

    invoke-virtual {p1}, Lv1/a;->t()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lp1/u;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_4
    new-instance v0, Lp1/s;

    invoke-direct {v0}, Lp1/s;-><init>()V

    invoke-virtual {p1}, Lv1/a;->b()V

    :goto_0
    invoke-virtual {p1}, Lv1/a;->j()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lv1/a;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Ls1/n$u;->a(Lv1/a;)Lp1/p;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lp1/s;->C(Ljava/lang/String;Lp1/p;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lv1/a;->f()V

    return-object v0

    :cond_6
    new-instance v0, Lp1/m;

    invoke-direct {v0}, Lp1/m;-><init>()V

    invoke-virtual {p1}, Lv1/a;->a()V

    :goto_1
    invoke-virtual {p1}, Lv1/a;->j()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0, p1}, Ls1/n$u;->a(Lv1/a;)Lp1/p;

    move-result-object v1

    .line 1
    iget-object v2, v0, Lp1/m;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2
    :cond_7
    invoke-virtual {p1}, Lv1/a;->e()V

    return-object v0
.end method

.method public final b(Lv1/b;Lp1/p;)V
    .locals 4

    if-eqz p2, :cond_d

    .line 1
    instance-of v0, p2, Lp1/r;

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    instance-of v0, p2, Lp1/u;

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {p2}, Lp1/p;->A()Lp1/u;

    move-result-object p2

    .line 4
    iget-object v0, p2, Lp1/u;->a:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p2}, Lp1/u;->D()Ljava/lang/Number;

    move-result-object p2

    invoke-virtual {p1, p2}, Lv1/b;->o(Ljava/lang/Number;)Lv1/b;

    return-void

    .line 6
    :cond_1
    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p2}, Lp1/u;->C()Z

    move-result p2

    invoke-virtual {p1, p2}, Lv1/b;->q(Z)Lv1/b;

    return-void

    :cond_2
    invoke-virtual {p2}, Lp1/u;->B()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lv1/b;->p(Ljava/lang/String;)Lv1/b;

    return-void

    .line 8
    :cond_3
    instance-of v0, p2, Lp1/m;

    if-eqz v0, :cond_6

    .line 9
    invoke-virtual {p1}, Lv1/b;->b()Lv1/b;

    if-eqz v0, :cond_5

    .line 10
    check-cast p2, Lp1/m;

    .line 11
    invoke-virtual {p2}, Lp1/m;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp1/p;

    invoke-virtual {p0, p1, v0}, Ls1/n$u;->b(Lv1/b;Lp1/p;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lv1/b;->e()Lv1/b;

    return-void

    .line 12
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This is not a JSON Array."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_6
    instance-of v0, p2, Lp1/s;

    if-eqz v0, :cond_c

    .line 14
    invoke-virtual {p1}, Lv1/b;->c()Lv1/b;

    if-eqz v0, :cond_b

    .line 15
    check-cast p2, Lp1/s;

    .line 16
    iget-object p2, p2, Lp1/s;->a:Lr1/m;

    invoke-virtual {p2}, Lr1/m;->entrySet()Ljava/util/Set;

    move-result-object p2

    .line 17
    check-cast p2, Lr1/m$b;

    .line 18
    iget-object p2, p2, Lr1/m$b;->b:Lr1/m;

    .line 19
    iget-object v0, p2, Lr1/m;->d:Lr1/m$e;

    iget-object v0, v0, Lr1/m$e;->e:Lr1/m$e;

    iget v1, p2, Lr1/m;->f:I

    .line 20
    :goto_1
    iget-object v2, p2, Lr1/m;->d:Lr1/m$e;

    if-eq v0, v2, :cond_7

    const/4 v3, 0x1

    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_a

    if-eq v0, v2, :cond_9

    .line 21
    iget v2, p2, Lr1/m;->f:I

    if-ne v2, v1, :cond_8

    iget-object v2, v0, Lr1/m$e;->e:Lr1/m$e;

    .line 22
    iget-object v3, v0, Lr1/m$e;->c:Ljava/lang/Object;

    .line 23
    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lv1/b;->g(Ljava/lang/String;)Lv1/b;

    .line 24
    iget-object v0, v0, Lr1/m$e;->i:Ljava/lang/Object;

    .line 25
    check-cast v0, Lp1/p;

    invoke-virtual {p0, p1, v0}, Ls1/n$u;->b(Lv1/b;Lp1/p;)V

    move-object v0, v2

    goto :goto_1

    .line 26
    :cond_8
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    :cond_9
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1

    .line 27
    :cond_a
    invoke-virtual {p1}, Lv1/b;->f()Lv1/b;

    return-void

    .line 28
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not a JSON Object: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Couldn\'t write "

    .line 30
    invoke-static {v0}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 31
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    :goto_3
    invoke-virtual {p1}, Lv1/b;->i()Lv1/b;

    return-void
.end method

.method public final bridge synthetic read(Lv1/a;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Ls1/n$u;->a(Lv1/a;)Lp1/p;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic write(Lv1/b;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lp1/p;

    invoke-virtual {p0, p1, p2}, Ls1/n$u;->b(Lv1/b;Lp1/p;)V

    return-void
.end method
