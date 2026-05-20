.class public final Ld3/n;
.super Ljava/util/LinkedHashMap;
.source "SourceFile"

# interfaces
.implements Ld3/t;


# instance fields
.field public final synthetic b:I

.field public final c:Ld3/q;


# direct methods
.method public constructor <init>(Ld3/m;Ld3/e;)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Ld3/n;->b:I

    .line 1
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Ld3/n;->c:Ld3/q;

    .line 2
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ld3/a;

    new-instance v0, Ld3/k;

    iget-object v1, p0, Ld3/n;->c:Ld3/q;

    check-cast v1, Ld3/m;

    invoke-direct {v0, v1, p2}, Ld3/k;-><init>(Ld3/m;Ld3/a;)V

    invoke-interface {p2}, Ld3/a;->d()Z

    move-result p2

    if-nez p2, :cond_0

    .line 3
    iget-object p2, v0, Ld3/k;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {p0, p2, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public synthetic constructor <init>(Ld3/q;I)V
    .registers 3

    .line 5
    iput p2, p0, Ld3/n;->b:I

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Ld3/n;->c:Ld3/q;

    return-void
.end method


# virtual methods
.method public final A()Ld3/q;
    .registers 2

    iget v0, p0, Ld3/n;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Ld3/n;->c:Ld3/q;

    check-cast v0, Ld3/m;

    return-object v0

    .line 2
    :goto_0
    iget-object v0, p0, Ld3/n;->c:Ld3/q;

    check-cast v0, Ld3/z;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final B(Ljava/lang/String;Ljava/lang/String;)Ld3/q;
    .registers 5

    iget v0, p0, Ld3/n;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    new-instance v0, Ld3/k;

    iget-object v1, p0, Ld3/n;->c:Ld3/q;

    check-cast v1, Ld3/m;

    invoke-direct {v0, v1, p1, p2}, Ld3/k;-><init>(Ld3/m;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0

    .line 2
    :goto_0
    invoke-virtual {p0, p1, p2}, Ld3/n;->C(Ljava/lang/String;Ljava/lang/String;)Ld3/z;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final C(Ljava/lang/String;Ljava/lang/String;)Ld3/z;
    .registers 5

    new-instance v0, Ld3/w;

    iget-object v1, p0, Ld3/n;->c:Ld3/q;

    check-cast v1, Ld3/z;

    invoke-direct {v0, v1, p1, p2}, Ld3/w;-><init>(Ld3/z;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Ld3/n;->c:Ld3/q;

    check-cast p2, Ld3/z;

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public final D(Ljava/lang/String;)Ld3/q;
    .registers 3

    iget v0, p0, Ld3/n;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld3/m;

    return-object p1

    .line 2
    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld3/z;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2

    iget v0, p0, Ld3/n;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    invoke-virtual {p0}, Ljava/util/AbstractMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava/util/AbstractMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
