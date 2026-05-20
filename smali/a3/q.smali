.class public final La3/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La3/w;


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lc3/b;La3/t2;La3/l2;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La3/w2;

    invoke-direct {v0, p0, p2}, La3/w2;-><init>(La3/q;Lb3/b;)V

    iput-object v0, p0, La3/q;->e:Ljava/lang/Object;

    new-instance v1, La3/v2;

    invoke-direct {v1, v0}, La3/v2;-><init>(Lb3/b;)V

    iput-object v1, p0, La3/q;->b:Ljava/lang/Object;

    iput-object p1, p0, La3/q;->c:Ljava/lang/Object;

    iput-object p2, p0, La3/q;->d:Ljava/lang/Object;

    iput-object p3, p0, La3/q;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ld3/m;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ld3/m;->getPosition()Landroid/arch/lifecycle/h;

    move-result-object v3

    invoke-interface {p1}, Ld3/m;->o()Ld3/m;

    move-result-object v4

    if-nez v4, :cond_0

    return-object p2

    :cond_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, La3/q;->d:Ljava/lang/Object;

    check-cast v3, La3/r;

    invoke-virtual {v3, v4}, La3/r;->b(Ld3/m;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v2, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    iget-object p2, p0, La3/q;->e:Ljava/lang/Object;

    check-cast p2, Lc3/c;

    aput-object p2, p1, v1

    const/4 p2, 0x1

    aput-object v3, p1, p2

    new-instance p2, La3/d;

    const-string v0, "Array length missing or incorrect for %s at %s"

    invoke-direct {p2, v0, p1}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2
.end method

.method public final b(Ld3/m;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, La3/q;->f:Ljava/lang/Object;

    check-cast v0, La3/c;

    invoke-virtual {v0, p1}, La3/c;->e(Ld3/m;)La3/z0;

    move-result-object v0

    check-cast v0, Lh1/a;

    invoke-virtual {v0}, Lh1/a;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Lh1/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, v1}, La3/q;->a(Ld3/m;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method public final c(Ld3/z;Ljava/lang/Object;)V
    .registers 9

    .line 1
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, La3/q;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v2}, Ld3/z;->k(Ljava/lang/String;)Ld3/z;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3
    iget-object v4, p0, La3/q;->f:Ljava/lang/Object;

    check-cast v4, La3/c;

    iget-object v5, p0, La3/q;->b:Ljava/lang/Object;

    check-cast v5, Lc3/c;

    invoke-virtual {v4, v5, v3, v2}, La3/t0;->d(Lc3/c;Ljava/lang/Object;Ld3/z;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 4
    iget-object v4, p0, La3/q;->d:Ljava/lang/Object;

    check-cast v4, La3/r;

    invoke-virtual {v4, v2, v3}, La3/r;->c(Ld3/z;Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final d(Ljava/lang/Class;)La3/z0;
    .registers 4

    iget-object v0, p0, La3/q;->d:Ljava/lang/Object;

    check-cast v0, La3/t2;

    .line 1
    iget-object v0, v0, La3/t2;->e:La3/a1;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v1, La3/a1$a;

    invoke-direct {v1, v0, p1}, La3/a1$a;-><init>(La3/a1;Ljava/lang/Class;)V

    return-object v1
.end method

.method public final e(Ljava/lang/Class;)La3/j2;
    .registers 3

    iget-object v0, p0, La3/q;->d:Ljava/lang/Object;

    check-cast v0, La3/t2;

    invoke-virtual {v0, p1}, La3/t2;->f(Ljava/lang/Class;)La3/j2;

    move-result-object p1

    return-object p1
.end method

.method public final f(Ljava/lang/Class;)La3/k;
    .registers 3

    invoke-virtual {p0, p1}, La3/q;->e(Ljava/lang/Class;)La3/j2;

    move-result-object p1

    new-instance v0, La3/k;

    invoke-direct {v0, p1, p0}, La3/k;-><init>(La3/j2;La3/q;)V

    return-object v0
.end method

.method public final g()Ly1/a;
    .registers 2

    iget-object v0, p0, La3/q;->d:Ljava/lang/Object;

    check-cast v0, La3/t2;

    .line 1
    iget-object v0, v0, La3/t2;->d:Ld3/h;

    .line 2
    iget-object v0, v0, Ld3/h;->c:Ly1/a;

    return-object v0
.end method

.method public final h(Lc3/c;Ljava/lang/Object;)Ljava/lang/Class;
    .registers 3

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {p1}, Lc3/c;->a()Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public final i(Lc3/c;Ljava/lang/Object;Ld3/z;)Z
    .registers 6

    invoke-interface {p3}, Ld3/z;->c()Ld3/t;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p3, p0, La3/q;->c:Ljava/lang/Object;

    check-cast p3, Lc3/b;

    iget-object v1, p0, La3/q;->f:Ljava/lang/Object;

    check-cast v1, La3/l2;

    invoke-interface {p3, p1, p2, v0, v1}, Lc3/b;->c(Lc3/c;Ljava/lang/Object;Ld3/t;Ljava/util/Map;)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, La3/a2;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, p2, v0

    const-string p3, "No attributes for %s"

    invoke-direct {p1, p3, p2}, La3/a2;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method
