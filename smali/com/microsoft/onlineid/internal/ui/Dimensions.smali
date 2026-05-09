.class public final Lcom/microsoft/onlineid/internal/ui/Dimensions;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MinimumTouchableTargetDp:F = 48.0f


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertDipToPixels(FLandroid/util/DisplayMetrics;)I
    .registers 3

    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static ensureMinimumTouchTarget(Landroid/view/View;Landroid/view/View;Landroid/util/DisplayMetrics;)V
    .registers 4

    new-instance v0, Lcom/microsoft/onlineid/internal/ui/Dimensions$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/microsoft/onlineid/internal/ui/Dimensions$1;-><init>(Landroid/view/View;Landroid/util/DisplayMetrics;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
