.class public Landroid/support/design/widget/SwipeDismissBehavior;
.super Landroid/support/design/widget/CoordinatorLayout$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/SwipeDismissBehavior$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroid/support/design/widget/CoordinatorLayout$c<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public a:Lg0/p;

.field public b:Z

.field public c:I

.field public d:F

.field public e:F

.field public f:F

.field public final g:Landroid/support/design/widget/SwipeDismissBehavior$a;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout$c;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->c:I

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->d:F

    const/4 v1, 0x0

    iput v1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->e:F

    iput v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->f:F

    new-instance v0, Landroid/support/design/widget/SwipeDismissBehavior$a;

    invoke-direct {v0, p0}, Landroid/support/design/widget/SwipeDismissBehavior$a;-><init>(Landroid/support/design/widget/SwipeDismissBehavior;)V

    iput-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->g:Landroid/support/design/widget/SwipeDismissBehavior$a;

    return-void
.end method

.method public static t(F)F
    .registers 2

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method


# virtual methods
.method public e(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    iget-boolean v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->b:Z

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 p2, 0x1

    if-eq v1, p2, :cond_0

    const/4 p2, 0x3

    if-eq v1, p2, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Landroid/support/design/widget/SwipeDismissBehavior;->b:Z

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, p2, v0, v1}, Landroid/support/design/widget/CoordinatorLayout;->o(Landroid/view/View;II)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->b:Z

    :goto_0
    if-eqz v0, :cond_3

    .line 1
    iget-object p2, p0, Landroid/support/design/widget/SwipeDismissBehavior;->a:Lg0/p;

    if-nez p2, :cond_2

    iget-object p2, p0, Landroid/support/design/widget/SwipeDismissBehavior;->g:Landroid/support/design/widget/SwipeDismissBehavior$a;

    .line 2
    new-instance v0, Lg0/p;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lg0/p;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lg0/p$c;)V

    .line 3
    iput-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->a:Lg0/p;

    .line 4
    :cond_2
    iget-object p1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->a:Lg0/p;

    invoke-virtual {p1, p3}, Lg0/p;->t(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_3
    return v2
.end method

.method public final r(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    iget-object p1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->a:Lg0/p;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p3}, Lg0/p;->m(Landroid/view/MotionEvent;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public s(Landroid/view/View;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method
