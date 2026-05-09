.class public final La3/r1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La3/r1;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(La3/t2;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lf3/b;

    invoke-direct {v0}, Lf3/b;-><init>()V

    iput-object v0, p0, La3/r1;->a:Ljava/lang/Object;

    iput-object p1, p0, La3/r1;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ly2/k;)V
    .locals 1

    iget-object v0, p0, La3/r1;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Ld3/z;La3/r1;)V
    .locals 5

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p2, p1, v0}, La3/r1;->b(Ld3/z;La3/r1;)V

    .line 2
    :cond_0
    invoke-interface {p1}, Ld3/z;->i()Ld3/p;

    move-result-object p2

    iget-object v0, p0, La3/r1;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly2/k;

    invoke-interface {v1}, Ly2/k;->reference()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ly2/k;->prefix()Ljava/lang/String;

    move-result-object v1

    move-object v3, p2

    check-cast v3, Ld3/b0;

    .line 3
    invoke-virtual {v3, v2}, Ld3/b0;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_2
    iget-object p2, p0, La3/r1;->a:Ljava/lang/Object;

    check-cast p2, Ly2/k;

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ly2/k;->reference()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ld3/z;->g(Ljava/lang/String;)V

    :cond_3
    return-void
.end method
