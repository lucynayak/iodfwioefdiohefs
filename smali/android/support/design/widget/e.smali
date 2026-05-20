.class public abstract Landroid/support/design/widget/e;
.super Landroid/support/design/widget/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/f<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Landroid/graphics/Rect;

.field public final d:Landroid/graphics/Rect;

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/support/design/widget/f;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/e;->c:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/e;->d:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/widget/e;->e:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/design/widget/e;->c:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/design/widget/e;->d:Landroid/graphics/Rect;

    const/4 p1, 0x0

    iput p1, p0, Landroid/support/design/widget/e;->e:I

    return-void
.end method


# virtual methods
.method public final g(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)Z
    .registers 11

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v2, -0x2

    if-ne v0, v2, :cond_4

    :cond_0
    invoke-virtual {p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->i(Landroid/view/View;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/design/widget/e;->v(Ljava/util/List;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    sget-object v3, Ld0/l;->a:Ljava/util/WeakHashMap;

    .line 1
    invoke-virtual {v2}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2
    invoke-virtual {p2, v4}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    return v4

    :cond_1
    invoke-static {p5}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p5

    if-nez p5, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p5

    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr p5, v3

    invoke-virtual {p0, v2}, Landroid/support/design/widget/e;->y(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, p5

    if-ne v0, v1, :cond_3

    const/high16 p5, 0x40000000    # 2.0f

    goto :goto_0

    :cond_3
    const/high16 p5, -0x80000000

    :goto_0
    invoke-static {v2, p5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p5

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/support/design/widget/CoordinatorLayout;->r(Landroid/view/View;III)V

    return v4

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public final t(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)V
    .registers 12

    invoke-virtual {p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->i(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/e;->v(Ljava/util/List;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/CoordinatorLayout$f;

    iget-object v5, p0, Landroid/support/design/widget/e;->c:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    sub-int/2addr v4, v6

    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v4, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v7, v6

    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v7, v6

    invoke-virtual {v5, v2, v3, v4, v7}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getLastWindowInsets()Ld0/q;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v3, Ld0/l;->a:Ljava/util/WeakHashMap;

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget p1, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2}, Ld0/q;->b()I

    move-result v3

    add-int/2addr v3, p1

    iput v3, v5, Landroid/graphics/Rect;->left:I

    iget p1, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2}, Ld0/q;->c()I

    move-result v2

    sub-int/2addr p1, v2

    iput p1, v5, Landroid/graphics/Rect;->right:I

    :cond_0
    iget-object p1, p0, Landroid/support/design/widget/e;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/support/design/widget/CoordinatorLayout$f;->c:I

    if-nez v1, :cond_1

    const v1, 0x800033

    const v2, 0x800033

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    move-object v6, p1

    move v7, p3

    .line 3
    invoke-static/range {v2 .. v7}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 4
    invoke-virtual {p0, v0}, Landroid/support/design/widget/e;->w(Landroid/view/View;)I

    move-result p3

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, p3

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, p3

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result p2

    sub-int/2addr p1, p2

    goto :goto_1

    .line 5
    :cond_2
    invoke-virtual {p1, p2, p3}, Landroid/support/design/widget/CoordinatorLayout;->q(Landroid/view/View;I)V

    const/4 p1, 0x0

    .line 6
    :goto_1
    iput p1, p0, Landroid/support/design/widget/e;->e:I

    return-void
.end method

.method public abstract v(Ljava/util/List;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation
.end method

.method public final w(Landroid/view/View;)I
    .registers 5

    iget v0, p0, Landroid/support/design/widget/e;->f:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/design/widget/e;->x(Landroid/view/View;)F

    move-result p1

    iget v0, p0, Landroid/support/design/widget/e;->f:I

    int-to-float v2, v0

    mul-float p1, p1, v2

    float-to-int p1, p1

    invoke-static {p1, v1, v0}, La3/r0;->l(III)I

    move-result v1

    :goto_0
    return v1
.end method

.method public x(Landroid/view/View;)F
    .registers 2

    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public y(Landroid/view/View;)I
    .registers 2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    return p1
.end method
