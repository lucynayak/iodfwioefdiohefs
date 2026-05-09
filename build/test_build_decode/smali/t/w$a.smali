.class public final Lt/w$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"

# interfaces
.implements Lt/f$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/view/View;

.field public final b:I

.field public final c:Landroid/view/ViewGroup;

.field public final d:Z

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 1

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lt/w$a;->f:Z

    iput-object p1, p0, Lt/w$a;->a:Landroid/view/View;

    iput p2, p0, Lt/w$a;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lt/w$a;->c:Landroid/view/ViewGroup;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lt/w$a;->d:Z

    invoke-virtual {p0, p1}, Lt/w$a;->f(Z)V

    return-void
.end method


# virtual methods
.method public final a(Lt/f;)V
    .locals 0

    invoke-virtual {p0}, Lt/w$a;->e()V

    invoke-virtual {p1, p0}, Lt/f;->v(Lt/f$d;)Lt/f;

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lt/w$a;->f(Z)V

    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lt/w$a;->f(Z)V

    return-void
.end method

.method public final e()V
    .locals 2

    iget-boolean v0, p0, Lt/w$a;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lt/w$a;->a:Landroid/view/View;

    iget v1, p0, Lt/w$a;->b:I

    invoke-static {v0, v1}, Lt/r;->d(Landroid/view/View;I)V

    iget-object v0, p0, Lt/w$a;->c:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lt/w$a;->f(Z)V

    return-void
.end method

.method public final f(Z)V
    .locals 1

    iget-boolean v0, p0, Lt/w$a;->d:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lt/w$a;->e:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lt/w$a;->c:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lt/w$a;->e:Z

    invoke-static {v0, p1}, Lt/q;->a(Landroid/view/ViewGroup;Z)V

    :cond_0
    return-void
.end method

.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lt/w$a;->f:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-virtual {p0}, Lt/w$a;->e()V

    return-void
.end method

.method public final onAnimationPause(Landroid/animation/Animator;)V
    .locals 1

    iget-boolean p1, p0, Lt/w$a;->f:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lt/w$a;->a:Landroid/view/View;

    iget v0, p0, Lt/w$a;->b:I

    invoke-static {p1, v0}, Lt/r;->d(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationResume(Landroid/animation/Animator;)V
    .locals 1

    iget-boolean p1, p0, Lt/w$a;->f:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lt/w$a;->a:Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lt/r;->d(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
