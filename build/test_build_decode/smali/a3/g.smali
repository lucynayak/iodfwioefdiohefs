.class public final La3/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La3/c1;


# instance fields
.field public final a:Ljava/lang/annotation/Annotation;

.field public final b:Z

.field public final c:Z

.field public final d:La3/s;

.field public final e:Z

.field public final f:La3/r1;

.field public final g:Lc3/c;

.field public final h:Ljava/lang/String;

.field public final i:La3/s0;

.field public final j:Z

.field public final k:Ljava/lang/Object;

.field public final l:La3/c1;

.field public final m:Z

.field public final n:Ljava/lang/String;

.field public final o:[Ljava/lang/String;

.field public final p:Ljava/lang/String;

.field public final q:Ljava/lang/String;

.field public final r:[Ljava/lang/String;

.field public final s:Z

.field public final t:Z

.field public final u:Ljava/lang/Class;

.field public final v:Z


# direct methods
.method public constructor <init>(La3/c1;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, La3/c1;->c()Ljava/lang/annotation/Annotation;

    move-result-object v0

    iput-object v0, p0, La3/g;->a:Ljava/lang/annotation/Annotation;

    invoke-interface {p1}, La3/c1;->d()La3/s0;

    move-result-object v0

    iput-object v0, p0, La3/g;->i:La3/s0;

    invoke-interface {p1}, La3/c1;->h()La3/r1;

    move-result-object v0

    iput-object v0, p0, La3/g;->f:La3/r1;

    invoke-interface {p1}, La3/c1;->isAttribute()Z

    move-result v0

    iput-boolean v0, p0, La3/g;->b:Z

    invoke-interface {p1}, La3/c1;->k()Z

    move-result v0

    iput-boolean v0, p0, La3/g;->c:Z

    invoke-interface {p1}, La3/c1;->n()La3/s;

    move-result-object v0

    iput-object v0, p0, La3/g;->d:La3/s;

    invoke-interface {p1}, La3/c1;->i()Lc3/c;

    move-result-object v0

    iput-object v0, p0, La3/g;->g:Lc3/c;

    invoke-interface {p1}, La3/c1;->e()Z

    move-result v0

    iput-boolean v0, p0, La3/g;->s:Z

    invoke-interface {p1}, La3/c1;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La3/g;->p:Ljava/lang/String;

    invoke-interface {p1}, La3/c1;->q()Z

    move-result v0

    iput-boolean v0, p0, La3/g;->m:Z

    invoke-interface {p1}, La3/c1;->s()Z

    move-result v0

    iput-boolean v0, p0, La3/g;->j:Z

    invoke-interface {p1}, La3/c1;->v()Z

    move-result v0

    iput-boolean v0, p0, La3/g;->v:Z

    invoke-interface {p1}, La3/c1;->t()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La3/g;->o:[Ljava/lang/String;

    invoke-interface {p1}, La3/c1;->o()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La3/g;->r:[Ljava/lang/String;

    invoke-interface {p1}, La3/c1;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La3/g;->q:Ljava/lang/String;

    invoke-interface {p1}, La3/c1;->a()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, La3/g;->u:Ljava/lang/Class;

    invoke-interface {p1}, La3/c1;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La3/g;->n:Ljava/lang/String;

    invoke-interface {p1}, La3/c1;->r()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La3/g;->h:Ljava/lang/String;

    invoke-interface {p1}, La3/c1;->w()Z

    move-result v0

    iput-boolean v0, p0, La3/g;->e:Z

    invoke-interface {p1}, La3/c1;->isText()Z

    move-result v0

    iput-boolean v0, p0, La3/g;->t:Z

    invoke-interface {p1}, La3/c1;->getKey()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, La3/g;->k:Ljava/lang/Object;

    iput-object p1, p0, La3/g;->l:La3/c1;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, La3/g;->u:Ljava/lang/Class;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La3/g;->q:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/annotation/Annotation;
    .locals 1

    iget-object v0, p0, La3/g;->a:Ljava/lang/annotation/Annotation;

    return-object v0
.end method

.method public final d()La3/s0;
    .locals 1

    iget-object v0, p0, La3/g;->i:La3/s0;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, La3/g;->s:Z

    return v0
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, La3/g;->k:Ljava/lang/Object;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La3/g;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final h()La3/r1;
    .locals 1

    iget-object v0, p0, La3/g;->f:La3/r1;

    return-object v0
.end method

.method public final i()Lc3/c;
    .locals 1

    iget-object v0, p0, La3/g;->g:Lc3/c;

    return-object v0
.end method

.method public final isAttribute()Z
    .locals 1

    iget-boolean v0, p0, La3/g;->b:Z

    return v0
.end method

.method public final isText()Z
    .locals 1

    iget-boolean v0, p0, La3/g;->t:Z

    return v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La3/g;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Z
    .locals 1

    iget-boolean v0, p0, La3/g;->c:Z

    return v0
.end method

.method public final l(La3/q;)La3/w;
    .locals 1

    iget-object v0, p0, La3/g;->l:La3/c1;

    invoke-interface {v0, p1}, La3/c1;->l(La3/q;)La3/w;

    move-result-object p1

    return-object p1
.end method

.method public final m(La3/q;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, La3/g;->l:La3/c1;

    invoke-interface {v0, p1}, La3/c1;->m(La3/q;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final n()La3/s;
    .locals 1

    iget-object v0, p0, La3/g;->d:La3/s;

    return-object v0
.end method

.method public final o()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La3/g;->r:[Ljava/lang/String;

    return-object v0
.end method

.method public final p(Ljava/lang/Class;)Lc3/c;
    .locals 1

    iget-object v0, p0, La3/g;->l:La3/c1;

    invoke-interface {v0, p1}, La3/c1;->p(Ljava/lang/Class;)Lc3/c;

    move-result-object p1

    return-object p1
.end method

.method public final q()Z
    .locals 1

    iget-boolean v0, p0, La3/g;->m:Z

    return v0
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La3/g;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final s()Z
    .locals 1

    iget-boolean v0, p0, La3/g;->j:Z

    return v0
.end method

.method public final t()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La3/g;->o:[Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La3/g;->l:La3/c1;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(Ljava/lang/Class;)La3/c1;
    .locals 1

    iget-object v0, p0, La3/g;->l:La3/c1;

    invoke-interface {v0, p1}, La3/c1;->u(Ljava/lang/Class;)La3/c1;

    move-result-object p1

    return-object p1
.end method

.method public final v()Z
    .locals 1

    iget-boolean v0, p0, La3/g;->v:Z

    return v0
.end method

.method public final w()Z
    .locals 1

    iget-boolean v0, p0, La3/g;->e:Z

    return v0
.end method
