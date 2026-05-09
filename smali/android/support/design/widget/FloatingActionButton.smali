.class public final Landroid/support/design/widget/FloatingActionButton;
.super Lr/n;
.source "SourceFile"

# interfaces
.implements Lm/a;


# annotations
.annotation runtime Landroid/support/design/widget/CoordinatorLayout$d;
    value = Landroid/support/design/widget/FloatingActionButton$Behavior;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/FloatingActionButton$a;,
        Landroid/support/design/widget/FloatingActionButton$BaseBehavior;,
        Landroid/support/design/widget/FloatingActionButton$Behavior;
    }
.end annotation


# instance fields
.field public c:Landroid/content/res/ColorStateList;

.field public d:Landroid/graphics/PorterDuff$Mode;

.field public e:Landroid/content/res/ColorStateList;

.field public f:Landroid/graphics/PorterDuff$Mode;

.field public g:Landroid/content/res/ColorStateList;

.field public h:I

.field public i:I

.field public j:I

.field public k:Z

.field public l:Lr/g;


# direct methods
.method public static synthetic c(Landroid/support/design/widget/FloatingActionButton;Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private getImpl()Landroid/support/design/widget/d;
    .registers 3

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->l:Lr/g;

    if-nez v0, :cond_0

    .line 1
    new-instance v0, Lr/g;

    new-instance v1, Landroid/support/design/widget/FloatingActionButton$a;

    invoke-direct {v1, p0}, Landroid/support/design/widget/FloatingActionButton$a;-><init>(Landroid/support/design/widget/FloatingActionButton;)V

    invoke-direct {v0, p0, v1}, Lr/g;-><init>(Lr/n;Lr/j;)V

    .line 2
    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->l:Lr/g;

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->l:Lr/g;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method public final d()V
    .registers 3

    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/d;

    move-result-object v0

    iget-object v1, v0, Landroid/support/design/widget/d;->n:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/support/design/widget/d;->n:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, v0, Landroid/support/design/widget/d;->n:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final drawableStateChanged()V
    .registers 3

    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/d;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/d;->h([I)V

    return-void
.end method

.method public final e()V
    .registers 3

    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/d;

    move-result-object v0

    iget-object v1, v0, Landroid/support/design/widget/d;->m:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/support/design/widget/d;->m:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, v0, Landroid/support/design/widget/d;->m:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final f(Landroid/graphics/Rect;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Ld0/l;->a:Ljava/util/WeakHashMap;

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public final g(I)I
    .registers 5

    iget v0, p0, Landroid/support/design/widget/FloatingActionButton;->i:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq p1, v1, :cond_2

    if-eq p1, v2, :cond_1

    const p1, 0x7f060067

    goto :goto_0

    :cond_1
    const p1, 0x7f060066

    :goto_0
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1

    :cond_2
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v0, 0x1d6

    if-ge p1, v0, :cond_3

    invoke-virtual {p0, v2}, Landroid/support/design/widget/FloatingActionButton;->g(I)I

    move-result p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/support/design/widget/FloatingActionButton;->g(I)I

    move-result p1

    :goto_1
    return p1
.end method

.method public getBackgroundTintList()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->c:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->d:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getCompatElevation()F
    .registers 2

    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/d;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/d;->c()F

    move-result v0

    return v0
.end method

.method public getCompatHoveredFocusedTranslationZ()F
    .registers 2

    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/d;

    move-result-object v0

    iget v0, v0, Landroid/support/design/widget/d;->j:F

    return v0
.end method

.method public getCompatPressedTranslationZ()F
    .registers 2

    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/d;

    move-result-object v0

    iget v0, v0, Landroid/support/design/widget/d;->k:F

    return v0
.end method

.method public getContentBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/d;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCustomSize()I
    .registers 2

    iget v0, p0, Landroid/support/design/widget/FloatingActionButton;->i:I

    return v0
.end method

.method public getExpandedComponentIdHint()I
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method public getHideMotionSpec()Lh/g;
    .registers 2

    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/d;

    move-result-object v0

    iget-object v0, v0, Landroid/support/design/widget/d;->d:Lh/g;

    return-object v0
.end method

.method public getRippleColor()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->g:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getRippleColorStateList()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->g:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getShowMotionSpec()Lh/g;
    .registers 2

    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/d;

    move-result-object v0

    iget-object v0, v0, Landroid/support/design/widget/d;->c:Lh/g;

    return-object v0
.end method

.method public getSize()I
    .registers 2

    iget v0, p0, Landroid/support/design/widget/FloatingActionButton;->h:I

    return v0
.end method

.method public getSizeDimension()I
    .registers 2

    iget v0, p0, Landroid/support/design/widget/FloatingActionButton;->h:I

    invoke-virtual {p0, v0}, Landroid/support/design/widget/FloatingActionButton;->g(I)I

    move-result v0

    return v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .registers 2

    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getSupportImageTintList()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->e:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getSupportImageTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->f:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getUseCompatPadding()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/design/widget/FloatingActionButton;->k:Z

    return v0
.end method

.method public final h()V
    .registers 6

    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/d;

    move-result-object v0

    .line 1
    iget-object v1, v0, Landroid/support/design/widget/d;->o:Lr/n;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    iget v1, v0, Landroid/support/design/widget/d;->a:I

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_0
    iget v1, v0, Landroid/support/design/widget/d;->a:I

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    goto :goto_3

    .line 2
    :cond_2
    iget-object v1, v0, Landroid/support/design/widget/d;->b:Landroid/animation/Animator;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    :cond_3
    invoke-virtual {v0}, Landroid/support/design/widget/d;->m()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Landroid/support/design/widget/d;->d:Lh/g;

    if-eqz v1, :cond_4

    goto :goto_1

    .line 3
    :cond_4
    iget-object v1, v0, Landroid/support/design/widget/d;->f:Lh/g;

    if-nez v1, :cond_5

    iget-object v1, v0, Landroid/support/design/widget/d;->o:Lr/n;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f020001

    invoke-static {v1, v2}, Lh/g;->a(Landroid/content/Context;I)Lh/g;

    move-result-object v1

    iput-object v1, v0, Landroid/support/design/widget/d;->f:Lh/g;

    :cond_5
    iget-object v1, v0, Landroid/support/design/widget/d;->f:Lh/g;

    :goto_1
    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v1, v2, v2}, Landroid/support/design/widget/d;->a(Lh/g;FF)Landroid/animation/AnimatorSet;

    move-result-object v1

    new-instance v2, Landroid/support/design/widget/b;

    invoke-direct {v2, v0}, Landroid/support/design/widget/b;-><init>(Landroid/support/design/widget/d;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, v0, Landroid/support/design/widget/d;->n:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_3

    :cond_7
    iget-object v0, v0, Landroid/support/design/widget/d;->o:Lr/n;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Lr/n;->b(IZ)V

    :goto_3
    return-void
.end method

.method public final i()Z
    .registers 2

    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/d;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/d;->e()Z

    move-result v0

    return v0
.end method

.method public final j()V
    .registers 5

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButton;->e:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_1

    invoke-static {v0}, Lx/a;->a(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton;->f:Landroid/graphics/PorterDuff$Mode;

    if-nez v2, :cond_2

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v1, v2}, Lo0/i;->k(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public final jumpDrawablesToCurrentState()V
    .registers 2

    invoke-super {p0}, Landroid/widget/ImageView;->jumpDrawablesToCurrentState()V

    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/d;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/d;->f()V

    return-void
.end method

.method public final k()V
    .registers 3

    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/d;

    move-result-object v0

    iget-object v0, v0, Landroid/support/design/widget/d;->n:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public final l()V
    .registers 3

    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/d;

    move-result-object v0

    iget-object v0, v0, Landroid/support/design/widget/d;->m:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public final m()V
    .registers 5

    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/d;

    move-result-object v0

    .line 1
    invoke-virtual {v0}, Landroid/support/design/widget/d;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v1, v0, Landroid/support/design/widget/d;->b:Landroid/animation/Animator;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    :cond_1
    invoke-virtual {v0}, Landroid/support/design/widget/d;->m()Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_6

    iget-object v1, v0, Landroid/support/design/widget/d;->o:Lr/n;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/support/design/widget/d;->o:Lr/n;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, v0, Landroid/support/design/widget/d;->o:Lr/n;

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleY(F)V

    iget-object v1, v0, Landroid/support/design/widget/d;->o:Lr/n;

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, v3}, Landroid/support/design/widget/d;->k(F)V

    :cond_2
    iget-object v1, v0, Landroid/support/design/widget/d;->c:Lh/g;

    if-eqz v1, :cond_3

    goto :goto_0

    .line 2
    :cond_3
    iget-object v1, v0, Landroid/support/design/widget/d;->e:Lh/g;

    if-nez v1, :cond_4

    iget-object v1, v0, Landroid/support/design/widget/d;->o:Lr/n;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f020002

    invoke-static {v1, v3}, Lh/g;->a(Landroid/content/Context;I)Lh/g;

    move-result-object v1

    iput-object v1, v0, Landroid/support/design/widget/d;->e:Lh/g;

    :cond_4
    iget-object v1, v0, Landroid/support/design/widget/d;->e:Lh/g;

    .line 3
    :goto_0
    invoke-virtual {v0, v1, v2, v2}, Landroid/support/design/widget/d;->a(Lh/g;FF)Landroid/animation/AnimatorSet;

    move-result-object v1

    new-instance v2, Landroid/support/design/widget/c;

    invoke-direct {v2, v0}, Landroid/support/design/widget/c;-><init>(Landroid/support/design/widget/d;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, v0, Landroid/support/design/widget/d;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_2

    :cond_6
    iget-object v1, v0, Landroid/support/design/widget/d;->o:Lr/n;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3}, Lr/n;->b(IZ)V

    iget-object v1, v0, Landroid/support/design/widget/d;->o:Lr/n;

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, v0, Landroid/support/design/widget/d;->o:Lr/n;

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    iget-object v1, v0, Landroid/support/design/widget/d;->o:Lr/n;

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, v2}, Landroid/support/design/widget/d;->k(F)V

    :goto_2
    return-void
.end method

.method public final onAttachedToWindow()V
    .registers 3

    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/d;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    instance-of v1, v0, Lr/g;

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 2
    iget-object v1, v0, Landroid/support/design/widget/d;->s:Lr/f;

    if-nez v1, :cond_0

    new-instance v1, Lr/f;

    invoke-direct {v1, v0}, Lr/f;-><init>(Landroid/support/design/widget/d;)V

    iput-object v1, v0, Landroid/support/design/widget/d;->s:Lr/f;

    .line 3
    :cond_0
    iget-object v1, v0, Landroid/support/design/widget/d;->o:Lr/n;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v0, v0, Landroid/support/design/widget/d;->s:Lr/f;

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_1
    return-void
.end method

.method public final onDetachedFromWindow()V
    .registers 4

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/d;

    move-result-object v0

    iget-object v1, v0, Landroid/support/design/widget/d;->s:Lr/f;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/support/design/widget/d;->o:Lr/n;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, v0, Landroid/support/design/widget/d;->s:Lr/f;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/design/widget/d;->s:Lr/f;

    :cond_0
    return-void
.end method

.method public final onMeasure(II)V
    .registers 3

    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getSizeDimension()I

    move-result p1

    add-int/lit8 p1, p1, 0x0

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroid/support/design/widget/FloatingActionButton;->j:I

    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/d;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/d;->n()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    instance-of v0, p1, Lp/a;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lp/a;

    .line 1
    iget-object v0, p1, Ld0/a;->b:Landroid/os/Parcelable;

    .line 2
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object p1, p1, Lp/a;->d:Lc0/j;

    const-string v0, "expandableWidgetHelper"

    invoke-virtual {p1, v0}, Lc0/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const/4 p1, 0x0

    throw p1
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "superState must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/FloatingActionButton;->f(Landroid/graphics/Rect;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setBackgroundColor(I)V
    .registers 3

    const-string p1, "FloatingActionButton"

    const-string v0, "Setting a custom background is not supported."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    const-string p1, "FloatingActionButton"

    const-string v0, "Setting a custom background is not supported."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBackgroundResource(I)V
    .registers 3

    const-string p1, "FloatingActionButton"

    const-string v0, "Setting a custom background is not supported."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->c:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButton;->c:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/d;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->d:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButton;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/d;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setCompatElevation(F)V
    .registers 5

    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/d;

    move-result-object v0

    iget v1, v0, Landroid/support/design/widget/d;->i:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iput p1, v0, Landroid/support/design/widget/d;->i:F

    iget v1, v0, Landroid/support/design/widget/d;->j:F

    iget v2, v0, Landroid/support/design/widget/d;->k:F

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/design/widget/d;->i(FFF)V

    :cond_0
    return-void
.end method

.method public setCompatElevationResource(I)V
    .registers 3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/design/widget/FloatingActionButton;->setCompatElevation(F)V

    return-void
.end method

.method public setCompatHoveredFocusedTranslationZ(F)V
    .registers 5

    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/d;

    move-result-object v0

    iget v1, v0, Landroid/support/design/widget/d;->j:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iput p1, v0, Landroid/support/design/widget/d;->j:F

    iget v1, v0, Landroid/support/design/widget/d;->i:F

    iget v2, v0, Landroid/support/design/widget/d;->k:F

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/design/widget/d;->i(FFF)V

    :cond_0
    return-void
.end method

.method public setCompatHoveredFocusedTranslationZResource(I)V
    .registers 3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/design/widget/FloatingActionButton;->setCompatHoveredFocusedTranslationZ(F)V

    return-void
.end method

.method public setCompatPressedTranslationZ(F)V
    .registers 5

    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/d;

    move-result-object v0

    iget v1, v0, Landroid/support/design/widget/d;->k:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iput p1, v0, Landroid/support/design/widget/d;->k:F

    iget v1, v0, Landroid/support/design/widget/d;->i:F

    iget v2, v0, Landroid/support/design/widget/d;->j:F

    invoke-virtual {v0, v1, v2, p1}, Landroid/support/design/widget/d;->i(FFF)V

    :cond_0
    return-void
.end method

.method public setCompatPressedTranslationZResource(I)V
    .registers 3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/design/widget/FloatingActionButton;->setCompatPressedTranslationZ(F)V

    return-void
.end method

.method public setCustomSize(I)V
    .registers 3

    if-ltz p1, :cond_0

    iput p1, p0, Landroid/support/design/widget/FloatingActionButton;->i:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Custom size must be non-negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setExpandedComponentIdHint(I)V
    .registers 2

    const/4 p1, 0x0

    throw p1
.end method

.method public setHideMotionSpec(Lh/g;)V
    .registers 3

    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/d;

    move-result-object v0

    iput-object p1, v0, Landroid/support/design/widget/d;->d:Lh/g;

    return-void
.end method

.method public setHideMotionSpecResource(I)V
    .registers 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lh/g;->a(Landroid/content/Context;I)Lh/g;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/design/widget/FloatingActionButton;->setHideMotionSpec(Lh/g;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/d;

    move-result-object p1

    iget v0, p1, Landroid/support/design/widget/d;->l:F

    invoke-virtual {p1, v0}, Landroid/support/design/widget/d;->k(F)V

    return-void
.end method

.method public setImageResource(I)V
    .registers 2

    const/4 p1, 0x0

    throw p1
.end method

.method public setRippleColor(I)V
    .registers 2

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/design/widget/FloatingActionButton;->setRippleColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->g:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButton;->g:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/d;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/d;->l()V

    :cond_0
    return-void
.end method

.method public setShowMotionSpec(Lh/g;)V
    .registers 3

    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/d;

    move-result-object v0

    iput-object p1, v0, Landroid/support/design/widget/d;->c:Lh/g;

    return-void
.end method

.method public setShowMotionSpecResource(I)V
    .registers 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lh/g;->a(Landroid/content/Context;I)Lh/g;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/design/widget/FloatingActionButton;->setShowMotionSpec(Lh/g;)V

    return-void
.end method

.method public setSize(I)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/widget/FloatingActionButton;->i:I

    iget v0, p0, Landroid/support/design/widget/FloatingActionButton;->h:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Landroid/support/design/widget/FloatingActionButton;->h:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/support/design/widget/FloatingActionButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/support/design/widget/FloatingActionButton;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setSupportImageTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->e:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButton;->e:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->j()V

    :cond_0
    return-void
.end method

.method public setSupportImageTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->f:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButton;->f:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->j()V

    :cond_0
    return-void
.end method

.method public setUseCompatPadding(Z)V
    .registers 3

    iget-boolean v0, p0, Landroid/support/design/widget/FloatingActionButton;->k:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/support/design/widget/FloatingActionButton;->k:Z

    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/d;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/d;->g()V

    :cond_0
    return-void
.end method
