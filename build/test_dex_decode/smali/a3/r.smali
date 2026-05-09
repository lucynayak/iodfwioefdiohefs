.class public final La3/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La3/w;


# instance fields
.field public final synthetic b:I

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(La3/q;Lc3/c;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, La3/r;->b:I

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, La3/r;-><init>(La3/q;Lc3/c;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(La3/q;Lc3/c;Ljava/lang/String;)V
    .locals 1

    const/4 p3, 0x1

    iput p3, p0, La3/r;->b:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La3/l;

    invoke-direct {v0, p1, p2, p3}, La3/l;-><init>(La3/q;Lc3/c;I)V

    iput-object v0, p0, La3/r;->f:Ljava/lang/Object;

    invoke-interface {p2}, Lc3/c;->a()Ljava/lang/Class;

    move-result-object p3

    iput-object p3, p0, La3/r;->e:Ljava/lang/Object;

    iput-object p1, p0, La3/r;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, La3/r;->d:Ljava/lang/Object;

    iput-object p2, p0, La3/r;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(La3/t2;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, La3/r;->b:I

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, La3/r;-><init>(La3/t2;Ly2/c;)V

    return-void
.end method

.method public constructor <init>(La3/t2;Ly2/c;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, La3/r;->b:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lf3/b;

    invoke-direct {v0}, Lf3/b;-><init>()V

    iput-object v0, p0, La3/r;->e:Ljava/lang/Object;

    new-instance v0, Lf3/b;

    invoke-direct {v0}, Lf3/b;-><init>()V

    iput-object v0, p0, La3/r;->d:Ljava/lang/Object;

    new-instance v0, Lf3/b;

    invoke-direct {v0}, Lf3/b;-><init>()V

    iput-object v0, p0, La3/r;->c:Ljava/lang/Object;

    iput-object p2, p0, La3/r;->f:Ljava/lang/Object;

    iput-object p1, p0, La3/r;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Constructor;La3/u;La3/t2;)V
    .locals 5

    const/4 v0, 0x3

    iput v0, p0, La3/r;->b:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La3/p2;

    invoke-direct {v0, p1}, La3/p2;-><init>(Ljava/lang/reflect/Constructor;)V

    iput-object v0, p0, La3/r;->c:Ljava/lang/Object;

    new-instance v0, La3/x1;

    invoke-direct {v0, p3}, La3/x1;-><init>(La3/t2;)V

    iput-object v0, p0, La3/r;->e:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p3

    iput-object p3, p0, La3/r;->g:Ljava/lang/Object;

    iput-object p1, p0, La3/r;->d:Ljava/lang/Object;

    iput-object p2, p0, La3/r;->f:Ljava/lang/Object;

    .line 6
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_0
    array-length v0, p1

    if-ge p3, v0, :cond_c

    aget-object v0, p1, p3

    .line 7
    iget-object v0, p0, La3/r;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1
    aget-object v2, v0, p3

    array-length v2, v2

    if-ge v1, v2, :cond_b

    aget-object v2, v0, p3

    aget-object v2, v2, v1

    .line 8
    instance-of v3, v2, Ly2/a;

    if-eqz v3, :cond_0

    goto :goto_3

    :cond_0
    instance-of v3, v2, Ly2/d;

    if-eqz v3, :cond_1

    goto :goto_3

    :cond_1
    instance-of v3, v2, Ly2/f;

    if-eqz v3, :cond_2

    goto :goto_3

    :cond_2
    instance-of v3, v2, Ly2/e;

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    instance-of v3, v2, Ly2/h;

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    instance-of v3, v2, Ly2/g;

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    instance-of v3, v2, Ly2/i;

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    instance-of v3, v2, Ly2/j;

    if-eqz v3, :cond_7

    :goto_2
    invoke-virtual {p0, v2, p3}, La3/r;->k(Ljava/lang/annotation/Annotation;I)Ljava/util/List;

    move-result-object v2

    goto :goto_4

    :cond_7
    instance-of v3, v2, Ly2/p;

    if-eqz v3, :cond_8

    :goto_3
    invoke-virtual {p0, v2, p3}, La3/r;->d(Ljava/lang/annotation/Annotation;I)Ljava/util/List;

    move-result-object v2

    goto :goto_4

    :cond_8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 9
    :goto_4
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La3/w1;

    iget-object v4, p0, La3/r;->c:Ljava/lang/Object;

    check-cast v4, La3/p2;

    .line 10
    iget-object v4, v4, La3/p2;->b:La3/p2$b;

    .line 11
    invoke-virtual {v4, p3}, La3/p2$b;->A(I)La3/p2$a;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v4, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_b
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_c
    return-void
.end method


# virtual methods
.method public final a(Ld3/m;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, La3/r;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 1
    :pswitch_0
    iget-object v0, p0, La3/r;->d:Ljava/lang/Object;

    check-cast v0, La3/h1;

    invoke-virtual {v0, p1}, La3/h1;->e(Ld3/m;)La3/z0;

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

    invoke-virtual {p0, p1, p2}, La3/r;->h(Ld3/m;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    move-object p1, p2

    :goto_1
    return-object p1

    :goto_2
    if-nez p2, :cond_2

    .line 2
    invoke-virtual {p0, p1}, La3/r;->b(Ld3/m;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    iget-object v0, p0, La3/r;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    aput-object v0, p1, p2

    const/4 p2, 0x1

    iget-object v0, p0, La3/r;->g:Ljava/lang/Object;

    check-cast v0, Lc3/c;

    aput-object v0, p1, p2

    new-instance p2, La3/a2;

    const-string v0, "Can not read existing %s for %s"

    invoke-direct {p2, v0, p1}, La3/a2;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ld3/m;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, La3/r;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, La3/r;->d:Ljava/lang/Object;

    check-cast v0, La3/h1;

    invoke-virtual {v0, p1}, La3/h1;->e(Ld3/m;)La3/z0;

    move-result-object v0

    invoke-interface {v0}, La3/z0;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, La3/z0;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, v1}, La3/r;->h(Ld3/m;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :cond_0
    return-object v1

    .line 2
    :goto_0
    invoke-interface {p1}, Ld3/m;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, La3/r;->f:Ljava/lang/Object;

    check-cast v0, La3/l;

    invoke-virtual {v0, p1}, La3/l;->f(Ld3/m;)La3/z0;

    move-result-object v0

    invoke-interface {v0}, La3/z0;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    iget-object v1, p0, La3/r;->e:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {p0, p1, v1}, La3/r;->i(Ld3/m;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, La3/z0;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 5
    :cond_1
    invoke-interface {v0}, La3/z0;->d()Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    .line 6
    :cond_2
    iget-object v0, p0, La3/r;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, La3/r;->i(Ld3/m;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ld3/z;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, La3/r;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    check-cast p2, Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    iget-object p1, p0, La3/r;->c:Ljava/lang/Object;

    invoke-static {p1}, La/b;->f(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1

    .line 2
    :goto_0
    iget-object v0, p0, La3/r;->f:Ljava/lang/Object;

    check-cast v0, La3/l;

    invoke-virtual {v0, p2}, La3/l;->g(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p1, p2}, Ld3/z;->f(Ljava/lang/String;)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Ljava/lang/annotation/Annotation;I)Ljava/util/List;
    .locals 3

    iget-object v0, p0, La3/r;->e:Ljava/lang/Object;

    check-cast v0, La3/x1;

    iget-object v1, p0, La3/r;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/reflect/Constructor;

    const/4 v2, 0x0

    .line 1
    invoke-virtual {v0, v1, p1, v2, p2}, La3/x1;->a(Ljava/lang/reflect/Constructor;Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;I)La3/w1;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, La3/r;->j(La3/w1;)V

    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/lang/Class;)La3/b0;
    .locals 2

    iget-object v0, p0, La3/r;->c:Ljava/lang/Object;

    check-cast v0, Lf3/a;

    invoke-interface {v0, p1}, Lf3/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La3/b0;

    if-nez v0, :cond_0

    new-instance v0, La3/c0;

    iget-object v1, p0, La3/r;->f:Ljava/lang/Object;

    check-cast v1, Ly2/c;

    invoke-direct {v0, p1, v1}, La3/c0;-><init>(Ljava/lang/Class;Ly2/c;)V

    iget-object v1, p0, La3/r;->c:Ljava/lang/Object;

    check-cast v1, Lf3/a;

    invoke-interface {v1, p1, v0}, Lf3/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public final f(Ljava/lang/Class;)La3/t;
    .locals 3

    iget-object v0, p0, La3/r;->d:Ljava/lang/Object;

    check-cast v0, Lf3/a;

    invoke-interface {v0, p1}, Lf3/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La3/t;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, La3/r;->e(Ljava/lang/Class;)La3/b0;

    move-result-object v0

    new-instance v1, La3/w0;

    iget-object v2, p0, La3/r;->g:Ljava/lang/Object;

    check-cast v2, La3/t2;

    invoke-direct {v1, v0, v2}, La3/w0;-><init>(La3/b0;La3/t2;)V

    iget-object v0, p0, La3/r;->d:Ljava/lang/Object;

    check-cast v0, Lf3/a;

    invoke-interface {v0, p1, v1}, Lf3/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method public final g(Ljava/lang/Class;)La3/t;
    .locals 3

    iget-object v0, p0, La3/r;->e:Ljava/lang/Object;

    check-cast v0, Lf3/a;

    invoke-interface {v0, p1}, Lf3/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La3/t;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, La3/r;->e(Ljava/lang/Class;)La3/b0;

    move-result-object v0

    new-instance v1, La3/l1;

    iget-object v2, p0, La3/r;->g:Ljava/lang/Object;

    check-cast v2, La3/t2;

    invoke-direct {v1, v0, v2}, La3/l1;-><init>(La3/b0;La3/t2;)V

    iget-object v0, p0, La3/r;->e:Ljava/lang/Object;

    check-cast v0, Lf3/a;

    invoke-interface {v0, p1, v1}, Lf3/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method public final h(Ld3/m;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ljava/util/Map;

    :goto_0
    invoke-interface {p1}, Ld3/m;->o()Ld3/m;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    iget-object v1, p0, La3/r;->e:Ljava/lang/Object;

    check-cast v1, La3/w;

    invoke-interface {v1, v0}, La3/w;->b(Ld3/m;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, La3/r;->f:Ljava/lang/Object;

    check-cast v2, La3/w;

    invoke-interface {v2, v0}, La3/w;->b(Ld3/m;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final i(Ld3/m;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3

    invoke-interface {p1}, Ld3/q;->getValue()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, La3/r;->d:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, La3/r;->d:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 1
    :cond_1
    iget-object v0, p0, La3/r;->c:Ljava/lang/Object;

    check-cast v0, La3/q;

    .line 2
    iget-object v0, v0, La3/q;->b:Ljava/lang/Object;

    check-cast v0, La3/v2;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x24

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_2

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v1, v0, La3/v2;->d:La3/u2;

    invoke-virtual {v1, p1}, La3/u2;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, La3/v2;->a()V

    iget-object p1, v0, La3/v2;->e:La3/u2;

    invoke-virtual {p1}, La3/u2;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v1, v0, La3/v2;->b:La3/u2;

    .line 5
    iput v2, v1, La3/u2;->b:I

    .line 6
    iget-object v1, v0, La3/v2;->e:La3/u2;

    .line 7
    iput v2, v1, La3/u2;->b:I

    .line 8
    iget-object v1, v0, La3/v2;->d:La3/u2;

    .line 9
    iput v2, v1, La3/u2;->b:I

    .line 10
    iput v2, v0, La3/v2;->c:I

    .line 11
    :goto_0
    iget-object v0, p0, La3/r;->f:Ljava/lang/Object;

    check-cast v0, La3/l;

    .line 12
    iget-object v0, v0, La3/t0;->c:La3/t2;

    .line 13
    iget-object v0, v0, La3/t2;->h:Lz2/e;

    .line 14
    invoke-virtual {v0, p2}, Lz2/e;->e(Ljava/lang/Class;)Le3/k;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Le3/k;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p1, La3/d;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v2

    const/4 p2, 0x5

    const-string v1, "Transform of %s not supported"

    invoke-direct {p1, v1, v0, p2}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    throw p1

    :catchall_0
    move-exception p1

    .line 15
    iget-object p2, v0, La3/v2;->b:La3/u2;

    .line 16
    iput v2, p2, La3/u2;->b:I

    .line 17
    iget-object p2, v0, La3/v2;->e:La3/u2;

    .line 18
    iput v2, p2, La3/u2;->b:I

    .line 19
    iget-object p2, v0, La3/v2;->d:La3/u2;

    .line 20
    iput v2, p2, La3/u2;->b:I

    .line 21
    iput v2, v0, La3/v2;->c:I

    .line 22
    throw p1
.end method

.method public final j(La3/w1;)V
    .locals 3

    invoke-interface {p1}, La3/w1;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, La3/w1;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, La3/r;->f:Ljava/lang/Object;

    check-cast v2, La3/u;

    invoke-virtual {v2, v1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1, v1}, La3/r;->l(La3/w1;Ljava/lang/Object;)V

    :cond_0
    iget-object v2, p0, La3/r;->f:Ljava/lang/Object;

    check-cast v2, La3/u;

    invoke-virtual {v2, v0}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1, v0}, La3/r;->l(La3/w1;Ljava/lang/Object;)V

    :cond_1
    iget-object v2, p0, La3/r;->f:Ljava/lang/Object;

    check-cast v2, La3/u;

    invoke-virtual {v2, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, La3/r;->f:Ljava/lang/Object;

    check-cast v0, La3/u;

    invoke-virtual {v0, v1, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final k(Ljava/lang/annotation/Annotation;I)Ljava/util/List;
    .locals 11

    iget-object v0, p0, La3/r;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 1
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    .line 2
    new-instance v0, La3/u;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, La3/u;-><init>(I)V

    .line 3
    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ne v3, v1, :cond_2

    aget-object v2, v2, v6

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/annotation/Annotation;

    .line 4
    array-length v3, v2

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v3, :cond_1

    aget-object v8, v2, v7

    iget-object v9, p0, La3/r;->e:Ljava/lang/Object;

    check-cast v9, La3/x1;

    iget-object v10, p0, La3/r;->d:Ljava/lang/Object;

    check-cast v10, Ljava/lang/reflect/Constructor;

    invoke-virtual {v9, v10, p1, v8, p2}, La3/x1;->a(Ljava/lang/reflect/Constructor;Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;I)La3/w1;

    move-result-object v8

    invoke-interface {v8}, La3/w1;->b()Ljava/lang/String;

    move-result-object v9

    .line 5
    invoke-virtual {v0, v9}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 6
    invoke-virtual {v0, v9, v8}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p0, v8}, La3/r;->j(La3/w1;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    aput-object v9, p2, v6

    aput-object p1, p2, v1

    iget-object p1, p0, La3/r;->g:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Class;

    aput-object p1, p2, v5

    new-instance p1, La3/d;

    const-string v0, "Annotation name \'%s\' used more than once in %s for %s"

    invoke-direct {p1, v0, p2, v4}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    throw p1

    .line 8
    :cond_1
    invoke-virtual {v0}, La3/u;->A()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_2
    new-array p2, v5, [Ljava/lang/Object;

    aput-object p1, p2, v6

    .line 9
    iget-object p1, p0, La3/r;->g:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Class;

    aput-object p1, p2, v1

    new-instance p1, La3/d;

    const-string v0, "Annotation \'%s\' is not a valid union for %s"

    invoke-direct {p1, v0, p2, v4}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    throw p1
.end method

.method public final l(La3/w1;Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, La3/r;->f:Ljava/lang/Object;

    check-cast v0, La3/u;

    invoke-virtual {v0, p2}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, La3/w1;

    invoke-interface {p1}, La3/w1;->isText()Z

    move-result v0

    invoke-interface {p2}, La3/w1;->isText()Z

    move-result v1

    if-eq v0, v1, :cond_2

    invoke-interface {p1}, La3/w1;->c()Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-interface {p2}, La3/w1;->c()Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-interface {p1}, La3/w1;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v0, :cond_1

    invoke-interface {p2}, La3/w1;->a()Ljava/lang/Class;

    move-result-object p2

    invoke-interface {p1}, La3/w1;->a()Ljava/lang/Class;

    move-result-object p1

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, v4, [Ljava/lang/Object;

    aput-object v2, p1, v3

    iget-object p2, p0, La3/r;->g:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Class;

    aput-object p2, p1, v1

    new-instance p2, La3/d;

    const-string v0, "Parameter types do not match for \'%s\' in %s"

    invoke-direct {p2, v0, p1}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2

    :cond_1
    new-array p1, v4, [Ljava/lang/Object;

    aput-object v2, p1, v3

    iget-object p2, p0, La3/r;->g:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Class;

    aput-object p2, p1, v1

    new-instance p2, La3/d;

    const-string v0, "Annotations do not match for \'%s\' in %s"

    invoke-direct {p2, v0, p1}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2

    :cond_2
    :goto_0
    return-void
.end method
