.class public Landroid/support/v7/widget/StaggeredGridLayoutManager;
.super Landroid/support/v7/widget/m$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/StaggeredGridLayoutManager$b;,
        Landroid/support/v7/widget/StaggeredGridLayoutManager$e;,
        Landroid/support/v7/widget/StaggeredGridLayoutManager$d;,
        Landroid/support/v7/widget/StaggeredGridLayoutManager$f;,
        Landroid/support/v7/widget/StaggeredGridLayoutManager$c;
    }
.end annotation


# instance fields
.field public A:Z

.field public B:Z

.field public C:Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

.field public final D:Landroid/graphics/Rect;

.field public final E:Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

.field public F:Z

.field public final G:Landroid/support/v7/widget/StaggeredGridLayoutManager$a;

.field public n:I

.field public o:[Landroid/support/v7/widget/StaggeredGridLayoutManager$f;

.field public p:Landroid/support/v7/widget/l;

.field public q:Landroid/support/v7/widget/l;

.field public r:I

.field public final s:Landroid/support/v7/widget/g;

.field public t:Z

.field public u:Z

.field public v:Ljava/util/BitSet;

.field public w:I

.field public x:I

.field public y:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    invoke-direct {p0}, Landroid/support/v7/widget/m$j;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Z

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->w:I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->x:I

    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    invoke-direct {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->y:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->z:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->D:Landroid/graphics/Rect;

    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;)V

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->E:Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Z

    new-instance v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;)V

    iput-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->G:Landroid/support/v7/widget/StaggeredGridLayoutManager$a;

    invoke-static {p1, p2, p3, p4}, Landroid/support/v7/widget/m$j;->y(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/support/v7/widget/m$j$c;

    move-result-object p1

    iget p2, p1, Landroid/support/v7/widget/m$j$c;->a:I

    if-eqz p2, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid orientation."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Ljava/lang/String;)V

    iget p4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->r:I

    if-ne p2, p4, :cond_2

    goto :goto_1

    :cond_2
    iput p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->r:I

    iget-object p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p:Landroid/support/v7/widget/l;

    iget-object p4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q:Landroid/support/v7/widget/l;

    iput-object p4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p:Landroid/support/v7/widget/l;

    iput-object p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q:Landroid/support/v7/widget/l;

    invoke-virtual {p0}, Landroid/support/v7/widget/m$j;->K()V

    .line 2
    :goto_1
    iget p2, p1, Landroid/support/v7/widget/m$j$c;->b:I

    .line 3
    invoke-virtual {p0, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Ljava/lang/String;)V

    iget p4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n:I

    if-eq p2, p4, :cond_4

    .line 4
    iget-object p4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->y:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    invoke-virtual {p4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->a()V

    invoke-virtual {p0}, Landroid/support/v7/widget/m$j;->K()V

    .line 5
    iput p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n:I

    new-instance p2, Ljava/util/BitSet;

    iget p4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n:I

    invoke-direct {p2, p4}, Ljava/util/BitSet;-><init>(I)V

    iput-object p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v:Ljava/util/BitSet;

    iget p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n:I

    new-array p2, p2, [Landroid/support/v7/widget/StaggeredGridLayoutManager$f;

    iput-object p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:[Landroid/support/v7/widget/StaggeredGridLayoutManager$f;

    :goto_2
    iget p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n:I

    if-ge v1, p2, :cond_3

    iget-object p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:[Landroid/support/v7/widget/StaggeredGridLayoutManager$f;

    new-instance p4, Landroid/support/v7/widget/StaggeredGridLayoutManager$f;

    invoke-direct {p4, p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$f;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;I)V

    aput-object p4, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/widget/m$j;->K()V

    .line 6
    :cond_4
    iget-boolean p1, p1, Landroid/support/v7/widget/m$j$c;->c:Z

    .line 7
    invoke-virtual {p0, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->C:Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    if-eqz p2, :cond_5

    iget-boolean p3, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->i:Z

    if-eq p3, p1, :cond_5

    iput-boolean p1, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->i:Z

    :cond_5
    iput-boolean p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/m$j;->K()V

    .line 8
    new-instance p1, Landroid/support/v7/widget/g;

    invoke-direct {p1}, Landroid/support/v7/widget/g;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->s:Landroid/support/v7/widget/g;

    .line 9
    iget p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->r:I

    invoke-static {p0, p1}, Landroid/support/v7/widget/l;->a(Landroid/support/v7/widget/m$j;I)Landroid/support/v7/widget/l;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p:Landroid/support/v7/widget/l;

    iget p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->r:I

    sub-int/2addr v0, p1

    invoke-static {p0, v0}, Landroid/support/v7/widget/l;->a(Landroid/support/v7/widget/m$j;I)Landroid/support/v7/widget/l;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q:Landroid/support/v7/widget/l;

    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->z:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final B(Landroid/support/v7/widget/m;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->G:Landroid/support/v7/widget/StaggeredGridLayoutManager$a;

    .line 1
    iget-object v1, p0, Landroid/support/v7/widget/m$j;->b:Landroid/support/v7/widget/m;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:[Landroid/support/v7/widget/StaggeredGridLayoutManager$f;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$f;->c()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/widget/m;->requestLayout()V

    return-void
.end method

.method public final C(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/widget/m$j;->C(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/m$j;->p()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->R(Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->Q(Z)Landroid/view/View;

    move-result-object v0

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/m$j;->x(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/m$j;->x(Landroid/view/View;)I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final E(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    iput-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->C:Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    invoke-virtual {p0}, Landroid/support/v7/widget/m$j;->K()V

    :cond_0
    return-void
.end method

.method public final F()Landroid/os/Parcelable;
    .locals 5

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->C:Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    invoke-direct {v1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager$e;)V

    return-object v1

    :cond_0
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    invoke-direct {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;-><init>()V

    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t:Z

    iput-boolean v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->i:Z

    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Z

    iput-boolean v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->j:Z

    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->B:Z

    iput-boolean v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->k:Z

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->y:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v3, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->a:[I

    if-eqz v3, :cond_1

    iput-object v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->g:[I

    array-length v3, v3

    iput v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->f:I

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->b:Ljava/util/List;

    iput-object v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->h:Ljava/util/List;

    goto :goto_0

    :cond_1
    iput v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->f:I

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/m$j;->p()I

    move-result v1

    const/4 v3, -0x1

    if-lez v1, :cond_7

    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->T()I

    move-result v1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->S()I

    move-result v1

    :goto_1
    iput v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->b:I

    .line 1
    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Z

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->Q(Z)Landroid/view/View;

    move-result-object v1

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->R(Z)Landroid/view/View;

    move-result-object v1

    :goto_2
    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/m$j;->x(Landroid/view/View;)I

    move-result v3

    .line 2
    :goto_3
    iput v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->c:I

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n:I

    iput v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->d:I

    new-array v1, v1, [I

    iput-object v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->e:[I

    :goto_4
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n:I

    if-ge v2, v1, :cond_8

    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Z

    const/high16 v3, -0x80000000

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:[Landroid/support/v7/widget/StaggeredGridLayoutManager$f;

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager$f;->d(I)I

    move-result v1

    if-eq v1, v3, :cond_6

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p:Landroid/support/v7/widget/l;

    invoke-virtual {v3}, Landroid/support/v7/widget/l;->d()I

    move-result v3

    goto :goto_5

    :cond_5
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:[Landroid/support/v7/widget/StaggeredGridLayoutManager$f;

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager$f;->f(I)I

    move-result v1

    if-eq v1, v3, :cond_6

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p:Landroid/support/v7/widget/l;

    invoke-virtual {v3}, Landroid/support/v7/widget/l;->e()I

    move-result v3

    :goto_5
    sub-int/2addr v1, v3

    :cond_6
    iget-object v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->e:[I

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    iput v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->b:I

    iput v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->c:I

    iput v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->d:I

    :cond_8
    return-object v0
.end method

.method public final G(I)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->M()Z

    :cond_0
    return-void
.end method

.method public final M()Z
    .locals 3

    invoke-virtual {p0}, Landroid/support/v7/widget/m$j;->p()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->z:I

    if-eqz v0, :cond_2

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/m$j;->h:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->T()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->S()I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->S()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->T()I

    :goto_0
    const/4 v2, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->U()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->y:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->a()V

    .line 3
    iput-boolean v2, p0, Landroid/support/v7/widget/m$j;->g:Z

    .line 4
    invoke-virtual {p0}, Landroid/support/v7/widget/m$j;->K()V

    return v2

    :cond_2
    :goto_1
    return v1
.end method

.method public final N(Landroid/support/v7/widget/m$s;)I
    .locals 6

    invoke-virtual {p0}, Landroid/support/v7/widget/m$j;->p()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p:Landroid/support/v7/widget/l;

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->R(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->Q(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/q;->a(Landroid/support/v7/widget/m$s;Landroid/support/v7/widget/l;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/m$j;Z)I

    move-result p1

    return p1
.end method

.method public final O(Landroid/support/v7/widget/m$s;)I
    .locals 7

    invoke-virtual {p0}, Landroid/support/v7/widget/m$j;->p()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p:Landroid/support/v7/widget/l;

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->R(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->Q(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Z

    iget-boolean v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v6}, Landroid/support/v7/widget/q;->b(Landroid/support/v7/widget/m$s;Landroid/support/v7/widget/l;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/m$j;ZZ)I

    move-result p1

    return p1
.end method

.method public final P(Landroid/support/v7/widget/m$s;)I
    .locals 6

    invoke-virtual {p0}, Landroid/support/v7/widget/m$j;->p()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p:Landroid/support/v7/widget/l;

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->R(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->Q(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/q;->c(Landroid/support/v7/widget/m$s;Landroid/support/v7/widget/l;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/m$j;Z)I

    move-result p1

    return p1
.end method

.method public final Q(Z)Landroid/view/View;
    .locals 7

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p:Landroid/support/v7/widget/l;

    invoke-virtual {v0}, Landroid/support/v7/widget/l;->e()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p:Landroid/support/v7/widget/l;

    invoke-virtual {v1}, Landroid/support/v7/widget/l;->d()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/m$j;->p()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ltz v2, :cond_4

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/m$j;->o(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p:Landroid/support/v7/widget/l;

    invoke-virtual {v5, v4}, Landroid/support/v7/widget/l;->c(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p:Landroid/support/v7/widget/l;

    invoke-virtual {v6, v4}, Landroid/support/v7/widget/l;->b(Landroid/view/View;)I

    move-result v6

    if-le v6, v0, :cond_3

    if-lt v5, v1, :cond_0

    goto :goto_2

    :cond_0
    if-le v6, v1, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    if-nez v3, :cond_3

    move-object v3, v4

    goto :goto_2

    :cond_2
    :goto_1
    return-object v4

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    return-object v3
.end method

.method public final R(Z)Landroid/view/View;
    .locals 8

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p:Landroid/support/v7/widget/l;

    invoke-virtual {v0}, Landroid/support/v7/widget/l;->e()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p:Landroid/support/v7/widget/l;

    invoke-virtual {v1}, Landroid/support/v7/widget/l;->d()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/m$j;->p()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    invoke-virtual {p0, v4}, Landroid/support/v7/widget/m$j;->o(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p:Landroid/support/v7/widget/l;

    invoke-virtual {v6, v5}, Landroid/support/v7/widget/l;->c(Landroid/view/View;)I

    move-result v6

    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p:Landroid/support/v7/widget/l;

    invoke-virtual {v7, v5}, Landroid/support/v7/widget/l;->b(Landroid/view/View;)I

    move-result v7

    if-le v7, v0, :cond_3

    if-lt v6, v1, :cond_0

    goto :goto_2

    :cond_0
    if-ge v6, v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    if-nez v3, :cond_3

    move-object v3, v5

    goto :goto_2

    :cond_2
    :goto_1
    return-object v5

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-object v3
.end method

.method public final S()I
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/widget/m$j;->p()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/m$j;->o(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/m$j;->x(Landroid/view/View;)I

    move-result v1

    :goto_0
    return v1
.end method

.method public final T()I
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/m$j;->p()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/m$j;->o(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/m$j;->x(Landroid/view/View;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public final U()Landroid/view/View;
    .locals 12

    invoke-virtual {p0}, Landroid/support/v7/widget/m$j;->p()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    new-instance v2, Ljava/util/BitSet;

    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n:I

    invoke-direct {v2, v3}, Ljava/util/BitSet;-><init>(I)V

    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n:I

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3, v1}, Ljava/util/BitSet;->set(IIZ)V

    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->r:I

    const/4 v5, -0x1

    if-ne v3, v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->V()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    :goto_0
    iget-boolean v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Z

    if-eqz v6, :cond_1

    const/4 v6, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    move v6, v0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v6, :cond_2

    const/4 v5, 0x1

    :cond_2
    :goto_2
    if-eq v0, v6, :cond_10

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/m$j;->o(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    iget-object v9, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->c:Landroid/support/v7/widget/StaggeredGridLayoutManager$f;

    iget v9, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager$f;->e:I

    invoke-virtual {v2, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->c:Landroid/support/v7/widget/StaggeredGridLayoutManager$f;

    .line 1
    iget-boolean v10, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Z

    const/high16 v11, -0x80000000

    if-eqz v10, :cond_4

    .line 2
    iget v10, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager$f;->c:I

    if-eq v10, v11, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v9}, Landroid/support/v7/widget/StaggeredGridLayoutManager$f;->a()V

    iget v10, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager$f;->c:I

    .line 3
    :goto_3
    iget-object v11, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p:Landroid/support/v7/widget/l;

    invoke-virtual {v11}, Landroid/support/v7/widget/l;->d()I

    move-result v11

    if-ge v10, v11, :cond_6

    iget-object v10, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager$f;->a:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int/2addr v11, v1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    goto :goto_5

    .line 4
    :cond_4
    iget v10, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager$f;->b:I

    if-eq v10, v11, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v9}, Landroid/support/v7/widget/StaggeredGridLayoutManager$f;->b()V

    iget v10, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager$f;->b:I

    .line 5
    :goto_4
    iget-object v11, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p:Landroid/support/v7/widget/l;

    invoke-virtual {v11}, Landroid/support/v7/widget/l;->e()I

    move-result v11

    if-le v10, v11, :cond_6

    iget-object v10, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager$f;->a:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    :goto_5
    check-cast v10, Landroid/view/View;

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager$f;->e(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v9, 0x1

    goto :goto_6

    :cond_6
    const/4 v9, 0x0

    :goto_6
    if-eqz v9, :cond_7

    return-object v7

    .line 6
    :cond_7
    iget-object v9, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->c:Landroid/support/v7/widget/StaggeredGridLayoutManager$f;

    iget v9, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager$f;->e:I

    invoke-virtual {v2, v9}, Ljava/util/BitSet;->clear(I)V

    :cond_8
    add-int v9, v0, v5

    if-eq v9, v6, :cond_f

    invoke-virtual {p0, v9}, Landroid/support/v7/widget/m$j;->o(I)Landroid/view/View;

    move-result-object v9

    iget-boolean v10, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Z

    if-eqz v10, :cond_a

    iget-object v10, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p:Landroid/support/v7/widget/l;

    invoke-virtual {v10, v7}, Landroid/support/v7/widget/l;->b(Landroid/view/View;)I

    move-result v10

    iget-object v11, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p:Landroid/support/v7/widget/l;

    invoke-virtual {v11, v9}, Landroid/support/v7/widget/l;->b(Landroid/view/View;)I

    move-result v11

    if-ge v10, v11, :cond_9

    return-object v7

    :cond_9
    if-ne v10, v11, :cond_c

    goto :goto_7

    :cond_a
    iget-object v10, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p:Landroid/support/v7/widget/l;

    invoke-virtual {v10, v7}, Landroid/support/v7/widget/l;->c(Landroid/view/View;)I

    move-result v10

    iget-object v11, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p:Landroid/support/v7/widget/l;

    invoke-virtual {v11, v9}, Landroid/support/v7/widget/l;->c(Landroid/view/View;)I

    move-result v11

    if-le v10, v11, :cond_b

    return-object v7

    :cond_b
    if-ne v10, v11, :cond_c

    :goto_7
    const/4 v10, 0x1

    goto :goto_8

    :cond_c
    const/4 v10, 0x0

    :goto_8
    if-eqz v10, :cond_f

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    iget-object v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->c:Landroid/support/v7/widget/StaggeredGridLayoutManager$f;

    iget v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$f;->e:I

    iget-object v9, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->c:Landroid/support/v7/widget/StaggeredGridLayoutManager$f;

    iget v9, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager$f;->e:I

    sub-int/2addr v8, v9

    if-gez v8, :cond_d

    const/4 v8, 0x1

    goto :goto_9

    :cond_d
    const/4 v8, 0x0

    :goto_9
    if-gez v3, :cond_e

    const/4 v9, 0x1

    goto :goto_a

    :cond_e
    const/4 v9, 0x0

    :goto_a
    if-eq v8, v9, :cond_f

    return-object v7

    :cond_f
    add-int/2addr v0, v5

    goto/16 :goto_2

    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method

.method public final V()Z
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/widget/m$j;->s()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->C:Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v7/widget/m$j;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->r:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final c()Z
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->r:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final d(Landroid/support/v7/widget/m$k;)Z
    .locals 0

    instance-of p1, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    return p1
.end method

.method public final f(Landroid/support/v7/widget/m$s;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->N(Landroid/support/v7/widget/m$s;)I

    move-result p1

    return p1
.end method

.method public final g(Landroid/support/v7/widget/m$s;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->O(Landroid/support/v7/widget/m$s;)I

    move-result p1

    return p1
.end method

.method public final h(Landroid/support/v7/widget/m$s;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->P(Landroid/support/v7/widget/m$s;)I

    move-result p1

    return p1
.end method

.method public final i(Landroid/support/v7/widget/m$s;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->N(Landroid/support/v7/widget/m$s;)I

    move-result p1

    return p1
.end method

.method public final j(Landroid/support/v7/widget/m$s;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->O(Landroid/support/v7/widget/m$s;)I

    move-result p1

    return p1
.end method

.method public final k(Landroid/support/v7/widget/m$s;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->P(Landroid/support/v7/widget/m$s;)I

    move-result p1

    return p1
.end method

.method public final l()Landroid/support/v7/widget/m$k;
    .locals 3

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->r:I

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;-><init>(II)V

    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    invoke-direct {v0, v2, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;-><init>(II)V

    return-object v0
.end method

.method public final m(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/m$k;
    .locals 1

    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final n(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/m$k;
    .locals 1

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final q(Landroid/support/v7/widget/m$p;Landroid/support/v7/widget/m$s;)I
    .locals 0

    iget p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->r:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n:I

    return p1

    :cond_0
    return p2
.end method

.method public final z(Landroid/support/v7/widget/m$p;Landroid/support/v7/widget/m$s;)I
    .locals 0

    iget p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->r:I

    if-nez p1, :cond_0

    iget p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n:I

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
