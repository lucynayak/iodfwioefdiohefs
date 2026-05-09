.class public final Lr1/m;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr1/m$b;,
        Lr1/m$c;,
        Lr1/m$d;,
        Lr1/m$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final i:Lr1/m$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation
.end field

.field public c:Lr1/m$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr1/m<",
            "TK;TV;>.b;"
        }
    .end annotation
.end field

.field public final d:Lr1/m$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr1/m$e<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public e:Lr1/m$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr1/m<",
            "TK;TV;>.c;"
        }
    .end annotation
.end field

.field public f:I

.field public g:Lr1/m$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr1/m$e<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public h:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lr1/m;

    new-instance v0, Lr1/m$a;

    invoke-direct {v0}, Lr1/m$a;-><init>()V

    sput-object v0, Lr1/m;->i:Lr1/m$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    sget-object v0, Lr1/m;->i:Lr1/m$a;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Lr1/m;->h:I

    iput v1, p0, Lr1/m;->f:I

    new-instance v1, Lr1/m$e;

    invoke-direct {v1}, Lr1/m$e;-><init>()V

    iput-object v1, p0, Lr1/m;->d:Lr1/m$e;

    iput-object v0, p0, Lr1/m;->b:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Z)Lr1/m$e;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lr1/m$e<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lr1/m;->b:Ljava/util/Comparator;

    iget-object v1, p0, Lr1/m;->g:Lr1/m$e;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    sget-object v3, Lr1/m;->i:Lr1/m$a;

    if-ne v0, v3, :cond_0

    move-object v3, p1

    check-cast v3, Ljava/lang/Comparable;

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    iget-object v4, v1, Lr1/m$e;->c:Ljava/lang/Object;

    if-eqz v3, :cond_1

    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    goto :goto_1

    :cond_1
    invoke-interface {v0, p1, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    :goto_1
    if-nez v4, :cond_2

    move-object v2, v1

    goto :goto_7

    :cond_2
    if-gez v4, :cond_3

    iget-object v5, v1, Lr1/m$e;->d:Lr1/m$e;

    goto :goto_2

    :cond_3
    iget-object v5, v1, Lr1/m$e;->h:Lr1/m$e;

    :goto_2
    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    move-object v1, v5

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    :goto_3
    if-eqz p2, :cond_a

    iget-object p2, p0, Lr1/m;->d:Lr1/m$e;

    const/4 v2, 0x1

    if-nez v1, :cond_8

    sget-object v3, Lr1/m;->i:Lr1/m$a;

    if-ne v0, v3, :cond_7

    instance-of v0, p1, Ljava/lang/Comparable;

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    new-instance p2, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not Comparable"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_7
    :goto_4
    new-instance v0, Lr1/m$e;

    iget-object v3, p2, Lr1/m$e;->g:Lr1/m$e;

    invoke-direct {v0, v1, p1, p2, v3}, Lr1/m$e;-><init>(Lr1/m$e;Ljava/lang/Object;Lr1/m$e;Lr1/m$e;)V

    iput-object v0, p0, Lr1/m;->g:Lr1/m$e;

    goto :goto_6

    :cond_8
    new-instance v0, Lr1/m$e;

    iget-object v3, p2, Lr1/m$e;->g:Lr1/m$e;

    invoke-direct {v0, v1, p1, p2, v3}, Lr1/m$e;-><init>(Lr1/m$e;Ljava/lang/Object;Lr1/m$e;Lr1/m$e;)V

    if-gez v4, :cond_9

    iput-object v0, v1, Lr1/m$e;->d:Lr1/m$e;

    goto :goto_5

    :cond_9
    iput-object v0, v1, Lr1/m$e;->h:Lr1/m$e;

    :goto_5
    invoke-virtual {p0, v1, v2}, Lr1/m;->d(Lr1/m$e;Z)V

    :goto_6
    iget p1, p0, Lr1/m;->h:I

    add-int/2addr p1, v2

    iput p1, p0, Lr1/m;->h:I

    iget p1, p0, Lr1/m;->f:I

    add-int/2addr p1, v2

    iput p1, p0, Lr1/m;->f:I

    return-object v0

    :cond_a
    :goto_7
    return-object v2
.end method

.method public final b(Ljava/util/Map$Entry;)Lr1/m$e;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)",
            "Lr1/m$e<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lr1/m;->c(Ljava/lang/Object;)Lr1/m$e;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v3, v0, Lr1/m$e;->i:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eq v3, p1, :cond_1

    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    return-object v0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public final c(Ljava/lang/Object;)Lr1/m$e;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lr1/m$e<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lr1/m;->a(Ljava/lang/Object;Z)Lr1/m$e;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :catch_0
    :cond_0
    return-object v0
