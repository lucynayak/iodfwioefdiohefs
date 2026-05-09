.class public final Landroid/support/design/transformation/c;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lk/d;


# direct methods
.method public constructor <init>(Lk/d;)V
    .registers 2

    iput-object p1, p0, Landroid/support/design/transformation/c;->a:Lk/d;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Landroid/support/design/transformation/c;->a:Lk/d;

    invoke-interface {p1}, Lk/d;->getRevealInfo()Lk/d$d;

    move-result-object p1

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p1, Lk/d$d;->c:F

    iget-object v0, p0, Landroid/support/design/transformation/c;->a:Lk/d;

    invoke-interface {v0, p1}, Lk/d;->setRevealInfo(Lk/d$d;)V

    return-void
.end method
