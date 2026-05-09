.class public final La3/i1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La3/s;


# instance fields
.field public a:La3/k1;

.field public b:Ljava/lang/Class;

.field public c:[Ljava/lang/Class;

.field public d:Ljava/lang/annotation/Annotation;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/Class;

.field public g:La3/k1;

.field public h:Ljava/lang/Class;


# direct methods
.method public constructor <init>(La3/k1;La3/k1;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, La3/k1;->d()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, La3/i1;->f:Ljava/lang/Class;

    invoke-interface {p1}, La3/k1;->c()Ljava/lang/annotation/Annotation;

    move-result-object v0

    iput-object v0, p0, La3/i1;->d:Ljava/lang/annotation/Annotation;

    invoke-interface {p1}, La3/k1;->e()[Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, La3/i1;->c:[Ljava/lang/Class;

    invoke-interface {p1}, La3/k1;->i()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, La3/i1;->b:Ljava/lang/Class;

    invoke-interface {p1}, La3/k1;->a()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, La3/i1;->h:Ljava/lang/Class;

    invoke-interface {p1}, La3/k1;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La3/i1;->e:Ljava/lang/String;

    iput-object p2, p0, La3/i1;->g:La3/k1;

    iput-object p1, p0, La3/i1;->a:La3/k1;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, La3/i1;->h:Ljava/lang/Class;

    return-object v0
.end method

.method public final b(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, La3/i1;->a:La3/k1;

    invoke-interface {v0, p1}, La3/k1;->b(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    iget-object v1, p0, La3/i1;->d:Ljava/lang/annotation/Annotation;

    invoke-interface {v1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    if-ne p1, v1, :cond_0

    iget-object v0, p0, La3/i1;->d:Ljava/lang/annotation/Annotation;

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, La3/i1;->g:La3/k1;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, La3/k1;->b(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final c()Ljava/lang/annotation/Annotation;
    .locals 1

    iget-object v0, p0, La3/i1;->d:Ljava/lang/annotation/Annotation;

    return-object v0
.end method

.method public final d()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, La3/i1;->f:Ljava/lang/Class;

    return-object v0
.end method

.method public final f(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, La3/i1;->a:La3/k1;

    invoke-interface {v0}, La3/k1;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, La3/i1;->g:La3/k1;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v1}, La3/k1;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    iget-object p2, p0, La3/i1;->e:Ljava/lang/String;

    aput-object p2, p1, v2

    aput-object v0, p1, v3

    new-instance p2, La3/d;

    const-string v0, "Property \'%s\' is read only in %s"

    invoke-direct {p2, v0, p1}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2
.end method

.method public final g()Z
    .locals 1

    iget-object v0, p0, La3/i1;->g:La3/k1;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, La3/i1;->a:La3/k1;

    invoke-interface {v0}, La3/k1;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La3/i1;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, La3/i1;->e:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "method \'%s\'"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
