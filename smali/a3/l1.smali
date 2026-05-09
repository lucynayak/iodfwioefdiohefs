.class public final La3/l1;
.super La3/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La3/l1$a;
    }
.end annotation


# instance fields
.field public final b:La3/b0;

.field public final c:Landroid/arch/lifecycle/h;

.field public final d:La3/l1$a;

.field public final e:La3/l1$a;


# direct methods
.method public constructor <init>(La3/b0;La3/t2;)V
    .registers 13

    invoke-direct {p0}, La3/t;-><init>()V

    new-instance v0, Landroid/arch/lifecycle/h;

    invoke-direct {v0, p1, p2}, Landroid/arch/lifecycle/h;-><init>(La3/b0;La3/t2;)V

    iput-object v0, p0, La3/l1;->c:Landroid/arch/lifecycle/h;

    new-instance v0, La3/l1$a;

    invoke-direct {v0}, La3/l1$a;-><init>()V

    iput-object v0, p0, La3/l1;->e:La3/l1$a;

    new-instance v0, La3/l1$a;

    invoke-direct {v0}, La3/l1$a;-><init>()V

    iput-object v0, p0, La3/l1;->d:La3/l1$a;

    iput-object p1, p0, La3/l1;->b:La3/b0;

    .line 1
    sget-object v0, La3/m1;->g:La3/m1;

    sget-object v1, La3/m1;->d:La3/m1;

    sget-object v2, La3/m1;->e:La3/m1;

    invoke-interface {p1}, La3/b0;->j()Ly2/c;

    move-result-object v3

    invoke-interface {p1}, La3/b0;->p()Ly2/c;

    move-result-object v4

    invoke-interface {p1}, La3/b0;->q()Ljava/lang/Class;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 2
    invoke-virtual {p2, v5, v3}, La3/t2;->d(Ljava/lang/Class;Ly2/c;)La3/t;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La3/s;

    check-cast v3, La3/i1;

    .line 3
    iget-object v5, v3, La3/i1;->a:La3/k1;

    .line 4
    iget-object v3, v3, La3/i1;->g:La3/k1;

    if-eqz v3, :cond_0

    .line 5
    iget-object v6, p0, La3/l1;->e:La3/l1$a;

    invoke-virtual {p0, v3, v6}, La3/l1;->A(La3/k1;La3/l1$a;)V

    :cond_0
    iget-object v3, p0, La3/l1;->d:La3/l1$a;

    invoke-virtual {p0, v5, v3}, La3/l1;->A(La3/k1;La3/l1$a;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {p1}, La3/b0;->o()Ljava/util/List;

    move-result-object p2

    sget-object v3, Ly2/c;->d:Ly2/c;

    const/4 v5, 0x0

    if-ne v4, v3, :cond_a

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La3/j1;

    .line 7
    iget-object v4, v3, La3/j1;->a:[Ljava/lang/annotation/Annotation;

    .line 8
    iget-object v3, v3, La3/j1;->b:Ljava/lang/reflect/Method;

    .line 9
    iget-object v6, p0, La3/l1;->c:Landroid/arch/lifecycle/h;

    invoke-virtual {v6, v3}, Landroid/arch/lifecycle/h;->l(Ljava/lang/reflect/Method;)Ljava/lang/Class;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 10
    iget-object v6, p0, La3/l1;->c:Landroid/arch/lifecycle/h;

    .line 11
    invoke-virtual {v6, v3}, Landroid/arch/lifecycle/h;->j(Ljava/lang/reflect/Method;)La3/m1;

    move-result-object v7

    if-ne v7, v0, :cond_3

    invoke-static {v3}, Ld1/a;->E(Ljava/lang/reflect/Method;)[Ljava/lang/Class;

    move-result-object v7

    goto :goto_3

    :cond_3
    if-ne v7, v1, :cond_4

    goto :goto_2

    :cond_4
    if-ne v7, v2, :cond_5

    :goto_2
    invoke-static {v3}, Ld1/a;->F(Ljava/lang/reflect/Method;)[Ljava/lang/Class;

    move-result-object v7

    goto :goto_3

    :cond_5
    move-object v7, v5

    .line 12
    :goto_3
    invoke-virtual {v6, v3}, Landroid/arch/lifecycle/h;->l(Ljava/lang/reflect/Method;)Ljava/lang/Class;

    move-result-object v8

    if-eqz v8, :cond_6

    iget-object v9, v6, Landroid/arch/lifecycle/h;->b:Ljava/lang/Object;

    check-cast v9, La3/a;

    invoke-virtual {v9, v8, v7}, La3/a;->a(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    goto :goto_4

    :cond_6
    move-object v7, v5

    :goto_4
    if-eqz v7, :cond_7

    .line 13
    invoke-virtual {v6, v3, v7, v4}, Landroid/arch/lifecycle/h;->h(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)La3/k1;

    move-result-object v3

    goto :goto_5

    :cond_7
    move-object v3, v5

    .line 14
    :goto_5
    invoke-interface {v3}, La3/k1;->f()La3/m1;

    move-result-object v4

    if-ne v4, v1, :cond_8

    iget-object v6, p0, La3/l1;->d:La3/l1$a;

    invoke-virtual {p0, v3, v6}, La3/l1;->B(La3/k1;La3/l1$a;)V

    :cond_8
    if-ne v4, v2, :cond_9

    iget-object v6, p0, La3/l1;->d:La3/l1$a;

    invoke-virtual {p0, v3, v6}, La3/l1;->B(La3/k1;La3/l1$a;)V

    :cond_9
    if-ne v4, v0, :cond_2

    iget-object v4, p0, La3/l1;->e:La3/l1$a;

    invoke-virtual {p0, v3, v4}, La3/l1;->B(La3/k1;La3/l1$a;)V

    goto :goto_1

    .line 15
    :cond_a
    invoke-interface {p1}, La3/b0;->o()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v3, 0x0

    if-eqz p2, :cond_19

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, La3/j1;

    .line 16
    iget-object v4, p2, La3/j1;->a:[Ljava/lang/annotation/Annotation;

    .line 17
    iget-object p2, p2, La3/j1;->b:Ljava/lang/reflect/Method;

    .line 18
    array-length v6, v4

    :goto_6
    if-ge v3, v6, :cond_b

    aget-object v7, v4, v3

    .line 19
    instance-of v8, v7, Ly2/a;

    if-eqz v8, :cond_c

    invoke-virtual {p0, p2, v7, v4}, La3/l1;->C(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    :cond_c
    instance-of v8, v7, Ly2/j;

    if-eqz v8, :cond_d

    invoke-virtual {p0, p2, v7, v4}, La3/l1;->C(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    :cond_d
    instance-of v8, v7, Ly2/g;

    if-eqz v8, :cond_e

    invoke-virtual {p0, p2, v7, v4}, La3/l1;->C(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    :cond_e
    instance-of v8, v7, Ly2/i;

    if-eqz v8, :cond_f

    invoke-virtual {p0, p2, v7, v4}, La3/l1;->C(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    :cond_f
    instance-of v8, v7, Ly2/f;

    if-eqz v8, :cond_10

    invoke-virtual {p0, p2, v7, v4}, La3/l1;->C(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    :cond_10
    instance-of v8, v7, Ly2/e;

    if-eqz v8, :cond_11

    invoke-virtual {p0, p2, v7, v4}, La3/l1;->C(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    :cond_11
    instance-of v8, v7, Ly2/h;

    if-eqz v8, :cond_12

    invoke-virtual {p0, p2, v7, v4}, La3/l1;->C(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    :cond_12
    instance-of v8, v7, Ly2/d;

    if-eqz v8, :cond_13

    invoke-virtual {p0, p2, v7, v4}, La3/l1;->C(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    :cond_13
    instance-of v8, v7, Ly2/r;

    if-eqz v8, :cond_14

    invoke-virtual {p0, p2, v7, v4}, La3/l1;->C(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    :cond_14
    instance-of v8, v7, Ly2/p;

    if-eqz v8, :cond_15

    invoke-virtual {p0, p2, v7, v4}, La3/l1;->C(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    :cond_15
    instance-of v8, v7, Ly2/q;

    if-eqz v8, :cond_18

    .line 20
    iget-object v8, p0, La3/l1;->c:Landroid/arch/lifecycle/h;

    invoke-virtual {v8, p2, v7, v4}, Landroid/arch/lifecycle/h;->h(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)La3/k1;

    move-result-object v7

    invoke-interface {v7}, La3/k1;->f()La3/m1;

    move-result-object v8

    if-ne v8, v1, :cond_16

    iget-object v9, p0, La3/l1;->d:La3/l1$a;

    invoke-virtual {p0, v7, v9}, La3/l1;->D(La3/k1;La3/l1$a;)V

    :cond_16
    if-ne v8, v2, :cond_17

    iget-object v9, p0, La3/l1;->d:La3/l1$a;

    invoke-virtual {p0, v7, v9}, La3/l1;->D(La3/k1;La3/l1$a;)V

    :cond_17
    if-ne v8, v0, :cond_18

    iget-object v8, p0, La3/l1;->e:La3/l1$a;

    invoke-virtual {p0, v7, v8}, La3/l1;->D(La3/k1;La3/l1$a;)V

    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 21
    :cond_19
    iget-object p1, p0, La3/l1;->d:La3/l1$a;

    invoke-virtual {p1}, La3/l1$a;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1a
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p2, :cond_1e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object v2, p0, La3/l1;->d:La3/l1$a;

    invoke-virtual {v2, p2}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La3/k1;

    if-eqz v2, :cond_1a

    .line 22
    iget-object v4, p0, La3/l1;->e:La3/l1$a;

    .line 23
    invoke-virtual {v4, p2}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, La3/k1;

    if-eqz p2, :cond_1d

    .line 24
    invoke-interface {v2}, La3/k1;->c()Ljava/lang/annotation/Annotation;

    move-result-object v4

    invoke-interface {v2}, La3/k1;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2}, La3/k1;->c()Ljava/lang/annotation/Annotation;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-interface {v2}, La3/k1;->a()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {p2}, La3/k1;->a()Ljava/lang/Class;

    move-result-object v7

    if-ne v4, v7, :cond_1b

    new-instance v0, La3/i1;

    invoke-direct {v0, v2, p2}, La3/i1;-><init>(La3/k1;La3/k1;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_1b
    new-instance p1, La3/d;

    new-array p2, v0, [Ljava/lang/Object;

    aput-object v6, p2, v3

    aput-object v4, p2, v1

    const-string v0, "Method types do not match for %s in %s"

    invoke-direct {p1, v0, p2}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_1c
    new-array p1, v0, [Ljava/lang/Object;

    aput-object v6, p1, v3

    iget-object p2, p0, La3/l1;->b:La3/b0;

    aput-object p2, p1, v1

    new-instance p2, La3/d;

    const-string v0, "Annotations do not match for \'%s\' in %s"

    invoke-direct {p2, v0, p1}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2

    .line 25
    :cond_1d
    new-instance p2, La3/i1;

    .line 26
    invoke-direct {p2, v2, v5}, La3/i1;-><init>(La3/k1;La3/k1;)V

    .line 27
    invoke-virtual {p0, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 28
    :cond_1e
    iget-object p1, p0, La3/l1;->e:La3/l1$a;

    invoke-virtual {p1}, La3/l1$a;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1f
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_21

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object v2, p0, La3/l1;->e:La3/l1$a;

    invoke-virtual {v2, p2}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La3/k1;

    if-eqz v2, :cond_1f

    .line 29
    iget-object v4, p0, La3/l1;->d:La3/l1$a;

    .line 30
    invoke-virtual {v4, p2}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, La3/k1;

    .line 31
    invoke-interface {v2}, La3/k1;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz p2, :cond_20

    goto :goto_8

    :cond_20
    new-array p1, v0, [Ljava/lang/Object;

    aput-object v2, p1, v3

    iget-object p2, p0, La3/l1;->b:La3/b0;

    aput-object p2, p1, v1

    new-instance p2, La3/d;

    const-string v0, "No matching get method for %s in %s"

    invoke-direct {p2, v0, p1}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2

    :cond_21
    return-void
.end method


# virtual methods
.method public final A(La3/k1;La3/l1$a;)V
    .registers 6

    invoke-interface {p1}, La3/k1;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La3/k1;

    if-eqz v1, :cond_0

    .line 1
    invoke-interface {p1}, La3/k1;->c()Ljava/lang/annotation/Annotation;

    move-result-object v2

    instance-of v2, v2, Ly2/p;

    if-eqz v2, :cond_0

    move-object p1, v1

    .line 2
    :cond_0
    invoke-virtual {p2, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final B(La3/k1;La3/l1$a;)V
    .registers 4

    invoke-interface {p1}, La3/k1;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final C(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V
    .registers 5

    iget-object v0, p0, La3/l1;->c:Landroid/arch/lifecycle/h;

    invoke-virtual {v0, p1, p2, p3}, Landroid/arch/lifecycle/h;->h(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)La3/k1;

    move-result-object p1

    invoke-interface {p1}, La3/k1;->f()La3/m1;

    move-result-object p2

    sget-object p3, La3/m1;->d:La3/m1;

    if-ne p2, p3, :cond_0

    iget-object p3, p0, La3/l1;->d:La3/l1$a;

    invoke-virtual {p0, p1, p3}, La3/l1;->B(La3/k1;La3/l1$a;)V

    :cond_0
    sget-object p3, La3/m1;->e:La3/m1;

    if-ne p2, p3, :cond_1

    iget-object p3, p0, La3/l1;->d:La3/l1$a;

    invoke-virtual {p0, p1, p3}, La3/l1;->B(La3/k1;La3/l1$a;)V

    :cond_1
    sget-object p3, La3/m1;->g:La3/m1;

    if-ne p2, p3, :cond_2

    iget-object p2, p0, La3/l1;->e:La3/l1$a;

    invoke-virtual {p0, p1, p2}, La3/l1;->B(La3/k1;La3/l1$a;)V

    :cond_2
    return-void
.end method

.method public final D(La3/k1;La3/l1$a;)V
    .registers 3

    invoke-interface {p1}, La3/k1;->getName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
