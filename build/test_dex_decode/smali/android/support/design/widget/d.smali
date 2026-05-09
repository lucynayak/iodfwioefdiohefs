.class public Landroid/support/design/widget/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/d$a;,
        Landroid/support/design/widget/d$c;,
        Landroid/support/design/widget/d$b;,
        Landroid/support/design/widget/d$e;,
        Landroid/support/design/widget/d$f;,
        Landroid/support/design/widget/d$d;
    }
.end annotation


# static fields
.field public static final t:Lf0/a;

.field public static final u:[I

.field public static final v:[I

.field public static final w:[I

.field public static final x:[I

.field public static final y:[I

.field public static final z:[I


# instance fields
.field public a:I

.field public b:Landroid/animation/Animator;

.field public c:Lh/g;

.field public d:Lh/g;

.field public e:Lh/g;

.field public f:Lh/g;

.field public final g:Lr/l;

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field public n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Lr/n;

.field public final p:Lr/j;

.field public final q:Landroid/graphics/Rect;

.field public final r:Landroid/graphics/Matrix;

.field public s:Lr/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget-object v0, Lh/a;->b:Lf0/a;

    sput-object v0, Landroid/support/design/widget/d;->t:Lf0/a;

    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Landroid/support/design/widget/d;->u:[I

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    sput-object v1, Landroid/support/design/widget/d;->v:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Landroid/support/design/widget/d;->w:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Landroid/support/design/widget/d;->x:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x101009e

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Landroid/support/design/widget/d;->y:[I

    new-array v0, v2, [I

    sput-object v0, Landroid/support/design/widget/d;->z:[I

    return-void

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data

    :array_1
    .array-data 4
        0x1010367
        0x101009c
        0x101009e
    .end array-data

    :array_2
    .array-data 4
        0x101009c
        0x101009e
    .end array-data

    :array_3
    .array-data 4
        0x1010367
        0x101009e
    .end array-data
.end method

.method public constructor <init>(Lr/n;Lr/j;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/widget/d;->a:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/support/design/widget/d;->l:F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/d;->q:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/d;->r:Landroid/graphics/Matrix;

    iput-object p1, p0, Landroid/support/design/widget/d;->o:Lr/n;

    iput-object p2, p0, Landroid/support/design/widget/d;->p:Lr/j;

    new-instance p2, Lr/l;

    invoke-direct {p2}, Lr/l;-><init>()V

    iput-object p2, p0, Landroid/support/design/widget/d;->g:Lr/l;

    sget-object v0, Landroid/support/design/widget/d;->u:[I

    new-instance v1, Landroid/support/design/widget/d$c;

    invoke-direct {v1, p0}, Landroid/support/design/widget/d$c;-><init>(Landroid/support/design/widget/d;)V

    invoke-virtual {p0, v1}, Landroid/support/design/widget/d;->b(Landroid/support/design/widget/d$f;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lr/l;->a([ILandroid/animation/ValueAnimator;)V

    sget-object v0, Landroid/support/design/widget/d;->v:[I

    new-instance v1, Landroid/support/design/widget/d$b;

    invoke-direct {v1, p0}, Landroid/support/design/widget/d$b;-><init>(Landroid/support/design/widget/d;)V

    invoke-virtual {p0, v1}, Landroid/support/design/widget/d;->b(Landroid/support/design/widget/d$f;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lr/l;->a([ILandroid/animation/ValueAnimator;)V

    sget-object v0, Landroid/support/design/widget/d;->w:[I

    new-instance v1, Landroid/support/design/widget/d$b;

    invoke-direct {v1, p0}, Landroid/support/design/widget/d$b;-><init>(Landroid/support/design/widget/d;)V

    invoke-virtual {p0, v1}, Landroid/support/design/widget/d;->b(Landroid/support/design/widget/d$f;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lr/l;->a([ILandroid/animation/ValueAnimator;)V

    sget-object v0, Landroid/support/design/widget/d;->x:[I

    new-instance v1, Landroid/support/design/widget/d$b;

    invoke-direct {v1, p0}, Landroid/support/design/widget/d$b;-><init>(Landroid/support/design/widget/d;)V

    invoke-virtual {p0, v1}, Landroid/support/design/widget/d;->b(Landroid/support/design/widget/d$f;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lr/l;->a([ILandroid/animation/ValueAnimator;)V

    sget-object v0, Landroid/support/design/widget/d;->y:[I

    new-instance v1, Landroid/support/design/widget/d$e;

    invoke-direct {v1, p0}, Landroid/support/design/widget/d$e;-><init>(Landroid/support/design/widget/d;)V

    invoke-virtual {p0, v1}, Landroid/support/design/widget/d;->b(Landroid/support/design/widget/d$f;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lr/l;->a([ILandroid/animation/ValueAnimator;)V

    sget-object v0, Landroid/support/design/widget/d;->z:[I

    new-instance v1, Landroid/support/design/widget/d$a;

    invoke-direct {v1, p0}, Landroid/support/design/widget/d$a;-><init>(Landroid/support/design/widget/d;)V

    invoke-virtual {p0, v1}, Landroid/support/design/widget/d;->b(Landroid/support/design/widget/d$f;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lr/l;->a([ILandroid/animation/ValueAnimator;)V

    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result p1

    iput p1, p0, Landroid/support/design/widget/d;->h:F

    return-void
.end method


# virtual methods
.method public final a(Lh/g;FF)Landroid/animation/AnimatorSet;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroid/support/design/widget/d;->o:Lr/n;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v4, v3, [F

    const/4 v5, 0x0

    aput p2, v4, v5

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-string v1, "opacity"

    invoke-virtual {p1, v1}, Lh/g;->c(Ljava/lang/String;)Lh/h;

    move-result-object v1

    invoke-virtual {v1, p2}, Lh/h;->a(Landroid/animation/Animator;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Landroid/support/design/widget/d;->o:Lr/n;

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v2, v3, [F

    aput p3, v2, v5

    invoke-static {p2, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-string v1, "scale"

    invoke-virtual {p1, v1}, Lh/g;->c(Ljava/lang/String;)Lh/h;

    move-result-object v2

    invoke-virtual {v2, p2}, Lh/h;->a(Landroid/animation/Animator;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Landroid/support/design/widget/d;->o:Lr/n;

    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v3, [F

    aput p3, v4, v5

    invoke-static {p2, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {p1, v1}, Lh/g;->c(Ljava/lang/String;)Lh/h;

    move-result-object p3

    invoke-virtual {p3, p2}, Lh/h;->a(Landroid/animation/Animator;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Landroid/support/design/widget/d;->r:Landroid/graphics/Matrix;

    .line 1
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    iget-object p2, p0, Landroid/support/design/widget/d;->o:Lr/n;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 2
    iget-object p2, p0, Landroid/support/design/widget/d;->o:Lr/n;

    new-instance p3, Lh/e;

    invoke-direct {p3}, Lh/e;-><init>()V

    new-instance v1, Lh/f;

    invoke-direct {v1}, Lh/f;-><init>()V

    new-array v2, v3, [Landroid/graphics/Matrix;

    new-instance v3, Landroid/graphics/Matrix;

    iget-object v4, p0, Landroid/support/design/widget/d;->r:Landroid/graphics/Matrix;

    invoke-direct {v3, v4}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    aput-object v3, v2, v5

    invoke-static {p2, p3, v1, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-string p3, "iconScale"

    invoke-virtual {p1, p3}, Lh/g;->c(Ljava/lang/String;)Lh/h;

    move-result-object p1

    invoke-virtual {p1, p2}, Lh/h;->a(Landroid/animation/Animator;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {p1, v0}, Ld1/a;->K(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    return-object p1
.end method

.method public final b(Landroid/support/design/widget/d$f;)Landroid/animation/ValueAnimator;
    .locals 3

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    sget-object v1, Landroid/support/design/widget/d;->t:Lf0/a;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public c()F
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public d(Landroid/graphics/Rect;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final e()Z
    .locals 4

    iget-object v0, p0, Landroid/support/design/widget/d;->o:Lr/n;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/design/widget/d;->a:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    iget v0, p0, Landroid/support/design/widget/d;->a:I

    if-eq v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public f()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public g()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public h([I)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public i(FFF)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public j(Landroid/graphics/Rect;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final k(F)V
    .locals 1

    iput p1, p0, Landroid/support/design/widget/d;->l:F

    iget-object p1, p0, Landroid/support/design/widget/d;->r:Landroid/graphics/Matrix;

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Landroid/support/design/widget/d;->o:Lr/n;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 2
    iget-object v0, p0, Landroid/support/design/widget/d;->o:Lr/n;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public l()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final m()Z
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/d;->o:Lr/n;

    sget-object v1, Ld0/l;->a:Ljava/util/WeakHashMap;

    .line 1
    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/support/design/widget/d;->o:Lr/n;

    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final n()V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/d;->q:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/d;->d(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Landroid/support/design/widget/d;->j(Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/support/design/widget/d;->p:Lr/j;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    check-cast v1, Landroid/support/design/widget/FloatingActionButton$a;

    iget-object v0, v1, Landroid/support/design/widget/FloatingActionButton$a;->a:Landroid/support/design/widget/FloatingActionButton;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    throw v0
.end method
