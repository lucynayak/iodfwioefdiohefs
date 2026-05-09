.class public final La3/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La3/y;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La3/m$a;
    }
.end annotation


# instance fields
.field public final b:La3/m$a;

.field public final c:La3/m$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La3/m$a;

    invoke-direct {v0}, La3/m$a;-><init>()V

    iput-object v0, p0, La3/m;->c:La3/m$a;

    new-instance v0, La3/m$a;

    invoke-direct {v0}, La3/m$a;-><init>()V

    iput-object v0, p0, La3/m;->b:La3/m$a;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, La3/m;->c:La3/m$a;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La3/e3;

    invoke-virtual {v1}, La3/e3;->n()La3/s;

    move-result-object v2

    .line 1
    iget-object v1, v1, La3/e3;->b:Ljava/lang/Object;

    .line 2
    invoke-interface {v2, p1, v1}, La3/s;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final B(La3/c1;Ljava/lang/Object;)V
    .locals 5

    new-instance v0, La3/e3;

    invoke-direct {v0, p1, p2}, La3/e3;-><init>(La3/c1;Ljava/lang/Object;)V

    invoke-interface {p1}, La3/c1;->o()[Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, La3/c1;->getKey()Ljava/lang/Object;

    move-result-object p1

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    iget-object v4, p0, La3/m;->b:La3/m$a;

    invoke-virtual {v4, v3, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, La3/m;->c:La3/m$a;

    invoke-virtual {p2, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, La3/m;->c:La3/m$a;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
