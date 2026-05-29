.class public final Lr1/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lp1/l<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lp1/l<",
            "*>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr1/d;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Lu1/a;)Lr1/n;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lu1/a<",
            "TT;>;)",
            "Lr1/n<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Lu1/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p1}, Lu1/a;->getRawType()Ljava/lang/Class;

    move-result-object p1

    iget-object v1, p0, Lr1/d;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp1/l;

    if-eqz v1, :cond_0

    new-instance p1, Lr1/d$a;

    invoke-direct {p1, v1, v0}, Lr1/d$a;-><init>(Lp1/l;Ljava/lang/reflect/Type;)V

    goto/16 :goto_2

    :cond_0
    iget-object v1, p0, Lr1/d;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp1/l;

    if-eqz v1, :cond_1

    new-instance p1, Lr1/d$b;

    invoke-direct {p1, v1, v0}, Lr1/d$b;-><init>(Lp1/l;Ljava/lang/reflect/Type;)V

    return-object p1

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-array v3, v2, [Ljava/lang/Class;

    .line 1
    invoke-virtual {p1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_2
    new-instance v4, Lr1/e;

    invoke-direct {v4, v3}, Lr1/e;-><init>(Ljava/lang/reflect/Constructor;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v4, v1

    :goto_0
    if-nez v4, :cond_e

    .line 2
    const-class v3, Ljava/util/Collection;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-class v1, Ljava/util/SortedSet;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lr1/f;

    invoke-direct {v1}, Lr1/f;-><init>()V

    goto/16 :goto_1

    :cond_3
    const-class v1, Ljava/util/EnumSet;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lr1/g;

    invoke-direct {v1, v0}, Lr1/g;-><init>(Ljava/lang/reflect/Type;)V

    goto/16 :goto_1

    :cond_4
    const-class v1, Ljava/util/Set;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Lr0/e;

    invoke-direct {v1}, Lr0/e;-><init>()V

    goto/16 :goto_1

    :cond_5
    const-class v1, Ljava/util/Queue;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Lr1/h;

    invoke-direct {v1}, Lr1/h;-><init>()V

    goto :goto_1

    :cond_6
    new-instance v1, Lr1/i;

    invoke-direct {v1}, Lr1/i;-><init>()V

    goto :goto_1

    :cond_7
    const-class v3, Ljava/util/Map;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-class v1, Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Lr1/j;

    invoke-direct {v1}, Lr1/j;-><init>()V

    goto :goto_1

    :cond_8
    const-class v1, Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, La3/r0;

    invoke-direct {v1}, La3/r0;-><init>()V

    goto :goto_1

    :cond_9
    const-class v1, Ljava/util/SortedMap;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v1, Ld1/a;

    invoke-direct {v1}, Ld1/a;-><init>()V

    goto :goto_1

    :cond_a
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_b

    const-class v1, Ljava/lang/String;

    move-object v3, v0

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    aget-object v2, v3, v2

    invoke-static {v2}, Lu1/a;->get(Ljava/lang/reflect/Type;)Lu1/a;

    move-result-object v2

    invoke-virtual {v2}, Lu1/a;->getRawType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_b

    new-instance v1, Ly1/a;

    invoke-direct {v1}, Ly1/a;-><init>()V

    goto :goto_1

    :cond_b
    new-instance v1, Lr1/b;

    invoke-direct {v1}, Lr1/b;-><init>()V

    :cond_c
    :goto_1
    if-eqz v1, :cond_d

    return-object v1

    .line 3
    :cond_d
    new-instance v1, Lr1/c;

    invoke-direct {v1, p1, v0}, Lr1/c;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    return-object v1

    :cond_e
    move-object p1, v4

    :goto_2
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lr1/d;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
