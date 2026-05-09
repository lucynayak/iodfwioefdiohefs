.class public final Ls1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp1/b0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/g$a;
    }
.end annotation


# instance fields
.field public final b:Z

.field public final c:Lr1/d;


# direct methods
.method public constructor <init>(Lr1/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/g;->c:Lr1/d;

    const/4 p1, 0x0

    iput-boolean p1, p0, Ls1/g;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Lp1/e;Lu1/a;)Lp1/a0;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lp1/e;",
            "Lu1/a<",
            "TT;>;)",
            "Lp1/a0<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p2}, Lu1/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-class v1, Ljava/util/Map;

    invoke-virtual {p2}, Lu1/a;->getRawType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0}, Lr1/a;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    .line 1
    const-class v3, Ljava/lang/Object;

    const-class v4, Ljava/lang/String;

    const-class v5, Ljava/util/Properties;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v0, v5, :cond_1

    new-array v0, v6, [Ljava/lang/reflect/Type;

    aput-object v4, v0, v7

    aput-object v4, v0, v8

    goto :goto_0

    :cond_1
    const-class v4, Ljava/util/Map;

    .line 2
    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    invoke-static {v5}, Ld1/a;->k(Z)V

    invoke-static {v0, v1, v4}, Lr1/a;->d(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lr1/a;->f(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 3
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-array v0, v6, [Ljava/lang/reflect/Type;

    aput-object v3, v0, v7

    aput-object v3, v0, v8

    .line 4
    :goto_0
    aget-object v1, v0, v7

    .line 5
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v1, v3, :cond_4

    const-class v3, Ljava/lang/Boolean;

    if-ne v1, v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lu1/a;->get(Ljava/lang/reflect/Type;)Lu1/a;

    move-result-object v1

    invoke-virtual {p1, v1}, Lp1/e;->f(Lu1/a;)Lp1/a0;

    move-result-object v1

    goto :goto_2

    :cond_4
    :goto_1
    sget-object v1, Ls1/n;->i:Ls1/n$y;

    :goto_2
    move-object v4, v1

    .line 6
    aget-object v1, v0, v8

    invoke-static {v1}, Lu1/a;->get(Ljava/lang/reflect/Type;)Lu1/a;

    move-result-object v1

    invoke-virtual {p1, v1}, Lp1/e;->f(Lu1/a;)Lp1/a0;

    move-result-object v6

    iget-object v1, p0, Ls1/g;->c:Lr1/d;

    invoke-virtual {v1, p2}, Lr1/d;->a(Lu1/a;)Lr1/n;

    move-result-object v9

    new-instance v10, Ls1/g$a;

    aget-object v3, v0, v7

    aget-object v5, v0, v8

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v7, v9

    invoke-direct/range {v0 .. v7}, Ls1/g$a;-><init>(Ls1/g;Lp1/e;Ljava/lang/reflect/Type;Lp1/a0;Ljava/lang/reflect/Type;Lp1/a0;Lr1/n;)V

    return-object v10
.end method
