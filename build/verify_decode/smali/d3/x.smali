.class public final Ld3/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld3/z;


# instance fields
.field public a:I

.field public b:Ld3/a0;

.field public c:Ld3/n;

.field public d:Ljava/lang/String;

.field public e:Ld3/v;


# direct methods
.method public constructor <init>(Ld3/v;Ld3/a0;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ld3/n;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ld3/n;-><init>(Ld3/q;I)V

    iput-object v0, p0, Ld3/x;->c:Ld3/n;

    const/4 v0, 0x3

    iput v0, p0, Ld3/x;->a:I

    iput-object p1, p0, Ld3/x;->e:Ld3/v;

    iput-object p2, p0, Ld3/x;->b:Ld3/a0;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Ld3/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld3/t<",
            "Ld3/z;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ld3/x;->c:Ld3/n;

    return-object v0
.end method

.method public final d(Z)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ld3/x;->d:Ljava/lang/String;

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ld3/x;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Ld3/x;->b:Ld3/a0;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ld3/x;->b:Ld3/a0;

    .line 1
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld3/z;

    .line 2
    :goto_0
    invoke-interface {v0}, Ld3/z;->h()V

    return-void

    :cond_1
    new-instance v0, Lz2/c;

    const-string v1, "No root node"

    invoke-direct {v0, v1}, Lz2/c;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final i()Ld3/p;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final j(Ljava/lang/String;Ljava/lang/String;)Ld3/z;
    .locals 1

    iget-object v0, p0, Ld3/x;->c:Ld3/n;

    invoke-virtual {v0, p1, p2}, Ld3/n;->C(Ljava/lang/String;Ljava/lang/String;)Ld3/z;

    move-result-object p1

    return-object p1
.end method

.method public final k(Ljava/lang/String;)Ld3/z;
    .locals 1

    iget-object v0, p0, Ld3/x;->e:Ld3/v;

    invoke-virtual {v0, p0, p1}, Ld3/v;->b(Ld3/z;Ljava/lang/String;)Ld3/z;

    move-result-object p1

    return-object p1
.end method

.method public final l()I
    .locals 1

    iget v0, p0, Ld3/x;->a:I

    return v0
.end method

.method public final m()V
    .locals 0

    return-void
.end method

.method public final n(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    iput p1, p0, Ld3/x;->a:I

    return-void
.end method
