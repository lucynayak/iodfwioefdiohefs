.class public final Landroid/support/design/widget/SwipeDismissBehavior$a;
.super Lg0/p$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/SwipeDismissBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public final synthetic c:Landroid/support/design/widget/SwipeDismissBehavior;


# direct methods
.method public constructor <init>(Landroid/support/design/widget/SwipeDismissBehavior;)V
    .registers 2

    iput-object p1, p0, Landroid/support/design/widget/SwipeDismissBehavior$a;->c:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-direct {p0}, Lg0/p$c;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Landroid/support/design/widget/SwipeDismissBehavior$a;->b:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;I)I
    .registers 6

    sget-object v0, Ld0/l;->a:Ljava/util/WeakHashMap;

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Landroid/support/design/widget/SwipeDismissBehavior$a;->c:Landroid/support/design/widget/SwipeDismissBehavior;

    iget v2, v2, Landroid/support/design/widget/SwipeDismissBehavior;->c:I

    if-nez v2, :cond_1

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_1
    if-ne v2, v1, :cond_4

    if-eqz v0, :cond_3

    :cond_2
    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$a;->a:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr p1, v0

    goto :goto_2

    :cond_3
    :goto_1
    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$a;->a:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    sub-int/2addr v0, p1

    iget p1, p0, Landroid/support/design/widget/SwipeDismissBehavior$a;->a:I

    goto :goto_2

    :cond_4
    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$a;->a:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/design/widget/SwipeDismissBehavior$a;->a:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr p1, v1

    .line 3
    :goto_2
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method public final b(Landroid/view/View;I)I
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    return p1
.end method

.method public final c(Landroid/view/View;)I
    .registers 2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    return p1
.end method

.method public final e(Landroid/view/View;I)V
    .registers 3

    iput p2, p0, Landroid/support/design/widget/SwipeDismissBehavior$a;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    iput p2, p0, Landroid/support/design/widget/SwipeDismissBehavior$a;->a:I

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method public final f(I)V
    .registers 2

    iget-object p1, p0, Landroid/support/design/widget/SwipeDismissBehavior$a;->c:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final g(Landroid/view/View;I)V
    .registers 8

    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$a;->a:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/design/widget/SwipeDismissBehavior$a;->c:Landroid/support/design/widget/SwipeDismissBehavior;

    iget v2, v2, Landroid/support/design/widget/SwipeDismissBehavior;->e:F

    mul-float v1, v1, v2

    add-float/2addr v1, v0

    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$a;->a:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/design/widget/SwipeDismissBehavior$a;->c:Landroid/support/design/widget/SwipeDismissBehavior;

    iget v3, v3, Landroid/support/design/widget/SwipeDismissBehavior;->f:F

    mul-float v2, v2, v3

    add-float/2addr v2, v0

    int-to-float p2, p2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v3, p2, v1

    if-gtz v3, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    cmpl-float v4, p2, v2

    if-ltz v4, :cond_1

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_1
    sub-float/2addr p2, v1

    sub-float/2addr v2, v1

    div-float/2addr p2, v2

    sub-float/2addr v0, p2

    invoke-static {v0}, Landroid/support/design/widget/SwipeDismissBehavior;->t(F)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method public final h(Landroid/view/View;FF)V
    .registers 11

    const/4 p3, -0x1

    iput p3, p0, Landroid/support/design/widget/SwipeDismissBehavior$a;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    cmpl-float v3, p2, v2

    if-eqz v3, :cond_5

    .line 1
    sget-object v4, Ld0/l;->a:Ljava/util/WeakHashMap;

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v4

    if-ne v4, v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 3
    :goto_0
    iget-object v5, p0, Landroid/support/design/widget/SwipeDismissBehavior$a;->c:Landroid/support/design/widget/SwipeDismissBehavior;

    iget v5, v5, Landroid/support/design/widget/SwipeDismissBehavior;->c:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    goto :goto_1

    :cond_1
    if-nez v5, :cond_3

    if-eqz v4, :cond_2

    cmpg-float p2, p2, v2

    if-gez p2, :cond_6

    goto :goto_1

    :cond_2
    if-lez v3, :cond_6

    goto :goto_1

    :cond_3
    if-ne v5, v1, :cond_6

    if-eqz v4, :cond_4

    if-lez v3, :cond_6

    goto :goto_1

    :cond_4
    cmpg-float p2, p2, v2

    if-gez p2, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    iget v2, p0, Landroid/support/design/widget/SwipeDismissBehavior$a;->a:I

    sub-int/2addr p2, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/design/widget/SwipeDismissBehavior$a;->c:Landroid/support/design/widget/SwipeDismissBehavior;

    iget v3, v3, Landroid/support/design/widget/SwipeDismissBehavior;->d:F

    mul-float v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-lt p2, v2, :cond_6

    :goto_1
    const/4 p2, 0x1

    goto :goto_2

    :cond_6
    const/4 p2, 0x0

    :goto_2
    if-eqz p2, :cond_8

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$a;->a:I

    if-ge p2, v0, :cond_7

    sub-int/2addr v0, p3

    goto :goto_3

    :cond_7
    add-int/2addr v0, p3

    goto :goto_3

    :cond_8
    iget p2, p0, Landroid/support/design/widget/SwipeDismissBehavior$a;->a:I

    move v0, p2

    const/4 v1, 0x0

    :goto_3
    iget-object p2, p0, Landroid/support/design/widget/SwipeDismissBehavior$a;->c:Landroid/support/design/widget/SwipeDismissBehavior;

    iget-object p2, p2, Landroid/support/design/widget/SwipeDismissBehavior;->a:Lg0/p;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p3

    invoke-virtual {p2, v0, p3}, Lg0/p;->s(II)Z

    move-result p2

    if-eqz p2, :cond_9

    new-instance p2, Landroid/support/design/widget/SwipeDismissBehavior$b;

    iget-object p3, p0, Landroid/support/design/widget/SwipeDismissBehavior$a;->c:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-direct {p2, p3, p1, v1}, Landroid/support/design/widget/SwipeDismissBehavior$b;-><init>(Landroid/support/design/widget/SwipeDismissBehavior;Landroid/view/View;Z)V

    sget-object p3, Ld0/l;->a:Ljava/util/WeakHashMap;

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_9
    if-eqz v1, :cond_a

    .line 6
    iget-object p1, p0, Landroid/support/design/widget/SwipeDismissBehavior$a;->c:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    :goto_4
    return-void
.end method

.method public final i(Landroid/view/View;I)Z
    .registers 4

    iget p2, p0, Landroid/support/design/widget/SwipeDismissBehavior$a;->b:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Landroid/support/design/widget/SwipeDismissBehavior$a;->c:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-virtual {p2, p1}, Landroid/support/design/widget/SwipeDismissBehavior;->s(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
