.class public final Lp1/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp1/e$c;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Lu1/a<",
            "*>;",
            "Lp1/e$c<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field public final b:Lr1/d;

.field public final c:Lp1/e$a;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lp1/b0;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Z

.field public final f:Z

.field public final g:Z

.field public final h:Lp1/e$b;

.field public final i:Z

.field public final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lu1/a<",
            "*>;",
            "Lp1/a0<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 9

    sget-object v1, Lr1/k;->e:Lr1/k;

    sget-object v2, Lp1/c;->c:Lp1/c$a;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    sget-object v6, Lp1/y;->c:Lp1/y$a;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lp1/e;-><init>(Lr1/k;Lp1/d;Ljava/util/Map;ZZLp1/y;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lr1/k;Lp1/d;Ljava/util/Map;ZZLp1/y;Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr1/k;",
            "Lp1/d;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lp1/l<",
            "*>;>;ZZZZZZ",
            "Lp1/y;",
            "Ljava/util/List<",
            "Lp1/b0;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lp1/e;->a:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lp1/e;->j:Ljava/util/Map;

    new-instance v0, Lp1/e$a;

    invoke-direct {v0}, Lp1/e$a;-><init>()V

    iput-object v0, p0, Lp1/e;->c:Lp1/e$a;

    new-instance v0, Lp1/e$b;

    invoke-direct {v0}, Lp1/e$b;-><init>()V

    iput-object v0, p0, Lp1/e;->h:Lp1/e$b;

    new-instance v0, Lr1/d;

    invoke-direct {v0, p3}, Lr1/d;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lp1/e;->b:Lr1/d;

    iput-boolean p4, p0, Lp1/e;->i:Z

    const/4 p3, 0x0

    iput-boolean p3, p0, Lp1/e;->e:Z

    iput-boolean p5, p0, Lp1/e;->f:Z

    iput-boolean p3, p0, Lp1/e;->g:Z

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    sget-object p4, Ls1/n;->B:Ls1/s;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Ls1/h;->b:Ls1/h$a;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3, p7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object p4, Ls1/n;->O:Ls1/p;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Ls1/n;->z:Ls1/q;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Ls1/n;->j:Ls1/q;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Ls1/n;->l:Ls1/q;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Ls1/n;->I:Ls1/q;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1
    sget-object p4, Lp1/y;->c:Lp1/y$a;

    if-ne p6, p4, :cond_0

    sget-object p4, Ls1/n;->E:Ls1/n$b;

    goto :goto_0

    :cond_0
    new-instance p4, Lp1/h;

    invoke-direct {p4}, Lp1/h;-><init>()V

    .line 2
    :goto_0
    sget-object p5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class p6, Ljava/lang/Long;

    .line 3
    new-instance p7, Ls1/q;

    invoke-direct {p7, p5, p6, p4}, Ls1/q;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lp1/a0;)V

    .line 4
    invoke-virtual {p3, p7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class p6, Ljava/lang/Double;

    .line 5
    new-instance p7, Lp1/f;

    invoke-direct {p7, p0}, Lp1/f;-><init>(Lp1/e;)V

    .line 6
    new-instance v1, Ls1/q;

    invoke-direct {v1, p5, p6, p7}, Ls1/q;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lp1/a0;)V

    .line 7
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class p6, Ljava/lang/Float;

    .line 8
    new-instance p7, Lp1/g;

    invoke-direct {p7, p0}, Lp1/g;-><init>(Lp1/e;)V

    .line 9
    new-instance v1, Ls1/q;

    invoke-direct {v1, p5, p6, p7}, Ls1/q;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lp1/a0;)V

    .line 10
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p5, Ls1/n;->G:Ls1/p;

    invoke-virtual {p3, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p5, Ls1/n;->c:Ls1/p;

    invoke-virtual {p3, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p5, Ls1/n;->a:Ls1/p;

    invoke-virtual {p3, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class p5, Ljava/util/concurrent/atomic/AtomicLong;

    .line 11
    new-instance p6, Lp1/i;

    invoke-direct {p6, p4}, Lp1/i;-><init>(Lp1/a0;)V

    invoke-virtual {p6}, Lp1/a0;->nullSafe()Lp1/a0;

    move-result-object p6

    .line 12
    new-instance p7, Ls1/p;

    invoke-direct {p7, p5, p6}, Ls1/p;-><init>(Ljava/lang/Class;Lp1/a0;)V

    .line 13
    invoke-virtual {p3, p7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class p5, Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 14
    new-instance p6, Lp1/j;

    invoke-direct {p6, p4}, Lp1/j;-><init>(Lp1/a0;)V

    invoke-virtual {p6}, Lp1/a0;->nullSafe()Lp1/a0;

    move-result-object p4

    .line 15
    new-instance p6, Ls1/p;

    invoke-direct {p6, p5, p4}, Ls1/p;-><init>(Ljava/lang/Class;Lp1/a0;)V

    .line 16
    invoke-virtual {p3, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Ls1/n;->b:Ls1/p;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Ls1/n;->p:Ls1/q;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Ls1/n;->N:Ls1/p;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Ls1/n;->L:Ls1/p;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class p4, Ljava/math/BigDecimal;

    sget-object p5, Ls1/n;->d:Ls1/n$h;

    .line 17
    new-instance p6, Ls1/p;

    invoke-direct {p6, p4, p5}, Ls1/p;-><init>(Ljava/lang/Class;Lp1/a0;)V

    .line 18
    invoke-virtual {p3, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class p4, Ljava/math/BigInteger;

    sget-object p5, Ls1/n;->e:Ls1/n$i;

    .line 19
    new-instance p6, Ls1/p;

    invoke-direct {p6, p4, p5}, Ls1/p;-><init>(Ljava/lang/Class;Lp1/a0;)V

    .line 20
    invoke-virtual {p3, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Ls1/n;->T:Ls1/p;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Ls1/n;->R:Ls1/p;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Ls1/n;->V:Ls1/p;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Ls1/n;->s:Ls1/p;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Ls1/n;->D:Ls1/p;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Ls1/n;->x:Ls1/s;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Ls1/n;->g:Ls1/p;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Ls1/c;->c:Ls1/c$a;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Ls1/n;->n:Ls1/r;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Ls1/l;->b:Ls1/l$a;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Ls1/k;->b:Ls1/k$a;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Ls1/n;->P:Ls1/n$r;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Ls1/a;->c:Ls1/a$a;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Ls1/n;->r:Ls1/p;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p4, Ls1/b;

    invoke-direct {p4, v0}, Ls1/b;-><init>(Lr1/d;)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p4, Ls1/g;

    invoke-direct {p4, v0}, Ls1/g;-><init>(Lr1/d;)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p4, Ls1/d;

    invoke-direct {p4, v0}, Ls1/d;-><init>(Lr1/d;)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Ls1/n;->u:Ls1/n$w;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p4, Ls1/j;

    invoke-direct {p4, v0, p2, p1}, Ls1/j;-><init>(Lr1/d;Lp1/d;Lr1/k;)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lp1/e;->d:Ljava/util/List;

    return-void
.end method

.method public static a(Lp1/e;D)V
    .registers 4

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid double value as per JSON specification. To override this"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Ljava/lang/Object;Lv1/a;)V
    .registers 2

    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lv1/a;->v()I

    move-result p0

    const/16 p1, 0xa

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lp1/q;

    const-string p1, "JSON document was not fully consumed."

    invoke-direct {p0, p1}, Lp1/q;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lv1/c; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Lp1/q;

    invoke-direct {p1, p0}, Lp1/q;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lp1/x;

    invoke-direct {p1, p0}, Lp1/x;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final c(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    new-instance v0, Lv1/a;

    invoke-direct {v0, p1}, Lv1/a;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v0, p2}, Lp1/e;->e(Lv1/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v0}, Lp1/e;->b(Ljava/lang/Object;Lv1/a;)V

    .line 1
    sget-object v0, Lr1/o;->a:Ljava/util/Map;

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, v0

    .line 4
    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance p1, Lv1/a;

    invoke-direct {p1, v0}, Lv1/a;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, p1, p2}, Lp1/e;->e(Lv1/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, p1}, Lp1/e;->b(Ljava/lang/Object;Lv1/a;)V

    return-object p2
.end method

.method public final e(Lv1/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lv1/a;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p1, Lv1/a;->d:Z

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p1, Lv1/a;->d:Z

    .line 3
    :try_start_0
    invoke-virtual {p1}, Lv1/a;->v()I

    const/4 v1, 0x0

    invoke-static {p2}, Lu1/a;->get(Ljava/lang/reflect/Type;)Lu1/a;

    move-result-object p2

    invoke-virtual {p0, p2}, Lp1/e;->f(Lu1/a;)Lp1/a0;

    move-result-object p2

    invoke-virtual {p2, p1}, Lp1/a0;->read(Lv1/a;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iput-boolean v0, p1, Lv1/a;->d:Z

    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p2

    .line 5
    :try_start_1
    new-instance v1, Lp1/x;

    invoke-direct {v1, p2}, Lp1/x;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception p2

    new-instance v1, Lp1/x;

    invoke-direct {v1, p2}, Lp1/x;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_2
    move-exception p2

    if-eqz v1, :cond_0

    .line 6
    iput-boolean v0, p1, Lv1/a;->d:Z

    const/4 p1, 0x0

    return-object p1

    .line 7
    :cond_0
    :try_start_2
    new-instance v1, Lp1/x;

    invoke-direct {v1, p2}, Lp1/x;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8
    :goto_0
    iput-boolean v0, p1, Lv1/a;->d:Z

    .line 9
    throw p2
.end method

.method public final f(Lu1/a;)Lp1/a0;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lu1/a<",
            "TT;>;)",
            "Lp1/a0<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lp1/e;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp1/a0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lp1/e;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lp1/e;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v1, 0x1

    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp1/e$c;

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    :try_start_0
    new-instance v2, Lp1/e$c;

    invoke-direct {v2}, Lp1/e$c;-><init>()V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lp1/e;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lp1/b0;

    invoke-interface {v4, p0, p1}, Lp1/b0;->a(Lp1/e;Lu1/a;)Lp1/a0;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1
    iget-object v3, v2, Lp1/e$c;->a:Lp1/a0;

    if-nez v3, :cond_5

    iput-object v4, v2, Lp1/e$c;->a:Lp1/a0;

    .line 2
    iget-object v2, p0, Lp1/e;->j:Ljava/util/Map;

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_4

    iget-object p1, p0, Lp1/e;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_4
    return-object v4

    .line 3
    :cond_5
    :try_start_1
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 4
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GSON cannot handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_7

    iget-object p1, p0, Lp1/e;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_7
    throw v2
.end method

.method public final g(Lp1/b0;Lu1/a;)Lp1/a0;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lp1/b0;",
            "Lu1/a<",
            "TT;>;)",
            "Lp1/a0<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lp1/e;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-object v2, p0, Lp1/e;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lp1/b0;

    if-nez v0, :cond_1

    if-ne v3, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v3, p0, p2}, Lp1/b0;->a(Lp1/e;Lu1/a;)Lp1/a0;

    move-result-object v3

    if-eqz v3, :cond_0

    return-object v3

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GSON cannot serialize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final h(Ljava/io/Writer;)Lv1/b;
    .registers 3

    iget-boolean v0, p0, Lp1/e;->e:Z

    if-eqz v0, :cond_0

    const-string v0, ")]}\'\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lv1/b;

    invoke-direct {v0, p1}, Lv1/b;-><init>(Ljava/io/Writer;)V

    iget-boolean p1, p0, Lp1/e;->g:Z

    if-eqz p1, :cond_1

    const-string p1, "  "

    .line 1
    iput-object p1, v0, Lv1/b;->d:Ljava/lang/String;

    const-string p1, ": "

    iput-object p1, v0, Lv1/b;->g:Ljava/lang/String;

    .line 2
    :cond_1
    iget-boolean p1, p0, Lp1/e;->i:Z

    .line 3
    iput-boolean p1, v0, Lv1/b;->h:Z

    return-object v0
.end method

.method public final i(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Ljava/io/StringWriter;

    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lp1/e;->h(Ljava/io/Writer;)Lv1/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lp1/e;->l(Lv1/b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lp1/e;->j(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final j(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 1
    :try_start_0
    invoke-virtual {p0, v0}, Lp1/e;->h(Ljava/io/Writer;)Lv1/b;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Lp1/e;->k(Ljava/lang/Object;Ljava/lang/reflect/Type;Lv1/b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    new-instance p2, Lp1/q;

    invoke-direct {p2, p1}, Lp1/q;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/reflect/Type;Lv1/b;)V
    .registers 8

    invoke-static {p2}, Lu1/a;->get(Ljava/lang/reflect/Type;)Lu1/a;

    move-result-object p2

    invoke-virtual {p0, p2}, Lp1/e;->f(Lu1/a;)Lp1/a0;

    move-result-object p2

    .line 1
    iget-boolean v0, p3, Lv1/b;->e:Z

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p3, Lv1/b;->e:Z

    .line 3
    iget-boolean v1, p3, Lv1/b;->c:Z

    .line 4
    iget-boolean v2, p0, Lp1/e;->f:Z

    .line 5
    iput-boolean v2, p3, Lv1/b;->c:Z

    .line 6
    iget-boolean v2, p3, Lv1/b;->h:Z

    .line 7
    iget-boolean v3, p0, Lp1/e;->i:Z

    .line 8
    iput-boolean v3, p3, Lv1/b;->h:Z

    .line 9
    :try_start_0
    invoke-virtual {p2, p3, p1}, Lp1/a0;->write(Lv1/b;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iput-boolean v0, p3, Lv1/b;->e:Z

    .line 11
    iput-boolean v1, p3, Lv1/b;->c:Z

    .line 12
    iput-boolean v2, p3, Lv1/b;->h:Z

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    :try_start_1
    new-instance p2, Lp1/q;

    invoke-direct {p2, p1}, Lp1/q;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :goto_0
    iput-boolean v0, p3, Lv1/b;->e:Z

    .line 15
    iput-boolean v1, p3, Lv1/b;->c:Z

    .line 16
    iput-boolean v2, p3, Lv1/b;->h:Z

    .line 17
    throw p1
.end method

.method public final l(Lv1/b;)V
    .registers 7

    sget-object v0, Lp1/r;->a:Lp1/r;

    .line 1
    iget-boolean v1, p1, Lv1/b;->e:Z

    const/4 v2, 0x1

    .line 2
    iput-boolean v2, p1, Lv1/b;->e:Z

    .line 3
    iget-boolean v2, p1, Lv1/b;->c:Z

    .line 4
    iget-boolean v3, p0, Lp1/e;->f:Z

    .line 5
    iput-boolean v3, p1, Lv1/b;->c:Z

    .line 6
    iget-boolean v3, p1, Lv1/b;->h:Z

    .line 7
    iget-boolean v4, p0, Lp1/e;->i:Z

    .line 8
    iput-boolean v4, p1, Lv1/b;->h:Z

    .line 9
    :try_start_0
    invoke-static {v0, p1}, La3/r0;->I(Lp1/p;Lv1/b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iput-boolean v1, p1, Lv1/b;->e:Z

    .line 11
    iput-boolean v2, p1, Lv1/b;->c:Z

    .line 12
    iput-boolean v3, p1, Lv1/b;->h:Z

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 13
    :try_start_1
    new-instance v4, Lp1/q;

    invoke-direct {v4, v0}, Lp1/q;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :goto_0
    iput-boolean v1, p1, Lv1/b;->e:Z

    .line 15
    iput-boolean v2, p1, Lv1/b;->c:Z

    .line 16
    iput-boolean v3, p1, Lv1/b;->h:Z

    .line 17
    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lp1/e;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "factories:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lp1/e;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",instanceCreators:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lp1/e;->b:Lr1/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
