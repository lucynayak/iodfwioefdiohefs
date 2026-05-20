.class public final Lr1/k$a;
.super Lp1/a0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr1/k;->a(Lp1/e;Lu1/a;)Lp1/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lp1/a0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:Lp1/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp1/a0<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic b:Lr1/k;

.field public final synthetic c:Lp1/e;

.field public final synthetic d:Z

.field public final synthetic e:Z

.field public final synthetic f:Lu1/a;


# direct methods
.method public constructor <init>(Lr1/k;ZZLp1/e;Lu1/a;)V
    .registers 6

    iput-object p1, p0, Lr1/k$a;->b:Lr1/k;

    iput-boolean p2, p0, Lr1/k$a;->d:Z

    iput-boolean p3, p0, Lr1/k$a;->e:Z

    iput-object p4, p0, Lr1/k$a;->c:Lp1/e;

    iput-object p5, p0, Lr1/k$a;->f:Lu1/a;

    invoke-direct {p0}, Lp1/a0;-><init>()V

    return-void
.end method


# virtual methods
.method public final read(Lv1/a;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv1/a;",
            ")TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lr1/k$a;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lv1/a;->A()V

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    iget-object v0, p0, Lr1/k$a;->a:Lp1/a0;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lr1/k$a;->c:Lp1/e;

    iget-object v1, p0, Lr1/k$a;->b:Lr1/k;

    iget-object v2, p0, Lr1/k$a;->f:Lu1/a;

    invoke-virtual {v0, v1, v2}, Lp1/e;->g(Lp1/b0;Lu1/a;)Lp1/a0;

    move-result-object v0

    iput-object v0, p0, Lr1/k$a;->a:Lp1/a0;

    .line 2
    :goto_0
    invoke-virtual {v0, p1}, Lp1/a0;->read(Lv1/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final write(Lv1/b;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv1/b;",
            "TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lr1/k$a;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lv1/b;->i()Lv1/b;

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lr1/k$a;->a:Lp1/a0;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lr1/k$a;->c:Lp1/e;

    iget-object v1, p0, Lr1/k$a;->b:Lr1/k;

    iget-object v2, p0, Lr1/k$a;->f:Lu1/a;

    invoke-virtual {v0, v1, v2}, Lp1/e;->g(Lp1/b0;Lu1/a;)Lp1/a0;

    move-result-object v0

    iput-object v0, p0, Lr1/k$a;->a:Lp1/a0;

    .line 2
    :goto_0
    invoke-virtual {v0, p1, p2}, Lp1/a0;->write(Lv1/b;Ljava/lang/Object;)V

    return-void
.end method
