.class public final La3/b1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:La3/g1;

.field public b:Landroid/support/v4/app/i;

.field public c:La3/b0;

.field public d:La3/g1;

.field public e:Lt/n;

.field public f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "La3/x;",
            ">;"
        }
    .end annotation
.end field

.field public g:La3/j2;

.field public h:La3/g1;


# direct methods
.method public constructor <init>(La3/j2;La3/b0;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La3/b1;->f:Ljava/util/ArrayList;

    new-instance v0, Landroid/support/v4/app/i;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/support/v4/app/i;-><init>(I)V

    iput-object v0, p0, La3/b1;->b:Landroid/support/v4/app/i;

    new-instance v0, La3/g1;

    invoke-direct {v0}, La3/g1;-><init>()V

    iput-object v0, p0, La3/b1;->a:La3/g1;

    new-instance v0, La3/g1;

    invoke-direct {v0}, La3/g1;-><init>()V

    iput-object v0, p0, La3/b1;->d:La3/g1;

    new-instance v0, La3/g1;

    invoke-direct {v0}, La3/g1;-><init>()V

    iput-object v0, p0, La3/b1;->h:La3/g1;

    iput-object p1, p0, La3/b1;->g:La3/j2;

    iput-object p2, p0, La3/b1;->c:La3/b0;

    return-void
.end method


# virtual methods
.method public final a(La3/c1;)V
    .locals 1

    invoke-interface {p1}, La3/c1;->isAttribute()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, La3/b1;->a:La3/g1;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, La3/c1;->isText()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, La3/b1;->h:La3/g1;

    goto :goto_0

    :cond_1
    iget-object v0, p0, La3/b1;->d:La3/g1;

    :goto_0
    invoke-virtual {p0, p1, v0}, La3/b1;->b(La3/c1;La3/g1;)V

    return-void
.end method

.method public final b(La3/c1;La3/g1;)V
    .locals 3

    invoke-interface {p1}, La3/c1;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, La3/c1;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2, v0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La3/c1;

    invoke-interface {v2}, La3/c1;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2, v0}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    invoke-virtual {p2, v1, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final c(La3/w1;)La3/c1;
    .locals 1

    invoke-interface {p1}, La3/w1;->isAttribute()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, La3/b1;->a:La3/g1;

    :goto_0
    invoke-virtual {p0, p1, v0}, La3/b1;->d(La3/w1;La3/g1;)La3/c1;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {p1}, La3/w1;->isText()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, La3/b1;->h:La3/g1;

    goto :goto_0

    :cond_1
    iget-object v0, p0, La3/b1;->d:La3/g1;

    goto :goto_0
.end method

.method public final d(La3/w1;La3/g1;)La3/c1;
    .locals 1

    invoke-interface {p1}, La3/w1;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, La3/w1;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La3/c1;

    if-nez p1, :cond_0

    invoke-virtual {p2, v0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La3/c1;

    :cond_0
    return-object p1
.end method

.method public final e(La3/g1;)V
    .locals 2

    invoke-virtual {p1}, La3/g1;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La3/c1;

    if-eqz v0, :cond_0

    invoke-interface {v0}, La3/c1;->n()La3/s;

    move-result-object v1

    invoke-interface {v1}, La3/s;->g()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const/4 v0, 0x1

    iget-object v1, p0, La3/b1;->c:La3/b0;

    aput-object v1, p1, v0

    new-instance v0, La3/d;

    const-string v1, "Default constructor can not accept read only %s in %s"

    invoke-direct {v0, v1, p1}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_2
    return-void
.end method

.method public final f(La3/g1;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La3/g1;",
            "Ljava/util/List<",
            "La3/x;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, La3/g1;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La3/c1;

    if-eqz v0, :cond_0

    .line 1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La3/x;

    invoke-interface {v2}, La3/x;->b()La3/o2;

    move-result-object v2

    invoke-interface {v0}, La3/c1;->n()La3/s;

    move-result-object v3

    invoke-interface {v0}, La3/c1;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, La3/s;->g()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2
    iget-object v2, v2, La3/o2;->c:La3/u;

    invoke-virtual {v2, v4}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La3/w1;

    if-nez v2, :cond_1

    .line 3
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 4
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    iget-object v0, p0, La3/b1;->c:La3/b0;

    aput-object v0, p1, p2

    new-instance p2, La3/d;

    const-string v0, "No constructor accepts all read only values in %s"

    invoke-direct {p2, v0, p1}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2
.end method
