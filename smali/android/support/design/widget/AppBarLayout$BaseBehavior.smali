.class public Landroid/support/design/widget/AppBarLayout$BaseBehavior;
.super Lr/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseBehavior"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/AppBarLayout$BaseBehavior$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/support/design/widget/AppBarLayout;",
        ">",
        "Lr/h<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public j:I

.field public k:I

.field public l:Landroid/animation/ValueAnimator;

.field public m:I

.field public n:Z

.field public o:F

.field public p:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lr/h;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->m:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lr/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    iput p1, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->m:I

    return-void
.end method

.method public static E(II)Z
    .registers 2

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final C(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I
    .registers 13

    move-object v2, p2

    check-cast v2, Landroid/support/design/widget/AppBarLayout;

    .line 1
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->y()I

    move-result p2

    const/4 v0, 0x0

    if-eqz p4, :cond_8

    if-lt p2, p4, :cond_8

    if-gt p2, p5, :cond_8

    invoke-static {p3, p4, p5}, La3/r0;->l(III)I

    move-result v3

    if-eq p2, v3, :cond_9

    .line 2
    iget-boolean p3, v2, Landroid/support/design/widget/AppBarLayout;->e:Z

    if-eqz p3, :cond_4

    .line 3
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p4

    const/4 p5, 0x0

    :goto_0
    if-ge p5, p4, :cond_4

    invoke-virtual {v2, p5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/AppBarLayout$a;

    .line 4
    iget-object v5, v4, Landroid/support/design/widget/AppBarLayout$a;->b:Landroid/view/animation/Interpolator;

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    if-lt p3, v6, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v6

    if-gt p3, v6, :cond_3

    if-eqz v5, :cond_4

    .line 6
    iget p4, v4, Landroid/support/design/widget/AppBarLayout$a;->a:I

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 7
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result p5

    iget v6, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr p5, v6

    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr p5, v4

    add-int/2addr p5, v0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    sget-object p4, Ld0/l;->a:Ljava/util/WeakHashMap;

    .line 8
    invoke-virtual {v1}, Landroid/view/View;->getMinimumHeight()I

    move-result p4

    sub-int/2addr p5, p4

    goto :goto_1

    :cond_0
    const/4 p5, 0x0

    .line 9
    :cond_1
    :goto_1
    sget-object p4, Ld0/l;->a:Ljava/util/WeakHashMap;

    .line 10
    invoke-virtual {v1}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result p4

    if-eqz p4, :cond_2

    .line 11
    invoke-virtual {v2}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result p4

    sub-int/2addr p5, p4

    :cond_2
    if-lez p5, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result p4

    sub-int/2addr p3, p4

    int-to-float p4, p5

    int-to-float p3, p3

    div-float/2addr p3, p4

    invoke-interface {v5, p3}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p3

    mul-float p3, p3, p4

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    invoke-static {v3}, Ljava/lang/Integer;->signum(I)I

    move-result p4

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result p5

    add-int/2addr p5, p3

    mul-int p5, p5, p4

    goto :goto_2

    :cond_3
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_4
    move p5, v3

    .line 12
    :goto_2
    invoke-virtual {p0, p5}, Landroid/support/design/widget/f;->u(I)Z

    move-result p3

    sub-int p4, p2, v3

    sub-int p5, v3, p5

    iput p5, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->j:I

    if-nez p3, :cond_6

    .line 13
    iget-boolean p3, v2, Landroid/support/design/widget/AppBarLayout;->e:Z

    if-eqz p3, :cond_6

    .line 14
    iget-object p3, p1, Landroid/support/design/widget/CoordinatorLayout;->c:Lg0/j;

    .line 15
    iget-object p3, p3, Lg0/j;->b:Lc0/j;

    invoke-virtual {p3, v2}, Lc0/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    if-eqz p3, :cond_6

    .line 16
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_6

    :goto_3
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p5

    if-ge v0, p5, :cond_6

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/CoordinatorLayout$f;

    .line 17
    iget-object v1, v1, Landroid/support/design/widget/CoordinatorLayout$f;->a:Landroid/support/design/widget/CoordinatorLayout$c;

    if-eqz v1, :cond_5

    .line 18
    invoke-virtual {v1, p1, p5, v2}, Landroid/support/design/widget/CoordinatorLayout$c;->d(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 19
    :cond_6
    invoke-virtual {p0}, Landroid/support/design/widget/f;->s()I

    if-ge v3, p2, :cond_7

    const/4 p2, -0x1

    const/4 v4, -0x1

    goto :goto_4

    :cond_7
    const/4 p2, 0x1

    const/4 v4, 0x1

    :goto_4
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->H(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IIZ)V

    move v0, p4

    goto :goto_5

    :cond_8
    iput v0, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->j:I

    :cond_9
    :goto_5
    return v0
.end method

.method public final D(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TT;IF)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->y()I

    move-result v0

    sub-int/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v2, v1

    if-lez v1, :cond_0

    const/high16 v1, 0x447a0000    # 1000.0f

    int-to-float v0, v0

    div-float/2addr v0, v2

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    const/high16 v1, 0x43160000    # 150.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    :goto_0
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->y()I

    move-result v1

    if-ne v1, p3, :cond_1

    iget-object p1, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->l:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_2

    :cond_1
    iget-object v2, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->l:Landroid/animation/ValueAnimator;

    if-nez v2, :cond_2

    new-instance v2, Landroid/animation/ValueAnimator;

    invoke-direct {v2}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v2, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->l:Landroid/animation/ValueAnimator;

    sget-object v3, Lh/a;->d:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->l:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/support/design/widget/a;

    invoke-direct {v3, p0, p1, p2}, Landroid/support/design/widget/a;-><init>(Landroid/support/design/widget/AppBarLayout$BaseBehavior;Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_1
    iget-object p1, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->l:Landroid/animation/ValueAnimator;

    const/16 p2, 0x258

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-long v2, p2

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->l:Landroid/animation/ValueAnimator;

    const/4 p2, 0x2

    new-array p2, p2, [I

    const/4 v0, 0x0

    aput v1, p2, v0

    const/4 v0, 0x1

    aput p3, p2, v0

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object p1, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    :goto_2
    return-void
.end method

.method public final F(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TT;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->y()I

    move-result v0

    .line 1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x20

    const/4 v5, -0x1

    if-ge v3, v1, :cond_2

    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/design/widget/AppBarLayout$a;

    .line 2
    iget v9, v6, Landroid/support/design/widget/AppBarLayout$a;->a:I

    .line 3
    invoke-static {v9, v4}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->E(II)Z

    move-result v9

    if-eqz v9, :cond_0

    iget v9, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int/2addr v7, v9

    iget v6, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v8, v6

    :cond_0
    neg-int v6, v0

    if-gt v7, v6, :cond_1

    if-lt v8, v6, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, -0x1

    :goto_1
    if-ltz v3, :cond_9

    .line 4
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/design/widget/AppBarLayout$a;

    .line 5
    iget v7, v6, Landroid/support/design/widget/AppBarLayout$a;->a:I

    and-int/lit8 v8, v7, 0x11

    const/16 v9, 0x11

    if-ne v8, v9, :cond_9

    .line 6
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v8

    neg-int v8, v8

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    neg-int v9, v9

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    add-int/2addr v10, v5

    if-ne v3, v10, :cond_3

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v3

    add-int/2addr v9, v3

    :cond_3
    const/4 v3, 0x2

    invoke-static {v7, v3}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->E(II)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Ld0/l;->a:Ljava/util/WeakHashMap;

    .line 7
    invoke-virtual {v1}, Landroid/view/View;->getMinimumHeight()I

    move-result v1

    add-int/2addr v9, v1

    goto :goto_2

    :cond_4
    const/4 v5, 0x5

    .line 8
    invoke-static {v7, v5}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->E(II)Z

    move-result v5

    if-eqz v5, :cond_6

    sget-object v5, Ld0/l;->a:Ljava/util/WeakHashMap;

    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getMinimumHeight()I

    move-result v1

    add-int/2addr v1, v9

    if-ge v0, v1, :cond_5

    move v8, v1

    goto :goto_2

    :cond_5
    move v9, v1

    .line 10
    :cond_6
    :goto_2
    invoke-static {v7, v4}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->E(II)Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v8, v1

    iget v1, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v9, v1

    :cond_7
    add-int v1, v9, v8

    div-int/2addr v1, v3

    if-ge v0, v1, :cond_8

    move v8, v9

    :cond_8
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    neg-int v0, v0

    invoke-static {v8, v0, v2}, La3/r0;->l(III)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->D(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)V

    :cond_9
    return-void
.end method

.method public final G(ILandroid/support/design/widget/AppBarLayout;Landroid/view/View;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p4, v0, :cond_2

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->y()I

    move-result p4

    if-gez p1, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    if-lez p1, :cond_2

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getDownNestedScrollRange()I

    move-result p1

    neg-int p1, p1

    if-ne p4, p1, :cond_2

    :cond_1
    sget-object p1, Ld0/l;->a:Ljava/util/WeakHashMap;

    instance-of p1, p3, Ld0/f;

    if-eqz p1, :cond_2

    check-cast p3, Ld0/f;

    invoke-interface {p3, v0}, Ld0/f;->f(I)V

    :cond_2
    return-void
.end method

.method public final H(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IIZ)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TT;IIZ)V"
        }
    .end annotation

    .line 1
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v1, :cond_1

    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    if-lt v0, v6, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    if-gt v0, v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v5, v4

    :goto_1
    if-eqz v5, :cond_b

    .line 2
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout$a;

    .line 3
    iget v0, v0, Landroid/support/design/widget/AppBarLayout$a;->a:I

    and-int/lit8 v1, v0, 0x1

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 4
    sget-object v1, Ld0/l;->a:Ljava/util/WeakHashMap;

    .line 5
    invoke-virtual {v5}, Landroid/view/View;->getMinimumHeight()I

    move-result v1

    if-lez p4, :cond_3

    and-int/lit8 p4, v0, 0xc

    if-eqz p4, :cond_3

    neg-int p3, p3

    .line 6
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result p4

    sub-int/2addr p4, v1

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v0

    sub-int/2addr p4, v0

    if-lt p3, p4, :cond_2

    :goto_2
    const/4 p3, 0x1

    goto :goto_3

    :cond_2
    const/4 p3, 0x0

    goto :goto_3

    :cond_3
    and-int/lit8 p4, v0, 0x2

    if-eqz p4, :cond_2

    neg-int p3, p3

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result p4

    sub-int/2addr p4, v1

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v0

    sub-int/2addr p4, v0

    if-lt p3, p4, :cond_2

    goto :goto_2

    .line 7
    :goto_3
    iget-boolean p4, p2, Landroid/support/design/widget/AppBarLayout;->i:Z

    if-eqz p4, :cond_7

    .line 8
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p4

    const/4 v0, 0x0

    :goto_4
    if-ge v0, p4, :cond_5

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v5, v1, Ld0/g;

    if-eqz v5, :cond_4

    move-object v4, v1

    goto :goto_5

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    if-eqz v4, :cond_7

    .line 9
    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result p3

    if-lez p3, :cond_6

    const/4 p3, 0x1

    goto :goto_6

    :cond_6
    const/4 p3, 0x0

    :cond_7
    :goto_6
    invoke-virtual {p2, p3}, Landroid/support/design/widget/AppBarLayout;->b(Z)Z

    move-result p3

    if-nez p5, :cond_a

    if-eqz p3, :cond_b

    .line 10
    invoke-virtual {p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->j(Landroid/view/View;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/4 p4, 0x0

    :goto_7
    if-ge p4, p3, :cond_9

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    check-cast p5, Landroid/support/design/widget/CoordinatorLayout$f;

    .line 11
    iget-object p5, p5, Landroid/support/design/widget/CoordinatorLayout$f;->a:Landroid/support/design/widget/CoordinatorLayout$c;

    .line 12
    instance-of v0, p5, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;

    if-eqz v0, :cond_8

    check-cast p5, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;

    .line 13
    iget p1, p5, Landroid/support/design/widget/e;->f:I

    if-eqz p1, :cond_9

    const/4 v2, 0x1

    goto :goto_8

    :cond_8
    add-int/lit8 p4, p4, 0x1

    goto :goto_7

    :cond_9
    :goto_8
    if-eqz v2, :cond_b

    .line 14
    :cond_a
    invoke-virtual {p2}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    :cond_b
    return-void
.end method

.method public final f(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .registers 11

    move-object v2, p2

    check-cast v2, Landroid/support/design/widget/AppBarLayout;

    .line 1
    invoke-super {p0, p1, v2, p3}, Landroid/support/design/widget/f;->f(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z

    invoke-virtual {v2}, Landroid/support/design/widget/AppBarLayout;->getPendingAction()I

    move-result p2

    iget p3, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->m:I

    const/4 v6, 0x1

    const/4 v0, 0x0

    if-ltz p3, :cond_1

    and-int/lit8 v1, p2, 0x8

    if-nez v1, :cond_1

    invoke-virtual {v2, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p3

    neg-int p3, p3

    iget-boolean v1, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->n:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getMinimumHeight()I

    move-result p2

    .line 3
    invoke-virtual {v2}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v1

    add-int/2addr v1, p2

    add-int/2addr v1, p3

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    iget v1, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->o:F

    mul-float p2, p2, v1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    add-int v1, p2, p3

    :goto_0
    invoke-virtual {p0, p1, v2, v1}, Lr/h;->B(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    goto :goto_2

    :cond_1
    if-eqz p2, :cond_6

    and-int/lit8 p3, p2, 0x4

    if-eqz p3, :cond_2

    const/4 p3, 0x1

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    :goto_1
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_4

    invoke-virtual {v2}, Landroid/support/design/widget/AppBarLayout;->getUpNestedPreScrollRange()I

    move-result p2

    neg-int p2, p2

    if-eqz p3, :cond_3

    invoke-virtual {p0, p1, v2, p2}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->D(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p1, v2, p2}, Lr/h;->B(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    goto :goto_2

    :cond_4
    and-int/2addr p2, v6

    if-eqz p2, :cond_6

    if-eqz p3, :cond_5

    invoke-virtual {p0, p1, v2, v0}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->D(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0, p1, v2, v0}, Lr/h;->B(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    .line 4
    :cond_6
    :goto_2
    iput v0, v2, Landroid/support/design/widget/AppBarLayout;->f:I

    const/4 p2, -0x1

    .line 5
    iput p2, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->m:I

    invoke-virtual {p0}, Landroid/support/design/widget/f;->s()I

    move-result p2

    invoke-virtual {v2}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result p3

    neg-int p3, p3

    invoke-static {p2, p3, v0}, La3/r0;->l(III)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/design/widget/f;->u(I)Z

    invoke-virtual {p0}, Landroid/support/design/widget/f;->s()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->H(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IIZ)V

    invoke-virtual {p0}, Landroid/support/design/widget/f;->s()I

    return v6
.end method

.method public final g(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)Z
    .registers 8

    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    check-cast p5, Landroid/support/design/widget/CoordinatorLayout$f;

    iget p5, p5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v0, 0x0

    const/4 v1, -0x2

    if-ne p5, v1, :cond_0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p5

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/support/design/widget/CoordinatorLayout;->r(Landroid/view/View;III)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final i(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I[II)V
    .registers 14

    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    if-eqz p4, :cond_1

    if-gez p4, :cond_0

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getDownNestedPreScrollRange()I

    move-result v1

    add-int/2addr v1, v0

    move v4, v0

    move v5, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getUpNestedPreScrollRange()I

    move-result v0

    neg-int v0, v0

    const/4 v1, 0x0

    move v4, v0

    const/4 v5, 0x0

    :goto_0
    if-eq v4, v5, :cond_1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lr/h;->A(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result p1

    aput p1, p5, v6

    invoke-virtual {p0, p4, p2, p3, p6}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->G(ILandroid/support/design/widget/AppBarLayout;Landroid/view/View;I)V

    :cond_1
    return-void
.end method

.method public final j(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII)V
    .registers 15

    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    if-gez p7, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getDownNestedScrollRange()I

    move-result p4

    neg-int v4, p4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p7

    invoke-virtual/range {v0 .. v5}, Lr/h;->A(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    invoke-virtual {p0, p7, p2, p3, p8}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->G(ILandroid/support/design/widget/AppBarLayout;Landroid/view/View;I)V

    .line 2
    :cond_0
    iget-boolean p1, p2, Landroid/support/design/widget/AppBarLayout;->i:Z

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p3}, Landroid/view/View;->getScrollY()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Landroid/support/design/widget/AppBarLayout;->b(Z)Z

    :cond_2
    return-void
.end method

.method public final m(Landroid/view/View;Landroid/os/Parcelable;)V
    .registers 3

    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    instance-of p1, p2, Landroid/support/design/widget/AppBarLayout$BaseBehavior$a;

    if-eqz p1, :cond_0

    check-cast p2, Landroid/support/design/widget/AppBarLayout$BaseBehavior$a;

    iget p1, p2, Landroid/support/design/widget/AppBarLayout$BaseBehavior$a;->d:I

    iput p1, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->m:I

    iget p1, p2, Landroid/support/design/widget/AppBarLayout$BaseBehavior$a;->e:F

    iput p1, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->o:F

    iget-boolean p1, p2, Landroid/support/design/widget/AppBarLayout$BaseBehavior$a;->f:Z

    iput-boolean p1, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->n:Z

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    iput p1, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->m:I

    :goto_0
    return-void
.end method

.method public final n(Landroid/view/View;)Landroid/os/Parcelable;
    .registers 10

    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    .line 1
    sget-object v0, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    .line 2
    invoke-virtual {p0}, Landroid/support/design/widget/f;->s()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v7

    add-int/2addr v7, v1

    if-gtz v7, :cond_1

    if-ltz v6, :cond_1

    new-instance v1, Landroid/support/design/widget/AppBarLayout$BaseBehavior$a;

    invoke-direct {v1, v0}, Landroid/support/design/widget/AppBarLayout$BaseBehavior$a;-><init>(Landroid/os/Parcelable;)V

    iput v4, v1, Landroid/support/design/widget/AppBarLayout$BaseBehavior$a;->d:I

    sget-object v0, Ld0/l;->a:Ljava/util/WeakHashMap;

    .line 3
    invoke-virtual {v5}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    .line 4
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result p1

    add-int/2addr p1, v0

    if-ne v6, p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    iput-boolean v3, v1, Landroid/support/design/widget/AppBarLayout$BaseBehavior$a;->f:Z

    int-to-float p1, v6

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, v1, Landroid/support/design/widget/AppBarLayout$BaseBehavior$a;->e:F

    move-object v0, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public final p(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .registers 8

    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    and-int/lit8 p4, p5, 0x2

    const/4 p5, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_2

    .line 1
    iget-boolean p4, p2, Landroid/support/design/widget/AppBarLayout;->i:Z

    if-nez p4, :cond_3

    .line 2
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result p4

    if-eqz p4, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    if-eqz p4, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    if-gt p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 p5, 0x0

    :cond_3
    :goto_2
    if-eqz p5, :cond_4

    .line 4
    iget-object p1, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->l:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_4
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->p:Ljava/lang/ref/WeakReference;

    iput p6, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->k:I

    return p5
.end method

.method public final q(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .registers 6

    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    iget v0, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->k:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p4, v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->F(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V

    :cond_1
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->p:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final v(Landroid/view/View;)Z
    .registers 4

    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    iget-object p1, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->p:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public final w(Landroid/view/View;)I
    .registers 2

    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getDownNestedScrollRange()I

    move-result p1

    neg-int p1, p1

    return p1
.end method

.method public final x(Landroid/view/View;)I
    .registers 2

    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result p1

    return p1
.end method

.method public final y()I
    .registers 3

    invoke-virtual {p0}, Landroid/support/design/widget/f;->s()I

    move-result v0

    iget v1, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->j:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final z(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)V
    .registers 3

    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->F(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V

    return-void
.end method
