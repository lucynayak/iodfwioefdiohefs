.class public final Landroid/support/design/widget/b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public a:Z

.field public final synthetic b:Z

.field public final synthetic c:Landroid/support/design/widget/d$d;

.field public final synthetic d:Landroid/support/design/widget/d;


# direct methods
.method public constructor <init>(Landroid/support/design/widget/d;)V
    .registers 2

    iput-object p1, p0, Landroid/support/design/widget/b;->d:Landroid/support/design/widget/d;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/design/widget/b;->b:Z

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/design/widget/b;->c:Landroid/support/design/widget/d$d;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/design/widget/b;->a:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-object p1, p0, Landroid/support/design/widget/b;->d:Landroid/support/design/widget/d;

    const/4 v0, 0x0

    iput v0, p1, Landroid/support/design/widget/d;->a:I

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/design/widget/d;->b:Landroid/animation/Animator;

    iget-boolean v0, p0, Landroid/support/design/widget/b;->a:Z

    if-nez v0, :cond_1

    iget-object p1, p1, Landroid/support/design/widget/d;->o:Lr/n;

    iget-boolean v0, p0, Landroid/support/design/widget/b;->b:Z

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {p1, v1, v0}, Lr/n;->b(IZ)V

    iget-object p1, p0, Landroid/support/design/widget/b;->c:Landroid/support/design/widget/d$d;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/support/design/widget/d$d;->b()V

    :cond_1
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .registers 5

    iget-object v0, p0, Landroid/support/design/widget/b;->d:Landroid/support/design/widget/d;

    iget-object v0, v0, Landroid/support/design/widget/d;->o:Lr/n;

    iget-boolean v1, p0, Landroid/support/design/widget/b;->b:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lr/n;->b(IZ)V

    iget-object v0, p0, Landroid/support/design/widget/b;->d:Landroid/support/design/widget/d;

    const/4 v1, 0x1

    iput v1, v0, Landroid/support/design/widget/d;->a:I

    iput-object p1, v0, Landroid/support/design/widget/d;->b:Landroid/animation/Animator;

    iput-boolean v2, p0, Landroid/support/design/widget/b;->a:Z

    return-void
.end method
