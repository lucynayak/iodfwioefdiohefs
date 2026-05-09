.class public final La3/d1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La3/d1$a;
    }
.end annotation


# instance fields
.field public final a:Lf3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf3/a<",
            "La3/e1;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ld3/h;


# direct methods
.method public constructor <init>(Ld3/h;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lf3/b;

    invoke-direct {v0}, Lf3/b;-><init>()V

    iput-object v0, p0, La3/d1;->a:Lf3/b;

    iput-object p1, p0, La3/d1;->b:Ld3/h;

    return-void
.end method


# virtual methods
.method public final a(La3/s;Ljava/lang/annotation/Annotation;Ljava/lang/Object;)La3/e1;
    .locals 1

    iget-object v0, p0, La3/d1;->a:Lf3/b;

    .line 1
    invoke-virtual {v0, p3}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, La3/e1;

    if-nez v0, :cond_5

    .line 3
    instance-of v0, p2, Ly2/j;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p2, Ly2/g;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    instance-of v0, p2, Ly2/i;

    if-eqz v0, :cond_2

    :goto_0
    invoke-virtual {p0, p1, p2}, La3/d1;->c(La3/s;Ljava/lang/annotation/Annotation;)La3/e1;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, p2, v0}, La3/d1;->b(La3/s;Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)La3/c1;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance p2, La3/g;

    invoke-direct {p2, p1}, La3/g;-><init>(La3/c1;)V

    move-object p1, p2

    :cond_3
    new-instance p2, La3/e1;

    invoke-direct {p2, p1}, La3/e1;-><init>(La3/c1;)V

    move-object p1, p2

    :goto_1
    if-eqz p1, :cond_4

    .line 5
    iget-object p2, p0, La3/d1;->a:Lf3/b;

    .line 6
    invoke-virtual {p2, p3, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object p1

    :cond_5
    return-object v0
.end method

.method public final b(La3/s;Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)La3/c1;
    .locals 11

    .line 1
    instance-of v0, p2, Ly2/d;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    new-instance v0, La3/d1$a;

    const-class v4, La3/f0;

    const-class v5, Ly2/d;

    .line 2
    invoke-direct {v0, v4, v5, v1}, La3/d1$a;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 3
    :cond_0
    instance-of v0, p2, Ly2/f;

    if-eqz v0, :cond_1

    new-instance v0, La3/d1$a;

    const-class v4, La3/g0;

    const-class v5, Ly2/f;

    .line 4
    invoke-direct {v0, v4, v5, v1}, La3/d1$a;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 5
    :cond_1
    instance-of v0, p2, Ly2/e;

    if-eqz v0, :cond_2

    new-instance v0, La3/d1$a;

    const-class v4, La3/d0;

    const-class v5, Ly2/e;

    .line 6
    invoke-direct {v0, v4, v5, v1}, La3/d1$a;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0

    .line 7
    :cond_2
    instance-of v0, p2, Ly2/h;

    if-eqz v0, :cond_3

    new-instance v0, La3/d1$a;

    const-class v4, La3/k0;

    const-class v5, Ly2/h;

    .line 8
    invoke-direct {v0, v4, v5, v1}, La3/d1$a;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0

    .line 9
    :cond_3
    instance-of v0, p2, Ly2/j;

    if-eqz v0, :cond_4

    new-instance v0, La3/d1$a;

    const-class v1, La3/p0;

    const-class v4, Ly2/j;

    const-class v5, Ly2/d;

    invoke-direct {v0, v1, v4, v5}, La3/d1$a;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0

    :cond_4
    instance-of v0, p2, Ly2/g;

    if-eqz v0, :cond_5

    new-instance v0, La3/d1$a;

    const-class v1, La3/i0;

    const-class v4, Ly2/g;

    const-class v5, Ly2/f;

    invoke-direct {v0, v1, v4, v5}, La3/d1$a;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0

    :cond_5
    instance-of v0, p2, Ly2/i;

    if-eqz v0, :cond_6

    new-instance v0, La3/d1$a;

    const-class v1, La3/m0;

    const-class v4, Ly2/i;

    const-class v5, Ly2/h;

    invoke-direct {v0, v1, v4, v5}, La3/d1$a;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0

    :cond_6
    instance-of v0, p2, Ly2/a;

    if-eqz v0, :cond_7

    new-instance v0, La3/d1$a;

    const-class v4, La3/e;

    const-class v5, Ly2/a;

    .line 10
    invoke-direct {v0, v4, v5, v1}, La3/d1$a;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0

    .line 11
    :cond_7
    instance-of v0, p2, Ly2/r;

    if-eqz v0, :cond_8

    new-instance v0, La3/d1$a;

    const-class v4, La3/f3;

    const-class v5, Ly2/r;

    .line 12
    invoke-direct {v0, v4, v5, v1}, La3/d1$a;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0

    .line 13
    :cond_8
    instance-of v0, p2, Ly2/p;

    if-eqz v0, :cond_c

    new-instance v0, La3/d1$a;

    const-class v4, La3/z2;

    const-class v5, Ly2/p;

    .line 14
    invoke-direct {v0, v4, v5, v1}, La3/d1$a;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 15
    :goto_0
    const-class v1, Ld3/h;

    const-class v4, La3/s;

    iget-object v5, v0, La3/d1$a;->a:Ljava/lang/Class;

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-eqz v5, :cond_9

    iget-object v9, v0, La3/d1$a;->b:Ljava/lang/Class;

    .line 16
    iget-object v0, v0, La3/d1$a;->c:Ljava/lang/Class;

    new-array v10, v6, [Ljava/lang/Class;

    aput-object v4, v10, v3

    aput-object v9, v10, v2

    aput-object v5, v10, v8

    aput-object v1, v10, v7

    invoke-virtual {v0, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    goto :goto_1

    .line 17
    :cond_9
    iget-object v5, v0, La3/d1$a;->b:Ljava/lang/Class;

    .line 18
    iget-object v0, v0, La3/d1$a;->c:Ljava/lang/Class;

    new-array v9, v7, [Ljava/lang/Class;

    aput-object v4, v9, v3

    aput-object v5, v9, v2

    aput-object v1, v9, v8

    invoke-virtual {v0, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 19
    :goto_1
    invoke-virtual {v0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_a
    if-eqz p3, :cond_b

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object p2, v1, v2

    aput-object p3, v1, v8

    .line 20
    iget-object p1, p0, La3/d1;->b:Ld3/h;

    aput-object p1, v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    :cond_b
    new-array p3, v7, [Ljava/lang/Object;

    aput-object p1, p3, v3

    aput-object p2, p3, v2

    iget-object p1, p0, La3/d1;->b:Ld3/h;

    aput-object p1, p3, v8

    invoke-virtual {v0, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    check-cast p1, La3/c1;

    return-object p1

    .line 21
    :cond_c
    new-instance p1, La3/a2;

    new-array p3, v2, [Ljava/lang/Object;

    aput-object p2, p3, v3

    const-string p2, "Annotation %s not supported"

    invoke-direct {p1, p2, p3}, La3/a2;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public final c(La3/s;Ljava/lang/annotation/Annotation;)La3/e1;
    .locals 6

    .line 1
    invoke-interface {p2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_0

    aget-object v0, v0, v2

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/annotation/Annotation;

    goto :goto_0

    :cond_0
    new-array v0, v2, [Ljava/lang/annotation/Annotation;

    .line 2
    :goto_0
    array-length v1, v0

    if-lez v1, :cond_3

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    array-length v3, v0

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    invoke-virtual {p0, p1, p2, v4}, La3/d1;->b(La3/s;Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)La3/c1;

    move-result-object v4

    if-eqz v4, :cond_1

    new-instance v5, La3/g;

    invoke-direct {v5, v4}, La3/g;-><init>(La3/c1;)V

    move-object v4, v5

    :cond_1
    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    new-instance p1, La3/e1;

    invoke-direct {p1, v1}, La3/e1;-><init>(Ljava/util/List;)V

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method
