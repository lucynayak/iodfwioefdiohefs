.class public final Landroid/support/v7/widget/e$c;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Landroid/support/v7/widget/e;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/e;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/widget/e$c;->b:Landroid/support/v7/widget/e;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/v7/widget/e$c;->a:Z

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v7/widget/e$c;->a:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-boolean p1, p0, Landroid/support/v7/widget/e$c;->a:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Landroid/support/v7/widget/e$c;->a:Z

    return-void

    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/e$c;->b:Landroid/support/v7/widget/e;

    iget-object p1, p1, Landroid/support/v7/widget/e;->z:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-nez p1, :cond_1

    iget-object p1, p0, Landroid/support/v7/widget/e$c;->b:Landroid/support/v7/widget/e;

    iput v0, p1, Landroid/support/v7/widget/e;->A:I

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/e;->j(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroid/support/v7/widget/e$c;->b:Landroid/support/v7/widget/e;

    const/4 v0, 0x2

    iput v0, p1, Landroid/support/v7/widget/e;->A:I

    invoke-virtual {p1}, Landroid/support/v7/widget/e;->h()V

    :goto_0
    return-void
.end method
