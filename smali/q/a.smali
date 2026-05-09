.class public final Lq/a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/support/design/transformation/ExpandableTransformationBehavior;


# direct methods
.method public constructor <init>(Landroid/support/design/transformation/ExpandableTransformationBehavior;)V
    .registers 2

    iput-object p1, p0, Lq/a;->a:Landroid/support/design/transformation/ExpandableTransformationBehavior;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lq/a;->a:Landroid/support/design/transformation/ExpandableTransformationBehavior;

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/design/transformation/ExpandableTransformationBehavior;->b:Landroid/animation/AnimatorSet;

    return-void
.end method
