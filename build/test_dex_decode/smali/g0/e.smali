.class public final Lg0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic a:Lg0/f$a;

.field public final synthetic b:Lg0/f;


# direct methods
.method public constructor <init>(Lg0/f;Lg0/f$a;)V
    .locals 0

    iput-object p1, p0, Lg0/e;->b:Lg0/f;

    iput-object p2, p0, Lg0/e;->a:Lg0/f$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 4

    iget-object v0, p0, Lg0/e;->b:Lg0/f;

    iget-object v1, p0, Lg0/e;->a:Lg0/f$a;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lg0/f;->a(FLg0/f$a;Z)V

    iget-object v0, p0, Lg0/e;->a:Lg0/f$a;

    .line 1
    iget v1, v0, Lg0/f$a;->e:F

    iput v1, v0, Lg0/f$a;->k:F

    iget v1, v0, Lg0/f$a;->f:F

    iput v1, v0, Lg0/f$a;->l:F

    iget v1, v0, Lg0/f$a;->g:F

    iput v1, v0, Lg0/f$a;->m:F

    .line 2
    iget v1, v0, Lg0/f$a;->j:I

    add-int/2addr v1, v3

    iget-object v3, v0, Lg0/f$a;->i:[I

    array-length v3, v3

    rem-int/2addr v1, v3

    .line 3
    invoke-virtual {v0, v1}, Lg0/f$a;->a(I)V

    .line 4
    iget-object v0, p0, Lg0/e;->b:Lg0/f;

    iget-boolean v1, v0, Lg0/f;->g:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lg0/f;->g:Z

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    const-wide/16 v2, 0x12c

    invoke-virtual {p1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    iget-object p1, p0, Lg0/e;->a:Lg0/f$a;

    invoke-virtual {p1, v1}, Lg0/f$a;->b(Z)V

    goto :goto_0

    :cond_0
    iget p1, v0, Lg0/f;->f:F

    add-float/2addr p1, v2

    iput p1, v0, Lg0/f;->f:F

    :goto_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lg0/e;->b:Lg0/f;

    const/4 v0, 0x0

    iput v0, p1, Lg0/f;->f:F

    return-void
.end method
