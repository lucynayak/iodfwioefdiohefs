.class public abstract La3/t0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:La3/q;

.field public b:Ljava/lang/Class;

.field public c:La3/t2;

.field public d:Lc3/c;


# direct methods
.method public constructor <init>(La3/q;Lc3/c;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, La3/q;->d:Ljava/lang/Object;

    check-cast v0, La3/t2;

    .line 3
    iput-object v0, p0, La3/t0;->c:La3/t2;

    const/4 v0, 0x0

    iput-object v0, p0, La3/t0;->b:Ljava/lang/Class;

    iput-object p1, p0, La3/t0;->a:La3/q;

    iput-object p2, p0, La3/t0;->d:Lc3/c;

    return-void
.end method

.method public constructor <init>(La3/q;Lc3/c;Ljava/lang/Class;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget-object p3, p1, La3/q;->d:Ljava/lang/Object;

    check-cast p3, La3/t2;

    .line 5
    iput-object p3, p0, La3/t0;->c:La3/t2;

    const/4 p3, 0x0

    iput-object p3, p0, La3/t0;->b:Ljava/lang/Class;

    iput-object p1, p0, La3/t0;->a:La3/q;

    iput-object p2, p0, La3/t0;->d:Lc3/c;

    return-void
.end method

.method public static c(Ljava/lang/Class;)Z
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result p0

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isInterface(I)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Ld3/m;)Lc3/d;
    .registers 8

    .line 1
    iget-object v0, p0, La3/t0;->a:La3/q;

    iget-object v1, p0, La3/t0;->d:Lc3/c;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface {p1}, Ld3/m;->c()Ld3/t;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_5

    iget-object v5, v0, La3/q;->c:Ljava/lang/Object;

    check-cast v5, Lc3/b;

    iget-object v0, v0, La3/q;->f:Ljava/lang/Object;

    check-cast v0, La3/l2;

    invoke-interface {v5, v1, v2, v0}, Lc3/b;->d(Lc3/c;Ld3/t;Ljava/util/Map;)Lc3/d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, La3/t0;->b:Ljava/lang/Class;

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lc3/d;->a()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, La3/t0;->b:Ljava/lang/Class;

    .line 4
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    new-instance v1, La3/b3;

    iget-object v2, p0, La3/t0;->b:Ljava/lang/Class;

    invoke-direct {v1, v0, v2}, La3/b3;-><init>(Lc3/d;Ljava/lang/Class;)V

    move-object v0, v1

    :cond_1
    if-eqz v0, :cond_4

    .line 6
    invoke-interface {p1}, Ld3/m;->getPosition()Landroid/arch/lifecycle/h;

    move-result-object p1

    invoke-interface {v0}, Lc3/d;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, La3/t0;->b()Ljava/lang/Class;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, v3

    .line 8
    iget-object v1, p0, La3/t0;->d:Lc3/c;

    aput-object v1, v0, v4

    const/4 v1, 0x2

    aput-object p1, v0, v1

    new-instance p1, La3/d;

    const-string v1, "Incompatible %s for %s at %s"

    invoke-direct {p1, v1, v0}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_4
    :goto_0
    return-object v0

    .line 9
    :cond_5
    new-instance v0, La3/a2;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const-string p1, "No attributes for %s"

    invoke-direct {v0, p1, v1}, La3/a2;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public final b()Ljava/lang/Class;
    .registers 2

    iget-object v0, p0, La3/t0;->b:Ljava/lang/Class;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, La3/t0;->d:Lc3/c;

    invoke-interface {v0}, Lc3/c;->a()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final d(Lc3/c;Ljava/lang/Object;Ld3/z;)Z
    .registers 6

    invoke-interface {p1}, Lc3/c;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1
    invoke-static {v0}, La3/t2;->e(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    if-eq v1, v0, :cond_0

    new-instance v0, La3/v1;

    invoke-direct {v0, p1, v1}, La3/v1;-><init>(Lc3/c;Ljava/lang/Class;)V

    move-object p1, v0

    .line 2
    :cond_0
    iget-object v0, p0, La3/t0;->a:La3/q;

    invoke-virtual {v0, p1, p2, p3}, La3/q;->i(Lc3/c;Ljava/lang/Object;Ld3/z;)Z

    move-result p1

    return p1
.end method
