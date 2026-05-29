.class public Landroid/support/design/widget/BottomSheetBehavior;
.super Landroid/support/design/widget/CoordinatorLayout$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/BottomSheetBehavior$b;,
        Landroid/support/design/widget/BottomSheetBehavior$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroid/support/design/widget/CoordinatorLayout$c<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public a:Z

.field public b:F

.field public c:I

.field public d:Z

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:Z

.field public k:Z

.field public l:I

.field public m:Lg0/p;

.field public n:Z

.field public o:I

.field public p:Z

.field public q:I

.field public r:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TV;>;"
        }
    .end annotation
.end field

.field public s:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public t:Landroid/view/VelocityTracker;

.field public u:I

.field public v:I

.field public w:Z

.field public x:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final y:Landroid/support/design/widget/BottomSheetBehavior$a;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout$c;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->a:Z

    const/4 v0, 0x4

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->l:I

    new-instance v0, Landroid/support/design/widget/BottomSheetBehavior$a;

    invoke-direct {v0, p0}, Landroid/support/design/widget/BottomSheetBehavior$a;-><init>(Landroid/support/design/widget/BottomSheetBehavior;)V

    iput-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->y:Landroid/support/design/widget/BottomSheetBehavior$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->a:Z

    const/4 v1, 0x4

    iput v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->l:I

    new-instance v1, Landroid/support/design/widget/BottomSheetBehavior$a;

    invoke-direct {v1, p0}, Landroid/support/design/widget/BottomSheetBehavior$a;-><init>(Landroid/support/design/widget/BottomSheetBehavior;)V

    iput-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->y:Landroid/support/design/widget/BottomSheetBehavior$a;

    sget-object v1, Ly1/a;->c:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    const/4 v3, -0x1

    if-eqz v2, :cond_0

    iget v2, v2, Landroid/util/TypedValue;->data:I

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v2}, Landroid/support/design/widget/BottomSheetBehavior;->v(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/design/widget/BottomSheetBehavior;->v(I)V

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 1
    iput-boolean v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->j:Z

    .line 2
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 3
    iget-boolean v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->a:Z

    const/4 v3, 0x3

    if-ne v2, v0, :cond_1

    goto :goto_2

    :cond_1
    iput-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->a:Z

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->r:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/support/design/widget/BottomSheetBehavior;->s()V

    :cond_2
    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->a:Z

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->l:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_3

    const/4 v0, 0x3

    goto :goto_1

    :cond_3
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->l:I

    :goto_1
    invoke-virtual {p0, v0}, Landroid/support/design/widget/BottomSheetBehavior;->w(I)V

    .line 4
    :goto_2
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 5
    iput-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->k:Z

    .line 6
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->b:F

    return-void
.end method


# virtual methods
.method public final e(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iput-boolean v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->n:Z

    return v1

    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-nez v0, :cond_1

    .line 1
    iput v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->u:I

    iget-object v5, p0, Landroid/support/design/widget/BottomSheetBehavior;->t:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->t:Landroid/view/VelocityTracker;

    .line 2
    :cond_1
    iget-object v5, p0, Landroid/support/design/widget/BottomSheetBehavior;->t:Landroid/view/VelocityTracker;

    if-nez v5, :cond_2

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Landroid/support/design/widget/BottomSheetBehavior;->t:Landroid/view/VelocityTracker;

    :cond_2
    iget-object v5, p0, Landroid/support/design/widget/BottomSheetBehavior;->t:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_3

    const/4 p2, 0x3

    if-eq v0, p2, :cond_3

    goto :goto_2

    :cond_3
    iput-boolean v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->w:Z

    iput v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->u:I

    iget-boolean p2, p0, Landroid/support/design/widget/BottomSheetBehavior;->n:Z

    if-eqz p2, :cond_8

    iput-boolean v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->n:Z

    return v1

    :cond_4
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Landroid/support/design/widget/BottomSheetBehavior;->v:I

    iget-object v6, p0, Landroid/support/design/widget/BottomSheetBehavior;->s:Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    goto :goto_0

    :cond_5
    move-object v6, v3

    :goto_0
    if-eqz v6, :cond_6

    iget v7, p0, Landroid/support/design/widget/BottomSheetBehavior;->v:I

    invoke-virtual {p1, v6, v5, v7}, Landroid/support/design/widget/CoordinatorLayout;->o(Landroid/view/View;II)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    invoke-virtual {p3, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Landroid/support/design/widget/BottomSheetBehavior;->u:I

    iput-boolean v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->w:Z

    :cond_6
    iget v6, p0, Landroid/support/design/widget/BottomSheetBehavior;->u:I

    if-ne v6, v4, :cond_7

    iget v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->v:I

    invoke-virtual {p1, p2, v5, v4}, Landroid/support/design/widget/CoordinatorLayout;->o(Landroid/view/View;II)Z

    move-result p2

    if-nez p2, :cond_7

    const/4 p2, 0x1

    goto :goto_1

    :cond_7
    const/4 p2, 0x0

    :goto_1
    iput-boolean p2, p0, Landroid/support/design/widget/BottomSheetBehavior;->n:Z

    :cond_8
    :goto_2
    iget-boolean p2, p0, Landroid/support/design/widget/BottomSheetBehavior;->n:Z

    if-nez p2, :cond_9

    iget-object p2, p0, Landroid/support/design/widget/BottomSheetBehavior;->m:Lg0/p;

    if-eqz p2, :cond_9

    invoke-virtual {p2, p3}, Lg0/p;->t(Landroid/view/MotionEvent;)Z

    move-result p2

    if-eqz p2, :cond_9

    return v2

    :cond_9
    iget-object p2, p0, Landroid/support/design/widget/BottomSheetBehavior;->s:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/view/View;

    :cond_a
    const/4 p2, 0x2

    if-ne v0, p2, :cond_b

    if-eqz v3, :cond_b

    iget-boolean p2, p0, Landroid/support/design/widget/BottomSheetBehavior;->n:Z

    if-nez p2, :cond_b

    iget p2, p0, Landroid/support/design/widget/BottomSheetBehavior;->l:I

    if-eq p2, v2, :cond_b

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v3, p2, v0}, Landroid/support/design/widget/CoordinatorLayout;->o(Landroid/view/View;II)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->m:Lg0/p;

    if-eqz p1, :cond_b

    iget p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->v:I

    int-to-float p1, p1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p2, p0, Landroid/support/design/widget/BottomSheetBehavior;->m:Lg0/p;

    .line 3
    iget p2, p2, Lg0/p;->b:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_b

    const/4 v1, 0x1

    :cond_b
    return v1
.end method

.method public final f(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    sget-object v0, Ld0/l;->a:Ljava/util/WeakHashMap;

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p2, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p1, p2, p3}, Landroid/support/design/widget/CoordinatorLayout;->q(Landroid/view/View;I)V

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p3

    iput p3, p0, Landroid/support/design/widget/BottomSheetBehavior;->q:I

    iget-boolean p3, p0, Landroid/support/design/widget/BottomSheetBehavior;->d:Z

    if-eqz p3, :cond_2

    iget p3, p0, Landroid/support/design/widget/BottomSheetBehavior;->e:I

    if-nez p3, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v2, 0x7f060062

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Landroid/support/design/widget/BottomSheetBehavior;->e:I

    :cond_1
    iget p3, p0, Landroid/support/design/widget/BottomSheetBehavior;->e:I

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->q:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x9

    div-int/lit8 v3, v3, 0x10

    sub-int/2addr v2, v3

    invoke-static {p3, v2}, Ljava/lang/Math;->max(II)I

    move-result p3

    goto :goto_0

    :cond_2
    iget p3, p0, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    :goto_0
    iput p3, p0, Landroid/support/design/widget/BottomSheetBehavior;->f:I

    const/4 p3, 0x0

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->q:I

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {p3, v2}, Ljava/lang/Math;->max(II)I

    move-result p3

    iput p3, p0, Landroid/support/design/widget/BottomSheetBehavior;->g:I

    iget p3, p0, Landroid/support/design/widget/BottomSheetBehavior;->q:I

    const/4 v2, 0x2

    div-int/2addr p3, v2

    iput p3, p0, Landroid/support/design/widget/BottomSheetBehavior;->h:I

    invoke-virtual {p0}, Landroid/support/design/widget/BottomSheetBehavior;->s()V

    iget p3, p0, Landroid/support/design/widget/BottomSheetBehavior;->l:I

    const/4 v3, 0x3

    if-ne p3, v3, :cond_3

    invoke-virtual {p0}, Landroid/support/design/widget/BottomSheetBehavior;->u()I

    move-result p3

    goto :goto_1

    :cond_3
    const/4 v3, 0x6

    if-ne p3, v3, :cond_4

    iget p3, p0, Landroid/support/design/widget/BottomSheetBehavior;->h:I

    goto :goto_1

    :cond_4
    iget-boolean v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->j:Z

    if-eqz v3, :cond_5

    const/4 v3, 0x5

    if-ne p3, v3, :cond_5

    iget p3, p0, Landroid/support/design/widget/BottomSheetBehavior;->q:I

    goto :goto_1

    :cond_5
    const/4 v3, 0x4

    if-ne p3, v3, :cond_6

    iget p3, p0, Landroid/support/design/widget/BottomSheetBehavior;->i:I

    :goto_1
    invoke-static {p2, p3}, Ld0/l;->h(Landroid/view/View;I)V

    goto :goto_2

    :cond_6
    if-eq p3, v1, :cond_7

    if-ne p3, v2, :cond_8

    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p3

    sub-int/2addr v0, p3

    invoke-static {p2, v0}, Ld0/l;->h(Landroid/view/View;I)V

    :cond_8
    :goto_2
    iget-object p3, p0, Landroid/support/design/widget/BottomSheetBehavior;->m:Lg0/p;

    if-nez p3, :cond_9

    iget-object p3, p0, Landroid/support/design/widget/BottomSheetBehavior;->y:Landroid/support/design/widget/BottomSheetBehavior$a;

    .line 3
    new-instance v0, Lg0/p;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1, p3}, Lg0/p;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lg0/p$c;)V

    .line 4
    iput-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->m:Lg0/p;

    :cond_9
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->r:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, p2}, Landroid/support/design/widget/BottomSheetBehavior;->t(Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->s:Ljava/lang/ref/WeakReference;

    return v1
.end method

.method public final h(Landroid/view/View;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "FF)Z"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->s:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->l:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public final i(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I[II)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "II[II)V"
        }
    .end annotation

    const/4 p1, 0x1

    if-ne p6, p1, :cond_0

    return-void

    :cond_0
    iget-object p6, p0, Landroid/support/design/widget/BottomSheetBehavior;->s:Ljava/lang/ref/WeakReference;

    invoke-virtual {p6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Landroid/view/View;

    if-eq p3, p6, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p6

    sub-int v0, p6, p4

    if-lez p4, :cond_3

    invoke-virtual {p0}, Landroid/support/design/widget/BottomSheetBehavior;->u()I

    move-result p3

    if-ge v0, p3, :cond_2

    invoke-virtual {p0}, Landroid/support/design/widget/BottomSheetBehavior;->u()I

    move-result p3

    sub-int/2addr p6, p3

    aput p6, p5, p1

    aget p3, p5, p1

    neg-int p3, p3

    invoke-static {p2, p3}, Ld0/l;->h(Landroid/view/View;I)V

    const/4 p3, 0x3

    goto :goto_0

    :cond_2
    aput p4, p5, p1

    goto :goto_2

    :cond_3
    if-gez p4, :cond_6

    const/4 v1, -0x1

    invoke-virtual {p3, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p3

    if-nez p3, :cond_6

    iget p3, p0, Landroid/support/design/widget/BottomSheetBehavior;->i:I

    if-le v0, p3, :cond_5

    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->j:Z

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    sub-int/2addr p6, p3

    aput p6, p5, p1

    aget p3, p5, p1

    neg-int p3, p3

    invoke-static {p2, p3}, Ld0/l;->h(Landroid/view/View;I)V

    const/4 p3, 0x4

    :goto_0
    invoke-virtual {p0, p3}, Landroid/support/design/widget/BottomSheetBehavior;->w(I)V

    goto :goto_3

    :cond_5
    :goto_1
    aput p4, p5, p1

    :goto_2
    neg-int p3, p4

    invoke-static {p2, p3}, Ld0/l;->h(Landroid/view/View;I)V

    invoke-virtual {p0, p1}, Landroid/support/design/widget/BottomSheetBehavior;->w(I)V

    :cond_6
    :goto_3
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 1
    iget-object p2, p0, Landroid/support/design/widget/BottomSheetBehavior;->r:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 2
    iput p4, p0, Landroid/support/design/widget/BottomSheetBehavior;->o:I

    iput-boolean p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->p:Z

    return-void
.end method

.method public final m(Landroid/view/View;Landroid/os/Parcelable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    check-cast p2, Landroid/support/design/widget/BottomSheetBehavior$b;

    iget p1, p2, Landroid/support/design/widget/BottomSheetBehavior$b;->d:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    :cond_0
    const/4 p1, 0x4

    :cond_1
    iput p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->l:I

    return-void
.end method

.method public final n(Landroid/view/View;)Landroid/os/Parcelable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;)",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    new-instance p1, Landroid/support/design/widget/BottomSheetBehavior$b;

    .line 1
    sget-object v0, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    .line 2
    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->l:I

    invoke-direct {p1, v0, v1}, Landroid/support/design/widget/BottomSheetBehavior$b;-><init>(Landroid/os/Parcelable;I)V

    return-object p1
.end method

.method public final p(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "II)Z"
        }
    .end annotation

    const/4 p1, 0x0

    iput p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->o:I

    iput-boolean p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->p:Z

    and-int/lit8 p2, p5, 0x2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method public final q(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p0}, Landroid/support/design/widget/BottomSheetBehavior;->u()I

    move-result p4

    const/4 v0, 0x3

    if-ne p1, p4, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/BottomSheetBehavior;->w(I)V

    return-void

    :cond_0
    iget-object p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->s:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-ne p3, p1, :cond_b

    iget-boolean p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->p:Z

    if-nez p1, :cond_1

    goto/16 :goto_3

    :cond_1
    iget p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->o:I

    const/4 p3, 0x0

    if-lez p1, :cond_2

    invoke-virtual {p0}, Landroid/support/design/widget/BottomSheetBehavior;->u()I

    move-result p1

    goto :goto_1

    :cond_2
    iget-boolean p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->j:Z

    if-eqz p1, :cond_4

    .line 1
    iget-object p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->t:Landroid/view/VelocityTracker;

    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_0

    :cond_3
    const/16 p4, 0x3e8

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->b:F

    invoke-virtual {p1, p4, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->t:Landroid/view/VelocityTracker;

    iget p4, p0, Landroid/support/design/widget/BottomSheetBehavior;->u:I

    invoke-virtual {p1, p4}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result p1

    .line 2
    :goto_0
    invoke-virtual {p0, p2, p1}, Landroid/support/design/widget/BottomSheetBehavior;->x(Landroid/view/View;F)Z

    move-result p1

    if-eqz p1, :cond_4

    iget p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->q:I

    const/4 v0, 0x5

    goto :goto_1

    :cond_4
    iget p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->o:I

    if-nez p1, :cond_8

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    iget-boolean p4, p0, Landroid/support/design/widget/BottomSheetBehavior;->a:Z

    if-eqz p4, :cond_5

    iget p4, p0, Landroid/support/design/widget/BottomSheetBehavior;->g:I

    sub-int p4, p1, p4

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->i:I

    sub-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ge p4, p1, :cond_8

    iget p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->g:I

    goto :goto_1

    :cond_5
    iget p4, p0, Landroid/support/design/widget/BottomSheetBehavior;->h:I

    if-ge p1, p4, :cond_6

    iget p4, p0, Landroid/support/design/widget/BottomSheetBehavior;->i:I

    sub-int p4, p1, p4

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    if-ge p1, p4, :cond_7

    const/4 p1, 0x0

    goto :goto_1

    :cond_6
    sub-int p4, p1, p4

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->i:I

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ge p4, p1, :cond_8

    :cond_7
    iget p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->h:I

    const/4 v0, 0x6

    goto :goto_1

    :cond_8
    iget p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->i:I

    const/4 v0, 0x4

    :goto_1
    iget-object p4, p0, Landroid/support/design/widget/BottomSheetBehavior;->m:Lg0/p;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 3
    iput-object p2, p4, Lg0/p;->r:Landroid/view/View;

    const/4 v2, -0x1

    iput v2, p4, Lg0/p;->c:I

    invoke-virtual {p4, v1, p1, p3, p3}, Lg0/p;->k(IIII)Z

    move-result p1

    if-nez p1, :cond_9

    iget v1, p4, Lg0/p;->a:I

    if-nez v1, :cond_9

    iget-object v1, p4, Lg0/p;->r:Landroid/view/View;

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    iput-object v1, p4, Lg0/p;->r:Landroid/view/View;

    :cond_9
    if-eqz p1, :cond_a

    const/4 p1, 0x2

    .line 4
    invoke-virtual {p0, p1}, Landroid/support/design/widget/BottomSheetBehavior;->w(I)V

    new-instance p1, Landroid/support/design/widget/BottomSheetBehavior$c;

    invoke-direct {p1, p0, p2, v0}, Landroid/support/design/widget/BottomSheetBehavior$c;-><init>(Landroid/support/design/widget/BottomSheetBehavior;Landroid/view/View;I)V

    sget-object p4, Ld0/l;->a:Ljava/util/WeakHashMap;

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 6
    :cond_a
    invoke-virtual {p0, v0}, Landroid/support/design/widget/BottomSheetBehavior;->w(I)V

    :goto_2
    iput-boolean p3, p0, Landroid/support/design/widget/BottomSheetBehavior;->p:Z

    :cond_b
    :goto_3
    return-void
.end method

.method public final r(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->l:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->m:Lg0/p;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p3}, Lg0/p;->m(Landroid/view/MotionEvent;)V

    :cond_2
    if-nez p1, :cond_3

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->u:I

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->t:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->t:Landroid/view/VelocityTracker;

    .line 2
    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->t:Landroid/view/VelocityTracker;

    if-nez v0, :cond_4

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->t:Landroid/view/VelocityTracker;

    :cond_4
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->t:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    iget-boolean p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->n:Z

    if-nez p1, :cond_5

    iget p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->v:I

    int-to-float p1, p1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->m:Lg0/p;

    .line 3
    iget v2, v0, Lg0/p;->b:I

    int-to-float v2, v2

    cmpl-float p1, p1, v2

    if-lez p1, :cond_5

    .line 4
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    invoke-virtual {v0, p2, p1}, Lg0/p;->b(Landroid/view/View;I)V

    :cond_5
    iget-boolean p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->n:Z

    xor-int/2addr p1, v1

    return p1
.end method

.method public final s()V
    .registers 3

    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->a:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->q:I

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->f:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->g:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->q:I

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->f:I

    sub-int/2addr v0, v1

    :goto_0
    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->i:I

    return-void
.end method

.method public final t(Landroid/view/View;)Landroid/view/View;
    .registers 5

    sget-object v0, Ld0/l;->a:Ljava/util/WeakHashMap;

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/design/widget/BottomSheetBehavior;->t(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final u()I
    .registers 2

    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->a:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->g:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final v(I)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    iget-boolean p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->d:Z

    if-nez p1, :cond_1

    iput-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->d:Z

    goto :goto_1

    :cond_0
    iget-boolean v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->d:Z

    if-nez v2, :cond_2

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    if-eq v2, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    iput-boolean v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->d:Z

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->q:I

    sub-int/2addr v1, p1

    iput v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->i:I

    :goto_1
    if-eqz v0, :cond_3

    iget p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->l:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->r:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_3
    return-void
.end method

.method public final w(I)V
    .registers 3

    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->l:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->l:I

    const/4 v0, 0x6

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/design/widget/BottomSheetBehavior;->y(Z)V

    :cond_4
    iget-object p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->r:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-void
.end method

.method public final x(Landroid/view/View;F)Z
    .registers 7

    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->k:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->i:I

    const/4 v3, 0x0

    if-ge v0, v2, :cond_1

    return v3

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3dcccccd    # 0.1f

    mul-float p2, p2, v0

    add-float/2addr p2, p1

    iget p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->i:I

    int-to-float p1, p1

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final y(Z)V
    .registers 8

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->r:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/support/design/widget/CoordinatorLayout;

    if-nez v1, :cond_1

    return-void

    :cond_1
    check-cast v0, Landroid/support/design/widget/CoordinatorLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-eqz p1, :cond_3

    iget-object v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->x:Ljava/util/HashMap;

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->x:Ljava/util/HashMap;

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_7

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->r:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_4

    goto :goto_3

    :cond_4
    iget-object v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->x:Ljava/util/HashMap;

    if-nez p1, :cond_5

    if-eqz v4, :cond_6

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->x:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_2

    .line 1
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x4

    .line 2
    :goto_2
    sget-object v5, Ld0/l;->a:Ljava/util/WeakHashMap;

    .line 3
    invoke-virtual {v3, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    if-nez p1, :cond_8

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->x:Ljava/util/HashMap;

    :cond_8
    return-void
.end method
