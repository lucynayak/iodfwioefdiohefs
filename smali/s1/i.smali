.class public final Ls1/i;
.super Ls1/j$b;
.source "SourceFile"


# instance fields
.field public final d:Lp1/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp1/a0<",
            "*>;"
        }
    .end annotation
.end field

.field public final synthetic e:Lp1/e;

.field public final synthetic f:Ljava/lang/reflect/Field;

.field public final synthetic g:Lu1/a;

.field public final synthetic h:Z


# direct methods
.method public constructor <init>(Ls1/j;Ljava/lang/String;ZZLp1/e;Ljava/lang/reflect/Field;Lu1/a;Z)V
    .registers 9

    iput-object p5, p0, Ls1/i;->e:Lp1/e;

    iput-object p6, p0, Ls1/i;->f:Ljava/lang/reflect/Field;

    iput-object p7, p0, Ls1/i;->g:Lu1/a;

    iput-boolean p8, p0, Ls1/i;->h:Z

    invoke-direct {p0, p2, p3, p4}, Ls1/j$b;-><init>(Ljava/lang/String;ZZ)V

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    const-class p2, Lq1/a;

    invoke-virtual {p6, p2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p2

    check-cast p2, Lq1/a;

    if-eqz p2, :cond_0

    iget-object p1, p1, Ls1/j;->b:Lr1/d;

    invoke-static {p1, p5, p7, p2}, Ls1/d;->b(Lr1/d;Lp1/e;Lu1/a;Lq1/a;)Lp1/a0;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p5, p7}, Lp1/e;->f(Lu1/a;)Lp1/a0;

    move-result-object p1

    .line 3
    :goto_0
    iput-object p1, p0, Ls1/i;->d:Lp1/a0;

    return-void
.end method


# virtual methods
.method public final a(Lv1/a;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Ls1/i;->d:Lp1/a0;

    invoke-virtual {v0, p1}, Lp1/a0;->read(Lv1/a;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    iget-boolean v0, p0, Ls1/i;->h:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Ls1/i;->f:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final b(Lv1/b;Ljava/lang/Object;)V
    .registers 7

    iget-object v0, p0, Ls1/i;->f:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    new-instance v0, Ls1/m;

    iget-object v1, p0, Ls1/i;->e:Lp1/e;

    iget-object v2, p0, Ls1/i;->d:Lp1/a0;

    iget-object v3, p0, Ls1/i;->g:Lu1/a;

    invoke-virtual {v3}, Lu1/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ls1/m;-><init>(Lp1/e;Lp1/a0;Ljava/lang/reflect/Type;)V

    invoke-virtual {v0, p1, p2}, Ls1/m;->write(Lv1/b;Ljava/lang/Object;)V

    return-void
.end method

.method public final c(Ljava/lang/Object;)Z
    .registers 3

    iget-boolean v0, p0, Ls1/j$b;->c:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ls1/i;->f:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
