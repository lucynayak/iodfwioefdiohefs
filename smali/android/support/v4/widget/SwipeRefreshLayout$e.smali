.class public final Landroid/support/v4/widget/SwipeRefreshLayout$e;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/SwipeRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/support/v4/widget/SwipeRefreshLayout;


# direct methods
.method public constructor <init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout$e;->b:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 5

    iget-object p2, p0, Landroid/support/v4/widget/SwipeRefreshLayout$e;->b:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Landroid/support/v4/widget/SwipeRefreshLayout$e;->b:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget v0, p2, Landroid/support/v4/widget/SwipeRefreshLayout;->x:I

    iget p2, p2, Landroid/support/v4/widget/SwipeRefreshLayout;->w:I

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    sub-int/2addr v0, p2

    iget-object p2, p0, Landroid/support/v4/widget/SwipeRefreshLayout$e;->b:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget v1, p2, Landroid/support/v4/widget/SwipeRefreshLayout;->v:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int v0, v0

    add-int/2addr v1, v0

    iget-object p2, p2, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Lg0/c;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    sub-int/2addr v1, p2

    iget-object p2, p0, Landroid/support/v4/widget/SwipeRefreshLayout$e;->b:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {p2, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    iget-object p2, p0, Landroid/support/v4/widget/SwipeRefreshLayout$e;->b:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget-object p2, p2, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Lg0/f;

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    .line 1
    iget-object p1, p2, Lg0/f;->b:Lg0/f$a;

    .line 2
    iget v1, p1, Lg0/f$a;->p:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    iput v0, p1, Lg0/f$a;->p:F

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
