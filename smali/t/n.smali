.class public final Lt/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La3/w;
.implements Le3/i;


# instance fields
.field public final synthetic b:I

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lt/n;->b:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    iput-object v0, p0, Lt/n;->c:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lt/n;->e:Ljava/lang/Object;

    new-instance v0, Lc0/e;

    invoke-direct {v0}, Lc0/e;-><init>()V

    iput-object v0, p0, Lt/n;->f:Ljava/lang/Object;

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    iput-object v0, p0, Lt/n;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(La3/b0;La3/t2;)V
    .registers 20

    move-object/from16 v0, p0

    const/4 v1, 0x2

    iput v1, v0, Lt/n;->b:I

    .line 2
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lt/n;->e:Ljava/lang/Object;

    new-instance v2, La3/u;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, La3/u;-><init>(I)V

    iput-object v2, v0, Lt/n;->d:Ljava/lang/Object;

    move-object/from16 v2, p2

    iput-object v2, v0, Lt/n;->f:Ljava/lang/Object;

    .line 3
    invoke-interface/range {p1 .. p1}, La3/b0;->n()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, La3/b0;->l()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_9

    array-length v4, v2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_8

    aget-object v7, v2, v6

    invoke-interface/range {p1 .. p1}, La3/b0;->g()Z

    move-result v8

    if-nez v8, :cond_7

    .line 4
    new-instance v8, La3/r;

    iget-object v9, v0, Lt/n;->d:Ljava/lang/Object;

    check-cast v9, La3/u;

    iget-object v10, v0, Lt/n;->f:Ljava/lang/Object;

    check-cast v10, La3/t2;

    invoke-direct {v8, v7, v9, v10}, La3/r;-><init>(Ljava/lang/reflect/Constructor;La3/u;La3/t2;)V

    .line 5
    iget-object v7, v8, La3/r;->c:Ljava/lang/Object;

    check-cast v7, La3/p2;

    invoke-virtual {v7}, La3/p2;->b()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 6
    iget-object v7, v8, La3/r;->c:Ljava/lang/Object;

    check-cast v7, La3/p2;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v8, La3/p2$b;

    invoke-direct {v8}, La3/p2$b;-><init>()V

    .line 8
    iget-object v9, v7, La3/p2;->b:La3/p2$b;

    invoke-virtual {v9}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 9
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, La3/o2;

    iget-object v10, v7, La3/p2;->a:Ljava/lang/reflect/Constructor;

    invoke-direct {v9, v10}, La3/o2;-><init>(Ljava/lang/reflect/Constructor;)V

    invoke-virtual {v7}, La3/p2;->b()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 10
    :cond_0
    new-instance v9, La3/p2$a;

    invoke-direct {v9}, La3/p2$a;-><init>()V

    invoke-virtual {v7, v8, v9, v5}, La3/p2;->a(La3/p2$b;La3/p2$a;I)V

    .line 11
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    sget v10, La3/p2$b;->b:I

    .line 12
    invoke-virtual {v8}, Ljava/util/AbstractCollection;->size()I

    move-result v10

    if-lez v10, :cond_1

    .line 13
    invoke-virtual {v8, v5}, La3/p2$b;->A(I)La3/p2$a;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/AbstractCollection;->size()I

    move-result v10

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    .line 14
    :goto_1
    invoke-virtual {v8}, Ljava/util/AbstractCollection;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v10, :cond_4

    .line 15
    new-instance v13, La3/o2;

    iget-object v14, v7, La3/p2;->a:Ljava/lang/reflect/Constructor;

    invoke-direct {v13, v14}, La3/o2;-><init>(Ljava/lang/reflect/Constructor;)V

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v11, :cond_3

    .line 16
    invoke-virtual {v8, v14}, La3/p2$b;->A(I)La3/p2$a;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, La3/w1;

    .line 17
    invoke-interface {v15}, La3/w1;->b()Ljava/lang/String;

    move-result-object v16

    invoke-interface {v15}, La3/w1;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 18
    iget-object v5, v13, La3/o2;->c:La3/u;

    invoke-virtual {v5, v3}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 19
    invoke-virtual {v13, v15}, La3/o2;->A(La3/w1;)V

    add-int/lit8 v14, v14, 0x1

    const/4 v3, 0x1

    const/4 v5, 0x0

    goto :goto_3

    :cond_2
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v16, v1, v2

    iget-object v2, v7, La3/p2;->a:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, La3/d;

    const-string v3, "Parameter \'%s\' is a duplicate in %s"

    invoke-direct {v2, v3, v1}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    :cond_3
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    const/4 v3, 0x1

    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    move-object v8, v9

    .line 20
    :cond_5
    :goto_4
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La3/o2;

    .line 21
    iget-object v7, v5, La3/o2;->c:La3/u;

    invoke-virtual {v7}, Ljava/util/AbstractMap;->size()I

    move-result v7

    if-nez v7, :cond_6

    .line 22
    iput-object v5, v0, Lt/n;->c:Ljava/lang/Object;

    :cond_6
    iget-object v7, v0, Lt/n;->e:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_7
    add-int/lit8 v6, v6, 0x1

    const/4 v3, 0x1

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_8
    return-void

    .line 23
    :cond_9
    new-instance v1, La3/d;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, "Can not construct inner %s"

    invoke-direct {v1, v3, v2}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method public constructor <init>(Le3/i;)V
    .registers 3

    const/4 v0, 0x4

    iput v0, p0, Lt/n;->b:I

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ly1/a;

    invoke-direct {v0}, Ly1/a;-><init>()V

    iput-object v0, p0, Lt/n;->e:Ljava/lang/Object;

    new-instance v0, Ld1/a;

    invoke-direct {v0}, Ld1/a;-><init>()V

    iput-object v0, p0, Lt/n;->f:Ljava/lang/Object;

    new-instance v0, Lt/o;

    invoke-direct {v0, p0}, Lt/o;-><init>(Le3/i;)V

    iput-object v0, p0, Lt/n;->c:Ljava/lang/Object;

    iput-object p1, p0, Lt/n;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;La3/x;La3/u;La3/b0;)V
    .registers 6

    const/4 v0, 0x1

    iput v0, p0, Lt/n;->b:I

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt/n;->c:Ljava/lang/Object;

    iput-object p3, p0, Lt/n;->f:Ljava/lang/Object;

    iput-object p2, p0, Lt/n;->e:Ljava/lang/Object;

    iput-object p4, p0, Lt/n;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ld3/m;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lt/n;->d:Ljava/lang/Object;

    check-cast v0, La3/l;

    invoke-virtual {v0, p1}, La3/l;->f(Ld3/m;)La3/z0;

    move-result-object v0

    invoke-interface {v0}, La3/z0;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, La3/z0;->d()Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-interface {v0, p2}, La3/z0;->c(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1, p2}, Lt/n;->d(Ld3/m;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object p2
.end method

.method public final b(Ld3/m;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lt/n;->d:Ljava/lang/Object;

    check-cast v0, La3/l;

    invoke-virtual {v0, p1}, La3/l;->f(Ld3/m;)La3/z0;

    move-result-object v0

    invoke-interface {v0}, La3/z0;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, La3/z0;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, v1}, Lt/n;->d(Ld3/m;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public final c(Ld3/z;Ljava/lang/Object;)V
    .registers 7

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lt/n;->e:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Ld3/z;->k(Ljava/lang/String;)Ld3/z;

    move-result-object v1

    .line 1
    iget-object v2, p0, Lt/n;->d:Ljava/lang/Object;

    check-cast v2, La3/l;

    iget-object v3, p0, Lt/n;->c:Ljava/lang/Object;

    check-cast v3, Lc3/c;

    invoke-virtual {v2, v3, v0, v1}, La3/t0;->d(Lc3/c;Ljava/lang/Object;Ld3/z;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2
    iget-object v2, p0, Lt/n;->f:Ljava/lang/Object;

    check-cast v2, La3/r;

    invoke-virtual {v2, v1, v0}, La3/r;->c(Ld3/z;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final d(Ld3/m;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    check-cast p2, Ljava/util/Collection;

    :goto_0
    invoke-interface {p1}, Ld3/m;->o()Ld3/m;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    iget-object v1, p0, Lt/n;->f:Ljava/lang/Object;

    check-cast v1, La3/r;

    invoke-virtual {v1, v0}, La3/r;->b(Ld3/m;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final e(Ljava/lang/Class;)Le3/k;
    .registers 3

    iget-object v0, p0, Lt/n;->d:Ljava/lang/Object;

    check-cast v0, Le3/i;

    invoke-interface {v0, p1}, Le3/i;->e(Ljava/lang/Class;)Le3/k;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lt/n;->c:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lt/n;->e:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lt/n;->f:Ljava/lang/Object;

    :goto_0
    check-cast v0, Le3/i;

    invoke-interface {v0, p1}, Le3/i;->e(Ljava/lang/Class;)Le3/k;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    iget v0, p0, Lt/n;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lt/n;->d:Ljava/lang/Object;

    check-cast v1, La3/b0;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "creator for %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
