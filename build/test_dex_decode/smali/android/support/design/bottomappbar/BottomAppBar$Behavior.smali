.class public Landroid/support/design/bottomappbar/BottomAppBar$Behavior;
.super Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/bottomappbar/BottomAppBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/behavior/HideBottomViewOnScrollBehavior<",
        "Landroid/support/design/bottomappbar/BottomAppBar;",
        ">;"
    }
.end annotation


# instance fields
.field public final d:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar$Behavior;->d:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/design/bottomappbar/BottomAppBar$Behavior;->d:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final f(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 3

    check-cast p2, Landroid/support/design/bottomappbar/BottomAppBar;

    .line 1
    sget v0, Landroid/support/design/bottomappbar/BottomAppBar;->T:I

    .line 2
    invoke-virtual {p2}, Landroid/support/design/bottomappbar/BottomAppBar;->w()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_4

    .line 3
    iget-object v0, p2, Landroid/support/design/bottomappbar/BottomAppBar;->P:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p2, Landroid/support/design/bottomappbar/BottomAppBar;->O:Landroid/animation/Animator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {p1, p2, p3}, Landroid/support/design/widget/CoordinatorLayout;->q(Landroid/view/View;I)V

    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;->a:I

    return v1

    .line 6
    :cond_3
    invoke-static {p2}, Landroid/support/design/bottomappbar/BottomAppBar;->u(Landroid/support/design/bottomappbar/BottomAppBar;)V

    throw v2

    .line 7
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/CoordinatorLayout$f;

    const/16 p2, 0x11

    iput p2, p1, Landroid/support/design/widget/CoordinatorLayout$f;->d:I

    .line 8
    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->k()V

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->l()V

    .line 9
    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->d()V

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->e()V

    .line 10
    iget-object p1, p0, Landroid/support/design/bottomappbar/BottomAppBar$Behavior;->d:Landroid/graphics/Rect;

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    invoke-virtual {p1, v1, v1, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 12
    throw v2
.end method

.method public final p(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    check-cast p2, Landroid/support/design/bottomappbar/BottomAppBar;

    .line 1
    invoke-virtual {p2}, Landroid/support/design/bottomappbar/BottomAppBar;->getHideOnScroll()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    if-nez p6, :cond_0

    .line 2
    invoke-virtual {p0, p5}, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;->o(I)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/4 p2, 0x1

    :cond_1
    return p2
.end method

.method public final t(Landroid/view/View;)V
    .locals 2

    check-cast p1, Landroid/support/design/bottomappbar/BottomAppBar;

    .line 1
    invoke-super {p0, p1}, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;->t(Landroid/view/View;)V

    sget v0, Landroid/support/design/bottomappbar/BottomAppBar;->T:I

    .line 2
    invoke-virtual {p1}, Landroid/support/design/bottomappbar/BottomAppBar;->w()Landroid/support/design/widget/FloatingActionButton;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar$Behavior;->d:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/support/design/widget/FloatingActionButton;->f(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Landroid/support/design/bottomappbar/BottomAppBar$Behavior;->d:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    add-float/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lh/a;->b:Lf0/a;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xaf

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-void
.end method

.method public final u(Landroid/view/View;)V
    .locals 2

    check-cast p1, Landroid/support/design/bottomappbar/BottomAppBar;

    .line 1
    invoke-super {p0, p1}, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;->u(Landroid/view/View;)V

    sget v0, Landroid/support/design/bottomappbar/BottomAppBar;->T:I

    .line 2
    invoke-virtual {p1}, Landroid/support/design/bottomappbar/BottomAppBar;->w()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-static {p1}, Landroid/support/design/bottomappbar/BottomAppBar;->v(Landroid/support/design/bottomappbar/BottomAppBar;)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lh/a;->c:Lf0/c;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xe1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-void
.end method
