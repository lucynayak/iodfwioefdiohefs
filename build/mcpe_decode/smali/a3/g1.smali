.class public final La3/g1;
.super Ljava/util/LinkedHashMap;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final synthetic b:I

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, La3/g1;->b:I

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v1, v0}, La3/g1;-><init>(Ljava/lang/Object;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p2, p0, La3/g1;->b:I

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, La3/g1;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/String;)La3/c1;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La3/c1;

    return-object p1
.end method

.method public final B()La3/g1;
    .locals 4

    new-instance v0, La3/g1;

    iget-object v1, p0, La3/g1;->c:Ljava/lang/Object;

    check-cast v1, La3/c2;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, La3/g1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0}, La3/g1;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La3/c1;

    if-eqz v2, :cond_0

    invoke-interface {v2}, La3/c1;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final C(La3/q;)Z
    .locals 2

    iget-object v0, p0, La3/g1;->c:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, La3/c2;

    if-nez v1, :cond_0

    .line 1
    iget-object p1, p1, La3/q;->f:Ljava/lang/Object;

    check-cast p1, La3/l2;

    .line 2
    iget-boolean p1, p1, La3/l2;->c:Z

    return p1

    .line 3
    :cond_0
    iget-object p1, p1, La3/q;->f:Ljava/lang/Object;

    check-cast p1, La3/l2;

    .line 4
    iget-boolean p1, p1, La3/l2;->c:Z

    if-eqz p1, :cond_1

    .line 5
    check-cast v0, La3/c2;

    invoke-interface {v0}, La3/c2;->i()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget v0, p0, La3/g1;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    invoke-virtual {p0}, Ljava/util/AbstractMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava/util/AbstractMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final v(Ljava/lang/String;I)La3/n1;
    .locals 2

    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La3/p1;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-gt p2, v1, :cond_0

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, La3/n1;

    :cond_0
    return-object v0
.end method
