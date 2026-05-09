.class public Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;
.super Landroid/support/design/widget/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScrollingViewBehavior"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/design/widget/e;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Ly1/a;->g:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    .line 1
    iput p2, p0, Landroid/support/design/widget/e;->f:I

    .line 2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;Landroid/view/View;)Z
    .registers 3

    instance-of p1, p2, Landroid/support/design/widget/AppBarLayout;

    return p1
.end method

.method public final d(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .registers 6

    .line 1
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/CoordinatorLayout$f;

    .line 2
    iget-object p1, p1, Landroid/support/design/widget/CoordinatorLayout$f;->a:Landroid/support/design/widget/CoordinatorLayout$c;

    .line 3
    instance-of v0, p1, Landroid/support/design/widget/AppBarLayout$BaseBehavior;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/design/widget/AppBarLayout$BaseBehavior;

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 4
    iget p1, p1, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->j:I

    add-int/2addr v0, p1

    .line 5
    iget p1, p0, Landroid/support/design/widget/e;->e:I

    add-int/2addr v0, p1

    .line 6
    invoke-virtual {p0, p3}, Landroid/support/design/widget/e;->w(Landroid/view/View;)I

    move-result p1

    sub-int/2addr v0, p1

    invoke-static {p2, v0}, Ld0/l;->h(Landroid/view/View;I)V

    .line 7
    :cond_0
    instance-of p1, p3, Landroid/support/design/widget/AppBarLayout;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    check-cast p3, Landroid/support/design/widget/AppBarLayout;

    .line 8
    iget-boolean p1, p3, Landroid/support/design/widget/AppBarLayout;->i:Z

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p3, p1}, Landroid/support/design/widget/AppBarLayout;->b(Z)Z

    :cond_2
    return v0
.end method

.method public final l(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 8

    invoke-virtual {p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->i(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->z(Ljava/util/List;)Landroid/support/design/widget/AppBarLayout;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    invoke-virtual {p3, v2, p2}, Landroid/graphics/Rect;->offset(II)V

    iget-object p2, p0, Landroid/support/design/widget/e;->c:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {p2, v1, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p2, p3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    xor-int/lit8 p2, p4, 0x1

    const/4 p3, 0x2

    if-eqz p2, :cond_0

    const/4 v1, 0x4

    :cond_0
    or-int p2, p3, v1

    or-int/lit8 p2, p2, 0x8

    iput p2, v0, Landroid/support/design/widget/AppBarLayout;->f:I

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return p1

    :cond_1
    return v1
.end method

.method public final bridge synthetic v(Ljava/util/List;)Landroid/view/View;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->z(Ljava/util/List;)Landroid/support/design/widget/AppBarLayout;

    move-result-object p1

    return-object p1
.end method

.method public final x(Landroid/view/View;)F
    .registers 6

    instance-of v0, p1, Landroid/support/design/widget/AppBarLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getDownNestedPreScrollRange()I

    move-result v2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/CoordinatorLayout$f;

    .line 2
    iget-object p1, p1, Landroid/support/design/widget/CoordinatorLayout$f;->a:Landroid/support/design/widget/CoordinatorLayout$c;

    .line 3
    instance-of v3, p1, Landroid/support/design/widget/AppBarLayout$BaseBehavior;

    if-eqz v3, :cond_0

    check-cast p1, Landroid/support/design/widget/AppBarLayout$BaseBehavior;

    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->y()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz v2, :cond_1

    add-int v3, v0, p1

    if-gt v3, v2, :cond_1

    return v1

    :cond_1
    sub-int/2addr v0, v2

    if-eqz v0, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    add-float/2addr p1, v1

    return p1

    :cond_2
    return v1
.end method

.method public final y(Landroid/view/View;)I
    .registers 3

    instance-of v0, p1, Landroid/support/design/widget/AppBarLayout;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    return p1
.end method

.method public final z(Ljava/util/List;)Landroid/support/design/widget/AppBarLayout;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/support/design/widget/AppBarLayout;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    instance-of v3, v2, Landroid/support/design/widget/AppBarLayout;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/support/design/widget/AppBarLayout;

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
