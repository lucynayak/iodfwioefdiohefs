.class public final Lr/g;
.super Landroid/support/design/widget/d;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lr/n;Lr/j;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/d;-><init>(Lr/n;Lr/j;)V

    return-void
.end method


# virtual methods
.method public final c()F
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/d;->o:Lr/n;

    invoke-virtual {v0}, Landroid/view/View;->getElevation()F

    move-result v0

    return v0
.end method

.method public final d(Landroid/graphics/Rect;)V
    .locals 4

    iget-object v0, p0, Landroid/support/design/widget/d;->p:Lr/j;

    move-object v1, v0

    check-cast v1, Landroid/support/design/widget/FloatingActionButton$a;

    .line 1
    iget-object v1, v1, Landroid/support/design/widget/FloatingActionButton$a;->a:Landroid/support/design/widget/FloatingActionButton;

    iget-boolean v1, v1, Landroid/support/design/widget/FloatingActionButton;->k:Z

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Landroid/support/design/widget/FloatingActionButton$a;

    .line 3
    iget-object v0, v0, Landroid/support/design/widget/FloatingActionButton$a;->a:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->getSizeDimension()I

    .line 4
    iget-object v0, p0, Landroid/support/design/widget/d;->o:Lr/n;

    invoke-virtual {v0}, Landroid/view/View;->getElevation()F

    move-result v0

    .line 5
    iget v1, p0, Landroid/support/design/widget/d;->k:F

    add-float/2addr v0, v1

    sget v1, Lr/i;->c:I

    float-to-double v1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float v0, v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    invoke-virtual {p1, v1, v0, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void
.end method

.method public final f()V
    .locals 0

    return-void
.end method

.method public final g()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/design/widget/d;->n()V

    const/4 v0, 0x0

    throw v0
.end method

.method public final h([I)V
    .locals 2

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Landroid/support/design/widget/d;->o:Lr/n;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroid/support/design/widget/d;->o:Lr/n;

    iget v1, p0, Landroid/support/design/widget/d;->i:F

    invoke-virtual {p1, v1}, Landroid/view/View;->setElevation(F)V

    iget-object p1, p0, Landroid/support/design/widget/d;->o:Lr/n;

    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/design/widget/d;->o:Lr/n;

    iget v0, p0, Landroid/support/design/widget/d;->k:F

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroid/support/design/widget/d;->o:Lr/n;

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Landroid/support/design/widget/d;->o:Lr/n;

    invoke-virtual {p1}, Landroid/view/View;->isHovered()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_1
    iget-object p1, p0, Landroid/support/design/widget/d;->o:Lr/n;

    iget v0, p0, Landroid/support/design/widget/d;->j:F

    goto :goto_0

    :cond_2
    iget-object p1, p0, Landroid/support/design/widget/d;->o:Lr/n;

    invoke-virtual {p1, v0}, Landroid/view/View;->setElevation(F)V

    :cond_3
    iget-object p1, p0, Landroid/support/design/widget/d;->o:Lr/n;

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationZ(F)V

    :cond_4
    return-void
.end method

.method public final i(FFF)V
    .locals 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Landroid/support/design/widget/d;->o:Lr/n;

    invoke-virtual {p1}, Landroid/view/View;->refreshDrawableState()V

    goto/16 :goto_0

    :cond_0
    new-instance v1, Landroid/animation/StateListAnimator;

    invoke-direct {v1}, Landroid/animation/StateListAnimator;-><init>()V

    sget-object v2, Landroid/support/design/widget/d;->u:[I

    invoke-virtual {p0, p1, p3}, Lr/g;->o(FF)Landroid/animation/Animator;

    move-result-object p3

    invoke-virtual {v1, v2, p3}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    sget-object p3, Landroid/support/design/widget/d;->v:[I

    invoke-virtual {p0, p1, p2}, Lr/g;->o(FF)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v1, p3, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    sget-object p3, Landroid/support/design/widget/d;->w:[I

    invoke-virtual {p0, p1, p2}, Lr/g;->o(FF)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v1, p3, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    sget-object p3, Landroid/support/design/widget/d;->x:[I

    invoke-virtual {p0, p1, p2}, Lr/g;->o(FF)Landroid/animation/Animator;

    move-result-object p2

    invoke-virtual {v1, p3, p2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Landroid/support/design/widget/d;->o:Lr/n;

    const/4 v3, 0x1

    new-array v4, v3, [F

    const/4 v5, 0x0

    aput p1, v4, v5

    const-string p1, "elevation"

    invoke-static {v2, p1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v6, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 p1, 0x16

    const-wide/16 v6, 0x32

    if-lt v0, p1, :cond_1

    const/16 p1, 0x18

    if-gt v0, p1, :cond_1

    iget-object p1, p0, Landroid/support/design/widget/d;->o:Lr/n;

    sget-object v0, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v2, v3, [F

    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result v4

    aput v4, v2, v5

    invoke-static {p1, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object p1, p0, Landroid/support/design/widget/d;->o:Lr/n;

    sget-object v0, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v2, v3, [F

    const/4 v3, 0x0

    aput v3, v2, v5

    invoke-static {p1, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array p1, v5, [Landroid/animation/Animator;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/animation/Animator;

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    sget-object p1, Landroid/support/design/widget/d;->t:Lf0/a;

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object p1, Landroid/support/design/widget/d;->y:[I

    invoke-virtual {v1, p1, p2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    sget-object p1, Landroid/support/design/widget/d;->z:[I

    invoke-virtual {p0, v3, v3}, Lr/g;->o(FF)Landroid/animation/Animator;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    iget-object p1, p0, Landroid/support/design/widget/d;->o:Lr/n;

    invoke-virtual {p1, v1}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    :goto_0
    iget-object p1, p0, Landroid/support/design/widget/d;->p:Lr/j;

    check-cast p1, Landroid/support/design/widget/FloatingActionButton$a;

    .line 1
    iget-object p1, p1, Landroid/support/design/widget/FloatingActionButton$a;->a:Landroid/support/design/widget/FloatingActionButton;

    iget-boolean p1, p1, Landroid/support/design/widget/FloatingActionButton;->k:Z

    if-nez p1, :cond_2

    return-void

    .line 2
    :cond_2
    invoke-virtual {p0}, Landroid/support/design/widget/d;->n()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final j(Landroid/graphics/Rect;)V
    .locals 8

    iget-object v0, p0, Landroid/support/design/widget/d;->p:Lr/j;

    check-cast v0, Landroid/support/design/widget/FloatingActionButton$a;

    .line 1
    iget-object v0, v0, Landroid/support/design/widget/FloatingActionButton$a;->a:Landroid/support/design/widget/FloatingActionButton;

    iget-boolean v1, v0, Landroid/support/design/widget/FloatingActionButton;->k:Z

    if-eqz v1, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    const/4 v3, 0x0

    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    iget v6, p1, Landroid/graphics/Rect;->right:I

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iget-object p1, p0, Landroid/support/design/widget/d;->p:Lr/j;

    check-cast p1, Landroid/support/design/widget/FloatingActionButton$a;

    .line 3
    iget-object p1, p1, Landroid/support/design/widget/FloatingActionButton$a;->a:Landroid/support/design/widget/FloatingActionButton;

    invoke-static {p1, v0}, Landroid/support/design/widget/FloatingActionButton;->c(Landroid/support/design/widget/FloatingActionButton;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-static {v0, p1}, Landroid/support/design/widget/FloatingActionButton;->c(Landroid/support/design/widget/FloatingActionButton;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public final l()V
    .locals 0

    return-void
.end method

.method public final o(FF)Landroid/animation/Animator;
    .locals 7

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v1, p0, Landroid/support/design/widget/d;->o:Lr/n;

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput p1, v3, v4

    const-string p1, "elevation"

    invoke-static {v1, p1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v5, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    iget-object v1, p0, Landroid/support/design/widget/d;->o:Lr/n;

    sget-object v3, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v2, v2, [F

    aput p2, v2, v4

    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-wide/16 v1, 0x64

    invoke-virtual {p2, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    sget-object p1, Landroid/support/design/widget/d;->t:Lf0/a;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method
