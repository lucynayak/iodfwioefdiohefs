.class public final Ls1/f;
.super Lv1/b;
.source "SourceFile"


# static fields
.field public static final p:Lp1/u;

.field public static final q:Ls1/f$a;


# instance fields
.field public m:Ljava/lang/String;

.field public n:Lp1/p;

.field public final o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lp1/p;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Ls1/f$a;

    invoke-direct {v0}, Ls1/f$a;-><init>()V

    sput-object v0, Ls1/f;->q:Ls1/f$a;

    new-instance v0, Lp1/u;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Lp1/u;-><init>(Ljava/lang/String;)V

    sput-object v0, Ls1/f;->p:Lp1/u;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    sget-object v0, Ls1/f;->q:Ls1/f$a;

    invoke-direct {p0, v0}, Lv1/b;-><init>(Ljava/io/Writer;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ls1/f;->o:Ljava/util/ArrayList;

    sget-object v0, Lp1/r;->a:Lp1/r;

    iput-object v0, p0, Ls1/f;->n:Lp1/p;

    return-void
.end method


# virtual methods
.method public final b()Lv1/b;
    .registers 3

    new-instance v0, Lp1/m;

    invoke-direct {v0}, Lp1/m;-><init>()V

    invoke-virtual {p0, v0}, Ls1/f;->t(Lp1/p;)V

    iget-object v1, p0, Ls1/f;->o:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final c()Lv1/b;
    .registers 3

    new-instance v0, Lp1/s;

    invoke-direct {v0}, Lp1/s;-><init>()V

    invoke-virtual {p0, v0}, Ls1/f;->t(Lp1/p;)V

    iget-object v1, p0, Ls1/f;->o:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final close()V
    .registers 3

    iget-object v0, p0, Ls1/f;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ls1/f;->o:Ljava/util/ArrayList;

    sget-object v1, Ls1/f;->p:Lp1/u;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e()Lv1/b;
    .registers 3

    iget-object v0, p0, Ls1/f;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ls1/f;->m:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ls1/f;->s()Lp1/p;

    move-result-object v0

    instance-of v0, v0, Lp1/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ls1/f;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final f()Lv1/b;
    .registers 3

    iget-object v0, p0, Ls1/f;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ls1/f;->m:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ls1/f;->s()Lp1/p;

    move-result-object v0

    instance-of v0, v0, Lp1/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ls1/f;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final flush()V
    .registers 1

    return-void
.end method

.method public final g(Ljava/lang/String;)Lv1/b;
    .registers 3

    iget-object v0, p0, Ls1/f;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ls1/f;->m:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ls1/f;->s()Lp1/p;

    move-result-object v0

    instance-of v0, v0, Lp1/s;

    if-eqz v0, :cond_0

    iput-object p1, p0, Ls1/f;->m:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final i()Lv1/b;
    .registers 2

    sget-object v0, Lp1/r;->a:Lp1/r;

    invoke-virtual {p0, v0}, Ls1/f;->t(Lp1/p;)V

    return-object p0
.end method

.method public final n(J)Lv1/b;
    .registers 4

    new-instance v0, Lp1/u;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v0, p1}, Lp1/u;-><init>(Ljava/lang/Number;)V

    invoke-virtual {p0, v0}, Ls1/f;->t(Lp1/p;)V

    return-object p0
.end method

.method public final o(Ljava/lang/Number;)Lv1/b;
    .registers 5

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lp1/r;->a:Lp1/r;

    invoke-virtual {p0, p1}, Ls1/f;->t(Lp1/p;)V

    return-object p0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lv1/b;->e:Z

    if-nez v0, :cond_2

    .line 3
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSON forbids NaN and infinities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    new-instance v0, Lp1/u;

    invoke-direct {v0, p1}, Lp1/u;-><init>(Ljava/lang/Number;)V

    invoke-virtual {p0, v0}, Ls1/f;->t(Lp1/p;)V

    return-object p0
.end method

.method public final p(Ljava/lang/String;)Lv1/b;
    .registers 3

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lp1/r;->a:Lp1/r;

    invoke-virtual {p0, p1}, Ls1/f;->t(Lp1/p;)V

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lp1/u;

    invoke-direct {v0, p1}, Lp1/u;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ls1/f;->t(Lp1/p;)V

    return-object p0
.end method

.method public final q(Z)Lv1/b;
    .registers 3

    new-instance v0, Lp1/u;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, Lp1/u;-><init>(Ljava/lang/Boolean;)V

    invoke-virtual {p0, v0}, Ls1/f;->t(Lp1/p;)V

    return-object p0
.end method

.method public final s()Lp1/p;
    .registers 3

    iget-object v0, p0, Ls1/f;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp1/p;

    return-object v0
.end method

.method public final t(Lp1/p;)V
    .registers 4

    iget-object v0, p0, Ls1/f;->m:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1
    instance-of v0, p1, Lp1/r;

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, p0, Lv1/b;->h:Z

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Ls1/f;->s()Lp1/p;

    move-result-object v0

    check-cast v0, Lp1/s;

    iget-object v1, p0, Ls1/f;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lp1/s;->C(Ljava/lang/String;Lp1/p;)V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Ls1/f;->m:Ljava/lang/String;

    return-void

    :cond_2
    iget-object v0, p0, Ls1/f;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p1, p0, Ls1/f;->n:Lp1/p;

    return-void

    :cond_3
    invoke-virtual {p0}, Ls1/f;->s()Lp1/p;

    move-result-object v0

    instance-of v1, v0, Lp1/m;

    if-eqz v1, :cond_4

    check-cast v0, Lp1/m;

    .line 4
    iget-object v0, v0, Lp1/m;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 5
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
