.class public abstract Landroid/support/design/transformation/FabTransformationBehavior;
.super Landroid/support/design/transformation/ExpandableTransformationBehavior;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/transformation/FabTransformationBehavior$b;
    }
.end annotation


# instance fields
.field public final c:Landroid/graphics/Rect;

.field public final d:Landroid/graphics/RectF;

.field public final e:Landroid/graphics/RectF;

.field public final f:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/design/transformation/ExpandableTransformationBehavior;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior;->c:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior;->d:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior;->e:Landroid/graphics/RectF;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior;->f:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/design/transformation/ExpandableTransformationBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/design/transformation/FabTransformationBehavior;->c:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroid/support/design/transformation/FabTransformationBehavior;->d:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroid/support/design/transformation/FabTransformationBehavior;->e:Landroid/graphics/RectF;

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Landroid/support/design/transformation/FabTransformationBehavior;->f:[I

    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    instance-of v0, p2, Landroid/support/design/widget/FloatingActionButton;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p2, Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getExpandedComponentIdHint()I

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    if-ne p2, p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

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

.method public final t(Landroid/view/View;Landroid/view/View;ZZ)Landroid/animation/AnimatorSet;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Landroid/support/design/transformation/FabTransformationBehavior;->y(Landroid/content/Context;Z)Landroid/support/design/transformation/FabTransformationBehavior$b;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1
    sget-object v7, Ld0/l;->a:Ljava/util/WeakHashMap;

    .line 2
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getElevation()F

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getElevation()F

    move-result v8

    sub-float/2addr v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v3, :cond_1

    if-nez p4, :cond_0

    neg-float v7, v7

    .line 3
    invoke-virtual {v2, v7}, Landroid/view/View;->setTranslationZ(F)V

    :cond_0
    sget-object v7, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v11, v9, [F

    aput v8, v11, v10

    invoke-static {v2, v7, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    goto :goto_0

    :cond_1
    sget-object v11, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v12, v9, [F

    neg-float v7, v7

    aput v7, v12, v10

    invoke-static {v2, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    :goto_0
    iget-object v11, v4, Landroid/support/design/transformation/FabTransformationBehavior$b;->a:Lh/g;

    const-string v12, "elevation"

    invoke-virtual {v11, v12}, Lh/g;->c(Ljava/lang/String;)Lh/h;

    move-result-object v11

    invoke-virtual {v11, v7}, Lh/h;->a(Landroid/animation/Animator;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v7, v0, Landroid/support/design/transformation/FabTransformationBehavior;->d:Landroid/graphics/RectF;

    .line 5
    iget-object v11, v4, Landroid/support/design/transformation/FabTransformationBehavior$b;->b:Ld1/a;

    invoke-virtual {v0, v1, v2, v11}, Landroid/support/design/transformation/FabTransformationBehavior;->u(Landroid/view/View;Landroid/view/View;Ld1/a;)F

    move-result v11

    iget-object v12, v4, Landroid/support/design/transformation/FabTransformationBehavior$b;->b:Ld1/a;

    invoke-virtual {v0, v1, v2, v12}, Landroid/support/design/transformation/FabTransformationBehavior;->v(Landroid/view/View;Landroid/view/View;Ld1/a;)F

    move-result v12

    cmpl-float v13, v11, v8

    if-eqz v13, :cond_6

    cmpl-float v13, v12, v8

    if-nez v13, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    cmpg-float v14, v12, v8

    if-ltz v14, :cond_4

    :cond_3
    if-nez v3, :cond_5

    if-lez v13, :cond_5

    :cond_4
    iget-object v13, v4, Landroid/support/design/transformation/FabTransformationBehavior$b;->a:Lh/g;

    const-string v14, "translationXCurveUpwards"

    invoke-virtual {v13, v14}, Lh/g;->c(Ljava/lang/String;)Lh/h;

    move-result-object v13

    iget-object v14, v4, Landroid/support/design/transformation/FabTransformationBehavior$b;->a:Lh/g;

    const-string v15, "translationYCurveUpwards"

    goto :goto_2

    :cond_5
    iget-object v13, v4, Landroid/support/design/transformation/FabTransformationBehavior$b;->a:Lh/g;

    const-string v14, "translationXCurveDownwards"

    invoke-virtual {v13, v14}, Lh/g;->c(Ljava/lang/String;)Lh/h;

    move-result-object v13

    iget-object v14, v4, Landroid/support/design/transformation/FabTransformationBehavior$b;->a:Lh/g;

    const-string v15, "translationYCurveDownwards"

    goto :goto_2

    :cond_6
    :goto_1
    iget-object v13, v4, Landroid/support/design/transformation/FabTransformationBehavior$b;->a:Lh/g;

    const-string v14, "translationXLinear"

    invoke-virtual {v13, v14}, Lh/g;->c(Ljava/lang/String;)Lh/h;

    move-result-object v13

    iget-object v14, v4, Landroid/support/design/transformation/FabTransformationBehavior$b;->a:Lh/g;

    const-string v15, "translationYLinear"

    :goto_2
    invoke-virtual {v14, v15}, Lh/g;->c(Ljava/lang/String;)Lh/h;

    move-result-object v14

    if-eqz v3, :cond_8

    if-nez p4, :cond_7

    neg-float v15, v11

    invoke-virtual {v2, v15}, Landroid/view/View;->setTranslationX(F)V

    neg-float v15, v12

    invoke-virtual {v2, v15}, Landroid/view/View;->setTranslationY(F)V

    :cond_7
    sget-object v15, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    move-object/from16 v16, v6

    new-array v6, v9, [F

    aput v8, v6, v10

    invoke-static {v2, v15, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    sget-object v15, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    move-object/from16 v17, v6

    new-array v6, v9, [F

    aput v8, v6, v10

    invoke-static {v2, v15, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    neg-float v11, v11

    neg-float v12, v12

    .line 6
    invoke-virtual {v0, v4, v13, v11}, Landroid/support/design/transformation/FabTransformationBehavior;->w(Landroid/support/design/transformation/FabTransformationBehavior$b;Lh/h;F)F

    move-result v11

    invoke-virtual {v0, v4, v14, v12}, Landroid/support/design/transformation/FabTransformationBehavior;->w(Landroid/support/design/transformation/FabTransformationBehavior$b;Lh/h;F)F

    move-result v12

    iget-object v15, v0, Landroid/support/design/transformation/FabTransformationBehavior;->c:Landroid/graphics/Rect;

    invoke-virtual {v2, v15}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v8, v0, Landroid/support/design/transformation/FabTransformationBehavior;->d:Landroid/graphics/RectF;

    invoke-virtual {v8, v15}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v15, v0, Landroid/support/design/transformation/FabTransformationBehavior;->e:Landroid/graphics/RectF;

    invoke-virtual {v0, v2, v15}, Landroid/support/design/transformation/FabTransformationBehavior;->x(Landroid/view/View;Landroid/graphics/RectF;)V

    invoke-virtual {v15, v11, v12}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {v15, v8}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    invoke-virtual {v7, v15}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    move-object v8, v6

    move-object/from16 v6, v17

    goto :goto_3

    :cond_8
    move-object/from16 v16, v6

    .line 7
    sget-object v6, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v8, v9, [F

    neg-float v11, v11

    aput v11, v8, v10

    invoke-static {v2, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    sget-object v8, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v11, v9, [F

    neg-float v12, v12

    aput v12, v11, v10

    invoke-static {v2, v8, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    :goto_3
    invoke-virtual {v13, v6}, Lh/h;->a(Landroid/animation/Animator;)V

    invoke-virtual {v14, v8}, Lh/h;->a(Landroid/animation/Animator;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v6

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    .line 9
    instance-of v8, v2, Lk/d;

    if-eqz v8, :cond_d

    instance-of v11, v1, Landroid/widget/ImageView;

    if-nez v11, :cond_9

    goto :goto_5

    :cond_9
    move-object v11, v2

    check-cast v11, Lk/d;

    move-object v12, v1

    check-cast v12, Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-nez v12, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    const/16 v13, 0xff

    if-eqz v3, :cond_c

    if-nez p4, :cond_b

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_b
    sget-object v13, Lh/d;->a:Lh/d;

    new-array v14, v9, [I

    aput v10, v14, v10

    invoke-static {v12, v13, v14}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v13

    goto :goto_4

    :cond_c
    sget-object v14, Lh/d;->a:Lh/d;

    new-array v15, v9, [I

    aput v13, v15, v10

    invoke-static {v12, v14, v15}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v13

    :goto_4
    new-instance v14, Landroid/support/design/transformation/a;

    invoke-direct {v14, v2}, Landroid/support/design/transformation/a;-><init>(Landroid/view/View;)V

    invoke-virtual {v13, v14}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v14, v4, Landroid/support/design/transformation/FabTransformationBehavior$b;->a:Lh/g;

    const-string v15, "iconFade"

    invoke-virtual {v14, v15}, Lh/g;->c(Ljava/lang/String;)Lh/h;

    move-result-object v14

    invoke-virtual {v14, v13}, Lh/h;->a(Landroid/animation/Animator;)V

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Landroid/support/design/transformation/b;

    invoke-direct {v13, v11, v12}, Landroid/support/design/transformation/b;-><init>(Lk/d;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v11, v16

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_d
    :goto_5
    move-object/from16 v11, v16

    :goto_6
    if-nez v8, :cond_e

    move-object/from16 v18, v4

    move-object v1, v5

    move-object v3, v11

    goto/16 :goto_b

    .line 10
    :cond_e
    move-object v12, v2

    check-cast v12, Lk/d;

    iget-object v13, v4, Landroid/support/design/transformation/FabTransformationBehavior$b;->b:Ld1/a;

    .line 11
    iget-object v14, v0, Landroid/support/design/transformation/FabTransformationBehavior;->d:Landroid/graphics/RectF;

    iget-object v15, v0, Landroid/support/design/transformation/FabTransformationBehavior;->e:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v14}, Landroid/support/design/transformation/FabTransformationBehavior;->x(Landroid/view/View;Landroid/graphics/RectF;)V

    invoke-virtual {v0, v2, v15}, Landroid/support/design/transformation/FabTransformationBehavior;->x(Landroid/view/View;Landroid/graphics/RectF;)V

    invoke-virtual {v0, v1, v2, v13}, Landroid/support/design/transformation/FabTransformationBehavior;->u(Landroid/view/View;Landroid/view/View;Ld1/a;)F

    move-result v13

    neg-float v13, v13

    const/4 v10, 0x0

    invoke-virtual {v15, v13, v10}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {v14}, Landroid/graphics/RectF;->centerX()F

    move-result v13

    iget v14, v15, Landroid/graphics/RectF;->left:F

    sub-float/2addr v13, v14

    .line 12
    iget-object v14, v4, Landroid/support/design/transformation/FabTransformationBehavior$b;->b:Ld1/a;

    .line 13
    iget-object v15, v0, Landroid/support/design/transformation/FabTransformationBehavior;->d:Landroid/graphics/RectF;

    iget-object v9, v0, Landroid/support/design/transformation/FabTransformationBehavior;->e:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v15}, Landroid/support/design/transformation/FabTransformationBehavior;->x(Landroid/view/View;Landroid/graphics/RectF;)V

    invoke-virtual {v0, v2, v9}, Landroid/support/design/transformation/FabTransformationBehavior;->x(Landroid/view/View;Landroid/graphics/RectF;)V

    invoke-virtual {v0, v1, v2, v14}, Landroid/support/design/transformation/FabTransformationBehavior;->v(Landroid/view/View;Landroid/view/View;Ld1/a;)F

    move-result v14

    neg-float v14, v14

    invoke-virtual {v9, v10, v14}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {v15}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    iget v9, v9, Landroid/graphics/RectF;->top:F

    sub-float/2addr v10, v9

    .line 14
    move-object v9, v1

    check-cast v9, Landroid/support/design/widget/FloatingActionButton;

    iget-object v14, v0, Landroid/support/design/transformation/FabTransformationBehavior;->c:Landroid/graphics/Rect;

    invoke-virtual {v9, v14}, Landroid/support/design/widget/FloatingActionButton;->f(Landroid/graphics/Rect;)V

    iget-object v9, v0, Landroid/support/design/transformation/FabTransformationBehavior;->c:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v9, v14

    iget-object v14, v4, Landroid/support/design/transformation/FabTransformationBehavior$b;->a:Lh/g;

    const-string v15, "expansion"

    invoke-virtual {v14, v15}, Lh/g;->c(Ljava/lang/String;)Lh/h;

    move-result-object v14

    if-eqz v3, :cond_15

    if-nez p4, :cond_f

    new-instance v15, Lk/d$d;

    invoke-direct {v15, v13, v10, v9}, Lk/d$d;-><init>(FFF)V

    invoke-interface {v12, v15}, Lk/d;->setRevealInfo(Lk/d$d;)V

    :cond_f
    if-eqz p4, :cond_10

    invoke-interface {v12}, Lk/d;->getRevealInfo()Lk/d$d;

    move-result-object v9

    iget v9, v9, Lk/d$d;->c:F

    :cond_10
    const/4 v15, 0x0

    .line 15
    invoke-static {v13, v10, v15, v15}, La3/r0;->o(FFFF)F

    move-result v18

    invoke-static {v13, v10, v6, v15}, La3/r0;->o(FFFF)F

    move-result v19

    invoke-static {v13, v10, v6, v7}, La3/r0;->o(FFFF)F

    move-result v6

    invoke-static {v13, v10, v15, v7}, La3/r0;->o(FFFF)F

    move-result v7

    cmpl-float v15, v18, v19

    if-lez v15, :cond_11

    cmpl-float v15, v18, v6

    if-lez v15, :cond_11

    cmpl-float v15, v18, v7

    if-lez v15, :cond_11

    move/from16 v6, v18

    goto :goto_7

    :cond_11
    cmpl-float v15, v19, v6

    if-lez v15, :cond_12

    cmpl-float v15, v19, v7

    if-lez v15, :cond_12

    move/from16 v6, v19

    goto :goto_7

    :cond_12
    cmpl-float v15, v6, v7

    if-lez v15, :cond_13

    goto :goto_7

    :cond_13
    move v6, v7

    .line 16
    :goto_7
    invoke-static {v12, v13, v10, v6}, Lk/b;->a(Lk/d;FFF)Landroid/animation/Animator;

    move-result-object v6

    new-instance v7, Landroid/support/design/transformation/c;

    invoke-direct {v7, v12}, Landroid/support/design/transformation/c;-><init>(Lk/d;)V

    invoke-virtual {v6, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 17
    iget-wide v0, v14, Lh/h;->a:J

    float-to-int v7, v13

    float-to-int v10, v10

    move-object v15, v4

    const-wide/16 v3, 0x0

    cmp-long v13, v0, v3

    if-lez v13, :cond_14

    .line 18
    invoke-static {v2, v7, v10, v9, v9}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Landroid/animation/Animator;->setStartDelay(J)V

    invoke-virtual {v7, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    move-object v1, v5

    move-object/from16 v22, v11

    move-object/from16 v21, v12

    move-object v0, v14

    move-object/from16 v18, v15

    goto/16 :goto_a

    :cond_15
    move-object v15, v4

    .line 19
    invoke-interface {v12}, Lk/d;->getRevealInfo()Lk/d$d;

    move-result-object v0

    iget v0, v0, Lk/d$d;->c:F

    invoke-static {v12, v13, v10, v9}, Lk/b;->a(Lk/d;FFF)Landroid/animation/Animator;

    move-result-object v6

    .line 20
    iget-wide v3, v14, Lh/h;->a:J

    float-to-int v1, v13

    float-to-int v7, v10

    move-object v13, v11

    const-wide/16 v10, 0x0

    cmp-long v18, v3, v10

    if-lez v18, :cond_16

    .line 21
    invoke-static {v2, v1, v7, v0, v0}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Landroid/animation/Animator;->setStartDelay(J)V

    invoke-virtual {v0, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_16
    iget-wide v3, v14, Lh/h;->a:J

    .line 23
    iget-wide v10, v14, Lh/h;->b:J

    move-object v0, v15

    .line 24
    iget-object v15, v0, Landroid/support/design/transformation/FabTransformationBehavior$b;->a:Lh/g;

    move-object/from16 v20, v6

    .line 25
    iget-object v6, v15, Lh/g;->a:Lc0/j;

    .line 26
    iget v6, v6, Lc0/j;->d:I

    move-object/from16 v18, v0

    move-object/from16 v21, v12

    move-object/from16 v22, v13

    const/4 v0, 0x0

    const-wide/16 v12, 0x0

    :goto_8
    if-ge v0, v6, :cond_17

    move/from16 v19, v6

    .line 27
    iget-object v6, v15, Lh/g;->a:Lc0/j;

    invoke-virtual {v6, v0}, Lc0/j;->j(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lh/h;

    move-object/from16 v23, v14

    move-object/from16 v24, v15

    .line 28
    iget-wide v14, v6, Lh/h;->a:J

    move-object/from16 v25, v5

    .line 29
    iget-wide v5, v6, Lh/h;->b:J

    add-long/2addr v14, v5

    .line 30
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    add-int/lit8 v0, v0, 0x1

    move/from16 v6, v19

    move-object/from16 v14, v23

    move-object/from16 v15, v24

    move-object/from16 v5, v25

    goto :goto_8

    :cond_17
    move-object/from16 v25, v5

    move-object/from16 v23, v14

    add-long/2addr v3, v10

    cmp-long v0, v3, v12

    if-gez v0, :cond_18

    .line 31
    invoke-static {v2, v1, v7, v9, v9}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/animation/Animator;->setStartDelay(J)V

    sub-long/2addr v12, v3

    invoke-virtual {v0, v12, v13}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-object/from16 v1, v25

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_18
    move-object/from16 v1, v25

    :goto_9
    move-object/from16 v6, v20

    move-object/from16 v0, v23

    .line 32
    :goto_a
    invoke-virtual {v0, v6}, Lh/h;->a(Landroid/animation/Animator;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    new-instance v0, Lk/a;

    move-object/from16 v3, v21

    invoke-direct {v0, v3}, Lk/a;-><init>(Lk/d;)V

    move-object/from16 v3, v22

    .line 34
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_b
    if-nez v8, :cond_19

    move/from16 v6, p3

    move-object/from16 v4, v18

    goto :goto_e

    .line 35
    :cond_19
    move-object v0, v2

    check-cast v0, Lk/d;

    .line 36
    sget-object v4, Ld0/l;->a:Ljava/util/WeakHashMap;

    .line 37
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v4

    if-eqz v4, :cond_1a

    .line 38
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v5

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    goto :goto_c

    :cond_1a
    const/4 v4, 0x0

    :goto_c
    const v5, 0xffffff

    and-int/2addr v5, v4

    move/from16 v6, p3

    if-eqz v6, :cond_1c

    if-nez p4, :cond_1b

    .line 39
    invoke-interface {v0, v4}, Lk/d;->setCircularRevealScrimColor(I)V

    :cond_1b
    sget-object v4, Lk/d$c;->a:Lk/d$c;

    const/4 v7, 0x1

    new-array v8, v7, [I

    const/4 v9, 0x0

    aput v5, v8, v9

    invoke-static {v0, v4, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_d

    :cond_1c
    const/4 v7, 0x1

    const/4 v9, 0x0

    sget-object v5, Lk/d$c;->a:Lk/d$c;

    new-array v8, v7, [I

    aput v4, v8, v9

    invoke-static {v0, v5, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    :goto_d
    sget-object v4, Lh/b;->a:Lh/b;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    move-object/from16 v4, v18

    iget-object v5, v4, Landroid/support/design/transformation/FabTransformationBehavior$b;->a:Lh/g;

    const-string v7, "color"

    invoke-virtual {v5, v7}, Lh/g;->c(Ljava/lang/String;)Lh/h;

    move-result-object v5

    invoke-virtual {v5, v0}, Lh/h;->a(Landroid/animation/Animator;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    :goto_e
    instance-of v0, v2, Landroid/view/ViewGroup;

    if-nez v0, :cond_1d

    move-object/from16 v0, p0

    goto :goto_12

    :cond_1d
    const v0, 0x7f0800ee

    .line 41
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1e

    move-object v5, v0

    move-object/from16 v0, p0

    goto :goto_10

    :cond_1e
    instance-of v0, v2, Lq/c;

    if-nez v0, :cond_20

    instance-of v0, v2, Lq/b;

    if-eqz v0, :cond_1f

    goto :goto_f

    :cond_1f
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/design/transformation/FabTransformationBehavior;->z(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v5

    goto :goto_11

    :cond_20
    :goto_f
    move-object/from16 v0, p0

    move-object v5, v2

    check-cast v5, Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    :goto_10
    invoke-virtual {v0, v5}, Landroid/support/design/transformation/FabTransformationBehavior;->z(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v5

    :goto_11
    if-nez v5, :cond_21

    :goto_12
    const/4 v10, 0x0

    goto :goto_14

    :cond_21
    if-eqz v6, :cond_23

    if-nez p4, :cond_22

    .line 42
    sget-object v7, Lh/c;->a:Lh/c;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Lh/c;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    sget-object v7, Lh/c;->a:Lh/c;

    const/4 v8, 0x1

    new-array v8, v8, [F

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    aput v9, v8, v10

    invoke-static {v5, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    goto :goto_13

    :cond_23
    const/4 v8, 0x1

    const/4 v10, 0x0

    sget-object v7, Lh/c;->a:Lh/c;

    new-array v8, v8, [F

    const/4 v9, 0x0

    aput v9, v8, v10

    invoke-static {v5, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    :goto_13
    iget-object v4, v4, Landroid/support/design/transformation/FabTransformationBehavior$b;->a:Lh/g;

    const-string v7, "contentFade"

    invoke-virtual {v4, v7}, Lh/g;->c(Ljava/lang/String;)Lh/h;

    move-result-object v4

    invoke-virtual {v4, v5}, Lh/h;->a(Landroid/animation/Animator;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    :goto_14
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {v4, v1}, Ld1/a;->K(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    new-instance v1, Landroid/support/design/transformation/FabTransformationBehavior$a;

    move-object/from16 v5, p1

    invoke-direct {v1, v6, v2, v5}, Landroid/support/design/transformation/FabTransformationBehavior$a;-><init>(ZLandroid/view/View;Landroid/view/View;)V

    invoke-virtual {v4, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_15
    if-ge v10, v1, :cond_24

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v4, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_15

    :cond_24
    return-object v4
.end method

.method public final u(Landroid/view/View;Landroid/view/View;Ld1/a;)F
    .locals 2

    iget-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior;->d:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/support/design/transformation/FabTransformationBehavior;->e:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, v0}, Landroid/support/design/transformation/FabTransformationBehavior;->x(Landroid/view/View;Landroid/graphics/RectF;)V

    invoke-virtual {p0, p2, v1}, Landroid/support/design/transformation/FabTransformationBehavior;->x(Landroid/view/View;Landroid/graphics/RectF;)V

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    sub-float/2addr p1, p2

    const/4 p2, 0x0

    add-float/2addr p1, p2

    return p1
.end method

.method public final v(Landroid/view/View;Landroid/view/View;Ld1/a;)F
    .locals 2

    iget-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior;->d:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/support/design/transformation/FabTransformationBehavior;->e:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, v0}, Landroid/support/design/transformation/FabTransformationBehavior;->x(Landroid/view/View;Landroid/graphics/RectF;)V

    invoke-virtual {p0, p2, v1}, Landroid/support/design/transformation/FabTransformationBehavior;->x(Landroid/view/View;Landroid/graphics/RectF;)V

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    sub-float/2addr p1, p2

    const/4 p2, 0x0

    add-float/2addr p1, p2

    return p1
.end method

.method public final w(Landroid/support/design/transformation/FabTransformationBehavior$b;Lh/h;F)F
    .locals 8

    .line 1
    iget-wide v0, p2, Lh/h;->a:J

    .line 2
    iget-wide v2, p2, Lh/h;->b:J

    .line 3
    iget-object p1, p1, Landroid/support/design/transformation/FabTransformationBehavior$b;->a:Lh/g;

    const-string v4, "expansion"

    invoke-virtual {p1, v4}, Lh/g;->c(Ljava/lang/String;)Lh/h;

    move-result-object p1

    .line 4
    iget-wide v4, p1, Lh/h;->a:J

    .line 5
    iget-wide v6, p1, Lh/h;->b:J

    add-long/2addr v4, v6

    const-wide/16 v6, 0x11

    add-long/2addr v4, v6

    sub-long/2addr v4, v0

    long-to-float p1, v4

    long-to-float v0, v2

    div-float/2addr p1, v0

    .line 6
    invoke-virtual {p2}, Lh/h;->b()Landroid/animation/TimeInterpolator;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    sget-object p2, Lh/a;->a:Lf0/b;

    const/4 p2, 0x0

    sub-float/2addr p2, p3

    mul-float p2, p2, p1

    add-float/2addr p2, p3

    return p2
.end method

.method public final x(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior;->f:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-float v1, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    int-to-float v0, v0

    invoke-virtual {p2, v1, v0}, Landroid/graphics/RectF;->offsetTo(FF)V

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    neg-float v0, v0

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    neg-float p1, p1

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/RectF;->offset(FF)V

    return-void
.end method

.method public abstract y(Landroid/content/Context;Z)Landroid/support/design/transformation/FabTransformationBehavior$b;
.end method

.method public final z(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 1

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/ViewGroup;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
