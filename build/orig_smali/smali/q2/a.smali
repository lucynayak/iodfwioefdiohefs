.class public final Lq2/a;
.super Lv2/b;
.source "SourceFile"


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lr2/a;)V
    .locals 2

    invoke-direct {p0}, Lv2/b;-><init>()V

    new-instance v0, Lv2/d;

    invoke-direct {v0}, Lv2/d;-><init>()V

    .line 1
    iput-object v0, p0, Lv2/c;->b:Lv2/d;

    .line 2
    iget-object v0, p0, Lv2/c;->a:Lv2/a;

    if-nez v0, :cond_2

    iput-object p2, p0, Lv2/c;->a:Lv2/a;

    invoke-interface {p2, p0}, Lv2/a;->c(Lv2/c;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "form-data; name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lr2/a;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "; filename=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lr2/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Content-Disposition"

    invoke-virtual {p0, v0, p1}, Lq2/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-interface {p2}, Lr2/a;->d()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lr2/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lr2/a;->b()V

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Content-Type"

    invoke-virtual {p0, v0, p1}, Lq2/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_1
    invoke-interface {p2}, Lr2/a;->a()V

    invoke-interface {p2}, Lr2/a;->a()V

    const-string p1, "Content-Transfer-Encoding"

    const-string p2, "binary"

    invoke-virtual {p0, p1, p2}, Lq2/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "body already set"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lv2/c;->b:Lv2/d;

    .line 2
    new-instance v1, Lq2/d;

    invoke-direct {v1, p1, p2}, Lq2/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lv2/d;->A(Lw2/a;)V

    return-void
.end method