.end method

.method public final clear()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lr1/m;->g:Lr1/m$e;

    const/4 v0, 0x0

    iput v0, p0, Lr1/m;->h:I

    iget v0, p0, Lr1/m;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lr1/m;->f:I

    iget-object v0, p0, Lr1/m;->d:Lr1/m$e;

    iput-object v0, v0, Lr1/m$e;->g:Lr1/m$e;

    iput-object v0, v0, Lr1/m$e;->e:Lr1/m$e;

    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lr1/m;->c(Ljava/lang/Object;)Lr1/m$e;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final d(Lr1/m$e;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr1/m$e<",
            "TK;TV;>;Z)V"
        }
    .end annotation

    :goto_0
    if-eqz p1, :cond_e

    iget-object v0, p1, Lr1/m$e;->d:Lr1/m$e;

    iget-object v1, p1, Lr1/m$e;->h:Lr1/m$e;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget v3, v0, Lr1/m$e;->b:I

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v1, :cond_1

    iget v4, v1, Lr1/m$e;->b:I

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :goto_2
    sub-int v5, v3, v4

    const/4 v6, -0x2

    if-ne v5, v6, :cond_6

    iget-object v0, v1, Lr1/m$e;->d:Lr1/m$e;

    iget-object v3, v1, Lr1/m$e;->h:Lr1/m$e;

    if-eqz v3, :cond_2

    iget v3, v3, Lr1/m$e;->b:I

    goto :goto_3

    :cond_2
    const/4 v3, 0x0

    :goto_3
    if-eqz v0, :cond_3

    iget v2, v0, Lr1/m$e;->b:I

    :cond_3
    sub-int/2addr v2, v3

    const/4 v0, -0x1

    if-eq v2, v0, :cond_5

    if-nez v2, :cond_4

    if-nez p2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0, v1}, Lr1/m;->h(Lr1/m$e;)V

    :cond_5
    :goto_4
    invoke-virtual {p0, p1}, Lr1/m;->g(Lr1/m$e;)V

    if-eqz p2, :cond_d

    goto :goto_8

    :cond_6
    const/4 v1, 0x2

    const/4 v6, 0x1

    if-ne v5, v1, :cond_b

    iget-object v1, v0, Lr1/m$e;->d:Lr1/m$e;

    iget-object v3, v0, Lr1/m$e;->h:Lr1/m$e;

    if-eqz v3, :cond_7

    iget v3, v3, Lr1/m$e;->b:I

    goto :goto_5

    :cond_7
    const/4 v3, 0x0

    :goto_5
    if-eqz v1, :cond_8

    iget v2, v1, Lr1/m$e;->b:I

    :cond_8
    sub-int/2addr v2, v3

    if-eq v2, v6, :cond_a

    if-nez v2, :cond_9

    if-nez p2, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {p0, v0}, Lr1/m;->g(Lr1/m$e;)V

    :cond_a
    :goto_6
    invoke-virtual {p0, p1}, Lr1/m;->h(Lr1/m$e;)V

    if-nez p2, :cond_e

    goto :goto_7

    :cond_b
    if-nez v5, :cond_c

    add-int/lit8 v3, v3, 0x1

    iput v3, p1, Lr1/m$e;->b:I

    if-eqz p2, :cond_d

    return-void

    :cond_c
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v6

    iput v0, p1, Lr1/m$e;->b:I

    if-nez p2, :cond_d

    return-void

    :cond_d
    :goto_7
    iget-object p1, p1, Lr1/m$e;->f:Lr1/m$e;

    goto :goto_0

    :cond_e
    :goto_8
    return-void
