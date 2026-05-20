.class public abstract Landroid/support/v7/widget/m$j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/m$j$c;
    }
.end annotation


# instance fields
.field public a:Landroid/support/v7/widget/c;

.field public b:Landroid/support/v7/widget/m;

.field public final c:Landroid/support/v7/widget/m$j$a;

.field public final d:Landroid/support/v7/widget/m$j$b;

.field public e:Landroid/support/v7/widget/u;

.field public f:Landroid/support/v7/widget/u;

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:I

.field public k:I

.field public l:I

.field public m:I


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v7/widget/m$j$a;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/m$j$a;-><init>(Landroid/support/v7/widget/m$j;)V

    iput-object v0, p0, Landroid/support/v7/widget/m$j;->c:Landroid/support/v7/widget/m$j$a;

    new-instance v1, Landroid/support/v7/widget/m$j$b;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/m$j$b;-><init>(Landroid/support/v7/widget/m$j;)V

    iput-object v1, p0, Landroid/support/v7/widget/m$j;->d:Landroid/support/v7/widget/m$j$b;

    new-instance v2, Landroid/support/v7/widget/u;

    invoke-direct {v2, v0}, Landroid/support/v7/widget/u;-><init>(Landroid/support/v7/widget/u$b;)V

    iput-object v2, p0, Landroid/support/v7/widget/m$j;->e:Landroid/support/v7/widget/u;

    new-instance v0, Landroid/support/v7/widget/u;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/u;-><init>(Landroid/support/v7/widget/u$b;)V

    iput-object v0, p0, Landroid/support/v7/widget/m$j;->f:Landroid/support/v7/widget/u;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/m$j;->g:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/m$j;->h:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/m$j;->i:Z

    return-void
.end method

