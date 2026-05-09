.class public final La3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ld3/h;

.field public final b:Z


# direct methods
.method public constructor <init>(La3/b0;La3/t2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, La3/b0;->e()Z

    move-result p1

    iput-boolean p1, p0, La3/a;->b:Z

    .line 1
    iget-object p1, p2, La3/t2;->d:Ld3/h;

    .line 2
    iput-object p1, p0, La3/a;->a:Ld3/h;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 6

    .line 1
    const-class v0, La3/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 2
    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eqz v2, :cond_6

    if-eqz p2, :cond_3

    .line 3
    array-length p1, p2

    if-lez p1, :cond_3

    aget-object p1, p2, v3

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    aget-object p2, p2, v3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->isEnum()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p0, p2}, La3/a;->c(Ljava/lang/Class;)Z

    move-result p1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_5

    .line 4
    iget-object p1, p0, La3/a;->a:Ld3/h;

    .line 5
    iget p1, p1, Ld3/h;->d:I

    if-eqz p1, :cond_4

    if-ne p1, v5, :cond_4

    const/4 p1, 0x1

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_5

    .line 6
    const-class p1, Ly2/h;

    .line 7
    new-instance p2, La3/b;

    iget-boolean v0, p0, La3/a;->b:Z

    invoke-direct {p2, p1, v0, v4}, La3/b;-><init>(Ljava/lang/Class;ZZ)V

    new-array v0, v4, [Ljava/lang/Class;

    aput-object p1, v0, v3

    invoke-static {v1, v0, p2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/annotation/Annotation;

    return-object p1

    .line 8
    :cond_5
    const-class p1, Ly2/h;

    goto :goto_4

    :cond_6
    const-class p2, Ljava/util/Collection;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_7

    const-class p1, Ly2/f;

    :goto_4
    invoke-virtual {p0, v1, p1}, La3/a;->b(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    return-object p1

    .line 9
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    .line 10
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0, v0}, La3/a;->c(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_5

    :cond_8
    const-class p1, Ly2/e;

    goto :goto_6

    :cond_9
    invoke-virtual {p0, p1}, La3/a;->c(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 11
    iget-object p1, p0, La3/a;->a:Ld3/h;

    .line 12
    iget p1, p1, Ld3/h;->d:I

    if-eqz p1, :cond_a

    if-ne p1, v5, :cond_a

    const/4 v3, 0x1

    :cond_a
    if-eqz v3, :cond_b

    .line 13
    const-class p1, Ly2/a;

    goto :goto_6

    :cond_b
    :goto_5
    const-class p1, Ly2/d;

    :goto_6
    invoke-virtual {p0, p2, p1}, La3/a;->b(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 3

    new-instance v0, La3/b;

    iget-boolean v1, p0, La3/a;->b:Z

    const/4 v2, 0x0

    invoke-direct {v0, p2, v1, v2}, La3/b;-><init>(Ljava/lang/Class;ZZ)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    aput-object p2, v1, v2

    invoke-static {p1, v1, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/annotation/Annotation;

    return-object p1
.end method

.method public final c(Ljava/lang/Class;)Z
    .locals 1

    const-class v0, Ljava/lang/Number;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-class v0, Ljava/lang/Boolean;

    if-eq p1, v0, :cond_1

    const-class v0, Ljava/lang/Character;

    if-eq p1, v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
