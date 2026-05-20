.class public final La3/q2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La3/x;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "La3/w1;",
            ">;"
        }
    .end annotation
.end field

.field public final b:La3/o2;


# direct methods
.method public constructor <init>(La3/o2;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    iget-object v0, p1, La3/o2;->c:La3/u;

    invoke-virtual {v0}, La3/u;->A()Ljava/util/List;

    move-result-object v0

    .line 2
    iput-object v0, p0, La3/q2;->a:Ljava/util/List;

    iput-object p1, p0, La3/q2;->b:La3/o2;

    return-void
.end method


# virtual methods
.method public final b()La3/o2;
    .registers 2

    iget-object v0, p0, La3/q2;->b:La3/o2;

    return-object v0
.end method

.method public final c(La3/y;)D
    .registers 12

    iget-object v0, p0, La3/q2;->b:La3/o2;

    .line 1
    iget-object v1, v0, La3/o2;->b:Ljava/lang/reflect/Constructor;

    .line 2
    new-instance v1, La3/u;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, La3/u;-><init>(I)V

    .line 3
    invoke-virtual {v0}, La3/o2;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La3/w1;

    .line 4
    invoke-interface {v2}, La3/w1;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v3, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_1
    check-cast p1, La3/m;

    invoke-virtual {p1}, La3/m;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 6
    invoke-virtual {v1, v2}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La3/w1;

    .line 7
    iget-object v6, p1, La3/m;->c:La3/m$a;

    invoke-virtual {v6, v2}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La3/e3;

    .line 8
    invoke-virtual {v2}, La3/e3;->n()La3/s;

    move-result-object v6

    if-eqz v5, :cond_3

    .line 9
    iget-object v2, v2, La3/e3;->b:Ljava/lang/Object;

    .line 10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v5}, La3/w1;->a()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v2, v7}, La3/t2;->g(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_3

    return-wide v3

    :cond_3
    invoke-interface {v6}, La3/s;->g()Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v5, :cond_2

    return-wide v3

    .line 11
    :cond_4
    iget-object v0, p0, La3/q2;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    move-wide v5, v1

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, La3/w1;

    invoke-interface {v7}, La3/w1;->getKey()Ljava/lang/Object;

    move-result-object v8

    .line 12
    iget-object v9, p1, La3/m;->c:La3/m$a;

    invoke-virtual {v9, v8}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, La3/e3;

    if-nez v8, :cond_7

    .line 13
    invoke-interface {v7}, La3/w1;->e()Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_3

    :cond_6
    invoke-interface {v7}, La3/w1;->g()Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_3

    :cond_7
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    add-double/2addr v5, v7

    goto :goto_1

    .line 14
    :cond_8
    iget-object p1, p0, La3/q2;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    int-to-double v3, p1

    const-wide v7, 0x408f400000000000L    # 1000.0

    div-double/2addr v3, v7

    cmpl-double p1, v5, v1

    if-lez p1, :cond_9

    iget-object p1, p0, La3/q2;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    int-to-double v0, p1

    div-double/2addr v5, v0

    add-double/2addr v5, v3

    goto :goto_2

    :cond_9
    iget-object p1, p0, La3/q2;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    int-to-double v0, p1

    div-double/2addr v5, v0

    :goto_2
    move-wide v3, v5

    :goto_3
    return-wide v3
.end method

.method public final d(La3/y;)Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, La3/q2;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, La3/q2;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1
    iget-object v2, p0, La3/q2;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La3/w1;

    invoke-interface {v2}, La3/w1;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v3, p1

    check-cast v3, La3/m;

    .line 2
    iget-object v3, v3, La3/m;->c:La3/m$a;

    invoke-virtual {v3, v2}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La3/e3;

    if-eqz v2, :cond_0

    .line 3
    iget-object v2, v2, La3/e3;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 4
    :goto_1
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, La3/q2;->b:La3/o2;

    .line 5
    iget-object v1, p1, La3/o2;->b:Ljava/lang/reflect/Constructor;

    invoke-virtual {v1}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, La3/o2;->b:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_2
    iget-object p1, p1, La3/o2;->b:Ljava/lang/reflect/Constructor;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, La3/q2;->b:La3/o2;

    invoke-virtual {v0}, La3/o2;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
