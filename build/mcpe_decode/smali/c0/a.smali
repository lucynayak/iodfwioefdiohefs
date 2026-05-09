.class public final Lc0/a;
.super Lc0/j;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lc0/j<",
        "TK;TV;>;",
        "Ljava/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public i:Lc0/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc0/g<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc0/j;-><init>()V

    return-void
.end method

.method public constructor <init>(Lc0/j;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lc0/j;-><init>()V

    if-eqz p1, :cond_1

    .line 2
    iget v0, p1, Lc0/j;->d:I

    iget v1, p0, Lc0/j;->d:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lc0/j;->b(I)V

    iget v1, p0, Lc0/j;->d:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    if-lez v0, :cond_1

    iget-object v1, p1, Lc0/j;->b:[I

    iget-object v3, p0, Lc0/j;->b:[I

    invoke-static {v1, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p1, Lc0/j;->c:[Ljava/lang/Object;

    iget-object v1, p0, Lc0/j;->c:[Ljava/lang/Object;

    shl-int/lit8 v3, v0, 0x1

    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lc0/j;->d:I

    goto :goto_1

    :cond_0
    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Lc0/j;->h(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v2}, Lc0/j;->j(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lc0/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public final entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lc0/a;->k()Lc0/g;

    move-result-object v0

    iget-object v1, v0, Lc0/g;->a:Lc0/g$b;

    if-nez v1, :cond_0

    new-instance v1, Lc0/g$b;

    invoke-direct {v1, v0}, Lc0/g$b;-><init>(Lc0/g;)V

    iput-object v1, v0, Lc0/g;->a:Lc0/g$b;

    :cond_0
    iget-object v0, v0, Lc0/g;->a:Lc0/g$b;

    return-object v0
.end method

.method public final k()Lc0/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc0/g<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lc0/a;->i:Lc0/a$a;

    if-nez v0, :cond_0

    new-instance v0, Lc0/a$a;

    invoke-direct {v0, p0}, Lc0/a$a;-><init>(Lc0/a;)V

    iput-object v0, p0, Lc0/a;->i:Lc0/a$a;

    :cond_0
    iget-object v0, p0, Lc0/a;->i:Lc0/a$a;

    return-object v0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lc0/a;->k()Lc0/g;

    move-result-object v0

    iget-object v1, v0, Lc0/g;->b:Lc0/g$c;

    if-nez v1, :cond_0

    new-instance v1, Lc0/g$c;

    invoke-direct {v1, v0}, Lc0/g$c;-><init>(Lc0/g;)V

    iput-object v1, v0, Lc0/g;->b:Lc0/g$c;

    :cond_0
    iget-object v0, v0, Lc0/g;->b:Lc0/g$c;

    return-object v0
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    iget v0, p0, Lc0/j;->d:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lc0/j;->b(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lc0/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lc0/a;->k()Lc0/g;

    move-result-object v0

    iget-object v1, v0, Lc0/g;->c:Lc0/g$e;

    if-nez v1, :cond_0

    new-instance v1, Lc0/g$e;

    invoke-direct {v1, v0}, Lc0/g$e;-><init>(Lc0/g;)V

    iput-object v1, v0, Lc0/g;->c:Lc0/g$e;

    :cond_0
    iget-object v0, v0, Lc0/g;->c:Lc0/g$e;

    return-object v0
.end method
