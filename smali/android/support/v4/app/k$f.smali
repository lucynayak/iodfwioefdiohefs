.class public final Landroid/support/v4/app/k$f;
.super Landroid/view/animation/AnimationSet;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public final b:Landroid/view/ViewGroup;

.field public final c:Landroid/view/View;

.field public d:Z

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/k$f;->f:Z

    iput-object p2, p0, Landroid/support/v4/app/k$f;->b:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroid/support/v4/app/k$f;->c:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p2, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final getTransformation(JLandroid/view/animation/Transformation;)Z
    .registers 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/k$f;->f:Z

    iget-boolean v1, p0, Landroid/support/v4/app/k$f;->d:Z

    if-eqz v1, :cond_0

    iget-boolean p1, p0, Landroid/support/v4/app/k$f;->e:Z

    xor-int/2addr p1, v0

    return p1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/animation/AnimationSet;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result p1

    if-nez p1, :cond_1

    iput-boolean v0, p0, Landroid/support/v4/app/k$f;->d:Z

    iget-object p1, p0, Landroid/support/v4/app/k$f;->b:Landroid/view/ViewGroup;

    invoke-static {p1, p0}, Landroid/support/v4/app/h0;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/h0;

    :cond_1
    return v0
.end method

.method public final getTransformation(JLandroid/view/animation/Transformation;F)Z
    .registers 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/k$f;->f:Z

    iget-boolean v1, p0, Landroid/support/v4/app/k$f;->d:Z

    if-eqz v1, :cond_0

    iget-boolean p1, p0, Landroid/support/v4/app/k$f;->e:Z

    xor-int/2addr p1, v0

    return p1

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;F)Z

    move-result p1

    if-nez p1, :cond_1

    iput-boolean v0, p0, Landroid/support/v4/app/k$f;->d:Z

    iget-object p1, p0, Landroid/support/v4/app/k$f;->b:Landroid/view/ViewGroup;

    invoke-static {p1, p0}, Landroid/support/v4/app/h0;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/h0;

    :cond_1
    return v0
.end method

.method public final run()V
    .registers 3

    iget-boolean v0, p0, Landroid/support/v4/app/k$f;->d:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/app/k$f;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/k$f;->f:Z

    iget-object v0, p0, Landroid/support/v4/app/k$f;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/k$f;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v4/app/k$f;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/k$f;->e:Z

    :goto_0
    return-void
.end method
