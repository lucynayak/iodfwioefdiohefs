.class public final Ls1/b$a;
.super Lp1/a0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lp1/a0<",
        "Ljava/util/Collection<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field public final a:Lr1/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr1/n<",
            "+",
            "Ljava/util/Collection<",
            "TE;>;>;"
        }
    .end annotation
.end field

.field public final b:Ls1/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp1/a0<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lp1/e;Ljava/lang/reflect/Type;Lp1/a0;Lr1/n;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp1/e;",
            "Ljava/lang/reflect/Type;",
            "Lp1/a0<",
            "TE;>;",
            "Lr1/n<",
            "+",
            "Ljava/util/Collection<",
            "TE;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lp1/a0;-><init>()V

    new-instance v0, Ls1/m;

    invoke-direct {v0, p1, p3, p2}, Ls1/m;-><init>(Lp1/e;Lp1/a0;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Ls1/b$a;->b:Ls1/m;

    iput-object p4, p0, Ls1/b$a;->a:Lr1/n;

    return-void
.end method


# virtual methods
.method public final read(Lv1/a;)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p1}, Lv1/a;->v()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lv1/a;->r()V

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Ls1/b$a;->a:Lr1/n;

    invoke-interface {v0}, Lr1/n;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1}, Lv1/a;->a()V

    :goto_0
    invoke-virtual {p1}, Lv1/a;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ls1/b$a;->b:Ls1/m;

    invoke-virtual {v1, p1}, Ls1/m;->read(Lv1/a;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lv1/a;->e()V

    move-object p1, v0

    :goto_1
    return-object p1
.end method

.method public final write(Lv1/b;Ljava/lang/Object;)V
    .registers 5

    check-cast p2, Ljava/util/Collection;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lv1/b;->i()Lv1/b;

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lv1/b;->b()Lv1/b;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Ls1/b$a;->b:Ls1/m;

    invoke-virtual {v1, p1, v0}, Ls1/m;->write(Lv1/b;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lv1/b;->e()Lv1/b;

    :goto_1
    return-void
.end method
