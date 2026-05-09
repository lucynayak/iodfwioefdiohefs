.class public Ld/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/b$c;,
        Ld/b$f;,
        Ld/b$d;,
        Ld/b$b;,
        Ld/b$a;,
        Ld/b$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public b:Ld/b$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/b$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public c:Ld/b$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/b$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public d:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ld/b$f<",
            "TK;TV;>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Ld/b;->d:Ljava/util/WeakHashMap;

    const/4 v0, 0x0

    iput v0, p0, Ld/b;->e:I

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/Object;)Ld/b$c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ld/b$c<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Ld/b;->b:Ld/b$c;

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Ld/b$c;->b:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, v0, Ld/b$c;->d:Ld/b$c;

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public B(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ld/b;->A(Ljava/lang/Object;)Ld/b$c;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget v1, p0, Ld/b;->e:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ld/b;->e:I

    iget-object v1, p0, Ld/b;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Ld/b;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/b$f;

    invoke-interface {v2, p1}, Ld/b$f;->a(Ld/b$c;)V

    goto :goto_0

    :cond_1
    iget-object v1, p1, Ld/b$c;->e:Ld/b$c;

    iget-object v2, p1, Ld/b$c;->d:Ld/b$c;

    if-eqz v1, :cond_2

    iput-object v2, v1, Ld/b$c;->d:Ld/b$c;

    goto :goto_1

    :cond_2
    iput-object v2, p0, Ld/b;->b:Ld/b$c;

    :goto_1
    iget-object v2, p1, Ld/b$c;->d:Ld/b$c;

    if-eqz v2, :cond_3

    iput-object v1, v2, Ld/b$c;->e:Ld/b$c;

    goto :goto_2

    :cond_3
    iput-object v1, p0, Ld/b;->c:Ld/b$c;

    :goto_2
    iput-object v0, p1, Ld/b$c;->d:Ld/b$c;

    iput-object v0, p1, Ld/b$c;->e:Ld/b$c;

    iget-object p1, p1, Ld/b$c;->c:Ljava/lang/Object;

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ld/b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ld/b;

    .line 1
    iget v1, p0, Ld/b;->e:I

    .line 2
    iget v3, p1, Ld/b;->e:I

    if-eq v1, v3, :cond_2

    return v2

    .line 3
    :cond_2
    invoke-virtual {p0}, Ld/b;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-virtual {p1}, Ld/b;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    move-object v3, v1

    check-cast v3, Ld/b$e;

    invoke-virtual {v3}, Ld/b$e;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    move-object v4, p1

    check-cast v4, Ld/b$e;

    invoke-virtual {v4}, Ld/b$e;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v3}, Ld/b$e;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-virtual {v4}, Ld/b$e;->next()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_4

    if-nez v4, :cond_5

    :cond_4
    if-eqz v3, :cond_3

    invoke-interface {v3, v4}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_5
    return v2

    :cond_6
    invoke-virtual {v3}, Ld/b$e;->hasNext()Z

    move-result v1

    if-nez v1, :cond_7

    check-cast p1, Ld/b$e;

    invoke-virtual {p1}, Ld/b$e;->hasNext()Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Ld/b$a;

    iget-object v1, p0, Ld/b;->b:Ld/b$c;

    iget-object v2, p0, Ld/b;->c:Ld/b$c;

    invoke-direct {v0, v1, v2}, Ld/b$a;-><init>(Ld/b$c;Ld/b$c;)V

    iget-object v1, p0, Ld/b;->d:Ljava/util/WeakHashMap;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, "["

    .line 1
    invoke-static {v0}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ld/b;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    move-object v2, v1

    check-cast v2, Ld/b$e;

    invoke-virtual {v2}, Ld/b$e;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ld/b$e;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ld/b$e;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
