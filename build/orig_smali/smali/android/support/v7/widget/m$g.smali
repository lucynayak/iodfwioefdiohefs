.class public abstract Landroid/support/v7/widget/m$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/m$g$c;,
        Landroid/support/v7/widget/m$g$a;,
        Landroid/support/v7/widget/m$g$b;
    }
.end annotation


# instance fields
.field public a:Landroid/support/v7/widget/m$g$b;

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/m$g$a;",
            ">;"
        }
    .end annotation
.end field

.field public c:J

.field public d:J

.field public e:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/m$g;->a:Landroid/support/v7/widget/m$g$b;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/m$g;->b:Ljava/util/ArrayList;

    const-wide/16 v0, 0x78

    iput-wide v0, p0, Landroid/support/v7/widget/m$g;->c:J

    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Landroid/support/v7/widget/m$g;->d:J

    iput-wide v0, p0, Landroid/support/v7/widget/m$g;->e:J

    return-void
.end method

.method public static a(Landroid/support/v7/widget/m$v;)I
    .locals 4

    iget v0, p0, Landroid/support/v7/widget/m$v;->f:I

    and-int/lit8 v0, v0, 0xe

    invoke-virtual {p0}, Landroid/support/v7/widget/m$v;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_2

    .line 1
    iget v1, p0, Landroid/support/v7/widget/m$v;->b:I

    .line 2
    iget-object v2, p0, Landroid/support/v7/widget/m$v;->n:Landroid/support/v7/widget/m;

    const/4 v3, -0x1

    if-nez v2, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, p0}, Landroid/support/v7/widget/m;->r(Landroid/support/v7/widget/m$v;)I

    move-result p0

    :goto_0
    if-eq v1, v3, :cond_2

    if-eq p0, v3, :cond_2

    if-eq v1, p0, :cond_2

    or-int/lit16 v0, v0, 0x800

    :cond_2
    return v0
.end method


# virtual methods
.method public final b(Landroid/support/v7/widget/m$v;)V
    .locals 8

    iget-object v0, p0, Landroid/support/v7/widget/m$g;->a:Landroid/support/v7/widget/m$g$b;

    if-eqz v0, :cond_5

    check-cast v0, Landroid/support/v7/widget/m$h;

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/m$v;->n(Z)V

    iget-object v2, p1, Landroid/support/v7/widget/m$v;->e:Landroid/support/v7/widget/m$v;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iput-object v3, p1, Landroid/support/v7/widget/m$v;->e:Landroid/support/v7/widget/m$v;

    .line 2
    :cond_0
    iget v2, p1, Landroid/support/v7/widget/m$v;->f:I

    and-int/lit8 v2, v2, 0x10

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_5

    .line 3
    iget-object v2, v0, Landroid/support/v7/widget/m$h;->a:Landroid/support/v7/widget/m;

    .line 4
    invoke-virtual {v2}, Landroid/support/v7/widget/m;->G()V

    iget-object v5, v2, Landroid/support/v7/widget/m;->e:Landroid/support/v7/widget/c;

    .line 5
    iget-object v6, v5, Landroid/support/v7/widget/c;->a:Landroid/support/v7/widget/c$b;

    check-cast v6, Landroid/support/v7/widget/n;

    invoke-virtual {v6, v3}, Landroid/support/v7/widget/n;->c(Landroid/view/View;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    invoke-virtual {v5, v3}, Landroid/support/v7/widget/c;->f(Landroid/view/View;)Z

    goto :goto_1

    :cond_2
    iget-object v7, v5, Landroid/support/v7/widget/c;->b:Landroid/support/v7/widget/c$a;

    invoke-virtual {v7, v6}, Landroid/support/v7/widget/c$a;->c(I)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, v5, Landroid/support/v7/widget/c;->b:Landroid/support/v7/widget/c$a;

    invoke-virtual {v7, v6}, Landroid/support/v7/widget/c$a;->d(I)Z

    invoke-virtual {v5, v3}, Landroid/support/v7/widget/c;->f(Landroid/view/View;)Z

    iget-object v5, v5, Landroid/support/v7/widget/c;->a:Landroid/support/v7/widget/c$b;

    check-cast v5, Landroid/support/v7/widget/n;

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/n;->d(I)V

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_4

    xor-int/lit8 v5, v1, 0x1

    .line 6
    invoke-virtual {v2, v5}, Landroid/support/v7/widget/m;->I(Z)V

    if-nez v1, :cond_5

    .line 7
    invoke-virtual {p1}, Landroid/support/v7/widget/m$v;->k()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, v0, Landroid/support/v7/widget/m$h;->a:Landroid/support/v7/widget/m;

    invoke-virtual {p1, v3, v4}, Landroid/support/v7/widget/m;->removeDetachedView(Landroid/view/View;Z)V

    goto :goto_2

    .line 8
    :cond_4
    invoke-static {v3}, Landroid/support/v7/widget/m;->s(Landroid/view/View;)Landroid/support/v7/widget/m$v;

    iget-object p1, v2, Landroid/support/v7/widget/m;->b:Landroid/support/v7/widget/m$p;

    invoke-virtual {p1, v3}, Landroid/support/v7/widget/m$p;->i(Landroid/support/v7/widget/m$v;)V

    throw v3

    :cond_5
    :goto_2
    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/m$g;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/m$g;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/m$g$a;

    invoke-interface {v2}, Landroid/support/v7/widget/m$g$a;->a()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/m$g;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public abstract d()V
.end method

.method public abstract e()Z
.end method
