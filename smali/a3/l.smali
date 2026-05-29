.class public La3/l;
.super La3/t0;
.source "SourceFile"


# instance fields
.field public final synthetic e:I


# direct methods
.method public constructor <init>(La3/q;Lc3/c;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, La3/l;->e:I

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, La3/t0;-><init>(La3/q;Lc3/c;Ljava/lang/Class;)V

    return-void
.end method

.method public synthetic constructor <init>(La3/q;Lc3/c;I)V
    .registers 4

    .line 2
    iput p3, p0, La3/l;->e:I

    invoke-direct {p0, p1, p2}, La3/t0;-><init>(La3/q;Lc3/c;)V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 4

    const-class v0, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class p1, Ljava/util/ArrayList;

    return-object p1

    :cond_0
    const-class v0, Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class p1, Ljava/util/HashSet;

    return-object p1

    :cond_1
    const-class v0, Ljava/util/TreeSet;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-class p1, Ljava/util/TreeSet;

    return-object p1

    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    iget-object v1, p0, La3/t0;->d:Lc3/c;

    aput-object v1, v0, p1

    new-instance p1, La3/d;

    const-string v1, "Cannot instantiate %s for %s"

    invoke-direct {p1, v1, v0}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public f(Ld3/m;)La3/z0;
    .registers 8

    iget v0, p0, La3/l;->e:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 1
    :pswitch_0
    invoke-virtual {p0, p1}, La3/t0;->a(Ld3/m;)Lc3/d;

    move-result-object p1

    invoke-virtual {p0}, La3/t0;->b()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Invalid collection %s for %s"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz p1, :cond_2

    .line 2
    invoke-interface {p1}, Lc3/d;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, La3/t0;->c(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0, v0}, La3/l;->e(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, La3/l;->h(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v1, La3/v;

    iget-object v2, p0, La3/t0;->a:La3/q;

    invoke-direct {v1, v2, p1, v0}, La3/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-array p1, v4, [Ljava/lang/Object;

    aput-object v0, p1, v3

    iget-object v0, p0, La3/t0;->d:Lc3/c;

    aput-object v0, p1, v2

    new-instance v0, La3/d;

    invoke-direct {v0, v1, p1}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 3
    :cond_2
    invoke-static {v0}, La3/t0;->c(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0, v0}, La3/l;->e(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    :cond_3
    invoke-virtual {p0, v0}, La3/l;->h(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, La3/t0;->a:La3/q;

    invoke-virtual {p1, v0}, La3/q;->d(Ljava/lang/Class;)La3/z0;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_4
    new-array p1, v4, [Ljava/lang/Object;

    aput-object v0, p1, v3

    iget-object v0, p0, La3/t0;->d:Lc3/c;

    aput-object v0, p1, v2

    new-instance v0, La3/d;

    invoke-direct {v0, v1, p1}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 4
    :goto_1
    invoke-virtual {p0, p1}, La3/t0;->a(Ld3/m;)Lc3/d;

    move-result-object p1

    invoke-virtual {p0}, La3/t0;->b()Ljava/lang/Class;

    move-result-object v0

    if-nez p1, :cond_5

    iget-object p1, p0, La3/t0;->a:La3/q;

    invoke-virtual {p1, v0}, La3/q;->d(Ljava/lang/Class;)La3/z0;

    move-result-object p1

    goto :goto_2

    :cond_5
    new-instance v0, La3/t1;

    iget-object v1, p0, La3/t0;->a:La3/q;

    invoke-direct {v0, v1, p1}, La3/t1;-><init>(La3/q;Lc3/d;)V

    move-object p1, v0

    :goto_2
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    iget-object v1, p0, La3/t0;->c:La3/t2;

    invoke-virtual {v1, p1, v0}, La3/t2;->i(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final h(Ljava/lang/Class;)Z
    .registers 3

    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method
