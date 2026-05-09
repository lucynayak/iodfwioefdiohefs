.class public final La3/b3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc3/d;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(La3/q;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, La3/q;->g()Ly1/a;

    move-result-object v0

    iput-object v0, p0, La3/b3;->b:Ljava/lang/Object;

    iput-object p1, p0, La3/b3;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lc3/d;Ljava/lang/Class;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La3/b3;->b:Ljava/lang/Object;

    iput-object p2, p0, La3/b3;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .registers 2

    iget-object v0, p0, La3/b3;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public final b()Z
    .registers 2

    iget-object v0, p0, La3/b3;->b:Ljava/lang/Object;

    check-cast v0, Lc3/d;

    invoke-interface {v0}, Lc3/d;->b()Z

    move-result v0

    return v0
.end method

.method public final c(Ljava/lang/Class;)La3/p;
    .registers 5

    .line 1
    new-instance v0, Landroid/arch/lifecycle/h;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Landroid/arch/lifecycle/h;-><init>(Ljava/lang/Object;I)V

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, La3/p;

    iget-object v1, p0, La3/b3;->a:Ljava/lang/Object;

    check-cast v1, La3/q;

    const/4 v2, 0x0

    .line 3
    invoke-direct {p1, v1, v0, v2}, La3/p;-><init>(La3/q;Lc3/c;Ljava/lang/Class;)V

    return-object p1

    .line 4
    :cond_0
    new-instance p1, La3/i2;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p1, v0}, La3/i2;-><init>([Ljava/lang/Object;)V

    throw p1
.end method

.method public final d(Ljava/lang/Class;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, La3/b3;->a:Ljava/lang/Object;

    check-cast v0, La3/q;

    .line 1
    iget-object v0, v0, La3/q;->d:Ljava/lang/Object;

    check-cast v0, La3/t2;

    .line 2
    invoke-virtual {v0, p1}, La3/t2;->f(Ljava/lang/Class;)La3/j2;

    move-result-object v0

    invoke-interface {v0}, La3/j2;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ld1/a;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    :goto_0
    iget-object p1, p0, La3/b3;->b:Ljava/lang/Object;

    check-cast p1, Ly1/a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final e(Ld3/m;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p2}, La3/b3;->c(Ljava/lang/Class;)La3/p;

    move-result-object p2

    invoke-virtual {p2, p1}, La3/p;->b(Ld3/m;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p0, p2}, La3/b3;->d(Ljava/lang/Class;)Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final f(Ld3/z;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V
    .registers 7

    invoke-interface {p1, p4}, Ld3/z;->k(Ljava/lang/String;)Ld3/z;

    move-result-object p1

    .line 1
    new-instance p4, Landroid/arch/lifecycle/h;

    const/4 v0, 0x3

    invoke-direct {p4, p3, v0}, Landroid/arch/lifecycle/h;-><init>(Ljava/lang/Object;I)V

    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    .line 3
    iget-object v0, p0, La3/b3;->a:Ljava/lang/Object;

    check-cast v0, La3/q;

    .line 4
    invoke-virtual {v0, p3}, La3/q;->e(Ljava/lang/Class;)La3/j2;

    move-result-object v0

    invoke-interface {v0}, La3/j2;->h()La3/r1;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, p1, v1}, La3/r1;->b(Ld3/z;La3/r1;)V

    .line 6
    :cond_0
    iget-object v0, p0, La3/b3;->a:Ljava/lang/Object;

    check-cast v0, La3/q;

    invoke-virtual {v0, p4, p2, p1}, La3/q;->i(Lc3/c;Ljava/lang/Object;Ld3/z;)Z

    move-result p4

    if-nez p4, :cond_1

    invoke-virtual {p0, p3}, La3/b3;->c(Ljava/lang/Class;)La3/p;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, La3/p;->c(Ld3/z;Ljava/lang/Object;)V

    :cond_1
    invoke-interface {p1}, Ld3/z;->h()V

    return-void
.end method

.method public final getValue()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, La3/b3;->b:Ljava/lang/Object;

    check-cast v0, Lc3/d;

    invoke-interface {v0}, Lc3/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final setValue(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, La3/b3;->b:Ljava/lang/Object;

    check-cast v0, Lc3/d;

    invoke-interface {v0, p1}, Lc3/d;->setValue(Ljava/lang/Object;)V

    return-void
.end method
