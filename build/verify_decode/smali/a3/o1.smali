.class public final La3/o1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:La3/v;

.field public final b:La3/b0;

.field public final c:Ld3/h;


# direct methods
.method public constructor <init>(La3/v;La3/b0;La3/t2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    iget-object p3, p3, La3/t2;->d:Ld3/h;

    .line 2
    iput-object p3, p0, La3/o1;->c:Ld3/h;

    iput-object p1, p0, La3/o1;->a:La3/v;

    iput-object p2, p0, La3/o1;->b:La3/b0;

    return-void
.end method


# virtual methods
.method public final a(La3/n1;La3/s0;)V
    .locals 4

    invoke-interface {p2}, La3/s0;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, La3/s0;->getFirst()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, La3/s0;->h()I

    move-result v2

    invoke-interface {p2}, La3/s0;->s()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1, v1, v0, v2}, La3/n1;->k(Ljava/lang/String;Ljava/lang/String;I)La3/n1;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p2}, La3/s0;->b()La3/s0;

    move-result-object p2

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, p2}, La3/o1;->a(La3/n1;La3/s0;)V

    return-void

    :cond_0
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object v1, p1, p2

    iget-object p2, p0, La3/o1;->b:La3/b0;

    aput-object p2, p1, v0

    new-instance p2, La3/d;

    const-string v0, "Element \'%s\' does not exist in %s"

    invoke-direct {p2, v0, p1}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2

    :cond_1
    invoke-interface {p2}, La3/s0;->getFirst()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-interface {p1, p2}, La3/n1;->n(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final b(La3/n1;La3/s0;)V
    .locals 5

    invoke-interface {p2}, La3/s0;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, La3/s0;->getFirst()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, La3/s0;->h()I

    move-result v2

    if-eqz v1, :cond_0

    invoke-interface {p1, v1, v0, v2}, La3/n1;->k(Ljava/lang/String;Ljava/lang/String;I)La3/n1;

    move-result-object v0

    invoke-interface {p2}, La3/s0;->b()La3/s0;

    move-result-object v1

    invoke-interface {p2}, La3/s0;->s()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0, v1}, La3/o1;->b(La3/n1;La3/s0;)V

    :cond_0
    invoke-interface {p2}, La3/s0;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, La3/s0;->getFirst()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, La3/s0;->h()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    add-int/lit8 v4, v2, -0x1

    invoke-interface {p1, v1, v4}, La3/n1;->v(Ljava/lang/String;I)La3/n1;

    move-result-object v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v1, p1, v0

    aput-object p2, p1, v3

    const/4 p2, 0x2

    iget-object v0, p0, La3/o1;->b:La3/b0;

    aput-object v0, p1, p2

    new-instance p2, La3/d;

    const-string v0, "Ordered element \'%s\' in path \'%s\' is out of sequence for %s"

    invoke-direct {p2, v0, p1}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2

    :cond_2
    :goto_0
    invoke-interface {p1, v1, v0, v2}, La3/n1;->k(Ljava/lang/String;Ljava/lang/String;I)La3/n1;

    return-void
.end method
