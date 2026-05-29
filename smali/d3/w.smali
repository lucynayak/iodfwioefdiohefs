.class public final Ld3/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld3/z;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ld3/p;

.field public d:Ld3/z;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ld3/z;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ld3/z;->i()Ld3/p;

    move-result-object v0

    iput-object v0, p0, Ld3/w;->c:Ld3/p;

    iput-object p1, p0, Ld3/w;->d:Ld3/z;

    iput-object p3, p0, Ld3/w;->e:Ljava/lang/String;

    iput-object p2, p0, Ld3/w;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Ld3/w;->c:Ld3/p;

    iget-object v1, p0, Ld3/w;->b:Ljava/lang/String;

    check-cast v0, Ld3/b0;

    invoke-virtual {v0, v1}, Ld3/b0;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ld3/t;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld3/t<",
            "Ld3/z;",
            ">;"
        }
    .end annotation

    new-instance v0, Ld3/n;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ld3/n;-><init>(Ld3/q;I)V

    return-object v0
.end method

.method public final d(Z)Ljava/lang/String;
    .registers 3

    iget-object p1, p0, Ld3/w;->c:Ld3/p;

    iget-object v0, p0, Ld3/w;->b:Ljava/lang/String;

    check-cast p1, Ld3/b0;

    invoke-virtual {p1, v0}, Ld3/b0;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final f(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Ld3/w;->e:Ljava/lang/String;

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Ld3/w;->b:Ljava/lang/String;

    return-void
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ld3/w;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ld3/w;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final h()V
    .registers 1

    return-void
.end method

.method public final i()Ld3/p;
    .registers 2

    iget-object v0, p0, Ld3/w;->c:Ld3/p;

    return-object v0
.end method

.method public final j(Ljava/lang/String;Ljava/lang/String;)Ld3/z;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method public final k(Ljava/lang/String;)Ld3/z;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public final l()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method public final m()V
    .registers 1

    return-void
.end method

.method public final n(Z)V
    .registers 2

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Ld3/w;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Ld3/w;->e:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "attribute %s=\'%s\'"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
