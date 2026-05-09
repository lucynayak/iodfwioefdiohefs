.class final Lcom/microsoft/onlineid/internal/ui/Dimensions$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/onlineid/internal/ui/Dimensions;->ensureMinimumTouchTarget(Landroid/view/View;Landroid/view/View;Landroid/util/DisplayMetrics;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic val$metrics:Landroid/util/DisplayMetrics;

.field public final synthetic val$parentView:Landroid/view/View;

.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/util/DisplayMetrics;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/ui/Dimensions$1;->val$view:Landroid/view/View;

    iput-object p2, p0, Lcom/microsoft/onlineid/internal/ui/Dimensions$1;->val$metrics:Landroid/util/DisplayMetrics;

    iput-object p3, p0, Lcom/microsoft/onlineid/internal/ui/Dimensions$1;->val$parentView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/Dimensions$1;->val$view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, p0, Lcom/microsoft/onlineid/internal/ui/Dimensions$1;->val$metrics:Landroid/util/DisplayMetrics;

    const/high16 v4, 0x42400000    # 48.0f

    invoke-static {v4, v3}, Lcom/microsoft/onlineid/internal/ui/Dimensions;->convertDipToPixels(FLandroid/util/DisplayMetrics;)I

    move-result v3

    if-ge v1, v3, :cond_0

    sub-int v1, v3, v1

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x2

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v1

    iput v4, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v4

    iput v1, v0, Landroid/graphics/Rect;->right:I

    :cond_0
    if-ge v2, v3, :cond_1

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x1

    div-int/lit8 v3, v3, 0x2

    iget v1, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    :cond_1
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/Dimensions$1;->val$parentView:Landroid/view/View;

    new-instance v2, Landroid/view/TouchDelegate;

    iget-object v3, p0, Lcom/microsoft/onlineid/internal/ui/Dimensions$1;->val$view:Landroid/view/View;

    invoke-direct {v2, v0, v3}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    return-void
.end method
