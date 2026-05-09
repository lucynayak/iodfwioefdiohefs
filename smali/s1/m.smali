.class public final Ls1/m;
.super Lp1/a0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lp1/a0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lp1/e;

.field public final b:Lp1/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp1/a0<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Lp1/e;Lp1/a0;Ljava/lang/reflect/Type;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp1/e;",
            "Lp1/a0<",
            "TT;>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lp1/a0;-><init>()V

    iput-object p1, p0, Ls1/m;->a:Lp1/e;

    iput-object p2, p0, Ls1/m;->b:Lp1/a0;

    iput-object p3, p0, Ls1/m;->c:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public final read(Lv1/a;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv1/a;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Ls1/m;->b:Lp1/a0;

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

    iget-object v0, p0, Ls1/m;->b:Lp1/a0;

    iget-object v1, p0, Ls1/m;->c:Ljava/lang/reflect/Type;

    if-eqz p2, :cond_1

    .line 1
    const-class v2, Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    instance-of v2, v1, Ljava/lang/reflect/TypeVariable;

    if-nez v2, :cond_0

    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2
    :cond_1
    iget-object v2, p0, Ls1/m;->c:Ljava/lang/reflect/Type;

    if-eq v1, v2, :cond_3

    iget-object v0, p0, Ls1/m;->a:Lp1/e;

    invoke-static {v1}, Lu1/a;->get(Ljava/lang/reflect/Type;)Lu1/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lp1/e;->f(Lu1/a;)Lp1/a0;

    move-result-object v0

    instance-of v1, v0, Ls1/j$a;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Ls1/m;->b:Lp1/a0;

    instance-of v2, v1, Ls1/j$a;

    if-nez v2, :cond_3

    move-object v0, v1

    :cond_3
    :goto_0
    invoke-virtual {v0, p1, p2}, Lp1/a0;->write(Lv1/b;Ljava/lang/Object;)V

    return-void
.end method
