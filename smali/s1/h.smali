.class public final Ls1/h;
.super Lp1/a0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lp1/a0<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Ls1/h$a;


# instance fields
.field public final a:Lp1/e;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ls1/h$a;

    invoke-direct {v0}, Ls1/h$a;-><init>()V

    sput-object v0, Ls1/h;->b:Ls1/h$a;

    return-void
.end method

.method public constructor <init>(Lp1/e;)V
    .registers 2

    invoke-direct {p0}, Lp1/a0;-><init>()V

    iput-object p1, p0, Ls1/h;->a:Lp1/e;

    return-void
.end method


# virtual methods
.method public final read(Lv1/a;)Ljava/lang/Object;
    .registers 5

    invoke-virtual {p1}, Lv1/a;->v()I

    move-result v0

    invoke-static {v0}, Lz0/a;->a(I)I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lv1/a;->r()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1
    invoke-virtual {p1}, Lv1/a;->l()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p1}, Lv1/a;->m()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-virtual {p1}, Lv1/a;->t()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    new-instance v0, Lr1/m;

    invoke-direct {v0}, Lr1/m;-><init>()V

    invoke-virtual {p1}, Lv1/a;->b()V

    :goto_0
    invoke-virtual {p1}, Lv1/a;->j()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lv1/a;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Ls1/h;->read(Lv1/a;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lr1/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lv1/a;->f()V

    return-object v0

    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lv1/a;->a()V

    :goto_1
    invoke-virtual {p1}, Lv1/a;->j()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0, p1}, Ls1/h;->read(Lv1/a;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Lv1/a;->e()V

    return-object v0
.end method

.method public final write(Lv1/b;Ljava/lang/Object;)V
    .registers 5

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lv1/b;->i()Lv1/b;

    return-void

    :cond_0
    iget-object v0, p0, Ls1/h;->a:Lp1/e;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-static {v1}, Lu1/a;->get(Ljava/lang/Class;)Lu1/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lp1/e;->f(Lu1/a;)Lp1/a0;

    move-result-object v0

    .line 2
    instance-of v1, v0, Ls1/h;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lv1/b;->c()Lv1/b;

    invoke-virtual {p1}, Lv1/b;->f()Lv1/b;

    return-void

    :cond_1
    invoke-virtual {v0, p1, p2}, Lp1/a0;->write(Lv1/b;Ljava/lang/Object;)V

    return-void
.end method