.method public static e(III)I
    .registers 5

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    :cond_0
    return p0

    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static y(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/support/v7/widget/m$j$c;
    .registers 6

    new-instance v0, Landroid/support/v7/widget/m$j$c;

    invoke-direct {v0}, Landroid/support/v7/widget/m$j$c;-><init>()V

    sget-object v1, La3/r0;->H:[I

    invoke-virtual {p0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, v0, Landroid/support/v7/widget/m$j$c;->a:I

    const/16 p3, 0x9

    invoke-virtual {p0, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, v0, Landroid/support/v7/widget/m$j$c;->b:I

    const/16 p2, 0x8

    invoke-virtual {p0, p2, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, v0, Landroid/support/v7/widget/m$j$c;->c:Z

    const/16 p2, 0xa

    invoke-virtual {p0, p2, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, v0, Landroid/support/v7/widget/m$j$c;->d:Z

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method


# virtual methods
.method public A()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public B(Landroid/support/v7/widget/m;)V
    .registers 2

    return-void
.end method

.method public C(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 5

    iget-object v0, p0, Landroid/support/v7/widget/m$j;->b:Landroid/support/v7/widget/m;

    iget-object v1, v0, Landroid/support/v7/widget/m;->b:Landroid/support/v7/widget/m$p;

    iget-object v1, v0, Landroid/support/v7/widget/m;->b0:Landroid/support/v7/widget/m$s;

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/m$j;->b:Landroid/support/v7/widget/m;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/m$j;->b:Landroid/support/v7/widget/m;

    invoke-virtual {v0, v2}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/m$j;->b:Landroid/support/v7/widget/m;

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    iget-object p1, p0, Landroid/support/v7/widget/m$j;->b:Landroid/support/v7/widget/m;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    return-void
.end method

.method public final D(II)V
    .registers 4

    iget-object v0, p0, Landroid/support/v7/widget/m$j;->b:Landroid/support/v7/widget/m;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/m;->h(II)V

    return-void
.end method

.method public E(Landroid/os/Parcelable;)V
    .registers 2

    return-void
.end method

.method public F()Landroid/os/Parcelable;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public G(I)V
    .registers 2

    return-void
.end method

.method public final H(Landroid/support/v7/widget/m$p;)V
    .registers 2

    invoke-virtual {p0}, Landroid/support/v7/widget/m$j;->p()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/m$j;->o(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v7/widget/m;->s(Landroid/view/View;)Landroid/support/v7/widget/m$v;

    const/4 p1, 0x0

    throw p1
.end method

.method public final I(Landroid/support/v7/widget/m$p;)V
    .registers 7

    .line 1
    iget-object v0, p1, Landroid/support/v7/widget/m$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_3

    .line 2
    iget-object v2, p1, Landroid/support/v7/widget/m$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/m$v;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 3
    invoke-static {v2}, Landroid/support/v7/widget/m;->s(Landroid/view/View;)Landroid/support/v7/widget/m$v;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/widget/m$v;->o()Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/m$v;->n(Z)V

    invoke-virtual {v3}, Landroid/support/v7/widget/m$v;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/m$j;->b:Landroid/support/v7/widget/m;

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/widget/m;->removeDetachedView(Landroid/view/View;Z)V

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/m$j;->b:Landroid/support/v7/widget/m;

    iget-object v1, v1, Landroid/support/v7/widget/m;->H:Landroid/support/v7/widget/m$g;

    if-eqz v1, :cond_2

    check-cast v1, Landroid/support/v7/widget/d;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    throw v2

    :cond_2
    const/4 v1, 0x1

    .line 5
    invoke-virtual {v3, v1}, Landroid/support/v7/widget/m$v;->n(Z)V

    .line 6
    invoke-static {v2}, Landroid/support/v7/widget/m;->s(Landroid/view/View;)Landroid/support/v7/widget/m$v;

    move-result-object v1

    iput-object v2, v1, Landroid/support/v7/widget/m$v;->j:Landroid/support/v7/widget/m$p;

    iput-boolean v0, v1, Landroid/support/v7/widget/m$v;->k:Z

    invoke-virtual {v1}, Landroid/support/v7/widget/m$v;->c()V

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/m$p;->g(Landroid/support/v7/widget/m$v;)V

    throw v2

    .line 7
    :cond_3
    iget-object v1, p1, Landroid/support/v7/widget/m$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p1, Landroid/support/v7/widget/m$p;->b:Ljava/util/ArrayList;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_4
    if-lez v0, :cond_5

    .line 8
    iget-object p1, p0, Landroid/support/v7/widget/m$j;->b:Landroid/support/v7/widget/m;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_5
    return-void
.end method

.method public final J(Landroid/support/v7/widget/m;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .registers 15

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/m$j;->u()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/m$j;->w()I

    move-result v2

    .line 2
    iget v3, p0, Landroid/support/v7/widget/m$j;->l:I

    .line 3
    invoke-virtual {p0}, Landroid/support/v7/widget/m$j;->v()I

    move-result v4

    sub-int/2addr v3, v4

    .line 4
    iget v4, p0, Landroid/support/v7/widget/m$j;->m:I

    .line 5
    invoke-virtual {p0}, Landroid/support/v7/widget/m$j;->t()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v6, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    invoke-virtual {p2}, Landroid/view/View;->getScrollX()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v6

    iget v7, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    move-result p2

    sub-int/2addr v6, p2

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    add-int/2addr p2, v5

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    add-int/2addr p3, v6

    sub-int/2addr v5, v1

    const/4 v1, 0x0

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    sub-int/2addr v6, v2

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr p2, v3

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr p3, v4

    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-virtual {p0}, Landroid/support/v7/widget/m$j;->s()I

    move-result v4

    const/4 v8, 0x1

    if-ne v4, v8, :cond_1

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v7, p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_1

    :cond_1
    if-eqz v7, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    :goto_0
    move v3, v7

    :goto_1
    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v6, p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_2
    aput v3, v0, v1

    aput v2, v0, v8

    aget p2, v0, v1

    aget p3, v0, v8

    if-eqz p5, :cond_7

    .line 6
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object p5

    if-nez p5, :cond_5

    :cond_4
    :goto_3
    const/4 p5, 0x0

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/m$j;->u()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/m$j;->w()I

    move-result v2

    .line 7
    iget v3, p0, Landroid/support/v7/widget/m$j;->l:I

    .line 8
    invoke-virtual {p0}, Landroid/support/v7/widget/m$j;->v()I

    move-result v4

    sub-int/2addr v3, v4

    .line 9
    iget v4, p0, Landroid/support/v7/widget/m$j;->m:I

    .line 10
    invoke-virtual {p0}, Landroid/support/v7/widget/m$j;->t()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/support/v7/widget/m$j;->b:Landroid/support/v7/widget/m;

    iget-object v5, v5, Landroid/support/v7/widget/m;->h:Landroid/graphics/Rect;

    invoke-virtual {p0, p5, v5}, Landroid/support/v7/widget/m$j;->r(Landroid/view/View;Landroid/graphics/Rect;)V

    iget p5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr p5, p2

    if-ge p5, v3, :cond_4

    iget p5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr p5, p2

    if-le p5, v0, :cond_4

    iget p5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr p5, p3

    if-ge p5, v4, :cond_4

    iget p5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p5, p3

    if-gt p5, v2, :cond_6

    goto :goto_3

    :cond_6
    const/4 p5, 0x1

    :goto_4
    if-eqz p5, :cond_8

    :cond_7
    if-nez p2, :cond_9

    if-eqz p3, :cond_8

    goto :goto_5

    :cond_8
    return v1

    :cond_9
    :goto_5
    if-eqz p4, :cond_a

    .line 11
    invoke-virtual {p1, p2, p3}, Landroid/support/v7/widget/m;->scrollBy(II)V

    goto :goto_6

    :cond_a
    invoke-virtual {p1, p2, p3}, Landroid/support/v7/widget/m;->F(II)V

    :goto_6
    return v8
.end method

.method public final K()V
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/m$j;->b:Landroid/support/v7/widget/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/m;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final L(Landroid/support/v7/widget/m;)V
    .registers 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v7/widget/m$j;->b:Landroid/support/v7/widget/m;

    iput-object p1, p0, Landroid/support/v7/widget/m$j;->a:Landroid/support/v7/widget/c;

    const/4 p1, 0x0

    iput p1, p0, Landroid/support/v7/widget/m$j;->l:I

    goto :goto_0

    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/m$j;->b:Landroid/support/v7/widget/m;

    iget-object v0, p1, Landroid/support/v7/widget/m;->e:Landroid/support/v7/widget/c;

    iput-object v0, p0, Landroid/support/v7/widget/m$j;->a:Landroid/support/v7/widget/c;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/m$j;->l:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    :goto_0
    iput p1, p0, Landroid/support/v7/widget/m$j;->m:I

    const/high16 p1, 0x40000000    # 2.0f

    iput p1, p0, Landroid/support/v7/widget/m$j;->j:I

    iput p1, p0, Landroid/support/v7/widget/m$j;->k:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/m$j;->b:Landroid/support/v7/widget/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/m;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public c()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public d(Landroid/support/v7/widget/m$k;)Z
    .registers 2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public f(Landroid/support/v7/widget/m$s;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public g(Landroid/support/v7/widget/m$s;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public h(Landroid/support/v7/widget/m$s;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public i(Landroid/support/v7/widget/m$s;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public j(Landroid/support/v7/widget/m$s;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public k(Landroid/support/v7/widget/m$s;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public abstract l()Landroid/support/v7/widget/m$k;
.end method

.method public m(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/m$k;
    .registers 4

    new-instance v0, Landroid/support/v7/widget/m$k;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/m$k;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public n(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/m$k;
    .registers 3

    instance-of v0, p1, Landroid/support/v7/widget/m$k;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/m$k;

    check-cast p1, Landroid/support/v7/widget/m$k;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/m$k;-><init>(Landroid/support/v7/widget/m$k;)V

    return-object v0

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/v7/widget/m$k;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/m$k;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_1
    new-instance v0, Landroid/support/v7/widget/m$k;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/m$k;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final o(I)Landroid/view/View;
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/m$j;->a:Landroid/support/v7/widget/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/c;->a(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final p()I
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/m$j;->a:Landroid/support/v7/widget/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/c;->b()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public q(Landroid/support/v7/widget/m$p;Landroid/support/v7/widget/m$s;)I
    .registers 3

    const/4 p1, 0x1

    return p1
.end method

.method public final r(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 9

    sget-object v0, Landroid/support/v7/widget/m;->r0:[I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/m$k;

    iget-object v1, v0, Landroid/support/v7/widget/m$k;->a:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p1, v0

    invoke-virtual {p2, v2, v3, v4, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public final s()I
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/m$j;->b:Landroid/support/v7/widget/m;

    sget-object v1, Ld0/l;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    return v0
.end method

.method public final t()I
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/m$j;->b:Landroid/support/v7/widget/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final u()I
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/m$j;->b:Landroid/support/v7/widget/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final v()I
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/m$j;->b:Landroid/support/v7/widget/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final w()I
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/m$j;->b:Landroid/support/v7/widget/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final x(Landroid/view/View;)I
    .registers 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/m$k;

    invoke-virtual {p1}, Landroid/support/v7/widget/m$k;->a()I

    move-result p1

    return p1
.end method

.method public z(Landroid/support/v7/widget/m$p;Landroid/support/v7/widget/m$s;)I
    .registers 3

    const/4 p1, 0x1

    return p1
.end method
