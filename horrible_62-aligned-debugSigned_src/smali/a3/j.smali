.class public final La3/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:La3/x0;

.field public b:La3/x0;

.field public c:La3/r1;

.field public d:Ly2/m;

.field public e:La3/x0;

.field public f:La3/x0;

.field public g:La3/x0;

.field public h:Ly2/n;

.field public i:Lt/n;

.field public j:La3/t2;

.field public k:La3/x0;


# direct methods
.method public constructor <init>(La3/b0;La3/t2;)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lt/n;

    invoke-direct {v0, p1, p2}, Lt/n;-><init>(La3/b0;La3/t2;)V

    iput-object v0, p0, La3/j;->i:Lt/n;

    new-instance v0, La3/r1;

    invoke-direct {v0}, La3/r1;-><init>()V

    iput-object v0, p0, La3/j;->c:La3/r1;

    iput-object p2, p0, La3/j;->j:La3/t2;

    .line 1
    invoke-interface {p1}, La3/b0;->j()Ly2/c;

    move-result-object p2

    invoke-interface {p1}, La3/b0;->a()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_d

    iget-object v1, p0, La3/j;->j:La3/t2;

    if-eqz p2, :cond_0

    .line 2
    iget-object v1, v1, La3/t2;->a:La3/r;

    goto :goto_1

    :cond_0
    iget-object v1, v1, La3/t2;->b:La3/r;

    :goto_1
    invoke-virtual {v1, v0}, La3/r;->e(Ljava/lang/Class;)La3/b0;

    move-result-object v0

    .line 3
    invoke-interface {v0}, La3/b0;->r()Ly2/l;

    move-result-object v1

    invoke-interface {v0}, La3/b0;->s()Ly2/k;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, La3/j;->c:La3/r1;

    invoke-virtual {v3, v2}, La3/r1;->a(Ly2/k;)V

    :cond_1
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ly2/l;->value()[Ly2/k;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    iget-object v6, p0, La3/j;->c:La3/r1;

    invoke-virtual {v6, v5}, La3/r1;->a(Ly2/k;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 4
    :cond_2
    invoke-interface {v0}, La3/b0;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La3/j1;

    .line 5
    iget-object v4, v3, La3/j1;->a:[Ljava/lang/annotation/Annotation;

    .line 6
    iget-object v3, v3, La3/j1;->b:Ljava/lang/reflect/Method;

    .line 7
    array-length v5, v4

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_3

    aget-object v7, v4, v6

    instance-of v8, v7, La3/n;

    if-eqz v8, :cond_4

    .line 8
    iget-object v8, p0, La3/j;->a:La3/x0;

    if-nez v8, :cond_4

    invoke-virtual {p0, v3}, La3/j;->a(Ljava/lang/reflect/Method;)La3/x0;

    move-result-object v8

    iput-object v8, p0, La3/j;->a:La3/x0;

    .line 9
    :cond_4
    instance-of v8, v7, La3/d3;

    if-eqz v8, :cond_5

    .line 10
    iget-object v8, p0, La3/j;->k:La3/x0;

    if-nez v8, :cond_5

    invoke-virtual {p0, v3}, La3/j;->a(Ljava/lang/reflect/Method;)La3/x0;

    move-result-object v8

    iput-object v8, p0, La3/j;->k:La3/x0;

    .line 11
    :cond_5
    instance-of v8, v7, La3/z1;

    if-eqz v8, :cond_6

    .line 12
    iget-object v8, p0, La3/j;->e:La3/x0;

    if-nez v8, :cond_6

    invoke-virtual {p0, v3}, La3/j;->a(Ljava/lang/reflect/Method;)La3/x0;

    move-result-object v8

    iput-object v8, p0, La3/j;->e:La3/x0;

    .line 13
    :cond_6
    instance-of v8, v7, La3/o;

    if-eqz v8, :cond_7

    .line 14
    iget-object v8, p0, La3/j;->b:La3/x0;

    if-nez v8, :cond_7

    invoke-virtual {p0, v3}, La3/j;->a(Ljava/lang/reflect/Method;)La3/x0;

    move-result-object v8

    iput-object v8, p0, La3/j;->b:La3/x0;

    .line 15
    :cond_7
    instance-of v8, v7, La3/f2;

    if-eqz v8, :cond_8

    .line 16
    iget-object v8, p0, La3/j;->f:La3/x0;

    if-nez v8, :cond_8

    invoke-virtual {p0, v3}, La3/j;->a(Ljava/lang/reflect/Method;)La3/x0;

    move-result-object v8

    iput-object v8, p0, La3/j;->f:La3/x0;

    .line 17
    :cond_8
    instance-of v7, v7, La3/g2;

    if-eqz v7, :cond_9

    .line 18
    iget-object v7, p0, La3/j;->g:La3/x0;

    if-nez v7, :cond_9

    invoke-virtual {p0, v3}, La3/j;->a(Ljava/lang/reflect/Method;)La3/x0;

    move-result-object v7

    iput-object v7, p0, La3/j;->g:La3/x0;

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 19
    :cond_a
    iget-object v1, p0, La3/j;->h:Ly2/n;

    if-nez v1, :cond_b

    invoke-interface {v0}, La3/b0;->k()Ly2/n;

    move-result-object v1

    iput-object v1, p0, La3/j;->h:Ly2/n;

    :cond_b
    iget-object v1, p0, La3/j;->d:Ly2/m;

    if-nez v1, :cond_c

    invoke-interface {v0}, La3/b0;->getOrder()Ly2/m;

    move-result-object v1

    iput-object v1, p0, La3/j;->d:Ly2/m;

    .line 20
    :cond_c
    invoke-interface {v0}, La3/b0;->q()Ljava/lang/Class;

    move-result-object v0

    goto/16 :goto_0

    .line 21
    :cond_d
    invoke-interface {p1}, La3/b0;->s()Ly2/k;

    move-result-object p1

    if-eqz p1, :cond_e

    iget-object p2, p0, La3/j;->c:La3/r1;

    .line 22
    invoke-virtual {p2, p1}, La3/r1;->a(Ly2/k;)V

    iput-object p1, p2, La3/r1;->a:Ljava/lang/Object;

    :cond_e
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/reflect/Method;)La3/x0;
    .registers 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const-class v1, Ljava/util/Map;

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_1
    new-instance v0, La3/x0;

    invoke-direct {v0, p1, v2}, La3/x0;-><init>(Ljava/lang/reflect/Method;Z)V

    return-object v0
.end method
