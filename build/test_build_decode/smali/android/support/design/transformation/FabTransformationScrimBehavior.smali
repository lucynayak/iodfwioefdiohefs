.class public Landroid/support/design/transformation/FabTransformationScrimBehavior;
.super Landroid/support/design/transformation/ExpandableTransformationBehavior;
.source "SourceFile"


# instance fields
.field public final c:Lh/h;

.field public final d:Lh/h;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/support/design/transformation/ExpandableTransformationBehavior;-><init>()V

    new-instance v0, Lh/h;

    const-wide/16 v1, 0x4b

    invoke-direct {v0, v1, v2}, Lh/h;-><init>(J)V

    iput-object v0, p0, Landroid/support/design/transformation/FabTransformationScrimBehavior;->c:Lh/h;

    new-instance v0, Lh/h;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lh/h;-><init>(J)V

    iput-object v0, p0, Landroid/support/design/transformation/FabTransformationScrimBehavior;->d:Lh/h;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/support/design/transformation/ExpandableTransformationBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lh/h;

    const-wide/16 v0, 0x4b

    invoke-direct {p1, v0, v1}, Lh/h;-><init>(J)V

    iput-object p1, p0, Landroid/support/design/transformation/FabTransformationScrimBehavior;->c:Lh/h;

    new-instance p1, Lh/h;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Lh/h;-><init>(J)V

    iput-object p1, p0, Landroid/support/design/transformation/FabTransformationScrimBehavior;->d:Lh/h;

    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    instance-of p1, p2, Landroid/support/design/widget/FloatingActionButton;

    return p1
.end method

.method public final r(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final t(Landroid/view/View;Landroid/view/View;ZZ)Landroid/animation/AnimatorSet;
    .locals 4

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_0

    .line 1
    iget-object v0, p0, Landroid/support/design/transformation/FabTransformationScrimBehavior;->c:Lh/h;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/design/transformation/FabTransformationScrimBehavior;->d:Lh/h;

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p3, :cond_2

    if-nez p4, :cond_1

    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    sget-object p4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v3, [F

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    invoke-static {p2, p4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    goto :goto_1

    :cond_2
    sget-object p4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v3, [F

    aput v1, v3, v2

    invoke-static {p2, p4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    :goto_1
    invoke-virtual {v0, p4}, Lh/h;->a(Landroid/animation/Animator;)V

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    new-instance p4, Landroid/animation/AnimatorSet;

    invoke-direct {p4}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {p4, p1}, Ld1/a;->K(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    new-instance p1, Landroid/support/design/transformation/FabTransformationScrimBehavior$a;

    invoke-direct {p1, p3, p2}, Landroid/support/design/transformation/FabTransformationScrimBehavior$a;-><init>(ZLandroid/view/View;)V

    invoke-virtual {p4, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p4
.end method
