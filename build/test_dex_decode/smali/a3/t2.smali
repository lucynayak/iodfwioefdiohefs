.class public final La3/t2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb3/b;


# instance fields
.field public final a:La3/r;

.field public final b:La3/r;

.field public final c:Lb3/b;

.field public final d:Ld3/h;

.field public final e:La3/a1;

.field public final f:La3/d1;

.field public final g:La3/r1;

.field public final h:Lz2/e;


# direct methods
.method public constructor <init>(Lb3/b;Le3/i;Ld3/h;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La3/r;

    sget-object v1, Ly2/c;->c:Ly2/c;

    invoke-direct {v0, p0, v1}, La3/r;-><init>(La3/t2;Ly2/c;)V

    iput-object v0, p0, La3/t2;->a:La3/r;

    new-instance v0, Lz2/e;

    invoke-direct {v0, p2}, Lz2/e;-><init>(Le3/i;)V

    iput-object v0, p0, La3/t2;->h:Lz2/e;

    new-instance p2, La3/r1;

    invoke-direct {p2, p0}, La3/r1;-><init>(La3/t2;)V

    iput-object p2, p0, La3/t2;->g:La3/r1;

    new-instance p2, La3/r;

    invoke-direct {p2, p0}, La3/r;-><init>(La3/t2;)V

    iput-object p2, p0, La3/t2;->b:La3/r;

    new-instance p2, La3/d1;

    invoke-direct {p2, p3}, La3/d1;-><init>(Ld3/h;)V

    iput-object p2, p0, La3/t2;->f:La3/d1;

    new-instance p2, La3/a1;

    invoke-direct {p2}, La3/a1;-><init>()V

    iput-object p2, p0, La3/t2;->e:La3/a1;

    iput-object p1, p0, La3/t2;->c:Lb3/b;

    iput-object p3, p0, La3/t2;->d:Ld3/h;

    return-void
.end method

.method public static e(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    const-class p0, Ljava/lang/Double;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    const-class p0, Ljava/lang/Float;

    return-object p0

    :cond_1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    const-class p0, Ljava/lang/Integer;

    return-object p0

    :cond_2
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    const-class p0, Ljava/lang/Long;

    return-object p0

    :cond_3
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    const-class p0, Ljava/lang/Boolean;

    return-object p0

    :cond_4
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    const-class p0, Ljava/lang/Character;

    return-object p0

    :cond_5
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    const-class p0, Ljava/lang/Short;

    return-object p0

    :cond_6
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    const-class p0, Ljava/lang/Byte;

    :cond_7
    :goto_0
    return-object p0
.end method

.method public static g(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, La3/t2;->e(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, La3/t2;->e(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    :cond_1
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La3/t2;->c:Lb3/b;

    invoke-interface {v0, p1}, Lb3/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Class;Ly2/c;)La3/t;
    .locals 0

    if-eqz p2, :cond_0

    iget-object p2, p0, La3/t2;->a:La3/r;

    goto :goto_0

    :cond_0
    iget-object p2, p0, La3/t2;->b:La3/r;

    :goto_0
    invoke-virtual {p2, p1}, La3/r;->f(Ljava/lang/Class;)La3/t;

    move-result-object p1

    return-object p1
.end method

.method public final c(La3/s;Ljava/lang/annotation/Annotation;)La3/c1;
    .locals 2

    iget-object v0, p0, La3/t2;->f:La3/d1;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    new-instance v1, La3/f1;

    invoke-direct {v1, p1, p2}, La3/f1;-><init>(La3/s;Ljava/lang/annotation/Annotation;)V

    .line 2
    invoke-virtual {v0, p1, p2, v1}, La3/d1;->a(La3/s;Ljava/lang/annotation/Annotation;Ljava/lang/Object;)La3/e1;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget p2, p1, La3/e1;->b:I

    if-lez p2, :cond_0

    iget-object p1, p1, La3/e1;->a:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La3/c1;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final d(Ljava/lang/Class;Ly2/c;)La3/t;
    .locals 0

    if-eqz p2, :cond_0

    iget-object p2, p0, La3/t2;->a:La3/r;

    goto :goto_0

    :cond_0
    iget-object p2, p0, La3/t2;->b:La3/r;

    :goto_0
    invoke-virtual {p2, p1}, La3/r;->g(Ljava/lang/Class;)La3/t;

    move-result-object p1

    return-object p1
.end method

.method public final f(Ljava/lang/Class;)La3/j2;
    .locals 4

    iget-object v0, p0, La3/t2;->g:La3/r1;

    .line 1
    iget-object v1, v0, La3/r1;->a:Ljava/lang/Object;

    check-cast v1, Lf3/a;

    invoke-interface {v1, p1}, Lf3/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La3/j2;

    if-nez v1, :cond_4

    iget-object v1, v0, La3/r1;->b:Ljava/lang/Object;

    check-cast v1, La3/t2;

    .line 2
    iget-object v1, v1, La3/t2;->b:La3/r;

    invoke-virtual {v1, p1}, La3/r;->e(Ljava/lang/Class;)La3/b0;

    move-result-object v1

    .line 3
    iget-object v2, v0, La3/r1;->b:Ljava/lang/Object;

    check-cast v2, La3/t2;

    invoke-virtual {v2, p1}, La3/t2;->h(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, La3/d2;

    invoke-direct {v2, v1}, La3/d2;-><init>(La3/b0;)V

    goto :goto_2

    :cond_0
    new-instance v2, La3/u1;

    iget-object v3, v0, La3/r1;->b:Ljava/lang/Object;

    check-cast v3, La3/t2;

    invoke-direct {v2, v1, v3}, La3/u1;-><init>(La3/b0;La3/t2;)V

    .line 4
    iget-object v3, v2, La3/u1;->d:La3/r2;

    .line 5
    iget-boolean v3, v3, La3/r2;->c:Z

    if-eqz v3, :cond_3

    .line 6
    iget-object v3, v0, La3/r1;->b:Ljava/lang/Object;

    check-cast v3, La3/t2;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    const-class v3, Ljava/util/Collection;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const-class v3, Ljava/util/Map;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v3

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-nez v3, :cond_3

    .line 8
    new-instance v2, La3/a0;

    iget-object v3, v0, La3/r1;->b:Ljava/lang/Object;

    check-cast v3, La3/t2;

    invoke-direct {v2, v1, v3}, La3/a0;-><init>(La3/b0;La3/t2;)V

    :cond_3
    :goto_2
    move-object v1, v2

    iget-object v0, v0, La3/r1;->a:Ljava/lang/Object;

    check-cast v0, Lf3/a;

    invoke-interface {v0, p1, v1}, Lf3/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    return-object v1
.end method

.method public final h(Ljava/lang/Class;)Z
    .locals 2

    const-class v0, Ljava/lang/String;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-class v0, Ljava/lang/Float;

    if-eq p1, v0, :cond_2

    const-class v0, Ljava/lang/Double;

    if-eq p1, v0, :cond_2

    const-class v0, Ljava/lang/Long;

    if-eq p1, v0, :cond_2

    const-class v0, Ljava/lang/Integer;

    if-eq p1, v0, :cond_2

    const-class v0, Ljava/lang/Boolean;

    if-eq p1, v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, La3/t2;->h:Lz2/e;

    invoke-virtual {v0, p1}, Lz2/e;->e(Ljava/lang/Class;)Le3/k;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public final i(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, La3/t2;->h:Lz2/e;

    invoke-virtual {v0, p2}, Lz2/e;->e(Ljava/lang/Class;)Le3/k;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Le3/k;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, La3/d;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x5

    const-string v1, "Transform of %s not supported"

    invoke-direct {p1, v1, v0, p2}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    throw p1
.end method
