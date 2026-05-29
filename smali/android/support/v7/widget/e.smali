.class public final Landroid/support/v7/widget/e;
.super Landroid/support/v7/widget/m$i;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/m$m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/e$d;,
        Landroid/support/v7/widget/e$c;
    }
.end annotation


# static fields
.field public static final D:[I

.field public static final E:[I


# instance fields
.field public A:I

.field public final B:Landroid/support/v7/widget/e$a;

.field public final C:Landroid/support/v7/widget/e$b;

.field public final a:I

.field public final b:I

.field public final c:Landroid/graphics/drawable/StateListDrawable;

.field public final d:Landroid/graphics/drawable/Drawable;

.field public final e:I

.field public final f:I

.field public final g:Landroid/graphics/drawable/StateListDrawable;

.field public final h:Landroid/graphics/drawable/Drawable;

.field public final i:I

.field public final j:I

.field public k:I

.field public l:I

.field public m:F

.field public n:I

.field public o:I

.field public p:F

.field public q:I

.field public r:I

.field public s:Landroid/support/v7/widget/m;

.field public t:Z

.field public u:Z

.field public v:I

.field public w:I

.field public final x:[I

.field public final y:[I

.field public final z:Landroid/animation/ValueAnimator;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100a7

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Landroid/support/v7/widget/e;->D:[I

    new-array v0, v2, [I

    sput-object v0, Landroid/support/v7/widget/e;->E:[I

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/m;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V
    .registers 14

    invoke-direct {p0}, Landroid/support/v7/widget/m$i;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/e;->q:I

    iput v0, p0, Landroid/support/v7/widget/e;->r:I

    iput-boolean v0, p0, Landroid/support/v7/widget/e;->t:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/e;->u:Z

    iput v0, p0, Landroid/support/v7/widget/e;->v:I

    iput v0, p0, Landroid/support/v7/widget/e;->w:I

    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, p0, Landroid/support/v7/widget/e;->x:[I

    new-array v2, v1, [I

    iput-object v2, p0, Landroid/support/v7/widget/e;->y:[I

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/widget/e;->z:Landroid/animation/ValueAnimator;

    iput v0, p0, Landroid/support/v7/widget/e;->A:I

    new-instance v3, Landroid/support/v7/widget/e$a;

    invoke-direct {v3, p0}, Landroid/support/v7/widget/e$a;-><init>(Landroid/support/v7/widget/e;)V

    iput-object v3, p0, Landroid/support/v7/widget/e;->B:Landroid/support/v7/widget/e$a;

    new-instance v3, Landroid/support/v7/widget/e$b;

    invoke-direct {v3, p0}, Landroid/support/v7/widget/e$b;-><init>(Landroid/support/v7/widget/e;)V

    iput-object v3, p0, Landroid/support/v7/widget/e;->C:Landroid/support/v7/widget/e$b;

    iput-object p2, p0, Landroid/support/v7/widget/e;->c:Landroid/graphics/drawable/StateListDrawable;

    iput-object p3, p0, Landroid/support/v7/widget/e;->d:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Landroid/support/v7/widget/e;->g:Landroid/graphics/drawable/StateListDrawable;

    iput-object p5, p0, Landroid/support/v7/widget/e;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-static {p6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Landroid/support/v7/widget/e;->e:I

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-static {p6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Landroid/support/v7/widget/e;->f:I

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p4

    invoke-static {p6, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    iput p4, p0, Landroid/support/v7/widget/e;->i:I

    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p4

    invoke-static {p6, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    iput p4, p0, Landroid/support/v7/widget/e;->j:I

    iput p7, p0, Landroid/support/v7/widget/e;->a:I

    iput p8, p0, Landroid/support/v7/widget/e;->b:I

    const/16 p4, 0xff

    invoke-virtual {p2, p4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {p3, p4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    new-instance p2, Landroid/support/v7/widget/e$c;

    invoke-direct {p2, p0}, Landroid/support/v7/widget/e$c;-><init>(Landroid/support/v7/widget/e;)V

    invoke-virtual {v2, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p2, Landroid/support/v7/widget/e$d;

    invoke-direct {p2, p0}, Landroid/support/v7/widget/e$d;-><init>(Landroid/support/v7/widget/e;)V

    invoke-virtual {v2, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1
    iget-object p2, p0, Landroid/support/v7/widget/e;->s:Landroid/support/v7/widget/m;

    if-ne p2, p1, :cond_0

    goto/16 :goto_1

    :cond_0
    if-eqz p2, :cond_6

    .line 2
    iget-object p3, p2, Landroid/support/v7/widget/m;->k:Landroid/support/v7/widget/m$j;

    if-eqz p3, :cond_1

    const-string p4, "Cannot remove item decoration during a scroll  or layout"

    invoke-virtual {p3, p4}, Landroid/support/v7/widget/m$j;->a(Ljava/lang/String;)V

    :cond_1
    iget-object p3, p2, Landroid/support/v7/widget/m;->m:Ljava/util/ArrayList;

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p3, p2, Landroid/support/v7/widget/m;->m:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getOverScrollMode()I

    move-result p3

    if-ne p3, v1, :cond_2

    const/4 p3, 0x1

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p2, p3}, Landroid/view/View;->setWillNotDraw(Z)V

    :cond_3
    invoke-virtual {p2}, Landroid/support/v7/widget/m;->x()V

    invoke-virtual {p2}, Landroid/support/v7/widget/m;->requestLayout()V

    .line 3
    iget-object p2, p0, Landroid/support/v7/widget/e;->s:Landroid/support/v7/widget/m;

    .line 4
    iget-object p3, p2, Landroid/support/v7/widget/m;->n:Ljava/util/ArrayList;

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p3, p2, Landroid/support/v7/widget/m;->o:Landroid/support/v7/widget/m$m;

    if-ne p3, p0, :cond_4

    const/4 p3, 0x0

    iput-object p3, p2, Landroid/support/v7/widget/m;->o:Landroid/support/v7/widget/m$m;

    .line 5
    :cond_4
    iget-object p2, p0, Landroid/support/v7/widget/e;->s:Landroid/support/v7/widget/m;

    .line 6
    iget-object p2, p2, Landroid/support/v7/widget/m;->d0:Ljava/util/ArrayList;

    if-eqz p2, :cond_5

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/e;->e()V

    .line 8
    :cond_6
    iput-object p1, p0, Landroid/support/v7/widget/e;->s:Landroid/support/v7/widget/m;

    if-eqz p1, :cond_a

    .line 9
    iget-object p2, p1, Landroid/support/v7/widget/m;->k:Landroid/support/v7/widget/m$j;

    if-eqz p2, :cond_7

    const-string p3, "Cannot add item decoration during a scroll  or layout"

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/m$j;->a(Ljava/lang/String;)V

    :cond_7
    iget-object p2, p1, Landroid/support/v7/widget/m;->m:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-virtual {p1, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    :cond_8
    iget-object p2, p1, Landroid/support/v7/widget/m;->m:Ljava/util/ArrayList;

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/support/v7/widget/m;->x()V

    invoke-virtual {p1}, Landroid/support/v7/widget/m;->requestLayout()V

    .line 10
    iget-object p1, p0, Landroid/support/v7/widget/e;->s:Landroid/support/v7/widget/m;

    .line 11
    iget-object p1, p1, Landroid/support/v7/widget/m;->n:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object p1, p0, Landroid/support/v7/widget/e;->s:Landroid/support/v7/widget/m;

    .line 13
    iget-object p2, p1, Landroid/support/v7/widget/m;->d0:Ljava/util/ArrayList;

    if-nez p2, :cond_9

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Landroid/support/v7/widget/m;->d0:Ljava/util/ArrayList;

    :cond_9
    iget-object p1, p1, Landroid/support/v7/widget/m;->d0:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)Z
    .registers 7

    iget v0, p0, Landroid/support/v7/widget/e;->v:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v0, v3}, Landroid/support/v7/widget/e;->g(FF)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/support/v7/widget/e;->f(FF)Z

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_4

    if-nez v0, :cond_0

    if-eqz v3, :cond_4

    :cond_0
    if-eqz v3, :cond_1

    iput v1, p0, Landroid/support/v7/widget/e;->w:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Landroid/support/v7/widget/e;->p:F

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    iput v2, p0, Landroid/support/v7/widget/e;->w:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Landroid/support/v7/widget/e;->m:F

    :cond_2
    :goto_0
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/e;->j(I)V

    goto :goto_1

    :cond_3
    if-ne v0, v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public final b()V
    .registers 1

    return-void
.end method

.method public final c(Landroid/view/MotionEvent;)V
    .registers 14

    iget v0, p0, Landroid/support/v7/widget/e;->v:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v0, v3}, Landroid/support/v7/widget/e;->g(FF)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/support/v7/widget/e;->f(FF)Z

    move-result v3

    if-nez v0, :cond_1

    if-eqz v3, :cond_b

    :cond_1
    if-eqz v3, :cond_2

    iput v2, p0, Landroid/support/v7/widget/e;->w:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Landroid/support/v7/widget/e;->p:F

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    iput v1, p0, Landroid/support/v7/widget/e;->w:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Landroid/support/v7/widget/e;->m:F

    :cond_3
    :goto_0
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/e;->j(I)V

    goto/16 :goto_2

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x0

    if-ne v0, v2, :cond_5

    iget v0, p0, Landroid/support/v7/widget/e;->v:I

    if-ne v0, v1, :cond_5

    const/4 p1, 0x0

    iput p1, p0, Landroid/support/v7/widget/e;->m:F

    iput p1, p0, Landroid/support/v7/widget/e;->p:F

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/e;->j(I)V

    iput v3, p0, Landroid/support/v7/widget/e;->w:I

    goto/16 :goto_2

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_b

    iget v0, p0, Landroid/support/v7/widget/e;->v:I

    if-ne v0, v1, :cond_b

    invoke-virtual {p0}, Landroid/support/v7/widget/e;->k()V

    iget v0, p0, Landroid/support/v7/widget/e;->w:I

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1
    iget-object v8, p0, Landroid/support/v7/widget/e;->y:[I

    iget v5, p0, Landroid/support/v7/widget/e;->b:I

    aput v5, v8, v3

    iget v6, p0, Landroid/support/v7/widget/e;->q:I

    sub-int/2addr v6, v5

    aput v6, v8, v2

    .line 2
    aget v5, v8, v3

    int-to-float v5, v5

    aget v6, v8, v2

    int-to-float v6, v6

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v5, p0, Landroid/support/v7/widget/e;->o:I

    int-to-float v5, v5

    sub-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v4

    if-gez v5, :cond_6

    goto :goto_1

    :cond_6
    iget v6, p0, Landroid/support/v7/widget/e;->p:F

    iget-object v5, p0, Landroid/support/v7/widget/e;->s:Landroid/support/v7/widget/m;

    invoke-virtual {v5}, Landroid/support/v7/widget/m;->computeHorizontalScrollRange()I

    move-result v9

    iget-object v5, p0, Landroid/support/v7/widget/e;->s:Landroid/support/v7/widget/m;

    invoke-virtual {v5}, Landroid/support/v7/widget/m;->computeHorizontalScrollOffset()I

    move-result v10

    iget v11, p0, Landroid/support/v7/widget/e;->q:I

    move-object v5, p0

    move v7, v0

    invoke-virtual/range {v5 .. v11}, Landroid/support/v7/widget/e;->i(FF[IIII)I

    move-result v5

    if-eqz v5, :cond_7

    iget-object v6, p0, Landroid/support/v7/widget/e;->s:Landroid/support/v7/widget/m;

    invoke-virtual {v6, v5, v3}, Landroid/support/v7/widget/m;->scrollBy(II)V

    :cond_7
    iput v0, p0, Landroid/support/v7/widget/e;->p:F

    .line 3
    :cond_8
    :goto_1
    iget v0, p0, Landroid/support/v7/widget/e;->w:I

    if-ne v0, v1, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 4
    iget-object v8, p0, Landroid/support/v7/widget/e;->x:[I

    iget v0, p0, Landroid/support/v7/widget/e;->b:I

    aput v0, v8, v3

    iget v1, p0, Landroid/support/v7/widget/e;->r:I

    sub-int/2addr v1, v0

    aput v1, v8, v2

    .line 5
    aget v0, v8, v3

    int-to-float v0, v0

    aget v1, v8, v2

    int-to-float v1, v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v0, p0, Landroid/support/v7/widget/e;->l:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_9

    goto :goto_2

    :cond_9
    iget v6, p0, Landroid/support/v7/widget/e;->m:F

    iget-object v0, p0, Landroid/support/v7/widget/e;->s:Landroid/support/v7/widget/m;

    invoke-virtual {v0}, Landroid/support/v7/widget/m;->computeVerticalScrollRange()I

    move-result v9

    iget-object v0, p0, Landroid/support/v7/widget/e;->s:Landroid/support/v7/widget/m;

    invoke-virtual {v0}, Landroid/support/v7/widget/m;->computeVerticalScrollOffset()I

    move-result v10

    iget v11, p0, Landroid/support/v7/widget/e;->r:I

    move-object v5, p0

    move v7, p1

    invoke-virtual/range {v5 .. v11}, Landroid/support/v7/widget/e;->i(FF[IIII)I

    move-result v0

    if-eqz v0, :cond_a

    iget-object v1, p0, Landroid/support/v7/widget/e;->s:Landroid/support/v7/widget/m;

    invoke-virtual {v1, v3, v0}, Landroid/support/v7/widget/m;->scrollBy(II)V

    :cond_a
    iput p1, p0, Landroid/support/v7/widget/e;->m:F

    :cond_b
    :goto_2
    return-void
.end method

.method public final d(Landroid/graphics/Canvas;)V
    .registers 9

    iget v0, p0, Landroid/support/v7/widget/e;->q:I

    iget-object v1, p0, Landroid/support/v7/widget/e;->s:Landroid/support/v7/widget/m;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_5

    iget v0, p0, Landroid/support/v7/widget/e;->r:I

    iget-object v1, p0, Landroid/support/v7/widget/e;->s:Landroid/support/v7/widget/m;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/e;->A:I

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/support/v7/widget/e;->t:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1
    iget v0, p0, Landroid/support/v7/widget/e;->q:I

    iget v3, p0, Landroid/support/v7/widget/e;->e:I

    sub-int/2addr v0, v3

    iget v4, p0, Landroid/support/v7/widget/e;->l:I

    iget v5, p0, Landroid/support/v7/widget/e;->k:I

    div-int/lit8 v6, v5, 0x2

    sub-int/2addr v4, v6

    iget-object v6, p0, Landroid/support/v7/widget/e;->c:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v6, v2, v2, v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, p0, Landroid/support/v7/widget/e;->d:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Landroid/support/v7/widget/e;->f:I

    iget v6, p0, Landroid/support/v7/widget/e;->r:I

    invoke-virtual {v3, v2, v2, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2
    iget-object v3, p0, Landroid/support/v7/widget/e;->s:Landroid/support/v7/widget/m;

    sget-object v5, Ld0/l;->a:Ljava/util/WeakHashMap;

    .line 3
    invoke-virtual {v3}, Landroid/view/View;->getLayoutDirection()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_2

    .line 4
    iget-object v0, p0, Landroid/support/v7/widget/e;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v0, p0, Landroid/support/v7/widget/e;->e:I

    int-to-float v0, v0

    int-to-float v3, v4

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v0, p0, Landroid/support/v7/widget/e;->c:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    iget v0, p0, Landroid/support/v7/widget/e;->e:I

    goto :goto_1

    :cond_2
    int-to-float v3, v0

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Landroid/support/v7/widget/e;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float v3, v4

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Landroid/support/v7/widget/e;->c:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_1
    neg-int v0, v0

    int-to-float v0, v0

    neg-int v3, v4

    int-to-float v3, v3

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5
    :cond_3
    iget-boolean v0, p0, Landroid/support/v7/widget/e;->u:Z

    if-eqz v0, :cond_4

    .line 6
    iget v0, p0, Landroid/support/v7/widget/e;->r:I

    iget v3, p0, Landroid/support/v7/widget/e;->i:I

    sub-int/2addr v0, v3

    iget v4, p0, Landroid/support/v7/widget/e;->o:I

    iget v5, p0, Landroid/support/v7/widget/e;->n:I

    div-int/lit8 v6, v5, 0x2

    sub-int/2addr v4, v6

    iget-object v6, p0, Landroid/support/v7/widget/e;->g:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v6, v2, v2, v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, p0, Landroid/support/v7/widget/e;->h:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Landroid/support/v7/widget/e;->q:I

    iget v6, p0, Landroid/support/v7/widget/e;->j:I

    invoke-virtual {v3, v2, v2, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    int-to-float v2, v0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Landroid/support/v7/widget/e;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float v2, v4

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Landroid/support/v7/widget/e;->g:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-int v1, v4

    int-to-float v1, v1

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_4
    return-void

    .line 7
    :cond_5
    :goto_2
    iget-object p1, p0, Landroid/support/v7/widget/e;->s:Landroid/support/v7/widget/m;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/e;->q:I

    iget-object p1, p0, Landroid/support/v7/widget/e;->s:Landroid/support/v7/widget/m;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/e;->r:I

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/e;->j(I)V

    return-void
.end method

.method public final e()V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/e;->s:Landroid/support/v7/widget/m;

    iget-object v1, p0, Landroid/support/v7/widget/e;->B:Landroid/support/v7/widget/e$a;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final f(FF)Z
    .registers 5

    iget v0, p0, Landroid/support/v7/widget/e;->r:I

    iget v1, p0, Landroid/support/v7/widget/e;->i:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-ltz p2, :cond_0

    iget p2, p0, Landroid/support/v7/widget/e;->o:I

    iget v0, p0, Landroid/support/v7/widget/e;->n:I

    div-int/lit8 v1, v0, 0x2

    sub-int v1, p2, v1

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    int-to-float p2, v0

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final g(FF)Z
    .registers 7

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/e;->s:Landroid/support/v7/widget/m;

    sget-object v1, Ld0/l;->a:Ljava/util/WeakHashMap;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    iget v0, p0, Landroid/support/v7/widget/e;->e:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_2

    goto :goto_1

    :cond_1
    iget v0, p0, Landroid/support/v7/widget/e;->q:I

    iget v3, p0, Landroid/support/v7/widget/e;->e:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_2

    :goto_1
    iget p1, p0, Landroid/support/v7/widget/e;->l:I

    iget v0, p0, Landroid/support/v7/widget/e;->k:I

    div-int/lit8 v3, v0, 0x2

    sub-int v3, p1, v3

    int-to-float v3, v3

    cmpl-float v3, p2, v3

    if-ltz v3, :cond_2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    int-to-float p1, v0

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final h()V
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/e;->s:Landroid/support/v7/widget/m;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final i(FF[IIII)I
    .registers 9

    const/4 v0, 0x1

    aget v0, p3, v0

    const/4 v1, 0x0

    aget p3, p3, v1

    sub-int/2addr v0, p3

    if-nez v0, :cond_0

    return v1

    :cond_0
    sub-float/2addr p2, p1

    int-to-float p1, v0

    div-float/2addr p2, p1

    sub-int/2addr p4, p6

    int-to-float p1, p4

    mul-float p2, p2, p1

    float-to-int p1, p2

    add-int/2addr p5, p1

    if-ge p5, p4, :cond_1

    if-ltz p5, :cond_1

    return p1

    :cond_1
    return v1
.end method

.method public final j(I)V
    .registers 7

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget v1, p0, Landroid/support/v7/widget/e;->v:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/e;->c:Landroid/graphics/drawable/StateListDrawable;

    sget-object v2, Landroid/support/v7/widget/e;->D:[I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p0}, Landroid/support/v7/widget/e;->e()V

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/e;->h()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/e;->k()V

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/e;->v:I

    if-ne v1, v0, :cond_2

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/e;->c:Landroid/graphics/drawable/StateListDrawable;

    sget-object v1, Landroid/support/v7/widget/e;->E:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    const/16 v0, 0x4b0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    const/16 v0, 0x5dc

    .line 1
    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/widget/e;->e()V

    iget-object v1, p0, Landroid/support/v7/widget/e;->s:Landroid/support/v7/widget/m;

    iget-object v2, p0, Landroid/support/v7/widget/e;->B:Landroid/support/v7/widget/e$a;

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2
    :cond_3
    iput p1, p0, Landroid/support/v7/widget/e;->v:I

    return-void
.end method

.method public final k()V
    .registers 6

    iget v0, p0, Landroid/support/v7/widget/e;->A:I

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/e;->z:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/e;->A:I

    iget-object v1, p0, Landroid/support/v7/widget/e;->z:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Landroid/support/v7/widget/e;->z:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Landroid/support/v7/widget/e;->z:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v0, p0, Landroid/support/v7/widget/e;->z:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void
.end method
