.class public Landroid/support/v7/widget/LinearLayoutManager;
.super Landroid/support/v7/widget/m$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/LinearLayoutManager$b;,
        Landroid/support/v7/widget/LinearLayoutManager$a;,
        Landroid/support/v7/widget/LinearLayoutManager$d;,
        Landroid/support/v7/widget/LinearLayoutManager$c;
    }
.end annotation


# instance fields
.field public A:I

.field public n:I

.field public o:Landroid/support/v7/widget/LinearLayoutManager$c;

.field public p:Landroid/support/v7/widget/l;

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:I

.field public w:I

.field public x:Landroid/support/v7/widget/LinearLayoutManager$d;

.field public final y:Landroid/support/v7/widget/LinearLayoutManager$a;

.field public final z:Landroid/support/v7/widget/LinearLayoutManager$b;


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Landroid/support/v7/widget/m$j;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->r:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->t:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->u:Z

    const/4 v2, -0x1

    iput v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->v:I

    const/high16 v2, -0x80000000

    iput v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->w:I

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->x:Landroid/support/v7/widget/LinearLayoutManager$d;

    new-instance v3, Landroid/support/v7/widget/LinearLayoutManager$a;

    invoke-direct {v3}, Landroid/support/v7/widget/LinearLayoutManager$a;-><init>()V

    iput-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->y:Landroid/support/v7/widget/LinearLayoutManager$a;

    new-instance v3, Landroid/support/v7/widget/LinearLayoutManager$b;

    invoke-direct {v3}, Landroid/support/v7/widget/LinearLayoutManager$b;-><init>()V

    iput-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->z:Landroid/support/v7/widget/LinearLayoutManager$b;

    const/4 v3, 0x2

    iput v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->A:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->V(I)V

    .line 1
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->r:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->r:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/m$j;->K()V

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7

    invoke-direct {p0}, Landroid/support/v7/widget/m$j;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->r:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->t:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->u:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->v:I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->w:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->x:Landroid/support/v7/widget/LinearLayoutManager$d;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager$a;

    invoke-direct {v1}, Landroid/support/v7/widget/LinearLayoutManager$a;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->y:Landroid/support/v7/widget/LinearLayoutManager$a;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager$b;

    invoke-direct {v1}, Landroid/support/v7/widget/LinearLayoutManager$b;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->z:Landroid/support/v7/widget/LinearLayoutManager$b;

    const/4 v1, 0x2

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->A:I

    invoke-static {p1, p2, p3, p4}, Landroid/support/v7/widget/m$j;->y(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/support/v7/widget/m$j$c;

    move-result-object p1

    iget p2, p1, Landroid/support/v7/widget/m$j$c;->a:I

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->V(I)V

    iget-boolean p2, p1, Landroid/support/v7/widget/m$j$c;->c:Z

    .line 2
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Ljava/lang/String;)V

    iget-boolean p3, p0, Landroid/support/v7/widget/LinearLayoutManager;->r:Z

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->r:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/m$j;->K()V

    .line 3
    :goto_0
    iget-boolean p1, p1, Landroid/support/v7/widget/m$j$c;->d:Z

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->W(Z)V

    return-void
.end method


# virtual methods
.method public final A()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final B(Landroid/support/v7/widget/m;)V
    .registers 2

    return-void
.end method

