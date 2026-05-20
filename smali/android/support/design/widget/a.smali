.class public final Landroid/support/design/widget/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Landroid/support/design/widget/CoordinatorLayout;

.field public final synthetic b:Landroid/support/design/widget/AppBarLayout;

.field public final synthetic c:Landroid/support/design/widget/AppBarLayout$BaseBehavior;


# direct methods
.method public constructor <init>(Landroid/support/design/widget/AppBarLayout$BaseBehavior;Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V
    .registers 4

    iput-object p1, p0, Landroid/support/design/widget/a;->c:Landroid/support/design/widget/AppBarLayout$BaseBehavior;

    iput-object p2, p0, Landroid/support/design/widget/a;->a:Landroid/support/design/widget/CoordinatorLayout;

    iput-object p3, p0, Landroid/support/design/widget/a;->b:Landroid/support/design/widget/AppBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5

    iget-object v0, p0, Landroid/support/design/widget/a;->c:Landroid/support/design/widget/AppBarLayout$BaseBehavior;

    iget-object v1, p0, Landroid/support/design/widget/a;->a:Landroid/support/design/widget/CoordinatorLayout;

    iget-object v2, p0, Landroid/support/design/widget/a;->b:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lr/h;->B(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    return-void
.end method
