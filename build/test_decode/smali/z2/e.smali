.class public final Lz2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc3/d;
.implements Lc3/b;


# instance fields
.field public a:Ljava/io/Serializable;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La3/r0;

    invoke-direct {v0}, La3/r0;-><init>()V

    iput-object v0, p0, Lz2/e;->c:Ljava/lang/Object;

    const-string v0, "length"

    iput-object v0, p0, Lz2/e;->b:Ljava/lang/Object;

    const-string v0, "class"

    iput-object v0, p0, Lz2/e;->a:Ljava/io/Serializable;

    return-void
.end method

.method public synthetic constructor <init>(Lc3/d;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lz2/e;->a:Ljava/io/Serializable;

    iput-object p1, p0, Lz2/e;->c:Ljava/lang/Object;

    iput-object p2, p0, Lz2/e;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Le3/i;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lf3/b;

    invoke-direct {v0}, Lf3/b;-><init>()V

    iput-object v0, p0, Lz2/e;->a:Ljava/io/Serializable;

    new-instance v0, Lf3/b;

    invoke-direct {v0}, Lf3/b;-><init>()V

    iput-object v0, p0, Lz2/e;->b:Ljava/lang/Object;

    new-instance v0, Lt/n;

    invoke-direct {v0, p1}, Lt/n;-><init>(Le3/i;)V

    iput-object v0, p0, Lz2/e;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lz2/e;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lz2/e;->a:Ljava/io/Serializable;

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final c(Lc3/c;Ljava/lang/Object;Ld3/t;Ljava/util/Map;)Z
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-interface {p1}, Lc3/c;->a()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p4}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p2

    iget-object v0, p0, Lz2/e;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    move-object v1, p3

    check-cast v1, Ld3/n;

    invoke-virtual {v1, v0, p2}, Ld3/n;->B(Ljava/lang/String;Ljava/lang/String;)Ld3/q;

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    goto :goto_0

    :cond_1
    move-object p2, p4

    :goto_0
    if-eq p4, p1, :cond_2

    .line 2
    iget-object p1, p0, Lz2/e;->a:Ljava/io/Serializable;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    check-cast p3, Ld3/n;

    invoke-virtual {p3, p1, p2}, Ld3/n;->B(Ljava/lang/String;Ljava/lang/String;)Ld3/q;

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final d(Lc3/c;Ld3/t;Ljava/util/Map;)Lc3/d;
    .locals 2

    .line 1
    iget-object p3, p0, Lz2/e;->a:Ljava/io/Serializable;

    check-cast p3, Ljava/lang/String;

    check-cast p2, Ld3/n;

    invoke-virtual {p2, p3}, Ld3/n;->D(Ljava/lang/String;)Ld3/q;

    move-result-object p3

    invoke-interface {p1}, Lc3/c;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    :cond_0
    if-eqz p3, :cond_2

    invoke-interface {p3}, Ld3/q;->getValue()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lz2/e;->c:Ljava/lang/Object;

    check-cast v0, La3/r0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    const-class v0, La3/r0;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 4
    :cond_1
    invoke-virtual {v0, p3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 5
    :cond_2
    invoke-interface {p1}, Lc3/c;->a()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 6
    iget-object p1, p0, Lz2/e;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Ld3/n;->D(Ljava/lang/String;)Ld3/q;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ld3/q;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    new-instance p2, Lc3/a;

    invoke-direct {p2, v0, p1}, Lc3/a;-><init>(Ljava/lang/Class;I)V

    return-object p2

    :cond_4
    if-eq p1, v0, :cond_5

    .line 7
    new-instance p1, Lz2/a;

    invoke-direct {p1, v0}, Lz2/a;-><init>(Ljava/lang/Class;)V

    return-object p1

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public final e(Ljava/lang/Class;)Le3/k;
    .locals 2

    iget-object v0, p0, Lz2/e;->b:Ljava/lang/Object;

    check-cast v0, Lf3/a;

    invoke-interface {v0, p1}, Lf3/a;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lz2/e;->a:Ljava/io/Serializable;

    check-cast v0, Lf3/a;

    invoke-interface {v0, p1}, Lf3/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le3/k;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lz2/e;->c:Ljava/lang/Object;

    check-cast v0, Le3/i;

    invoke-interface {v0, p1}, Le3/i;->e(Ljava/lang/Class;)Le3/k;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lz2/e;->a:Ljava/io/Serializable;

    check-cast v1, Lf3/a;

    invoke-interface {v1, p1, v0}, Lf3/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lz2/e;->b:Ljava/lang/Object;

    check-cast v1, Lf3/a;

    invoke-interface {v1, p1, p0}, Lf3/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lz2/e;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final setValue(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lz2/e;->c:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lc3/d;

    if-eqz v1, :cond_0

    check-cast v0, Lc3/d;

    invoke-interface {v0, p1}, Lc3/d;->setValue(Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lz2/e;->b:Ljava/lang/Object;

    return-void
.end method
