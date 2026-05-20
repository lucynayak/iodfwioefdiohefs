.class public final La3/u1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La3/j2;


# instance fields
.field public a:La3/s2;

.field public b:La3/b0;

.field public c:La3/j;

.field public d:La3/r2;

.field public e:La3/t2;


# direct methods
.method public constructor <init>(La3/b0;La3/t2;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, La3/j;

    invoke-direct {v3, v1, v2}, La3/j;-><init>(La3/b0;La3/t2;)V

    iput-object v3, v0, La3/u1;->c:La3/j;

    new-instance v3, La3/s2;

    invoke-direct {v3, v0, v1, v2}, La3/s2;-><init>(La3/j2;La3/b0;La3/t2;)V

    iput-object v3, v0, La3/u1;->a:La3/s2;

    iput-object v2, v0, La3/u1;->e:La3/t2;

    iput-object v1, v0, La3/u1;->b:La3/b0;

    .line 1
    invoke-interface/range {p1 .. p1}, La3/b0;->a()Ljava/lang/Class;

    iget-object v2, v0, La3/u1;->a:La3/s2;

    .line 2
    iget-object v3, v2, La3/s2;->i:La3/j2;

    invoke-interface {v3}, La3/j2;->getOrder()Ly2/m;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v3, :cond_5

    iget-object v7, v2, La3/s2;->a:La3/o1;

    iget-object v2, v2, La3/s2;->h:La3/c3;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-interface {v3}, Ly2/m;->elements()[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v9, :cond_1

    aget-object v11, v8, v10

    iget-object v12, v7, La3/o1;->a:La3/v;

    invoke-virtual {v12, v11}, La3/v;->e(Ljava/lang/String;)La3/s0;

    move-result-object v11

    invoke-interface {v11}, La3/s0;->isAttribute()Z

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {v7, v2, v11}, La3/o1;->b(La3/n1;La3/s0;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    new-array v1, v5, [Ljava/lang/Object;

    aput-object v11, v1, v4

    iget-object v2, v7, La3/o1;->b:La3/b0;

    aput-object v2, v1, v6

    new-instance v2, La3/d;

    const-string v3, "Ordered element \'%s\' references an attribute in %s"

    invoke-direct {v2, v3, v1}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 4
    :cond_1
    invoke-interface {v3}, Ly2/m;->attributes()[Ljava/lang/String;

    move-result-object v3

    array-length v8, v3

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_5

    aget-object v10, v3, v9

    iget-object v11, v7, La3/o1;->a:La3/v;

    invoke-virtual {v11, v10}, La3/v;->e(Ljava/lang/String;)La3/s0;

    move-result-object v11

    invoke-interface {v11}, La3/s0;->isAttribute()Z

    move-result v12

    if-nez v12, :cond_3

    invoke-interface {v11}, La3/s0;->s()Z

    move-result v12

    if-nez v12, :cond_2

    goto :goto_2

    :cond_2
    new-array v1, v5, [Ljava/lang/Object;

    aput-object v11, v1, v4

    iget-object v2, v7, La3/o1;->b:La3/b0;

    aput-object v2, v1, v6

    new-instance v2, La3/d;

    const-string v3, "Ordered attribute \'%s\' references an element in %s"

    invoke-direct {v2, v3, v1}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    :cond_3
    :goto_2
    invoke-interface {v11}, La3/s0;->s()Z

    move-result v12

    if-nez v12, :cond_4

    iget-object v11, v7, La3/o1;->c:Ld3/h;

    .line 5
    iget-object v11, v11, Ld3/h;->c:Ly1/a;

    .line 6
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v10}, La3/c3;->n(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v7, v2, v11}, La3/o1;->a(La3/n1;La3/s0;)V

    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 7
    :cond_5
    invoke-interface/range {p1 .. p1}, La3/b0;->a()Ljava/lang/Class;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, La3/b0;->j()Ly2/c;

    move-result-object v3

    iget-object v7, v0, La3/u1;->e:La3/t2;

    if-eqz v3, :cond_6

    .line 8
    iget-object v3, v7, La3/t2;->a:La3/r;

    goto :goto_4

    :cond_6
    iget-object v3, v7, La3/t2;->b:La3/r;

    :goto_4
    invoke-virtual {v3, v2}, La3/r;->f(Ljava/lang/Class;)La3/t;

    move-result-object v2

    .line 9
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La3/s;

    invoke-interface {v3}, La3/s;->c()Ljava/lang/annotation/Annotation;

    move-result-object v7

    if-eqz v7, :cond_7

    iget-object v8, v0, La3/u1;->a:La3/s2;

    invoke-virtual {v8, v3, v7}, La3/s2;->b(La3/s;Ljava/lang/annotation/Annotation;)V

    goto :goto_5

    .line 10
    :cond_8
    invoke-interface/range {p1 .. p1}, La3/b0;->a()Ljava/lang/Class;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, La3/b0;->j()Ly2/c;

    move-result-object v3

    iget-object v7, v0, La3/u1;->e:La3/t2;

    if-eqz v3, :cond_9

    .line 11
    iget-object v3, v7, La3/t2;->a:La3/r;

    goto :goto_6

    :cond_9
    iget-object v3, v7, La3/t2;->b:La3/r;

    :goto_6
    invoke-virtual {v3, v2}, La3/r;->g(Ljava/lang/Class;)La3/t;

    move-result-object v2

    .line 12
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La3/s;

    invoke-interface {v3}, La3/s;->c()Ljava/lang/annotation/Annotation;

    move-result-object v7

    if-eqz v7, :cond_a

    iget-object v8, v0, La3/u1;->a:La3/s2;

    invoke-virtual {v8, v3, v7}, La3/s2;->b(La3/s;Ljava/lang/annotation/Annotation;)V

    goto :goto_7

    .line 13
    :cond_b
    invoke-interface/range {p1 .. p1}, La3/b0;->a()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, v0, La3/u1;->a:La3/s2;

    .line 14
    iget-object v7, v3, La3/s2;->e:Lt/n;

    const/4 v8, 0x3

    if-nez v7, :cond_20

    iget-object v7, v3, La3/s2;->g:La3/b1;

    .line 15
    iget-object v11, v7, La3/b1;->e:Lt/n;

    if-nez v11, :cond_1f

    .line 16
    iget-object v11, v7, La3/b1;->g:La3/j2;

    invoke-interface {v11}, La3/j2;->n()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, La3/o2;

    .line 17
    new-instance v13, La3/o2;

    invoke-direct {v13, v12}, La3/o2;-><init>(La3/o2;)V

    invoke-virtual {v12}, La3/o2;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_c
    :goto_9
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, La3/w1;

    .line 18
    invoke-virtual {v7, v14}, La3/b1;->c(La3/w1;)La3/c1;

    move-result-object v15

    if-eqz v15, :cond_d

    new-instance v9, La3/h;

    invoke-direct {v9, v14, v15}, La3/h;-><init>(La3/w1;La3/c1;)V

    goto :goto_a

    :cond_d
    const/4 v9, 0x0

    :goto_a
    if-eqz v9, :cond_c

    .line 19
    invoke-virtual {v13, v9}, La3/o2;->A(La3/w1;)V

    goto :goto_9

    .line 20
    :cond_e
    new-instance v9, La3/q2;

    invoke-direct {v9, v13}, La3/q2;-><init>(La3/o2;)V

    iget-object v12, v7, La3/b1;->f:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 21
    :cond_f
    iget-object v9, v7, La3/b1;->c:La3/b0;

    .line 22
    iget-object v11, v7, La3/b1;->e:Lt/n;

    if-nez v11, :cond_11

    .line 23
    iget-object v11, v7, La3/b1;->g:La3/j2;

    invoke-interface {v11}, La3/j2;->b()La3/o2;

    move-result-object v11

    iget-object v12, v7, La3/b1;->g:La3/j2;

    invoke-interface {v12}, La3/j2;->j()La3/u;

    move-result-object v12

    if-eqz v11, :cond_10

    new-instance v13, La3/q2;

    invoke-direct {v13, v11}, La3/q2;-><init>(La3/o2;)V

    goto :goto_b

    :cond_10
    const/4 v13, 0x0

    :goto_b
    new-instance v11, Lt/n;

    iget-object v14, v7, La3/b1;->f:Ljava/util/ArrayList;

    invoke-direct {v11, v14, v13, v12, v9}, Lt/n;-><init>(Ljava/util/List;La3/x;La3/u;La3/b0;)V

    .line 24
    iput-object v11, v7, La3/b1;->e:Lt/n;

    .line 25
    :cond_11
    iget-object v9, v7, La3/b1;->c:La3/b0;

    .line 26
    iget-object v11, v7, La3/b1;->g:La3/j2;

    invoke-interface {v11}, La3/j2;->j()La3/u;

    move-result-object v11

    invoke-virtual {v11}, La3/u;->A()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_c
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, La3/w1;

    invoke-virtual {v7, v12}, La3/b1;->c(La3/w1;)La3/c1;

    move-result-object v13

    invoke-interface {v12}, La3/w1;->b()Ljava/lang/String;

    move-result-object v14

    if-eqz v13, :cond_1b

    .line 27
    invoke-interface {v13}, La3/c1;->n()La3/s;

    move-result-object v14

    invoke-interface {v12}, La3/w1;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12}, La3/w1;->a()Ljava/lang/Class;

    move-result-object v10

    invoke-interface {v14}, Lc3/c;->a()Ljava/lang/Class;

    move-result-object v14

    invoke-static {v10, v14}, La3/t2;->g(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_1a

    .line 28
    invoke-interface {v13}, La3/c1;->t()[Ljava/lang/String;

    move-result-object v10

    invoke-interface {v12}, La3/w1;->getName()Ljava/lang/String;

    move-result-object v14

    .line 29
    array-length v15, v10

    const/4 v5, 0x0

    :goto_d
    if-ge v5, v15, :cond_14

    aget-object v6, v10, v5

    if-ne v6, v14, :cond_12

    goto :goto_e

    :cond_12
    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    goto :goto_d

    :cond_13
    :goto_e
    const/4 v5, 0x1

    goto :goto_f

    :cond_14
    const/4 v5, 0x0

    :goto_f
    if-nez v5, :cond_17

    .line 30
    invoke-interface {v13}, La3/c1;->getName()Ljava/lang/String;

    move-result-object v5

    if-eq v14, v5, :cond_17

    const-string v6, "Annotation does not match %s for \'%s\' in %s"

    if-eqz v14, :cond_16

    if-eqz v5, :cond_16

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    goto :goto_10

    :cond_15
    new-instance v1, La3/d;

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v13, v2, v4

    const/4 v3, 0x1

    aput-object v14, v2, v3

    const/4 v5, 0x2

    aput-object v12, v2, v5

    invoke-direct {v1, v6, v2}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_16
    const/4 v3, 0x1

    const/4 v5, 0x2

    new-instance v1, La3/d;

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v13, v2, v4

    aput-object v14, v2, v3

    aput-object v12, v2, v5

    invoke-direct {v1, v6, v2}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 31
    :cond_17
    :goto_10
    invoke-interface {v13}, La3/c1;->c()Ljava/lang/annotation/Annotation;

    move-result-object v5

    invoke-interface {v12}, La3/w1;->c()Ljava/lang/annotation/Annotation;

    move-result-object v6

    invoke-interface {v12}, La3/w1;->getName()Ljava/lang/String;

    move-result-object v10

    iget-object v13, v7, La3/b1;->b:Landroid/support/v4/app/i;

    invoke-virtual {v13, v5, v6}, Landroid/support/v4/app/i;->c(Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Z

    move-result v13

    if-nez v13, :cond_19

    invoke-interface {v5}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v5

    invoke-interface {v6}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18

    goto :goto_11

    :cond_18
    new-instance v1, La3/d;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v6, v2, v4

    const/4 v6, 0x1

    aput-object v5, v2, v6

    const/4 v5, 0x2

    aput-object v10, v2, v5

    aput-object v12, v2, v8

    const-string v3, "Annotation %s does not match %s for \'%s\' in %s"

    invoke-direct {v1, v3, v2}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_19
    :goto_11
    const/4 v5, 0x2

    const/4 v6, 0x1

    goto/16 :goto_c

    .line 32
    :cond_1a
    new-instance v1, La3/d;

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v13, v2, v4

    aput-object v15, v2, v6

    aput-object v12, v2, v5

    const-string v3, "Type is not compatible with %s for \'%s\' in %s"

    invoke-direct {v1, v3, v2}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 33
    :cond_1b
    new-instance v1, La3/d;

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v14, v2, v4

    aput-object v9, v2, v6

    const-string v3, "Parameter \'%s\' does not have a match in %s"

    invoke-direct {v1, v3, v2}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 34
    :cond_1c
    iget-object v5, v7, La3/b1;->e:Lt/n;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    new-instance v6, Ljava/util/ArrayList;

    iget-object v5, v5, Lt/n;->c:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 36
    iget-object v5, v7, La3/b1;->e:Lt/n;

    .line 37
    iget-object v9, v5, Lt/n;->c:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    if-gt v9, v10, :cond_1d

    iget-object v5, v5, Lt/n;->e:Ljava/lang/Object;

    check-cast v5, La3/x;

    if-eqz v5, :cond_1d

    const/4 v5, 0x1

    goto :goto_12

    :cond_1d
    const/4 v5, 0x0

    :goto_12
    if-eqz v5, :cond_1e

    .line 38
    iget-object v5, v7, La3/b1;->d:La3/g1;

    invoke-virtual {v7, v5}, La3/b1;->e(La3/g1;)V

    iget-object v5, v7, La3/b1;->a:La3/g1;

    invoke-virtual {v7, v5}, La3/b1;->e(La3/g1;)V

    :cond_1e
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1f

    iget-object v5, v7, La3/b1;->d:La3/g1;

    invoke-virtual {v7, v5, v6}, La3/b1;->f(La3/g1;Ljava/util/List;)V

    iget-object v5, v7, La3/b1;->a:La3/g1;

    invoke-virtual {v7, v5, v6}, La3/b1;->f(La3/g1;Ljava/util/List;)V

    .line 39
    :cond_1f
    iget-object v5, v7, La3/b1;->e:Lt/n;

    .line 40
    iput-object v5, v3, La3/s2;->e:Lt/n;

    .line 41
    :cond_20
    iget-object v3, v0, La3/u1;->a:La3/s2;

    .line 42
    iget-object v5, v3, La3/s2;->i:La3/j2;

    invoke-interface {v5}, La3/j2;->getOrder()Ly2/m;

    move-result-object v5

    .line 43
    iget-object v6, v3, La3/s2;->d:La3/g1;

    invoke-virtual {v6}, La3/g1;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_21
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_24

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, La3/c1;

    invoke-interface {v7}, La3/c1;->o()[Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7}, La3/c1;->n()La3/s;

    move-result-object v10

    array-length v11, v9

    const/4 v12, 0x0

    :goto_13
    if-ge v12, v11, :cond_21

    aget-object v13, v9, v12

    invoke-interface {v10}, La3/s;->c()Ljava/lang/annotation/Annotation;

    move-result-object v14

    iget-object v15, v3, La3/s2;->d:La3/g1;

    invoke-virtual {v15, v13}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, La3/c1;

    invoke-interface {v7}, La3/c1;->s()Z

    move-result v15

    invoke-interface {v13}, La3/c1;->s()Z

    move-result v8

    if-ne v15, v8, :cond_23

    invoke-interface {v7}, La3/c1;->e()Z

    move-result v8

    invoke-interface {v13}, La3/c1;->e()Z

    move-result v13

    if-ne v8, v13, :cond_22

    add-int/lit8 v12, v12, 0x1

    const/4 v8, 0x3

    goto :goto_13

    :cond_22
    new-instance v1, La3/d;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v14, v2, v4

    const/4 v3, 0x1

    aput-object v10, v2, v3

    const-string v3, "Required must be consistent in %s for %s"

    const/4 v7, 0x4

    invoke-direct {v1, v3, v2, v7}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    throw v1

    :cond_23
    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v7, 0x4

    new-instance v1, La3/d;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v14, v2, v4

    aput-object v10, v2, v3

    const-string v3, "Inline must be consistent in %s for %s"

    invoke-direct {v1, v3, v2, v7}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    throw v1

    :cond_24
    if-eqz v5, :cond_29

    .line 44
    invoke-interface {v5}, Ly2/m;->elements()[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_14
    if-ge v8, v7, :cond_29

    aget-object v9, v6, v8

    .line 45
    iget-object v10, v3, La3/s2;->c:La3/v;

    invoke-virtual {v10, v9}, La3/v;->e(Ljava/lang/String;)La3/s0;

    move-result-object v10

    invoke-virtual {v3, v10}, La3/s2;->a(La3/s0;)La3/n1;

    move-result-object v11

    if-eqz v11, :cond_27

    invoke-interface {v10}, La3/s0;->getLast()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10}, La3/s0;->h()I

    move-result v10

    invoke-interface {v11, v12}, La3/n1;->y(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_25

    goto :goto_15

    :cond_25
    invoke-interface {v11, v12}, La3/n1;->x(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_27

    invoke-interface {v11, v12, v10}, La3/n1;->v(Ljava/lang/String;I)La3/n1;

    move-result-object v10

    invoke-interface {v10}, La3/n1;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_26

    goto :goto_16

    :cond_26
    :goto_15
    const/4 v10, 0x1

    goto :goto_17

    :cond_27
    :goto_16
    const/4 v10, 0x0

    :goto_17
    if-eqz v10, :cond_28

    add-int/lit8 v8, v8, 0x1

    goto :goto_14

    .line 46
    :cond_28
    new-instance v1, La3/d;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v9, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    const-string v2, "Ordered element \'%s\' missing for %s"

    invoke-direct {v1, v2, v3}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_29
    if-eqz v5, :cond_2d

    .line 47
    invoke-interface {v5}, Ly2/m;->attributes()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_18
    if-ge v7, v6, :cond_2d

    aget-object v8, v5, v7

    .line 48
    iget-object v9, v3, La3/s2;->c:La3/v;

    invoke-virtual {v9, v8}, La3/v;->e(Ljava/lang/String;)La3/s0;

    move-result-object v9

    invoke-virtual {v3, v9}, La3/s2;->a(La3/s0;)La3/n1;

    move-result-object v10

    if-eqz v10, :cond_2b

    invoke-interface {v9}, La3/s0;->getLast()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9}, La3/s0;->s()Z

    move-result v9

    if-nez v9, :cond_2a

    invoke-interface {v10, v8}, La3/n1;->j(Ljava/lang/String;)Z

    move-result v9

    goto :goto_19

    :cond_2a
    invoke-interface {v10, v11}, La3/n1;->j(Ljava/lang/String;)Z

    move-result v9

    goto :goto_19

    :cond_2b
    const/4 v9, 0x0

    :goto_19
    if-eqz v9, :cond_2c

    add-int/lit8 v7, v7, 0x1

    goto :goto_18

    .line 49
    :cond_2c
    new-instance v1, La3/d;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v8, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    const-string v2, "Ordered attribute \'%s\' missing in %s"

    invoke-direct {v1, v2, v3}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 50
    :cond_2d
    iget-object v5, v3, La3/s2;->h:La3/c3;

    invoke-virtual {v5}, La3/c3;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2e

    iget-object v5, v3, La3/s2;->h:La3/c3;

    invoke-virtual {v5, v2}, La3/c3;->z(Ljava/lang/Class;)V

    .line 51
    :cond_2e
    iget-object v5, v3, La3/s2;->h:La3/c3;

    invoke-virtual {v5}, La3/c3;->f()La3/c1;

    move-result-object v5

    const-string v6, "Paths used with %s in %s"

    const-string v7, "Elements used with %s in %s"

    if-eqz v5, :cond_31

    invoke-interface {v5}, La3/c1;->q()Z

    move-result v8

    if-nez v8, :cond_32

    iget-object v8, v3, La3/s2;->d:La3/g1;

    invoke-virtual {v8}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_30

    iget-object v8, v3, La3/s2;->h:La3/c3;

    invoke-virtual {v8}, La3/c3;->A()Z

    move-result v8

    if-nez v8, :cond_2f

    goto :goto_1a

    :cond_2f
    new-instance v1, La3/d;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v5, v3, v4

    const/4 v8, 0x1

    aput-object v2, v3, v8

    invoke-direct {v1, v6, v3}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_30
    const/4 v3, 0x2

    const/4 v8, 0x1

    new-instance v1, La3/d;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v5, v3, v4

    aput-object v2, v3, v8

    invoke-direct {v1, v7, v3}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_31
    iget-object v5, v3, La3/s2;->i:La3/j2;

    invoke-interface {v5}, La3/j2;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_32

    .line 52
    iget-object v5, v3, La3/s2;->h:La3/c3;

    invoke-virtual {v5}, La3/c3;->isEmpty()Z

    move-result v5

    .line 53
    iput-boolean v5, v3, La3/s2;->f:Z

    .line 54
    :cond_32
    :goto_1a
    iget-object v5, v3, La3/s2;->h:La3/c3;

    invoke-virtual {v5}, La3/c3;->f()La3/c1;

    move-result-object v5

    if-eqz v5, :cond_37

    invoke-interface {v5}, La3/c1;->q()Z

    move-result v8

    if-eqz v8, :cond_37

    invoke-interface {v5}, La3/c1;->getKey()Ljava/lang/Object;

    move-result-object v8

    iget-object v9, v3, La3/s2;->d:La3/g1;

    invoke-virtual {v9}, La3/g1;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_35

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, La3/c1;

    invoke-interface {v10}, La3/c1;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_34

    invoke-interface {v10}, La3/c1;->i()Lc3/c;

    move-result-object v10

    invoke-interface {v10}, Lc3/c;->a()Ljava/lang/Class;

    move-result-object v10

    const-class v11, Ljava/lang/String;

    if-eq v10, v11, :cond_33

    goto :goto_1b

    :cond_33
    new-instance v1, La3/d;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v10, v3, v4

    const/4 v8, 0x1

    aput-object v5, v3, v8

    const/4 v9, 0x2

    aput-object v2, v3, v9

    const-string v2, "Illegal entry of %s with text annotations on %s in %s"

    invoke-direct {v1, v2, v3}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_34
    const/4 v8, 0x1

    const/4 v9, 0x2

    new-instance v1, La3/d;

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v5, v3, v4

    aput-object v2, v3, v8

    invoke-direct {v1, v7, v3}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_35
    const/4 v8, 0x1

    const/4 v9, 0x2

    iget-object v3, v3, La3/s2;->h:La3/c3;

    invoke-virtual {v3}, La3/c3;->A()Z

    move-result v3

    if-nez v3, :cond_36

    goto :goto_1c

    :cond_36
    new-instance v1, La3/d;

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v5, v3, v4

    aput-object v2, v3, v8

    invoke-direct {v1, v6, v3}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 55
    :cond_37
    :goto_1c
    invoke-interface/range {p1 .. p1}, La3/b0;->a()Ljava/lang/Class;

    iget-object v1, v0, La3/u1;->d:La3/r2;

    if-nez v1, :cond_38

    iget-object v1, v0, La3/u1;->a:La3/s2;

    .line 56
    new-instance v2, La3/r2;

    iget-object v3, v1, La3/s2;->e:Lt/n;

    iget-object v4, v1, La3/s2;->h:La3/c3;

    iget-object v5, v1, La3/s2;->l:La3/c1;

    iget-boolean v1, v1, La3/s2;->f:Z

    invoke-direct {v2, v3, v4, v5, v1}, La3/r2;-><init>(Lt/n;La3/n1;La3/c1;Z)V

    .line 57
    iput-object v2, v0, La3/u1;->d:La3/r2;

    :cond_38
    const/4 v1, 0x0

    iput-object v1, v0, La3/u1;->a:La3/s2;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .registers 2

    iget-object v0, p0, La3/u1;->b:La3/b0;

    invoke-interface {v0}, La3/b0;->a()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final b()La3/o2;
    .registers 2

    iget-object v0, p0, La3/u1;->c:La3/j;

    .line 1
    iget-object v0, v0, La3/j;->i:Lt/n;

    .line 2
    iget-object v0, v0, Lt/n;->c:Ljava/lang/Object;

    check-cast v0, La3/o2;

    return-object v0
.end method

.method public final c(La3/q;)La3/i;
    .registers 3

    new-instance v0, La3/i;

    invoke-direct {v0, p0, p1}, La3/i;-><init>(La3/j2;La3/q;)V

    return-object v0
.end method

.method public final d()La3/x0;
    .registers 2

    iget-object v0, p0, La3/u1;->c:La3/j;

    iget-object v0, v0, La3/j;->g:La3/x0;

    return-object v0
.end method

.method public final e()La3/x0;
    .registers 2

    iget-object v0, p0, La3/u1;->c:La3/j;

    iget-object v0, v0, La3/j;->k:La3/x0;

    return-object v0
.end method

.method public final f()V
    .registers 2

    iget-object v0, p0, La3/u1;->d:La3/r2;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final g()Z
    .registers 2

    iget-object v0, p0, La3/u1;->d:La3/r2;

    iget-boolean v0, v0, La3/r2;->c:Z

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, La3/u1;->b:La3/b0;

    invoke-interface {v0}, La3/b0;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getOrder()Ly2/m;
    .registers 2

    iget-object v0, p0, La3/u1;->c:La3/j;

    iget-object v0, v0, La3/j;->d:Ly2/m;

    return-object v0
.end method

.method public final h()La3/r1;
    .registers 2

    iget-object v0, p0, La3/u1;->c:La3/j;

    iget-object v0, v0, La3/j;->c:La3/r1;

    return-object v0
.end method

.method public final i()Z
    .registers 2

    iget-object v0, p0, La3/u1;->b:La3/b0;

    invoke-interface {v0}, La3/b0;->i()Z

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .registers 2

    iget-object v0, p0, La3/u1;->c:La3/j;

    iget-object v0, v0, La3/j;->h:Ly2/n;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final j()La3/u;
    .registers 2

    iget-object v0, p0, La3/u1;->c:La3/j;

    .line 1
    iget-object v0, v0, La3/j;->i:Lt/n;

    .line 2
    iget-object v0, v0, Lt/n;->d:Ljava/lang/Object;

    check-cast v0, La3/u;

    return-object v0
.end method

.method public final k()La3/k2;
    .registers 3

    iget-object v0, p0, La3/u1;->d:La3/r2;

    new-instance v1, La3/q1;

    iget-object v0, v0, La3/r2;->b:La3/n1;

    invoke-direct {v1, v0}, La3/q1;-><init>(La3/n1;)V

    return-object v1
.end method

.method public final l()La3/c1;
    .registers 2

    iget-object v0, p0, La3/u1;->d:La3/r2;

    iget-object v0, v0, La3/r2;->d:La3/c1;

    return-object v0
.end method

.method public final m()La3/x0;
    .registers 2

    iget-object v0, p0, La3/u1;->c:La3/j;

    iget-object v0, v0, La3/j;->e:La3/x0;

    return-object v0
.end method

.method public final n()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "La3/o2;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, La3/u1;->c:La3/j;

    .line 1
    iget-object v0, v0, La3/j;->i:Lt/n;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, v0, Lt/n;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public final o()Lt/n;
    .registers 2

    iget-object v0, p0, La3/u1;->d:La3/r2;

    iget-object v0, v0, La3/r2;->a:Lt/n;

    return-object v0
.end method

.method public final p()La3/x0;
    .registers 2

    iget-object v0, p0, La3/u1;->c:La3/j;

    iget-object v0, v0, La3/j;->b:La3/x0;

    return-object v0
.end method

.method public final q()Ly2/r;
    .registers 3

    iget-object v0, p0, La3/u1;->d:La3/r2;

    iget-object v0, v0, La3/r2;->d:La3/c1;

    if-eqz v0, :cond_0

    invoke-interface {v0}, La3/c1;->n()La3/s;

    move-result-object v0

    const-class v1, Ly2/r;

    invoke-interface {v0, v1}, Lc3/c;->b(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Ly2/r;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final r()La3/x0;
    .registers 2

    iget-object v0, p0, La3/u1;->c:La3/j;

    iget-object v0, v0, La3/j;->a:La3/x0;

    return-object v0
.end method

.method public final s()La3/x0;
    .registers 2

    iget-object v0, p0, La3/u1;->c:La3/j;

    iget-object v0, v0, La3/j;->f:La3/x0;

    return-object v0
.end method