.end method

.method public final e(Lr1/m$e;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr1/m$e<",
            "TK;TV;>;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    iget-object p2, p1, Lr1/m$e;->g:Lr1/m$e;

    iget-object v0, p1, Lr1/m$e;->e:Lr1/m$e;

    iput-object v0, p2, Lr1/m$e;->e:Lr1/m$e;

    iget-object v0, p1, Lr1/m$e;->e:Lr1/m$e;

    iput-object p2, v0, Lr1/m$e;->g:Lr1/m$e;

    :cond_0
    iget-object p2, p1, Lr1/m$e;->d:Lr1/m$e;

    iget-object v0, p1, Lr1/m$e;->h:Lr1/m$e;

    iget-object v1, p1, Lr1/m$e;->f:Lr1/m$e;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_6

    if-eqz v0, :cond_6

    iget v1, p2, Lr1/m$e;->b:I

    iget v4, v0, Lr1/m$e;->b:I

    if-le v1, v4, :cond_1

    .line 1
    :goto_0
    iget-object v0, p2, Lr1/m$e;->h:Lr1/m$e;

    if-eqz v0, :cond_3

    move-object p2, v0

    goto :goto_0

    .line 2
    :cond_1
    :goto_1
    iget-object p2, v0, Lr1/m$e;->d:Lr1/m$e;

    if-eqz p2, :cond_2

    move-object v0, p2

    goto :goto_1

    :cond_2
    move-object p2, v0

    .line 3
    :cond_3
    invoke-virtual {p0, p2, v3}, Lr1/m;->e(Lr1/m$e;Z)V

    iget-object v0, p1, Lr1/m$e;->d:Lr1/m$e;

    if-eqz v0, :cond_4

    iget v1, v0, Lr1/m$e;->b:I

    iput-object v0, p2, Lr1/m$e;->d:Lr1/m$e;

    iput-object p2, v0, Lr1/m$e;->f:Lr1/m$e;

    iput-object v2, p1, Lr1/m$e;->d:Lr1/m$e;

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    iget-object v0, p1, Lr1/m$e;->h:Lr1/m$e;

    if-eqz v0, :cond_5

    iget v3, v0, Lr1/m$e;->b:I

    iput-object v0, p2, Lr1/m$e;->h:Lr1/m$e;

    iput-object p2, v0, Lr1/m$e;->f:Lr1/m$e;

    iput-object v2, p1, Lr1/m$e;->h:Lr1/m$e;

    :cond_5
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lr1/m$e;->b:I

    invoke-virtual {p0, p1, p2}, Lr1/m;->f(Lr1/m$e;Lr1/m$e;)V

    return-void

    :cond_6
    if-eqz p2, :cond_7

    invoke-virtual {p0, p1, p2}, Lr1/m;->f(Lr1/m$e;Lr1/m$e;)V

    iput-object v2, p1, Lr1/m$e;->d:Lr1/m$e;

    goto :goto_3

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {p0, p1, v0}, Lr1/m;->f(Lr1/m$e;Lr1/m$e;)V

    iput-object v2, p1, Lr1/m$e;->h:Lr1/m$e;

    goto :goto_3

    :cond_8
    invoke-virtual {p0, p1, v2}, Lr1/m;->f(Lr1/m$e;Lr1/m$e;)V

    :goto_3
    invoke-virtual {p0, v1, v3}, Lr1/m;->d(Lr1/m$e;Z)V

    iget p1, p0, Lr1/m;->h:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lr1/m;->h:I

    iget p1, p0, Lr1/m;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lr1/m;->f:I

    return-void
.end method

.method public final entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lr1/m;->c:Lr1/m$b;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lr1/m$b;

    invoke-direct {v0, p0}, Lr1/m$b;-><init>(Lr1/m;)V

    iput-object v0, p0, Lr1/m;->c:Lr1/m$b;

    return-object v0
.end method

.method public final f(Lr1/m$e;Lr1/m$e;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr1/m$e<",
            "TK;TV;>;",
            "Lr1/m$e<",
            "TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p1, Lr1/m$e;->f:Lr1/m$e;

    const/4 v1, 0x0

    iput-object v1, p1, Lr1/m$e;->f:Lr1/m$e;

    if-eqz p2, :cond_0

    iput-object v0, p2, Lr1/m$e;->f:Lr1/m$e;

    :cond_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Lr1/m$e;->d:Lr1/m$e;

    if-ne v1, p1, :cond_1

    iput-object p2, v0, Lr1/m$e;->d:Lr1/m$e;

    return-void

    :cond_1
    iput-object p2, v0, Lr1/m$e;->h:Lr1/m$e;

    return-void

    :cond_2
    iput-object p2, p0, Lr1/m;->g:Lr1/m$e;

    return-void
.end method

.method public final g(Lr1/m$e;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr1/m$e<",
            "TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p1, Lr1/m$e;->d:Lr1/m$e;

    iget-object v1, p1, Lr1/m$e;->h:Lr1/m$e;

    iget-object v2, v1, Lr1/m$e;->d:Lr1/m$e;

    iget-object v3, v1, Lr1/m$e;->h:Lr1/m$e;

    iput-object v2, p1, Lr1/m$e;->h:Lr1/m$e;

    if-eqz v2, :cond_0

    iput-object p1, v2, Lr1/m$e;->f:Lr1/m$e;

    :cond_0
    invoke-virtual {p0, p1, v1}, Lr1/m;->f(Lr1/m$e;Lr1/m$e;)V

    iput-object p1, v1, Lr1/m$e;->d:Lr1/m$e;

    iput-object v1, p1, Lr1/m$e;->f:Lr1/m$e;

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    iget v0, v0, Lr1/m$e;->b:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v2, :cond_2

    iget v2, v2, Lr1/m$e;->b:I

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lr1/m$e;->b:I

    if-eqz v3, :cond_3

    iget v4, v3, Lr1/m$e;->b:I

    :cond_3
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, v1, Lr1/m$e;->b:I

    return-void
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lr1/m;->c(Ljava/lang/Object;)Lr1/m$e;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lr1/m$e;->i:Ljava/lang/Object;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final h(Lr1/m$e;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr1/m$e<",
            "TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p1, Lr1/m$e;->d:Lr1/m$e;

    iget-object v1, p1, Lr1/m$e;->h:Lr1/m$e;

    iget-object v2, v0, Lr1/m$e;->d:Lr1/m$e;

    iget-object v3, v0, Lr1/m$e;->h:Lr1/m$e;

    iput-object v3, p1, Lr1/m$e;->d:Lr1/m$e;

    if-eqz v3, :cond_0

    iput-object p1, v3, Lr1/m$e;->f:Lr1/m$e;

    :cond_0
    invoke-virtual {p0, p1, v0}, Lr1/m;->f(Lr1/m$e;Lr1/m$e;)V

    iput-object p1, v0, Lr1/m$e;->h:Lr1/m$e;

    iput-object v0, p1, Lr1/m$e;->f:Lr1/m$e;

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    iget v1, v1, Lr1/m$e;->b:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v3, :cond_2

    iget v3, v3, Lr1/m$e;->b:I

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lr1/m$e;->b:I

    if-eqz v2, :cond_3

    iget v4, v2, Lr1/m$e;->b:I

    :cond_3
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lr1/m$e;->b:I

    return-void
.end method

.method public final keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lr1/m;->e:Lr1/m$c;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lr1/m$c;

    invoke-direct {v0, p0}, Lr1/m$c;-><init>(Lr1/m;)V

    iput-object v0, p0, Lr1/m;->e:Lr1/m$c;

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    const-string v0, "key == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lr1/m;->a(Ljava/lang/Object;Z)Lr1/m$e;

    move-result-object p1

    iget-object v0, p1, Lr1/m$e;->i:Ljava/lang/Object;

    iput-object p2, p1, Lr1/m$e;->i:Ljava/lang/Object;

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lr1/m;->c(Ljava/lang/Object;)Lr1/m$e;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lr1/m;->e(Lr1/m$e;Z)V

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p1, Lr1/m$e;->i:Ljava/lang/Object;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final size()I
    .registers 2

    iget v0, p0, Lr1/m;->h:I

    return v0
.end method
