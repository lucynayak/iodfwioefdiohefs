.class public final Ld3/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ld3/f;

.field public final b:Ld3/o;

.field public final c:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Ld3/f;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Ld3/u;->c:Ljava/lang/StringBuilder;

    new-instance v0, Ld3/o;

    invoke-direct {v0}, Ld3/o;-><init>()V

    iput-object v0, p0, Ld3/u;->b:Ld3/o;

    iput-object p1, p0, Ld3/u;->a:Ld3/f;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Ld3/u;->a:Ld3/f;

    invoke-interface {v0}, Ld3/f;->peek()Ld3/e;

    move-result-object v0

    invoke-interface {v0}, Ld3/e;->isText()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ld3/e;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ld3/u;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public final b(Ld3/m;)Ld3/m;
    .registers 5

    iget-object v0, p0, Ld3/u;->b:Ld3/o;

    invoke-virtual {v0, p1}, Ld3/o;->B(Ld3/m;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Ld3/u;->a:Ld3/f;

    invoke-interface {v0}, Ld3/f;->next()Ld3/e;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ld3/e;->w()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Ld3/u;->b:Ld3/o;

    invoke-virtual {v0}, Ld3/e0;->pop()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_4

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ld3/e;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1
    new-instance v1, Ld3/l;

    invoke-direct {v1, p1, p0, v0}, Ld3/l;-><init>(Ld3/m;Ld3/u;Ld3/e;)V

    iget-object p1, p0, Ld3/u;->c:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Ld3/u;->c:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_2
    invoke-interface {v0}, Ld3/e;->l()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Ld3/u;->b:Ld3/o;

    .line 2
    invoke-virtual {p1, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v1

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final c(Ld3/m;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Ld3/u;->b:Ld3/o;

    invoke-virtual {v0, p1}, Ld3/o;->B(Ld3/m;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ld3/u;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-gtz v0, :cond_2

    iget-object v0, p0, Ld3/u;->a:Ld3/f;

    invoke-interface {v0}, Ld3/f;->peek()Ld3/e;

    move-result-object v0

    invoke-interface {v0}, Ld3/e;->w()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ld3/u;->b:Ld3/o;

    invoke-virtual {v0}, Ld3/e0;->A()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Ld3/u;->b:Ld3/o;

    invoke-virtual {v0}, Ld3/e0;->pop()Ljava/lang/Object;

    iget-object v0, p0, Ld3/u;->a:Ld3/f;

    invoke-interface {v0}, Ld3/f;->next()Ld3/e;

    goto :goto_1

    :cond_1
    :goto_0
    return-object v1

    .line 1
    :cond_2
    :goto_1
    iget-object v0, p0, Ld3/u;->a:Ld3/f;

    invoke-interface {v0}, Ld3/f;->peek()Ld3/e;

    move-result-object v0

    iget-object v2, p0, Ld3/u;->b:Ld3/o;

    invoke-virtual {v2}, Ld3/e0;->A()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_3

    invoke-interface {v0}, Ld3/e;->isText()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ld3/u;->a()V

    iget-object v0, p0, Ld3/u;->a:Ld3/f;

    invoke-interface {v0}, Ld3/f;->next()Ld3/e;

    goto :goto_1

    .line 2
    :cond_3
    iget-object p1, p0, Ld3/u;->c:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_4

    iget-object p1, p0, Ld3/u;->c:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Ld3/u;->c:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_4
    return-object v1
.end method
