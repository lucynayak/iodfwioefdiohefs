.class public final Landroid/support/design/widget/AppBarLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation runtime Landroid/support/design/widget/CoordinatorLayout$d;
    value = Landroid/support/design/widget/AppBarLayout$Behavior;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;,
        Landroid/support/design/widget/AppBarLayout$BaseBehavior;,
        Landroid/support/design/widget/AppBarLayout$Behavior;,
        Landroid/support/design/widget/AppBarLayout$a;
    }
.end annotation


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:Z

.field public f:I

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:[I


# virtual methods
.method public final a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/design/widget/AppBarLayout$a;
    .registers 3

    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/design/widget/AppBarLayout$a;

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/design/widget/AppBarLayout$a;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    return-object v0

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/design/widget/AppBarLayout$a;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/design/widget/AppBarLayout$a;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_1
    new-instance v0, Landroid/support/design/widget/AppBarLayout$a;

    invoke-direct {v0, p1}, Landroid/support/design/widget/AppBarLayout$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final b(Z)Z
    .registers 3

    iget-boolean v0, p0, Landroid/support/design/widget/AppBarLayout;->h:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/support/design/widget/AppBarLayout;->h:Z

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 2

    instance-of p1, p1, Landroid/support/design/widget/AppBarLayout$a;

    return p1
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 1
    new-instance v0, Landroid/support/design/widget/AppBarLayout$a;

    invoke-direct {v0}, Landroid/support/design/widget/AppBarLayout$a;-><init>()V

    return-object v0
.end method

.method public final generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .registers 2

    .line 2
    new-instance v0, Landroid/support/design/widget/AppBarLayout$a;

    invoke-direct {v0}, Landroid/support/design/widget/AppBarLayout$a;-><init>()V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .line 1
    new-instance v0, Landroid/support/design/widget/AppBarLayout$a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/design/widget/AppBarLayout$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout;->a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/design/widget/AppBarLayout$a;

    move-result-object p1

    return-object p1
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 4

    .line 2
    new-instance v0, Landroid/support/design/widget/AppBarLayout$a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/design/widget/AppBarLayout$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout;->a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/design/widget/AppBarLayout$a;

    move-result-object p1

    return-object p1
.end method

.method public getDownNestedPreScrollRange()I
    .registers 10

    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ltz v0, :cond_5

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/AppBarLayout$a;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget v6, v4, Landroid/support/design/widget/AppBarLayout$a;->a:I

    and-int/lit8 v7, v6, 0x5

    const/4 v8, 0x5

    if-ne v7, v8, :cond_3

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v4

    add-int/2addr v7, v2

    and-int/lit8 v2, v6, 0x8

    if-eqz v2, :cond_1

    sget-object v2, Ld0/l;->a:Ljava/util/WeakHashMap;

    .line 1
    invoke-virtual {v3}, Landroid/view/View;->getMinimumHeight()I

    move-result v2

    add-int/2addr v2, v7

    goto :goto_2

    :cond_1
    and-int/lit8 v2, v6, 0x2

    if-eqz v2, :cond_2

    .line 2
    sget-object v2, Ld0/l;->a:Ljava/util/WeakHashMap;

    .line 3
    invoke-virtual {v3}, Landroid/view/View;->getMinimumHeight()I

    move-result v2

    goto :goto_1

    .line 4
    :cond_2
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v2

    :goto_1
    sub-int/2addr v5, v2

    add-int v2, v5, v7

    goto :goto_2

    :cond_3
    if-lez v2, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    :goto_3
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->c:I

    return v0
.end method

.method public getDownNestedScrollRange()I
    .registers 10

    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/design/widget/AppBarLayout$a;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget v7, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v8, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v8

    add-int/2addr v7, v6

    iget v5, v5, Landroid/support/design/widget/AppBarLayout$a;->a:I

    and-int/lit8 v6, v5, 0x1

    if-eqz v6, :cond_2

    add-int/2addr v3, v7

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    sget-object v0, Ld0/l;->a:Ljava/util/WeakHashMap;

    .line 1
    invoke-virtual {v4}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v2

    add-int/2addr v2, v0

    sub-int/2addr v3, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->d:I

    return v0
.end method

.method public final getMinimumHeightForVisibleOverlappingContent()I
    .registers 4

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v0

    sget-object v1, Ld0/l;->a:Ljava/util/WeakHashMap;

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getMinimumHeight()I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Landroid/view/View;->getMinimumHeight()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getPendingAction()I
    .registers 2

    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->f:I

    return v0
.end method

.method public getTargetElevation()F
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final getTopInset()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final getTotalScrollRange()I
    .registers 10

    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/design/widget/AppBarLayout$a;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget v7, v5, Landroid/support/design/widget/AppBarLayout$a;->a:I

    and-int/lit8 v8, v7, 0x1

    if-eqz v8, :cond_2

    iget v8, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v6, v8

    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v5

    add-int/2addr v3, v6

    and-int/lit8 v5, v7, 0x2

    if-eqz v5, :cond_1

    sget-object v0, Ld0/l;->a:Ljava/util/WeakHashMap;

    .line 1
    invoke-virtual {v4}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    sub-int/2addr v3, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v0

    sub-int/2addr v3, v0

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->b:I

    return v0
.end method

.method public getUpNestedPreScrollRange()I
    .registers 2

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    return v0
.end method

.method public final onCreateDrawableState(I)[I
    .registers 6

    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->j:[I

    if-nez v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/design/widget/AppBarLayout;->j:[I

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->j:[I

    array-length v1, v0

    add-int/2addr p1, v1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onCreateDrawableState(I)[I

    move-result-object p1

    const/4 v1, 0x0

    iget-boolean v2, p0, Landroid/support/design/widget/AppBarLayout;->g:Z

    if-eqz v2, :cond_1

    const v3, 0x7f030210

    goto :goto_0

    :cond_1
    const v3, -0x7f030210

    :goto_0
    aput v3, v0, v1

    const/4 v1, 0x1

    if-eqz v2, :cond_2

    iget-boolean v3, p0, Landroid/support/design/widget/AppBarLayout;->h:Z

    if-eqz v3, :cond_2

    const v3, 0x7f030211

    goto :goto_1

    :cond_2
    const v3, -0x7f030211

    :goto_1
    aput v3, v0, v1

    const/4 v1, 0x2

    if-eqz v2, :cond_3

    const v3, 0x7f03020f

    goto :goto_2

    :cond_3
    const v3, -0x7f03020f

    :goto_2
    aput v3, v0, v1

    const/4 v1, 0x3

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Landroid/support/design/widget/AppBarLayout;->h:Z

    if-eqz v2, :cond_4

    const v2, 0x7f03020e

    goto :goto_3

    :cond_4
    const v2, -0x7f03020e

    :goto_3
    aput v2, v0, v1

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    move-result-object p1

    return-object p1
.end method

.method public final onLayout(ZIIII)V
    .registers 7

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    const/4 p1, -0x1

    .line 1
    iput p1, p0, Landroid/support/design/widget/AppBarLayout;->b:I

    iput p1, p0, Landroid/support/design/widget/AppBarLayout;->c:I

    iput p1, p0, Landroid/support/design/widget/AppBarLayout;->d:I

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Landroid/support/design/widget/AppBarLayout;->e:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    const/4 p3, 0x0

    :goto_0
    const/4 p4, 0x1

    if-ge p3, p2, :cond_1

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    check-cast p5, Landroid/support/design/widget/AppBarLayout$a;

    .line 3
    iget-object p5, p5, Landroid/support/design/widget/AppBarLayout$a;->b:Landroid/view/animation/Interpolator;

    if-eqz p5, :cond_0

    .line 4
    iput-boolean p4, p0, Landroid/support/design/widget/AppBarLayout;->e:Z

    goto :goto_1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-boolean p2, p0, Landroid/support/design/widget/AppBarLayout;->i:Z

    if-nez p2, :cond_5

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    const/4 p3, 0x0

    :goto_2
    if-ge p3, p2, :cond_4

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    check-cast p5, Landroid/support/design/widget/AppBarLayout$a;

    .line 6
    iget p5, p5, Landroid/support/design/widget/AppBarLayout$a;->a:I

    and-int/lit8 v0, p5, 0x1

    if-ne v0, p4, :cond_2

    and-int/lit8 p5, p5, 0xa

    if-eqz p5, :cond_2

    const/4 p5, 0x1

    goto :goto_3

    :cond_2
    const/4 p5, 0x0

    :goto_3
    if-eqz p5, :cond_3

    const/4 p2, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    :goto_4
    if-eqz p2, :cond_6

    :cond_5
    const/4 p1, 0x1

    .line 7
    :cond_6
    iget-boolean p2, p0, Landroid/support/design/widget/AppBarLayout;->g:Z

    if-eq p2, p1, :cond_7

    iput-boolean p1, p0, Landroid/support/design/widget/AppBarLayout;->g:Z

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    :cond_7
    return-void
.end method

.method public final onMeasure(II)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    const/4 p1, -0x1

    iput p1, p0, Landroid/support/design/widget/AppBarLayout;->b:I

    iput p1, p0, Landroid/support/design/widget/AppBarLayout;->c:I

    iput p1, p0, Landroid/support/design/widget/AppBarLayout;->d:I

    return-void
.end method

.method public setExpanded(Z)V
    .registers 3

    sget-object v0, Ld0/l;->a:Ljava/util/WeakHashMap;

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    or-int/2addr p1, v0

    or-int/lit8 p1, p1, 0x8

    .line 2
    iput p1, p0, Landroid/support/design/widget/AppBarLayout;->f:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setLiftOnScroll(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/support/design/widget/AppBarLayout;->i:Z

    return-void
.end method

.method public setOrientation(I)V
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "AppBarLayout is always vertical and does not support horizontal orientation"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTargetElevation(F)V
    .registers 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    new-instance v1, Landroid/animation/StateListAnimator;

    invoke-direct {v1}, Landroid/animation/StateListAnimator;-><init>()V

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    const v4, 0x101000e

    const/4 v5, 0x1

    new-array v6, v5, [F

    const/4 v7, 0x0

    aput v7, v6, v3

    const-string v8, "elevation"

    invoke-static {p0, v8, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    int-to-long v9, v0

    invoke-virtual {v6, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    new-array v0, v5, [I

    aput v4, v0, v3

    new-array v2, v5, [F

    aput p1, v2, v3

    invoke-static {p0, v8, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    new-array p1, v3, [I

    new-array v0, v5, [F

    aput v7, v0, v3

    invoke-static {p0, v8, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    return-void

    :array_0
    .array-data 4
        0x101000e
        0x7f030210
        -0x7f030211
    .end array-data
.end method
