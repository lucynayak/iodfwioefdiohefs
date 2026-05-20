.class public final La3/p$b;
.super La3/p$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La3/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(La3/p;La3/y;La3/k;La3/z0;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, La3/p$a;-><init>(La3/p;La3/y;La3/k;La3/z0;)V

    return-void
.end method


# virtual methods
.method public final a(Ld3/m;)Ljava/lang/Object;
    .registers 11

    iget-object v0, p0, La3/p$a;->c:La3/k;

    .line 1
    iget-object v1, v0, La3/k;->e:La3/k2;

    .line 2
    iget-object v2, p0, La3/p$a;->a:La3/p;

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v2, p1, v3, v0}, La3/p;->i(Ld3/m;Ljava/lang/Object;La3/k;)V

    .line 4
    iget-object v0, p0, La3/p$a;->a:La3/p;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-interface {v1}, La3/k2;->f()La3/c1;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1, v3, v2}, La3/p;->f(Ld3/m;Ljava/lang/Object;La3/c1;)Ljava/lang/Object;

    .line 7
    :cond_0
    iget-object v0, p0, La3/p$a;->a:La3/p;

    .line 8
    invoke-virtual {v0, p1, v3, v1}, La3/p;->d(Ld3/m;Ljava/lang/Object;La3/k2;)V

    .line 9
    iget-object v0, p0, La3/p$a;->a:La3/p;

    .line 10
    invoke-virtual {v0, p1, v3, v1}, La3/p;->e(Ld3/m;Ljava/lang/Object;La3/k2;)V

    .line 11
    iget-object p1, p0, La3/p$a;->c:La3/k;

    .line 12
    iget-object p1, p1, La3/k;->b:Lt/n;

    .line 13
    iget-object v0, p0, La3/p$a;->b:La3/y;

    .line 14
    iget-object v1, p1, Lt/n;->e:Ljava/lang/Object;

    check-cast v1, La3/x;

    iget-object v2, p1, Lt/n;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-wide/16 v3, 0x0

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La3/x;

    invoke-interface {v5, v0}, La3/x;->c(La3/y;)D

    move-result-wide v6

    cmpl-double v8, v6, v3

    if-lez v8, :cond_1

    move-object v1, v5

    move-wide v3, v6

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 15
    invoke-interface {v1, v0}, La3/x;->d(La3/y;)Ljava/lang/Object;

    move-result-object p1

    .line 16
    iget-object v0, p0, La3/p$a;->d:La3/z0;

    invoke-interface {v0, p1}, La3/z0;->c(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, La3/p$a;->b:La3/y;

    check-cast v0, La3/m;

    invoke-virtual {v0, p1}, La3/m;->A(Ljava/lang/Object;)V

    return-object p1

    :cond_3
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 17
    iget-object p1, p1, Lt/n;->d:Ljava/lang/Object;

    check-cast p1, La3/b0;

    aput-object p1, v0, v1

    new-instance p1, La3/a2;

    const-string v1, "Constructor not matched for %s"

    invoke-direct {p1, v1, v0}, La3/a2;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method
