.class public final Lt/c;
.super Lt/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt/c$b;
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Lt/w;-><init>()V

    and-int/lit8 v0, p1, -0x4

    if-nez v0, :cond_0

    iput p1, p0, Lt/w;->y:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only MODE_IN and MODE_OUT flags are allowed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static K(Lt/m;F)F
    .registers 3

    if-eqz p0, :cond_0

    iget-object p0, p0, Lt/m;->a:Ljava/util/HashMap;

    const-string v0, "android:fade:transitionAlpha"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    :cond_0
    return p1
.end method


# virtual methods
.method public final J(Landroid/view/View;FF)Landroid/animation/Animator;
    .registers 6

    cmpl-float v0, p2, p3

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {p1, p2}, Lt/r;->c(Landroid/view/View;F)V

    sget-object p2, Lt/r;->d:Lt/r$a;

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p3, v0, v1

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    new-instance p3, Lt/c$b;

    invoke-direct {p3, p1}, Lt/c$b;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p3, Lt/c$a;

    invoke-direct {p3, p1}, Lt/c$a;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, p3}, Lt/f;->a(Lt/f$d;)Lt/f;

    return-object p2
.end method

.method public final g(Lt/m;)V
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Lt/w;->H(Lt/m;)V

    .line 2
    iget-object v0, p1, Lt/m;->a:Ljava/util/HashMap;

    iget-object p1, p1, Lt/m;->b:Landroid/view/View;

    invoke-static {p1}, Lt/r;->a(Landroid/view/View;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "android:fade:transitionAlpha"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
