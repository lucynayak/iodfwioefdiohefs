.class public final Landroid/support/v4/app/l;
.super Landroid/support/v4/app/k$c;
.source "SourceFile"


# instance fields
.field public final synthetic b:Landroid/view/ViewGroup;

.field public final synthetic c:Landroid/support/v4/app/g;

.field public final synthetic d:Landroid/support/v4/app/k;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/k;Landroid/view/animation/Animation$AnimationListener;Landroid/view/ViewGroup;Landroid/support/v4/app/g;)V
    .registers 5

    iput-object p1, p0, Landroid/support/v4/app/l;->d:Landroid/support/v4/app/k;

    iput-object p3, p0, Landroid/support/v4/app/l;->b:Landroid/view/ViewGroup;

    iput-object p4, p0, Landroid/support/v4/app/l;->c:Landroid/support/v4/app/g;

    invoke-direct {p0, p2}, Landroid/support/v4/app/k$c;-><init>(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/support/v4/app/k$c;->onAnimationEnd(Landroid/view/animation/Animation;)V

    iget-object p1, p0, Landroid/support/v4/app/l;->b:Landroid/view/ViewGroup;

    new-instance v0, Landroid/support/v4/app/l$a;

    invoke-direct {v0, p0}, Landroid/support/v4/app/l$a;-><init>(Landroid/support/v4/app/l;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
