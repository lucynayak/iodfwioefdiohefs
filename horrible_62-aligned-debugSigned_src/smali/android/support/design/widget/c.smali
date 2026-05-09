.class public final Landroid/support/design/widget/c;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Landroid/support/design/widget/d$d;

.field public final synthetic c:Landroid/support/design/widget/d;


# direct methods
.method public constructor <init>(Landroid/support/design/widget/d;)V
    .registers 2

    iput-object p1, p0, Landroid/support/design/widget/c;->c:Landroid/support/design/widget/d;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/design/widget/c;->a:Z

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/design/widget/c;->b:Landroid/support/design/widget/d$d;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Landroid/support/design/widget/c;->c:Landroid/support/design/widget/d;

    const/4 v0, 0x0

    iput v0, p1, Landroid/support/design/widget/d;->a:I

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/design/widget/d;->b:Landroid/animation/Animator;

    iget-object p1, p0, Landroid/support/design/widget/c;->b:Landroid/support/design/widget/d$d;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/support/design/widget/d$d;->a()V

    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .registers 5

    iget-object v0, p0, Landroid/support/design/widget/c;->c:Landroid/support/design/widget/d;

    iget-object v0, v0, Landroid/support/design/widget/d;->o:Lr/n;

    iget-boolean v1, p0, Landroid/support/design/widget/c;->a:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lr/n;->b(IZ)V

    iget-object v0, p0, Landroid/support/design/widget/c;->c:Landroid/support/design/widget/d;

    const/4 v1, 0x2

    iput v1, v0, Landroid/support/design/widget/d;->a:I

    iput-object p1, v0, Landroid/support/design/widget/d;->b:Landroid/animation/Animator;

    return-void
.end method
