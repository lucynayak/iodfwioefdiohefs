.class public final La3/n2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La3/k1;


# instance fields
.field public final a:Lf3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf3/a<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/annotation/Annotation;

.field public final c:[Ljava/lang/annotation/Annotation;

.field public final d:Ljava/lang/reflect/Method;

.field public final e:Ljava/lang/String;

.field public final f:La3/m1;


# direct methods
.method public constructor <init>(La3/v;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lf3/b;

    invoke-direct {v0}, Lf3/b;-><init>()V

    iput-object v0, p0, La3/n2;->a:Lf3/b;

    .line 1
    iget-object v0, p1, La3/v;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/reflect/Method;

    .line 2
    iput-object v0, p0, La3/n2;->d:Ljava/lang/reflect/Method;

    .line 3
    iget-object v0, p1, La3/v;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 4
    iput-object v0, p0, La3/n2;->e:Ljava/lang/String;

    .line 5
    iget-object p1, p1, La3/v;->c:Ljava/lang/Object;

    check-cast p1, La3/m1;

    .line 6
    iput-object p1, p0, La3/n2;->f:La3/m1;

    iput-object p2, p0, La3/n2;->b:Ljava/lang/annotation/Annotation;

    iput-object p3, p0, La3/n2;->c:[Ljava/lang/annotation/Annotation;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .registers 3

    iget-object v0, p0, La3/n2;->d:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final b(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, La3/n2;->a:Lf3/b;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, La3/n2;->c:[Ljava/lang/annotation/Annotation;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    iget-object v5, p0, La3/n2;->a:Lf3/b;

    .line 1
    invoke-virtual {v5, v4, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, La3/n2;->a:Lf3/b;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    check-cast p1, Ljava/lang/annotation/Annotation;

    return-object p1
.end method

.method public final c()Ljava/lang/annotation/Annotation;
    .registers 2

    iget-object v0, p0, La3/n2;->b:Ljava/lang/annotation/Annotation;

    return-object v0
.end method

.method public final d()Ljava/lang/Class;
    .registers 2

    iget-object v0, p0, La3/n2;->d:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final e()[Ljava/lang/Class;
    .registers 2

    iget-object v0, p0, La3/n2;->d:Ljava/lang/reflect/Method;

    invoke-static {v0}, Ld1/a;->E(Ljava/lang/reflect/Method;)[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final f()La3/m1;
    .registers 2

    iget-object v0, p0, La3/n2;->f:La3/m1;

    return-object v0
.end method

.method public final getMethod()Ljava/lang/reflect/Method;
    .registers 3

    iget-object v0, p0, La3/n2;->d:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, La3/n2;->d:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_0
    iget-object v0, p0, La3/n2;->d:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, La3/n2;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/Class;
    .registers 3

    iget-object v0, p0, La3/n2;->d:Ljava/lang/reflect/Method;

    .line 1
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    invoke-static {v0}, Ld1/a;->y(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-class v0, Ljava/lang/Object;

    :goto_1
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, La3/n2;->d:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->toGenericString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
