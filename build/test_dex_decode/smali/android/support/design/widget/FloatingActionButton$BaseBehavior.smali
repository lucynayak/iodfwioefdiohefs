.class public Landroid/support/design/widget/FloatingActionButton$BaseBehavior;
.super Landroid/support/design/widget/CoordinatorLayout$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/FloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseBehavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/support/design/widget/FloatingActionButton;",
        ">",
        "Landroid/support/design/widget/CoordinatorLayout$c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:Landroid/graphics/Rect;

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout$c;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/FloatingActionButton$BaseBehavior;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Ly1/a;->d:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroid/support/design/widget/FloatingActionButton$BaseBehavior;->b:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Z
    .locals 0

    check-cast p1, Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    const/4 p1, 0x0

    throw p1
.end method

.method public final c(Landroid/support/design/widget/CoordinatorLayout$f;)V
    .locals 1

    iget v0, p1, Landroid/support/design/widget/CoordinatorLayout$f;->h:I

    if-nez v0, :cond_0

    const/16 v0, 0x50

    iput v0, p1, Landroid/support/design/widget/CoordinatorLayout$f;->h:I

    :cond_0
    return-void
.end method

.method public final d(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    check-cast p2, Landroid/support/design/widget/FloatingActionButton;

    .line 1
    instance-of v0, p3, Landroid/support/design/widget/AppBarLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p3, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p3, p2}, Landroid/support/design/widget/FloatingActionButton$BaseBehavior;->t(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/support/design/widget/FloatingActionButton;)Z

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of v0, p1, Landroid/support/design/widget/CoordinatorLayout$f;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/support/design/widget/CoordinatorLayout$f;

    .line 3
    iget-object p1, p1, Landroid/support/design/widget/CoordinatorLayout$f;->a:Landroid/support/design/widget/CoordinatorLayout$c;

    .line 4
    instance-of p1, p1, Landroid/support/design/widget/BottomSheetBehavior;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p0, p3, p2}, Landroid/support/design/widget/FloatingActionButton$BaseBehavior;->u(Landroid/view/View;Landroid/support/design/widget/FloatingActionButton;)Z

    :cond_2
    :goto_1
    return v1
.end method

.method public final f(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 7

    check-cast p2, Landroid/support/design/widget/FloatingActionButton;

    .line 1
    invoke-virtual {p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->i(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    instance-of v5, v4, Landroid/support/design/widget/AppBarLayout;

    if-eqz v5, :cond_0

    check-cast v4, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, v4, p2}, Landroid/support/design/widget/FloatingActionButton$BaseBehavior;->t(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/support/design/widget/FloatingActionButton;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    .line 2
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    instance-of v6, v5, Landroid/support/design/widget/CoordinatorLayout$f;

    if-eqz v6, :cond_1

    check-cast v5, Landroid/support/design/widget/CoordinatorLayout$f;

    .line 3
    iget-object v5, v5, Landroid/support/design/widget/CoordinatorLayout$f;->a:Landroid/support/design/widget/CoordinatorLayout$c;

    .line 4
    instance-of v5, v5, Landroid/support/design/widget/BottomSheetBehavior;

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_2

    .line 5
    invoke-virtual {p0, v4, p2}, Landroid/support/design/widget/FloatingActionButton$BaseBehavior;->u(Landroid/view/View;Landroid/support/design/widget/FloatingActionButton;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    invoke-virtual {p1, p2, p3}, Landroid/support/design/widget/CoordinatorLayout;->q(Landroid/view/View;I)V

    const/4 p1, 0x1

    return p1
.end method

.method public final s(Landroid/view/View;Landroid/support/design/widget/FloatingActionButton;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$f;

    iget-boolean v1, p0, Landroid/support/design/widget/FloatingActionButton$BaseBehavior;->b:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 1
    :cond_0
    iget v0, v0, Landroid/support/design/widget/CoordinatorLayout$f;->f:I

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    if-eq v0, p1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p2}, Lr/n;->getUserSetVisibility()I

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final t(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/support/design/widget/FloatingActionButton;)Z
    .locals 5

    invoke-virtual {p0, p2, p3}, Landroid/support/design/widget/FloatingActionButton$BaseBehavior;->s(Landroid/view/View;Landroid/support/design/widget/FloatingActionButton;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton$BaseBehavior;->a:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButton$BaseBehavior;->a:Landroid/graphics/Rect;

    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton$BaseBehavior;->a:Landroid/graphics/Rect;

    sget-object v2, Lr/e;->a:Ljava/lang/ThreadLocal;

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2
    sget-object v1, Lr/e;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Matrix;

    if-nez v2, :cond_2

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    :goto_0
    invoke-static {p1, p2, v2}, Lr/e;->a(Landroid/view/ViewParent;Landroid/view/View;Landroid/graphics/Matrix;)V

    sget-object p1, Lr/e;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    if-nez v1, :cond_3

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget p1, v1, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr p1, v2

    float-to-int p1, p1

    iget v3, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v2

    float-to-int v3, v3

    iget v4, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v2

    float-to-int v4, v4

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, p1, v3, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 3
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getMinimumHeightForVisibleOverlappingContent()I

    move-result p2

    if-gt p1, p2, :cond_4

    invoke-virtual {p3}, Landroid/support/design/widget/FloatingActionButton;->h()V

    goto :goto_1

    :cond_4
    invoke-virtual {p3}, Landroid/support/design/widget/FloatingActionButton;->m()V

    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public final u(Landroid/view/View;Landroid/support/design/widget/FloatingActionButton;)Z
    .locals 2

    invoke-virtual {p0, p1, p2}, Landroid/support/design/widget/FloatingActionButton$BaseBehavior;->s(Landroid/view/View;Landroid/support/design/widget/FloatingActionButton;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$f;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v0

    if-ge p1, v1, :cond_1

    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->h()V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->m()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
