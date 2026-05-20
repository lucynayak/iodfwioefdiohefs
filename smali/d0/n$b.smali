.class public final Ld0/n$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld0/n;->f(Ld0/p;)Ld0/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld0/p;


# direct methods
.method public constructor <init>(Ld0/p;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Ld0/n$b;->a:Ld0/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 2

    iget-object p1, p0, Ld0/n$b;->a:Ld0/p;

    check-cast p1, Lh0/s$c;

    iget-object p1, p1, Lh0/s$c;->a:Lh0/s;

    iget-object p1, p1, Lh0/s;->d:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
