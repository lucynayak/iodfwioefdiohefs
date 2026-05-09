.class public final Lk/a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lk/d;


# direct methods
.method public constructor <init>(Lk/d;)V
    .registers 2

    iput-object p1, p0, Lk/a;->a:Lk/d;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p1, p0, Lk/a;->a:Lk/d;

    invoke-interface {p1}, Lk/d;->b()V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    iget-object p1, p0, Lk/a;->a:Lk/d;

    invoke-interface {p1}, Lk/d;->a()V

    return-void
.end method
