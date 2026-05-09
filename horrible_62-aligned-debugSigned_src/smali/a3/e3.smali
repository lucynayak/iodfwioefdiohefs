.class public final La3/e3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La3/c1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La3/e3$a;
    }
.end annotation


# instance fields
.field public final a:La3/c1;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(La3/c1;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La3/e3;->a:La3/c1;

    iput-object p2, p0, La3/e3;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .registers 2

    iget-object v0, p0, La3/e3;->a:La3/c1;

    invoke-interface {v0}, La3/c1;->a()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, La3/e3;->a:La3/c1;

    invoke-interface {v0}, La3/c1;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/annotation/Annotation;
    .registers 2

    iget-object v0, p0, La3/e3;->a:La3/c1;

    invoke-interface {v0}, La3/c1;->c()Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public final d()La3/s0;
    .registers 2

    iget-object v0, p0, La3/e3;->a:La3/c1;

    invoke-interface {v0}, La3/c1;->d()La3/s0;

    move-result-object v0

    return-object v0
.end method

.method public final e()Z
    .registers 2

    iget-object v0, p0, La3/e3;->a:La3/c1;

    invoke-interface {v0}, La3/c1;->e()Z

    move-result v0

    return v0
.end method

.method public final getKey()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, La3/e3;->a:La3/c1;

    invoke-interface {v0}, La3/c1;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, La3/e3;->a:La3/c1;

    invoke-interface {v0}, La3/c1;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()La3/r1;
    .registers 2

    iget-object v0, p0, La3/e3;->a:La3/c1;

    invoke-interface {v0}, La3/c1;->h()La3/r1;

    move-result-object v0

    return-object v0
.end method

.method public final i()Lc3/c;
    .registers 2

    iget-object v0, p0, La3/e3;->a:La3/c1;

    invoke-interface {v0}, La3/c1;->i()Lc3/c;

    move-result-object v0

    return-object v0
.end method

.method public final isAttribute()Z
    .registers 2

    iget-object v0, p0, La3/e3;->a:La3/c1;

    invoke-interface {v0}, La3/c1;->isAttribute()Z

    move-result v0

    return v0
.end method

.method public final isText()Z
    .registers 2

    iget-object v0, p0, La3/e3;->a:La3/c1;

    invoke-interface {v0}, La3/c1;->isText()Z

    move-result v0

    return v0
.end method

.method public final j()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, La3/e3;->a:La3/c1;

    invoke-interface {v0}, La3/c1;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k()Z
    .registers 2

    iget-object v0, p0, La3/e3;->a:La3/c1;

    invoke-interface {v0}, La3/c1;->k()Z

    move-result v0

    return v0
.end method

.method public final l(La3/q;)La3/w;
    .registers 5

    iget-object v0, p0, La3/e3;->a:La3/c1;

    invoke-interface {v0, p1}, La3/c1;->l(La3/q;)La3/w;

    move-result-object p1

    instance-of v0, p1, La3/e3$a;

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, La3/e3$a;

    iget-object v1, p0, La3/e3;->a:La3/c1;

    iget-object v2, p0, La3/e3;->b:Ljava/lang/Object;

    invoke-direct {v0, p1, v1, v2}, La3/e3$a;-><init>(La3/w;La3/c1;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final m(La3/q;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, La3/e3;->a:La3/c1;

    invoke-interface {v0, p1}, La3/c1;->m(La3/q;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final n()La3/s;
    .registers 2

    iget-object v0, p0, La3/e3;->a:La3/c1;

    invoke-interface {v0}, La3/c1;->n()La3/s;

    move-result-object v0

    return-object v0
.end method

.method public final o()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, La3/e3;->a:La3/c1;

    invoke-interface {v0}, La3/c1;->o()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final p(Ljava/lang/Class;)Lc3/c;
    .registers 3

    iget-object v0, p0, La3/e3;->a:La3/c1;

    invoke-interface {v0, p1}, La3/c1;->p(Ljava/lang/Class;)Lc3/c;

    move-result-object p1

    return-object p1
.end method

.method public final q()Z
    .registers 2

    iget-object v0, p0, La3/e3;->a:La3/c1;

    invoke-interface {v0}, La3/c1;->q()Z

    move-result v0

    return v0
.end method

.method public final r()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, La3/e3;->a:La3/c1;

    invoke-interface {v0}, La3/c1;->r()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final s()Z
    .registers 2

    iget-object v0, p0, La3/e3;->a:La3/c1;

    invoke-interface {v0}, La3/c1;->s()Z

    move-result v0

    return v0
.end method

.method public final t()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, La3/e3;->a:La3/c1;

    invoke-interface {v0}, La3/c1;->t()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, La3/e3;->a:La3/c1;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(Ljava/lang/Class;)La3/c1;
    .registers 2

    return-object p0
.end method

.method public final v()Z
    .registers 2

    iget-object v0, p0, La3/e3;->a:La3/c1;

    invoke-interface {v0}, La3/c1;->v()Z

    move-result v0

    return v0
.end method

.method public final w()Z
    .registers 2

    iget-object v0, p0, La3/e3;->a:La3/c1;

    invoke-interface {v0}, La3/c1;->w()Z

    move-result v0

    return v0
.end method
