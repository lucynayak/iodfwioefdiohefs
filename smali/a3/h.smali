.class public final La3/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La3/w1;


# instance fields
.field public final a:Ljava/lang/annotation/Annotation;

.field public final b:Z

.field public final c:La3/s0;

.field public final d:I

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Z

.field public final i:Z

.field public final j:Ljava/lang/String;

.field public final k:Z

.field public final l:Ljava/lang/Class;


# direct methods
.method public constructor <init>(La3/w1;La3/c1;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, La3/w1;->c()Ljava/lang/annotation/Annotation;

    move-result-object v0

    iput-object v0, p0, La3/h;->a:Ljava/lang/annotation/Annotation;

    invoke-interface {p1}, La3/w1;->d()La3/s0;

    move-result-object v0

    iput-object v0, p0, La3/h;->c:La3/s0;

    invoke-interface {p1}, La3/w1;->isAttribute()Z

    move-result v0

    iput-boolean v0, p0, La3/h;->b:Z

    invoke-interface {p1}, La3/w1;->g()Z

    move-result v0

    iput-boolean v0, p0, La3/h;->h:Z

    invoke-interface {p2}, La3/c1;->e()Z

    move-result v0

    iput-boolean v0, p0, La3/h;->i:Z

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La3/h;->j:Ljava/lang/String;

    invoke-interface {p1}, La3/w1;->isText()Z

    move-result v0

    iput-boolean v0, p0, La3/h;->k:Z

    invoke-interface {p1}, La3/w1;->h()I

    move-result v0

    iput v0, p0, La3/h;->d:I

    invoke-interface {p1}, La3/w1;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La3/h;->f:Ljava/lang/String;

    invoke-interface {p1}, La3/w1;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La3/h;->g:Ljava/lang/String;

    invoke-interface {p1}, La3/w1;->a()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, La3/h;->l:Ljava/lang/Class;

    invoke-interface {p2}, La3/c1;->getKey()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, La3/h;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .registers 2

    iget-object v0, p0, La3/h;->l:Ljava/lang/Class;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, La3/h;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/annotation/Annotation;
    .registers 2

    iget-object v0, p0, La3/h;->a:Ljava/lang/annotation/Annotation;

    return-object v0
.end method

.method public final d()La3/s0;
    .registers 2

    iget-object v0, p0, La3/h;->c:La3/s0;

    return-object v0
.end method

.method public final e()Z
    .registers 2

    iget-boolean v0, p0, La3/h;->i:Z

    return v0
.end method

.method public final g()Z
    .registers 2

    iget-boolean v0, p0, La3/h;->h:Z

    return v0
.end method

.method public final getKey()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, La3/h;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, La3/h;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final h()I
    .registers 2

    iget v0, p0, La3/h;->d:I

    return v0
.end method

.method public final isAttribute()Z
    .registers 2

    iget-boolean v0, p0, La3/h;->b:Z

    return v0
.end method

.method public final isText()Z
    .registers 2

    iget-boolean v0, p0, La3/h;->k:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, La3/h;->j:Ljava/lang/String;

    return-object v0
.end method
