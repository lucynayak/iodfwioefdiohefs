.class public Landroid/support/v4/widget/SwipeRefreshLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Ld0/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/SwipeRefreshLayout$g;,
        Landroid/support/v4/widget/SwipeRefreshLayout$h;
    }
.end annotation


# static fields
.field public static final K:[I


# instance fields
.field public A:Lg0/n;

.field public B:Landroid/support/v4/widget/SwipeRefreshLayout$b;

.field public C:Landroid/support/v4/widget/SwipeRefreshLayout$c;

.field public D:Landroid/support/v4/widget/SwipeRefreshLayout$c;

.field public E:Z

.field public F:I

.field public G:Landroid/support/v4/widget/SwipeRefreshLayout$g;

.field public H:Landroid/support/v4/widget/SwipeRefreshLayout$a;

.field public final I:Landroid/support/v4/widget/SwipeRefreshLayout$e;

.field public final J:Landroid/support/v4/widget/SwipeRefreshLayout$f;

.field public b:Landroid/view/View;

.field public c:Landroid/support/v4/widget/SwipeRefreshLayout$h;

.field public d:Z

.field public e:I

.field public f:F

.field public g:F

.field public final h:Ld0/j;

.field public final i:Ld0/h;

.field public final j:[I

.field public final k:[I

.field public l:Z

.field public m:I

.field public n:I

.field public o:F

.field public p:F

.field public q:Z

.field public r:I

.field public final s:Landroid/view/animation/DecelerateInterpolator;

.field public t:Lg0/c;

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:Lg0/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-class v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101000e

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/widget/SwipeRefreshLayout;->K:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Z

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:F

    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->j:[I

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->k:[I

    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:I

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->u:I

    new-instance v1, Landroid/support/v4/widget/SwipeRefreshLayout$a;

    invoke-direct {v1, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$a;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->H:Landroid/support/v4/widget/SwipeRefreshLayout$a;

    new-instance v1, Landroid/support/v4/widget/SwipeRefreshLayout$e;

    invoke-direct {v1, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$e;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->I:Landroid/support/v4/widget/SwipeRefreshLayout$e;

    new-instance v1, Landroid/support/v4/widget/SwipeRefreshLayout$f;

    invoke-direct {v1, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$f;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->J:Landroid/support/v4/widget/SwipeRefreshLayout$f;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->m:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x42200000    # 40.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->F:I

    .line 1
    new-instance v2, Lg0/c;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lg0/c;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Lg0/c;

    new-instance v2, Lg0/f;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lg0/f;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Lg0/f;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lg0/f;->c(I)V

    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Lg0/c;

    iget-object v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Lg0/f;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Lg0/c;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Lg0/c;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    const/high16 v2, 0x42800000    # 64.0f

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:I

    int-to-float v1, v1

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:F

    new-instance v1, Ld0/j;

    invoke-direct {v1}, Ld0/j;-><init>()V

    iput-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->h:Ld0/j;

    new-instance v1, Ld0/h;

    invoke-direct {v1, p0}, Ld0/h;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:Ld0/h;

    invoke-virtual {p0, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->setNestedScrollingEnabled(Z)V

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->F:I

    neg-int v1, v1

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->n:I

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->w:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->e(F)V

    sget-object v1, Landroid/support/v4/widget/SwipeRefreshLayout;->K:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private setColorViewAlpha(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Lg0/c;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Lg0/f;

    invoke-virtual {v0, p1}, Lg0/f;->setAlpha(I)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->G:Landroid/support/v4/widget/SwipeRefreshLayout$g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/support/v4/widget/SwipeRefreshLayout$g;->a()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/ListView;

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    check-cast v0, Landroid/widget/ListView;

    .line 1
    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->canScrollList(I)Z

    move-result v0

    return v0

    .line 2
    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:Landroid/view/View;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Lg0/c;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iput-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:Landroid/view/View;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final c(F)V
    .locals 4

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->i(ZZ)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Z

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Lg0/f;

    .line 1
    iget-object v1, v0, Lg0/f;->b:Lg0/f$a;

    const/4 v2, 0x0

    .line 2
    iput v2, v1, Lg0/f$a;->e:F

    .line 3
    iput v2, v1, Lg0/f$a;->f:F

    .line 4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 5
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$d;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$d;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->n:I

    .line 6
    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:I

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->J:Landroid/support/v4/widget/SwipeRefreshLayout$f;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->reset()V

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->J:Landroid/support/v4/widget/SwipeRefreshLayout$f;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->J:Landroid/support/v4/widget/SwipeRefreshLayout$f;

    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Lg0/c;

    .line 7
    iput-object v0, v1, Lg0/c;->b:Landroid/view/animation/Animation$AnimationListener;

    .line 8
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Lg0/c;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->J:Landroid/support/v4/widget/SwipeRefreshLayout$f;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 9
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Lg0/f;

    .line 10
    iget-object v1, v0, Lg0/f;->b:Lg0/f$a;

    invoke-virtual {v1, p1}, Lg0/f$a;->b(Z)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :goto_0
    return-void
.end method

.method public final d(F)V
    .locals 12

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Lg0/f;

    .line 1
    iget-object v1, v0, Lg0/f;->b:Lg0/f$a;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lg0/f$a;->b(Z)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 2
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:F

    div-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-double v3, v0

    const-wide v5, 0x3fd999999999999aL    # 0.4

    sub-double/2addr v3, v5

    const-wide/16 v5, 0x0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    double-to-float v3, v3

    const/high16 v4, 0x40a00000    # 5.0f

    mul-float v3, v3, v4

    const/high16 v4, 0x40400000    # 3.0f

    div-float/2addr v3, v4

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:F

    sub-float/2addr v4, v5

    iget v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:I

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    iget v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:I

    :goto_0
    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v7, v5, v6

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v4

    div-float/2addr v4, v5

    const/4 v7, 0x0

    invoke-static {v7, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/high16 v8, 0x40800000    # 4.0f

    div-float/2addr v4, v8

    float-to-double v8, v4

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    sub-double/2addr v8, v10

    double-to-float v4, v8

    mul-float v4, v4, v6

    mul-float v8, v5, v4

    mul-float v8, v8, v6

    iget v9, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->w:I

    mul-float v5, v5, v0

    add-float/2addr v5, v8

    float-to-int v0, v5

    add-int/2addr v9, v0

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Lg0/c;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Lg0/c;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Lg0/c;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Lg0/c;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3

    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Lg0/f;

    .line 3
    iget-object p1, p1, Lg0/f;->b:Lg0/f$a;

    .line 4
    iget p1, p1, Lg0/f$a;->t:I

    const/16 v0, 0x4c

    if-le p1, v0, :cond_5

    .line 5
    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->C:Landroid/support/v4/widget/SwipeRefreshLayout$c;

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_5

    .line 7
    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Lg0/f;

    .line 8
    iget-object p1, p1, Lg0/f;->b:Lg0/f$a;

    .line 9
    iget p1, p1, Lg0/f$a;->t:I

    .line 10
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->j(II)Landroid/view/animation/Animation;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/SwipeRefreshLayout$c;

    iput-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->C:Landroid/support/v4/widget/SwipeRefreshLayout$c;

    goto :goto_3

    .line 11
    :cond_3
    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Lg0/f;

    .line 12
    iget-object p1, p1, Lg0/f;->b:Lg0/f$a;

    .line 13
    iget p1, p1, Lg0/f$a;->t:I

    const/16 v0, 0xff

    if-ge p1, v0, :cond_5

    .line 14
    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->D:Landroid/support/v4/widget/SwipeRefreshLayout$c;

    if-eqz p1, :cond_4

    .line 15
    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_5

    .line 16
    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Lg0/f;

    .line 17
    iget-object p1, p1, Lg0/f;->b:Lg0/f$a;

    .line 18
    iget p1, p1, Lg0/f$a;->t:I

    .line 19
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->j(II)Landroid/view/animation/Animation;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/SwipeRefreshLayout$c;

    iput-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->D:Landroid/support/v4/widget/SwipeRefreshLayout$c;

    :cond_5
    :goto_3
    const p1, 0x3f4ccccd    # 0.8f

    mul-float v0, v3, p1

    .line 20
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Lg0/f;

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 21
    iget-object v0, v2, Lg0/f;->b:Lg0/f$a;

    .line 22
    iput v7, v0, Lg0/f$a;->e:F

    .line 23
    iput p1, v0, Lg0/f$a;->f:F

    .line 24
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 25
    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Lg0/f;

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 26
    iget-object v1, p1, Lg0/f;->b:Lg0/f$a;

    .line 27
    iget v2, v1, Lg0/f$a;->p:F

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_6

    iput v0, v1, Lg0/f$a;->p:F

    .line 28
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    const/high16 p1, -0x41800000    # -0.25f

    const v0, 0x3ecccccd    # 0.4f

    mul-float v3, v3, v0

    add-float/2addr v3, p1

    mul-float v4, v4, v6

    add-float/2addr v4, v3

    const/high16 p1, 0x3f000000    # 0.5f

    mul-float v4, v4, p1

    .line 29
    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Lg0/f;

    .line 30
    iget-object v0, p1, Lg0/f;->b:Lg0/f$a;

    .line 31
    iput v4, v0, Lg0/f$a;->g:F

    .line 32
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 33
    iget p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->n:I

    sub-int/2addr v9, p1

    invoke-virtual {p0, v9}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    return-void
.end method

.method public final dispatchNestedFling(FFZ)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:Ld0/h;

    invoke-virtual {v0, p1, p2, p3}, Ld0/h;->a(FFZ)Z

    move-result p1

    return p1
.end method

.method public final dispatchNestedPreFling(FF)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:Ld0/h;

    invoke-virtual {v0, p1, p2}, Ld0/h;->b(FF)Z

    move-result p1

    return p1
.end method

.method public final dispatchNestedPreScroll(II[I[I)Z
    .locals 6

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:Ld0/h;

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Ld0/h;->c(II[I[II)Z

    move-result p1

    return p1
.end method

.method public final dispatchNestedScroll(IIII[I)Z
    .locals 7

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:Ld0/h;

    const/4 v6, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Ld0/h;->d(IIII[II)Z

    move-result p1

    return p1
.end method

.method public final e(F)V
    .locals 2

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:I

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->w:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float v1, v1, p1

    float-to-int p1, v1

    add-int/2addr v0, p1

    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Lg0/c;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    return-void
.end method

.method public final g(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:I

    :cond_1
    return-void
.end method

.method public final getChildDrawingOrder(II)I
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->u:I

    if-gez v0, :cond_0

    return p2

    :cond_0
    add-int/lit8 p1, p1, -0x1

    if-ne p2, p1, :cond_1

    return v0

    :cond_1
    if-lt p2, v0, :cond_2

    add-int/lit8 p2, p2, 0x1

    :cond_2
    return p2
.end method

.method public getNestedScrollAxes()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->h:Ld0/j;

    iget v0, v0, Ld0/j;->a:I

    return v0
.end method

.method public getProgressCircleDiameter()I
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->F:I

    return v0
.end method

.method public getProgressViewEndOffset()I
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:I

    return v0
.end method

.method public getProgressViewStartOffset()I
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->w:I

    return v0
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Lg0/c;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Lg0/f;

    invoke-virtual {v0}, Lg0/f;->stop()V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Lg0/c;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/16 v0, 0xff

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorViewAlpha(I)V

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->w:I

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->n:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Lg0/c;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->n:I

    return-void
.end method

.method public final hasNestedScrollingParent()Z
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:Ld0/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ld0/h;->f(I)Z

    move-result v0

    return v0
.end method

.method public final i(ZZ)V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Z

    if-eq v0, p1, :cond_2

    iput-boolean p2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->E:Z

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->b()V

    iput-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Z

    if-eqz p1, :cond_1

    iget p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->n:I

    iget-object p2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->H:Landroid/support/v4/widget/SwipeRefreshLayout$a;

    .line 1
    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:I

    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->I:Landroid/support/v4/widget/SwipeRefreshLayout$e;

    invoke-virtual {p1}, Landroid/view/animation/Animation;->reset()V

    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->I:Landroid/support/v4/widget/SwipeRefreshLayout$e;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->I:Landroid/support/v4/widget/SwipeRefreshLayout$e;

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Lg0/c;

    .line 2
    iput-object p2, p1, Lg0/c;->b:Landroid/view/animation/Animation$AnimationListener;

    .line 3
    :cond_0
    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Lg0/c;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Lg0/c;

    iget-object p2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->I:Landroid/support/v4/widget/SwipeRefreshLayout$e;

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->H:Landroid/support/v4/widget/SwipeRefreshLayout$a;

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->l(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final isNestedScrollingEnabled()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:Ld0/h;

    iget-boolean v0, v0, Ld0/h;->d:Z

    return v0
.end method

.method public final j(II)Landroid/view/animation/Animation;
    .locals 1

    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$c;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout$c;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;II)V

    const-wide/16 p1, 0x12c

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Lg0/c;

    const/4 p2, 0x0

    .line 1
    iput-object p2, p1, Lg0/c;->b:Landroid/view/animation/Animation$AnimationListener;

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Lg0/c;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-object v0
.end method

.method public final k(F)V
    .locals 3

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:F

    sub-float/2addr p1, v0

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:I

    int-to-float v2, v1

    cmpl-float p1, p1, v2

    if-lez p1, :cond_0

    iget-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Z

    if-nez p1, :cond_0

    int-to-float p1, v1

    add-float/2addr v0, p1

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->o:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Z

    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Lg0/f;

    const/16 v0, 0x4c

    invoke-virtual {p1, v0}, Lg0/f;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method public final l(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 3

    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$b;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$b;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->B:Landroid/support/v4/widget/SwipeRefreshLayout$b;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Lg0/c;

    .line 1
    iput-object p1, v0, Lg0/c;->b:Landroid/view/animation/Animation$AnimationListener;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Lg0/c;

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->B:Landroid/support/v4/widget/SwipeRefreshLayout$b;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->h()V

    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->b()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->a()Z

    move-result v1

    if-nez v1, :cond_8

    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Z

    if-nez v1, :cond_8

    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->l:Z

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_6

    const/4 v1, 0x1

    const/4 v3, -0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->g(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:I

    if-ne v0, v3, :cond_3

    const-string p1, "SwipeRefreshLayout"

    const-string v0, "Got ACTION_MOVE event but don\'t have an active pointer id."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_4

    return v2

    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->k(F)V

    goto :goto_0

    :cond_5
    iput-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Z

    iput v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:I

    goto :goto_0

    :cond_6
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->w:I

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Lg0/c;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:I

    iput-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Z

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_7

    return v2

    :cond_7
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:F

    :goto_0
    iget-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Z

    return p1

    :cond_8
    :goto_1
    return v2
.end method

.method public final onLayout(ZIIII)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget-object p3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:Landroid/view/View;

    if-nez p3, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->b()V

    :cond_1
    iget-object p3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:Landroid/view/View;

    if-nez p3, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr p2, v1

    add-int/2addr v0, p4

    add-int/2addr p2, p5

    invoke-virtual {p3, p4, p5, v0, p2}, Landroid/view/View;->layout(IIII)V

    iget-object p2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Lg0/c;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    iget-object p3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Lg0/c;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    iget-object p4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Lg0/c;

    div-int/lit8 p1, p1, 0x2

    div-int/lit8 p2, p2, 0x2

    sub-int p5, p1, p2

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->n:I

    add-int/2addr p1, p2

    add-int/2addr p3, v0

    invoke-virtual {p4, p5, v0, p1, p3}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:Landroid/view/View;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->b()V

    :cond_0
    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:Landroid/view/View;

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/view/View;->measure(II)V

    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Lg0/c;

    iget p2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->F:I

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->F:I

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    const/4 p1, -0x1

    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->u:I

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_3

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Lg0/c;

    if-ne p2, v0, :cond_2

    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->u:I

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public final onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    invoke-virtual {p0, p2, p3, p4}, Landroid/support/v4/widget/SwipeRefreshLayout;->dispatchNestedFling(FFZ)Z

    move-result p1

    return p1
.end method

.method public final onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0

    invoke-virtual {p0, p2, p3}, Landroid/support/v4/widget/SwipeRefreshLayout;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1
.end method

.method public final onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 4

    const/4 p1, 0x1

    if-lez p3, :cond_1

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->g:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    int-to-float v2, p3

    cmpl-float v3, v2, v0

    if-lez v3, :cond_0

    float-to-int v0, v0

    sub-int v0, p3, v0

    aput v0, p4, p1

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->g:F

    goto :goto_0

    :cond_0
    sub-float/2addr v0, v2

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->g:F

    aput p3, p4, p1

    :goto_0
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->g:F

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->d(F)V

    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->j:[I

    const/4 v1, 0x0

    aget v2, p4, v1

    sub-int/2addr p2, v2

    aget v2, p4, p1

    sub-int/2addr p3, v2

    const/4 v2, 0x0

    invoke-virtual {p0, p2, p3, v0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->dispatchNestedPreScroll(II[I[I)Z

    move-result p2

    if-eqz p2, :cond_2

    aget p2, p4, v1

    aget p3, v0, v1

    add-int/2addr p2, p3

    aput p2, p4, v1

    aget p2, p4, p1

    aget p3, v0, p1

    add-int/2addr p2, p3

    aput p2, p4, p1

    :cond_2
    return-void
.end method

.method public final onNestedScroll(Landroid/view/View;IIII)V
    .locals 6

    iget-object v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->k:[I

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->dispatchNestedScroll(IIII[I)Z

    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->k:[I

    const/4 p2, 0x1

    aget p1, p1, p2

    add-int/2addr p5, p1

    if-gez p5, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->a()Z

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->g:F

    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p1, p2

    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->g:F

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->d(F)V

    :cond_0
    return-void
.end method

.method public final onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->h:Ld0/j;

    .line 1
    iput p3, p1, Ld0/j;->a:I

    and-int/lit8 p1, p3, 0x2

    .line 2
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->startNestedScroll(I)Z

    const/4 p1, 0x0

    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->g:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->l:Z

    return-void
.end method

.method public final onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Z

    if-nez p1, :cond_0

    and-int/lit8 p1, p3, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final onStopNestedScroll(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->h:Ld0/j;

    const/4 v0, 0x0

    .line 1
    iput v0, p1, Ld0/j;->a:I

    .line 2
    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->l:Z

    iget p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->g:F

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->c(F)V

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->g:F

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->stopNestedScroll()V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->a()Z

    move-result v1

    if-nez v1, :cond_d

    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Z

    if-nez v1, :cond_d

    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->l:Z

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v1, 0x1

    if-eqz v0, :cond_b

    const/high16 v3, 0x3f000000    # 0.5f

    const-string v4, "SwipeRefreshLayout"

    if-eq v0, v1, :cond_8

    const/4 v5, 0x2

    if-eq v0, v5, :cond_5

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    const/4 v3, 0x5

    if-eq v0, v3, :cond_2

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->g(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    if-gez v0, :cond_3

    const-string p1, "Got ACTION_POINTER_DOWN event but have an invalid action index."

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:I

    goto :goto_0

    :cond_4
    return v2

    :cond_5
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_6

    const-string p1, "Got ACTION_MOVE event but have an invalid active pointer id."

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_6
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->k(F)V

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Z

    if-eqz v0, :cond_c

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->o:F

    sub-float/2addr p1, v0

    mul-float p1, p1, v3

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_7

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->d(F)V

    goto :goto_0

    :cond_7
    return v2

    :cond_8
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_9

    const-string p1, "Got ACTION_UP event but don\'t have an active pointer id."

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_9
    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Z

    if-eqz v1, :cond_a

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->o:F

    sub-float/2addr p1, v0

    mul-float p1, p1, v3

    iput-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Z

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->c(F)V

    :cond_a
    const/4 p1, -0x1

    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:I

    return v2

    :cond_b
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:I

    iput-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Z

    :cond_c
    :goto_0
    return v1

    :cond_d
    :goto_1
    return v2
.end method

.method public final requestDisallowInterceptTouchEvent(Z)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v1, Ld0/l;->a:Ljava/util/WeakHashMap;

    .line 1
    invoke-virtual {v0}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    :goto_0
    return-void
.end method

.method public setAnimationProgress(F)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Lg0/c;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Lg0/c;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public varargs setColorScheme([I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->b()V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Lg0/f;

    .line 1
    iget-object v1, v0, Lg0/f;->b:Lg0/f$a;

    .line 2
    iput-object p1, v1, Lg0/f$a;->i:[I

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Lg0/f$a;->a(I)V

    .line 3
    iget-object v1, v0, Lg0/f;->b:Lg0/f$a;

    invoke-virtual {v1, p1}, Lg0/f$a;->a(I)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public varargs setColorSchemeResources([I)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    array-length v1, p1

    new-array v1, v1, [I

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    aget v3, p1, v2

    invoke-static {v0, v3}, Lu/a;->b(Landroid/content/Context;I)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    return-void
.end method

.method public setDistanceToTriggerSync(I)V
    .locals 0

    int-to-float p1, p1

    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:F

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->h()V

    :cond_0
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:Ld0/h;

    invoke-virtual {v0, p1}, Ld0/h;->g(Z)V

    return-void
.end method

.method public setOnChildScrollUpCallback(Landroid/support/v4/widget/SwipeRefreshLayout$g;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->G:Landroid/support/v4/widget/SwipeRefreshLayout$g;

    return-void
.end method

.method public setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$h;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->c:Landroid/support/v4/widget/SwipeRefreshLayout$h;

    return-void
.end method

.method public setProgressBackgroundColor(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeResource(I)V

    return-void
.end method

.method public setProgressBackgroundColorSchemeColor(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Lg0/c;

    invoke-virtual {v0, p1}, Lg0/c;->setBackgroundColor(I)V

    return-void
.end method

.method public setProgressBackgroundColorSchemeResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lu/a;->b(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeColor(I)V

    return-void
.end method

.method public setRefreshing(Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Z

    if-eq v1, p1, :cond_1

    iput-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Z

    iget p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:I

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->w:I

    add-int/2addr p1, v1

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->n:I

    sub-int/2addr p1, v1

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->E:Z

    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->H:Landroid/support/v4/widget/SwipeRefreshLayout$a;

    .line 1
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Lg0/c;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Lg0/f;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lg0/f;->setAlpha(I)V

    new-instance v0, Lg0/n;

    invoke-direct {v0, p0}, Lg0/n;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->A:Lg0/n;

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->m:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Lg0/c;

    .line 2
    iput-object p1, v0, Lg0/c;->b:Landroid/view/animation/Animation$AnimationListener;

    .line 3
    :cond_0
    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Lg0/c;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Lg0/c;

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->A:Lg0/n;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->i(ZZ)V

    :goto_0
    return-void
.end method

.method public setSize(I)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    if-nez p1, :cond_1

    const/high16 v1, 0x42600000    # 56.0f

    goto :goto_0

    :cond_1
    const/high16 v1, 0x42200000    # 40.0f

    :goto_0
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->F:I

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Lg0/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Lg0/f;

    invoke-virtual {v0, p1}, Lg0/f;->c(I)V

    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Lg0/c;

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Lg0/f;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSlingshotDistance(I)V
    .locals 0

    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:I

    return-void
.end method

.method public setTargetOffsetTopAndBottom(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Lg0/c;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Lg0/c;

    invoke-static {v0, p1}, Ld0/l;->h(Landroid/view/View;I)V

    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Lg0/c;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->n:I

    return-void
.end method

.method public final startNestedScroll(I)Z
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:Ld0/h;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ld0/h;->h(II)Z

    move-result p1

    return p1
.end method

.method public final stopNestedScroll()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:Ld0/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ld0/h;->i(I)V

    return-void
.end method
