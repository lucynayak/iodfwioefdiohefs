.class public final Ld3/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld3/z;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ld3/z;

.field public d:Ljava/lang/String;

.field public e:Ld3/b0;

.field public f:Ld3/n;

.field public g:Ljava/lang/String;

.field public h:Ld3/v;


# direct methods
.method public constructor <init>(Ld3/z;Ld3/v;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ld3/b0;

    invoke-direct {v0, p1}, Ld3/b0;-><init>(Ld3/z;)V

    iput-object v0, p0, Ld3/y;->e:Ld3/b0;

    new-instance v0, Ld3/n;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ld3/n;-><init>(Ld3/q;I)V

    iput-object v0, p0, Ld3/y;->f:Ld3/n;

    const/4 v0, 0x3

    iput v0, p0, Ld3/y;->a:I

    iput-object p2, p0, Ld3/y;->h:Ld3/v;

    iput-object p1, p0, Ld3/y;->c:Ld3/z;

    iput-object p3, p0, Ld3/y;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ld3/y;->d(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ld3/t;
    .registers 2

    iget-object v0, p0, Ld3/y;->f:Ld3/n;

    return-object v0
.end method

.method public final d(Z)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Ld3/y;->e:Ld3/b0;

    iget-object v1, p0, Ld3/y;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ld3/b0;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    iget-object p1, p0, Ld3/y;->c:Ld3/z;

    invoke-interface {p1}, Ld3/z;->a()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final f(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Ld3/y;->g:Ljava/lang/String;

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Ld3/y;->d:Ljava/lang/String;

    return-void
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ld3/y;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ld3/y;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final h()V
    .registers 4

    iget-object v0, p0, Ld3/y;->h:Ld3/v;

    iget-object v1, v0, Ld3/v;->b:Ld3/a0;

    invoke-virtual {v1, p0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Ld3/v;->b:Ld3/a0;

    invoke-virtual {v1}, Ld3/a0;->B()Ld3/z;

    move-result-object v1

    invoke-virtual {v0, v1}, Ld3/v;->a(Ld3/z;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ld3/v;->e(Ld3/z;)V

    :cond_0
    :goto_0
    iget-object v1, v0, Ld3/v;->b:Ld3/a0;

    invoke-virtual {v1}, Ld3/a0;->B()Ld3/z;

    move-result-object v1

    if-eq v1, p0, :cond_1

    iget-object v1, v0, Ld3/v;->b:Ld3/a0;

    invoke-virtual {v1}, Ld3/a0;->A()Ld3/z;

    move-result-object v1

    invoke-virtual {v0, v1}, Ld3/v;->c(Ld3/z;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p0}, Ld3/v;->c(Ld3/z;)V

    iget-object v0, v0, Ld3/v;->b:Ld3/a0;

    invoke-virtual {v0}, Ld3/a0;->A()Ld3/z;

    :cond_2
    return-void
.end method

.method public final i()Ld3/p;
    .registers 2

    iget-object v0, p0, Ld3/y;->e:Ld3/b0;

    return-object v0
.end method

.method public final j(Ljava/lang/String;Ljava/lang/String;)Ld3/z;
    .registers 4

    iget-object v0, p0, Ld3/y;->f:Ld3/n;

    invoke-virtual {v0, p1, p2}, Ld3/n;->C(Ljava/lang/String;Ljava/lang/String;)Ld3/z;

    move-result-object p1

    return-object p1
.end method

.method public final k(Ljava/lang/String;)Ld3/z;
    .registers 3

    iget-object v0, p0, Ld3/y;->h:Ld3/v;

    invoke-virtual {v0, p0, p1}, Ld3/v;->b(Ld3/z;Ljava/lang/String;)Ld3/z;

    move-result-object p1

    return-object p1
.end method

.method public final l()I
    .registers 2

    iget v0, p0, Ld3/y;->a:I

    return v0
.end method

.method public final m()V
    .registers 1

    return-void
.end method

.method public final n(Z)V
    .registers 2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    iput p1, p0, Ld3/y;->a:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Ld3/y;->b:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "element %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
