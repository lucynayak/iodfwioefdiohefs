.class public final Landroid/support/design/behavior/HideBottomViewOnScrollBehavior$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;->s(Landroid/view/View;IJLandroid/animation/TimeInterpolator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;


# direct methods
.method public constructor <init>(Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;)V
    .registers 2

    iput-object p1, p0, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior$a;->a:Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior$a;->a:Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;->c:Landroid/view/ViewPropertyAnimator;

    return-void
.end method
