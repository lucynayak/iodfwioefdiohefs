.class public final Ld3/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/HashSet;

.field public final b:Ld3/a0;

.field public final c:Ld3/i;


# direct methods
.method public constructor <init>(Ljava/io/Writer;Ld3/h;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ld3/i;

    invoke-direct {v0, p1, p2}, Ld3/i;-><init>(Ljava/io/Writer;Ld3/h;)V

    iput-object v0, p0, Ld3/v;->c:Ld3/i;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Ld3/v;->a:Ljava/util/HashSet;

    new-instance p2, Ld3/a0;

    invoke-direct {p2, p1}, Ld3/a0;-><init>(Ljava/util/Set;)V

    iput-object p2, p0, Ld3/v;->b:Ld3/a0;

    return-void
.end method


# virtual methods
.method public final a(Ld3/z;)Z
    .locals 1

    iget-object v0, p0, Ld3/v;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Ld3/z;Ljava/lang/String;)Ld3/z;
    .locals 2

    iget-object v0, p0, Ld3/v;->b:Ld3/a0;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Ld3/v;->d(Ld3/z;Ljava/lang/String;)Ld3/z;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Ld3/v;->b:Ld3/a0;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Ld3/v;->b:Ld3/a0;

    invoke-virtual {v0}, Ld3/a0;->B()Ld3/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Ld3/v;->a(Ld3/z;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Ld3/v;->e(Ld3/z;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Ld3/v;->b:Ld3/a0;

    invoke-virtual {v0}, Ld3/a0;->B()Ld3/z;

    move-result-object v0

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Ld3/v;->b:Ld3/a0;

    invoke-virtual {v0}, Ld3/a0;->A()Ld3/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Ld3/v;->c(Ld3/z;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Ld3/v;->b:Ld3/a0;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Ld3/v;->f(Ld3/z;)V

    :cond_3
    invoke-virtual {p0, p1, p2}, Ld3/v;->d(Ld3/z;Ljava/lang/String;)Ld3/z;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public final c(Ld3/z;)V
    .locals 8

    invoke-interface {p1}, Ld3/q;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ld3/z;->d(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ld3/q;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Ld3/v;->f(Ld3/z;)V

    :cond_0
    if-eqz v0, :cond_5

    iget-object p1, p0, Ld3/v;->c:Ld3/i;

    .line 1
    iget-object v2, p1, Ld3/i;->b:Ld3/j;

    .line 2
    iget v3, v2, Ld3/j;->d:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Ld3/j;->d:I

    invoke-virtual {v2, v3}, Ld3/j;->a(I)Ljava/lang/String;

    move-result-object v3

    iget v4, v2, Ld3/j;->c:I

    if-lez v4, :cond_1

    iget v5, v2, Ld3/j;->b:I

    sub-int/2addr v5, v4

    iput v5, v2, Ld3/j;->b:I

    .line 3
    :cond_1
    iget v2, p1, Ld3/i;->c:I

    const/4 v4, 0x2

    const/16 v5, 0x3e

    const/16 v6, 0x2f

    if-ne v2, v4, :cond_2

    invoke-virtual {p1, v6}, Ld3/i;->e(C)V

    goto :goto_0

    :cond_2
    const/4 v7, 0x3

    if-eq v2, v7, :cond_3

    invoke-virtual {p1, v3}, Ld3/i;->f(Ljava/lang/String;)V

    :cond_3
    iget v2, p1, Ld3/i;->c:I

    if-eq v2, v4, :cond_4

    const/16 v2, 0x3c

    invoke-virtual {p1, v2}, Ld3/i;->e(C)V

    invoke-virtual {p1, v6}, Ld3/i;->e(C)V

    invoke-virtual {p1, v0, v1}, Ld3/i;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1, v5}, Ld3/i;->e(C)V

    :cond_4
    const/4 v0, 0x4

    iput v0, p1, Ld3/i;->c:I

    .line 4
    iget-object p1, p0, Ld3/v;->c:Ld3/i;

    .line 5
    iget-object v0, p1, Ld3/i;->a:Lh1/g;

    iget-object v1, p1, Ld3/i;->e:Ljava/io/BufferedWriter;

    invoke-virtual {v0, v1}, Lh1/g;->c(Ljava/io/Writer;)V

    iget-object v0, p1, Ld3/i;->a:Lh1/g;

    invoke-virtual {v0}, Lh1/g;->a()V

    iget-object p1, p1, Ld3/i;->e:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    :cond_5
    return-void
.end method

.method public final d(Ld3/z;Ljava/lang/String;)Ld3/z;
    .locals 1

    new-instance v0, Ld3/y;

    invoke-direct {v0, p1, p0, p2}, Ld3/y;-><init>(Ld3/z;Ld3/v;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Ld3/v;->b:Ld3/a0;

    .line 1
    iget-object p2, p1, Ld3/a0;->b:Ljava/util/Set;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 2
    :cond_0
    new-instance p1, Lz2/c;

    const-string p2, "Can not have a null name"

    invoke-direct {p1, p2}, Lz2/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e(Ld3/z;)V
    .locals 14

    .line 1
    invoke-interface {p1}, Ld3/z;->m()V

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Ld3/z;->d(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ld3/q;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3a

    const/4 v4, 0x2

    if-eqz v2, :cond_3

    iget-object v5, p0, Ld3/v;->c:Ld3/i;

    .line 3
    iget-object v6, v5, Ld3/i;->b:Ld3/j;

    .line 4
    iget v7, v6, Ld3/j;->d:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v6, Ld3/j;->d:I

    invoke-virtual {v6, v7}, Ld3/j;->a(I)Ljava/lang/String;

    move-result-object v7

    iget v8, v6, Ld3/j;->c:I

    if-lez v8, :cond_0

    iget v9, v6, Ld3/j;->b:I

    add-int/2addr v9, v8

    iput v9, v6, Ld3/j;->b:I

    .line 5
    :cond_0
    iget v6, v5, Ld3/i;->c:I

    if-ne v6, v4, :cond_1

    const/16 v6, 0x3e

    invoke-virtual {v5, v6}, Ld3/i;->a(C)V

    .line 6
    :cond_1
    iget-object v6, v5, Ld3/i;->a:Lh1/g;

    iget-object v8, v5, Ld3/i;->e:Ljava/io/BufferedWriter;

    invoke-virtual {v6, v8}, Lh1/g;->c(Ljava/io/Writer;)V

    iget-object v6, v5, Ld3/i;->a:Lh1/g;

    invoke-virtual {v6}, Lh1/g;->a()V

    iget-object v6, v5, Ld3/i;->e:Ljava/io/BufferedWriter;

    invoke-virtual {v6}, Ljava/io/Writer;->flush()V

    .line 7
    invoke-virtual {v5, v7}, Ld3/i;->b(Ljava/lang/String;)V

    const/16 v6, 0x3c

    invoke-virtual {v5, v6}, Ld3/i;->a(C)V

    invoke-virtual {v5, v1}, Ld3/i;->d(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5, v1}, Ld3/i;->b(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ld3/i;->a(C)V

    :cond_2
    invoke-virtual {v5, v2}, Ld3/i;->b(Ljava/lang/String;)V

    iput v4, v5, Ld3/i;->c:I

    .line 8
    :cond_3
    invoke-interface {p1}, Ld3/z;->c()Ld3/t;

    move-result-object v1

    check-cast v1, Ld3/n;

    invoke-virtual {v1}, Ld3/n;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/16 v6, 0x22

    const/16 v7, 0x3d

    const/16 v8, 0x20

    const-string v9, "Start element required"

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget v10, v1, Ld3/n;->b:I

    packed-switch v10, :pswitch_data_0

    goto :goto_1

    .line 9
    :pswitch_0
    invoke-virtual {v1, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ld3/m;

    goto :goto_2

    .line 10
    :goto_1
    invoke-virtual {v1, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ld3/z;

    .line 11
    :goto_2
    check-cast v10, Ld3/z;

    invoke-interface {v10}, Ld3/q;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v0}, Ld3/z;->d(Z)Ljava/lang/String;

    move-result-object v10

    iget-object v12, p0, Ld3/v;->c:Ld3/i;

    .line 12
    iget v13, v12, Ld3/i;->c:I

    if-ne v13, v4, :cond_4

    invoke-virtual {v12, v8}, Ld3/i;->e(C)V

    invoke-virtual {v12, v5, v10}, Ld3/i;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Ld3/i;->e(C)V

    invoke-virtual {v12, v6}, Ld3/i;->e(C)V

    invoke-virtual {v12, v11}, Ld3/i;->c(Ljava/lang/String;)V

    invoke-virtual {v12, v6}, Ld3/i;->e(C)V

    goto :goto_0

    :cond_4
    new-instance p1, Lz2/c;

    invoke-direct {p1, v9}, Lz2/c;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_5
    iget-object v0, p0, Ld3/v;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 14
    invoke-interface {p1}, Ld3/z;->i()Ld3/p;

    move-result-object p1

    check-cast p1, Ld3/b0;

    invoke-virtual {p1}, Ld3/b0;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ld3/b0;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Ld3/v;->c:Ld3/i;

    .line 15
    iget v10, v5, Ld3/i;->c:I

    if-ne v10, v4, :cond_7

    invoke-virtual {v5, v8}, Ld3/i;->e(C)V

    sget-object v10, Ld3/i;->k:[C

    .line 16
    iget-object v11, v5, Ld3/i;->a:Lh1/g;

    iget-object v12, v5, Ld3/i;->e:Ljava/io/BufferedWriter;

    invoke-virtual {v11, v12}, Lh1/g;->c(Ljava/io/Writer;)V

    iget-object v11, v5, Ld3/i;->a:Lh1/g;

    invoke-virtual {v11}, Lh1/g;->a()V

    iget-object v11, v5, Ld3/i;->e:Ljava/io/BufferedWriter;

    invoke-virtual {v11, v10}, Ljava/io/Writer;->write([C)V

    .line 17
    invoke-virtual {v5, v2}, Ld3/i;->d(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual {v5, v3}, Ld3/i;->e(C)V

    invoke-virtual {v5, v2}, Ld3/i;->f(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v5, v7}, Ld3/i;->e(C)V

    invoke-virtual {v5, v6}, Ld3/i;->e(C)V

    invoke-virtual {v5, v1}, Ld3/i;->c(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ld3/i;->e(C)V

    goto :goto_3

    :cond_7
    new-instance p1, Lz2/c;

    invoke-direct {p1, v9}, Lz2/c;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final f(Ld3/z;)V
    .locals 6

    invoke-interface {p1}, Ld3/z;->l()I

    move-result v0

    invoke-interface {p1}, Ld3/q;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v2, p0, Ld3/v;->b:Ld3/a0;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    new-instance v3, Ld3/a0$a;

    invoke-direct {v3, v2}, Ld3/a0$a;-><init>(Ld3/a0;)V

    .line 2
    :goto_0
    invoke-virtual {v3}, Ld3/a0$a;->hasNext()Z

    move-result v2

    const/4 v4, 0x3

    if-eqz v2, :cond_1

    invoke-virtual {v3}, Ld3/a0$a;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld3/z;

    if-eq v0, v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v2}, Ld3/z;->l()I

    move-result v0

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v2, p0, Ld3/v;->c:Ld3/i;

    .line 3
    iget v3, v2, Ld3/i;->c:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Ld3/i;->e(C)V

    :cond_2
    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    const-string v0, "<![CDATA["

    .line 4
    invoke-virtual {v2, v0}, Ld3/i;->f(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ld3/i;->f(Ljava/lang/String;)V

    const-string v0, "]]>"

    invoke-virtual {v2, v0}, Ld3/i;->f(Ljava/lang/String;)V

    goto :goto_2

    .line 5
    :cond_3
    invoke-virtual {v2, v1}, Ld3/i;->c(Ljava/lang/String;)V

    :goto_2
    iput v4, v2, Ld3/i;->c:I

    :cond_4
    const/4 v0, 0x0

    .line 6
    invoke-interface {p1, v0}, Ld3/z;->f(Ljava/lang/String;)V

    return-void
.end method