.method public final C(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/support/v7/widget/m$j;->C(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/m$j;->p()I

    move-result v0

    if-lez v0, :cond_2

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/m$j;->p()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->S(IIZ)Landroid/view/View;

    move-result-object v0

    const/4 v2, -0x1

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/m$j;->x(Landroid/view/View;)I

    move-result v0

    .line 2
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 3
    invoke-virtual {p0}, Landroid/support/v7/widget/m$j;->p()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, v2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->S(IIZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/m$j;->x(Landroid/view/View;)I

    move-result v2

    .line 4
    :goto_1
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    :cond_2
    return-void
.end method

.method public final E(Landroid/os/Parcelable;)V
    .registers 3

    instance-of v0, p1, Landroid/support/v7/widget/LinearLayoutManager$d;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v7/widget/LinearLayoutManager$d;

    iput-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->x:Landroid/support/v7/widget/LinearLayoutManager$d;

    invoke-virtual {p0}, Landroid/support/v7/widget/m$j;->K()V

    :cond_0
    return-void
.end method

.method public final F()Landroid/os/Parcelable;
    .registers 5

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->x:Landroid/support/v7/widget/LinearLayoutManager$d;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager$d;

    invoke-direct {v1, v0}, Landroid/support/v7/widget/LinearLayoutManager$d;-><init>(Landroid/support/v7/widget/LinearLayoutManager$d;)V

    return-object v1

    :cond_0
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$d;

    invoke-direct {v0}, Landroid/support/v7/widget/LinearLayoutManager$d;-><init>()V

    invoke-virtual {p0}, Landroid/support/v7/widget/m$j;->p()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->P()V

    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->q:Z

    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Z

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Landroid/support/v7/widget/LinearLayoutManager$d;->d:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->T()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Landroid/support/v7/widget/l;

    invoke-virtual {v2}, Landroid/support/v7/widget/l;->d()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Landroid/support/v7/widget/l;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/l;->b(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$d;->c:I

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/m$j;->x(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$d;->b:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->U()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/m$j;->x(Landroid/view/View;)I

    move-result v2

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$d;->b:I

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Landroid/support/v7/widget/l;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/l;->c(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Landroid/support/v7/widget/l;

    invoke-virtual {v2}, Landroid/support/v7/widget/l;->e()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$d;->c:I

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$d;->b:I

    :goto_0
    return-object v0
.end method

.method public final M(Landroid/support/v7/widget/m$s;)I
    .registers 8

    invoke-virtual {p0}, Landroid/support/v7/widget/m$j;->p()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->P()V

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Landroid/support/v7/widget/l;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->u:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->R(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->u:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->Q(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->u:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/q;->a(Landroid/support/v7/widget/m$s;Landroid/support/v7/widget/l;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/m$j;Z)I

    move-result p1

    return p1
.end method

.method public final N(Landroid/support/v7/widget/m$s;)I
    .registers 9

    invoke-virtual {p0}, Landroid/support/v7/widget/m$j;->p()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->P()V

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Landroid/support/v7/widget/l;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->u:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->R(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->u:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->Q(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->u:Z

    iget-boolean v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v6}, Landroid/support/v7/widget/q;->b(Landroid/support/v7/widget/m$s;Landroid/support/v7/widget/l;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/m$j;ZZ)I

    move-result p1

    return p1
.end method

.method public final O(Landroid/support/v7/widget/m$s;)I
    .registers 8

    invoke-virtual {p0}, Landroid/support/v7/widget/m$j;->p()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->P()V

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Landroid/support/v7/widget/l;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->u:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->R(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->u:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->Q(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->u:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/q;->c(Landroid/support/v7/widget/m$s;Landroid/support/v7/widget/l;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/m$j;Z)I

    move-result p1

    return p1
.end method

.method public final P()V
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$c;

    if-nez v0, :cond_0

    .line 1
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-direct {v0}, Landroid/support/v7/widget/LinearLayoutManager$c;-><init>()V

    .line 2
    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$c;

    :cond_0
    return-void
.end method

.method public final Q(Z)Landroid/view/View;
    .registers 4

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/m$j;->p()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/m$j;->p()I

    move-result v0

    add-int/2addr v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/support/v7/widget/LinearLayoutManager;->S(IIZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final R(Z)Landroid/view/View;
    .registers 4

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/m$j;->p()I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/m$j;->p()I

    move-result v1

    :goto_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/support/v7/widget/LinearLayoutManager;->S(IIZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final S(IIZ)Landroid/view/View;
    .registers 6

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->P()V

    const/16 v0, 0x140

    if-eqz p3, :cond_0

    const/16 p3, 0x6003

    goto :goto_0

    :cond_0
    const/16 p3, 0x140

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:I

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/m$j;->e:Landroid/support/v7/widget/u;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/m$j;->f:Landroid/support/v7/widget/u;

    :goto_1
    invoke-virtual {v1, p1, p2, p3, v0}, Landroid/support/v7/widget/u;->a(IIII)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final T()Landroid/view/View;
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/m$j;->p()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/m$j;->o(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final U()Landroid/view/View;
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/m$j;->p()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/m$j;->o(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final V(I)V
    .registers 4

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid orientation:"

    .line 1
    invoke-static {v1, p1}, La/c;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:I

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Landroid/support/v7/widget/l;

    if-nez v0, :cond_3

    :cond_2
    invoke-static {p0, p1}, Landroid/support/v7/widget/l;->a(Landroid/support/v7/widget/m$j;I)Landroid/support/v7/widget/l;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Landroid/support/v7/widget/l;

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->y:Landroid/support/v7/widget/LinearLayoutManager$a;

    iput-object v0, v1, Landroid/support/v7/widget/LinearLayoutManager$a;->a:Landroid/support/v7/widget/l;

    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:I

    invoke-virtual {p0}, Landroid/support/v7/widget/m$j;->K()V

    :cond_3
    return-void
.end method

.method public W(Z)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->t:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->t:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/m$j;->K()V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->x:Landroid/support/v7/widget/LinearLayoutManager$d;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v7/widget/m$j;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final b()Z
    .registers 2

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final c()Z
    .registers 3

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final f(Landroid/support/v7/widget/m$s;)I
    .registers 2

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->M(Landroid/support/v7/widget/m$s;)I

    move-result p1

    return p1
.end method

.method public final g(Landroid/support/v7/widget/m$s;)I
    .registers 2

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->N(Landroid/support/v7/widget/m$s;)I

    move-result p1

    return p1
.end method

.method public final h(Landroid/support/v7/widget/m$s;)I
    .registers 2

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->O(Landroid/support/v7/widget/m$s;)I

    move-result p1

    return p1
.end method

.method public final i(Landroid/support/v7/widget/m$s;)I
    .registers 2

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->M(Landroid/support/v7/widget/m$s;)I

    move-result p1

    return p1
.end method

.method public final j(Landroid/support/v7/widget/m$s;)I
    .registers 2

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->N(Landroid/support/v7/widget/m$s;)I

    move-result p1

    return p1
.end method

.method public final k(Landroid/support/v7/widget/m$s;)I
    .registers 2

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->O(Landroid/support/v7/widget/m$s;)I

    move-result p1

    return p1
.end method

.method public l()Landroid/support/v7/widget/m$k;
    .registers 3

    new-instance v0, Landroid/support/v7/widget/m$k;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/m$k;-><init>(II)V

    return-object v0
.end method
