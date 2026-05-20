.class public final Lz2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc3/b;
.implements Lc3/d;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 1
    new-instance p1, Lz2/e;

    invoke-direct {p1}, Lz2/e;-><init>()V

    invoke-direct {p0, p1}, Lz2/a;-><init>(Lc3/b;)V

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/arch/lifecycle/h;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Landroid/arch/lifecycle/h;-><init>(I)V

    iput-object p1, p0, Lz2/a;->b:Ljava/lang/Object;

    new-instance p1, Lz2/g;

    invoke-direct {p1}, Lz2/g;-><init>()V

    iput-object p1, p0, Lz2/a;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lc3/b;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz2/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lz2/a;-><init>(I)V

    iput-object v0, p0, Lz2/a;->a:Ljava/lang/Object;

    iput-object p1, p0, Lz2/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Class;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/a;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .registers 2

    iget-object v0, p0, Lz2/a;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public final b()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final c(Lc3/c;Ljava/lang/Object;Ld3/t;Ljava/util/Map;)Z
    .registers 6

    iget-object v0, p0, Lz2/a;->b:Ljava/lang/Object;

    check-cast v0, Lc3/b;

    invoke-interface {v0, p1, p2, p3, p4}, Lc3/b;->c(Lc3/c;Ljava/lang/Object;Ld3/t;Ljava/util/Map;)Z

    move-result p4

    if-nez p4, :cond_3

    .line 1
    iget-object p4, p0, Lz2/a;->a:Ljava/lang/Object;

    check-cast p4, Lz2/a;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface {p1}, Lc3/c;->a()Ljava/lang/Class;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 3
    :cond_0
    invoke-virtual {p4, p1, v0}, Lz2/a;->f(Lc3/c;Ljava/lang/Class;)Lz2/b;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p4, Lz2/a;->b:Ljava/lang/Object;

    check-cast p2, Landroid/arch/lifecycle/h;

    invoke-virtual {p2, p1}, Landroid/arch/lifecycle/h;->i(Lz2/b;)Lz2/d;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 4
    :goto_0
    check-cast p3, Ld3/n;

    invoke-virtual {p3}, Ld3/n;->A()Ld3/q;

    move-result-object p2

    check-cast p2, Ld3/z;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lz2/d;->a()V

    const/4 p4, 0x1

    goto :goto_1

    :cond_2
    const/4 p4, 0x0

    :cond_3
    :goto_1
    return p4
.end method

.method public final d(Lc3/c;Ld3/t;Ljava/util/Map;)Lc3/d;
    .registers 6

    iget-object v0, p0, Lz2/a;->b:Ljava/lang/Object;

    check-cast v0, Lc3/b;

    invoke-interface {v0, p1, p2, p3}, Lc3/b;->d(Lc3/c;Ld3/t;Ljava/util/Map;)Lc3/d;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 1
    invoke-interface {p3}, Lc3/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object p3

    .line 2
    :cond_1
    iget-object v0, p0, Lz2/a;->a:Ljava/lang/Object;

    check-cast v0, Lz2/a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-interface {p1}, Lc3/c;->a()Ljava/lang/Class;

    move-result-object v1

    if-eqz p3, :cond_2

    invoke-interface {p3}, Lc3/d;->a()Ljava/lang/Class;

    move-result-object v1

    .line 4
    :cond_2
    invoke-virtual {v0, p1, v1}, Lz2/a;->f(Lc3/c;Ljava/lang/Class;)Lz2/b;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v0, v0, Lz2/a;->b:Ljava/lang/Object;

    check-cast v0, Landroid/arch/lifecycle/h;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/h;->i(Lz2/b;)Lz2/d;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 5
    :goto_1
    check-cast p2, Ld3/n;

    invoke-virtual {p2}, Ld3/n;->A()Ld3/q;

    move-result-object p2

    check-cast p2, Ld3/m;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lz2/d;->read()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1}, Lc3/c;->a()Ljava/lang/Class;

    move-result-object p1

    if-eqz p3, :cond_4

    invoke-interface {p3, p2}, Lc3/d;->setValue(Ljava/lang/Object;)V

    :cond_4
    new-instance v0, Lz2/e;

    invoke-direct {v0, p3, p2, p1}, Lz2/e;-><init>(Lc3/d;Ljava/lang/Object;Ljava/lang/Class;)V

    move-object p3, v0

    :cond_5
    return-object p3
.end method

.method public final e(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 5

    iget-object v0, p0, Lz2/a;->a:Ljava/lang/Object;

    check-cast v0, Lz2/g;

    .line 1
    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2/f;

    if-nez v1, :cond_0

    new-instance v1, Lz2/g$a;

    invoke-direct {v1, p1}, Lz2/g$a;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :cond_0
    invoke-interface {v1, p2}, Lz2/f;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    return-object p1
.end method

.method public final f(Lc3/c;Ljava/lang/Class;)Lz2/b;
    .registers 7

    .line 1
    const-class v0, Lz2/b;

    invoke-interface {p1, v0}, Lc3/c;->b(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lz2/b;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const-class v3, Ly2/d;

    invoke-interface {p1, v3}, Lc3/c;->b(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Ly2/d;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lz2/c;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "Element annotation required for %s"

    invoke-direct {p2, p1, v0}, Lz2/c;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 2
    const-class p1, Lz2/b;

    invoke-virtual {p0, p2, p1}, Lz2/a;->e(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lz2/b;

    if-eqz v0, :cond_3

    const-class p1, Ly2/n;

    invoke-virtual {p0, p2, p1}, Lz2/a;->e(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Ly2/n;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Lz2/c;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    const-string p2, "Root annotation required for %s"

    invoke-direct {p1, p2, v0}, Lz2/c;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_3
    :goto_1
    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lz2/a;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final setValue(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lz2/a;->b:Ljava/lang/Object;

    return-void
.end method
