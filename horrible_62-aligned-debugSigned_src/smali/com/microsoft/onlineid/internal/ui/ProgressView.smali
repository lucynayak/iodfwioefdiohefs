.class public Lcom/microsoft/onlineid/internal/ui/ProgressView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;
    }
.end annotation


# static fields
.field public static final NumberOfDots:I = 0x5

.field private static final ProgressColor:I

.field private static final ProgressDotSizeDip:F = 2.6f

.field private static final ProgressPaddingDip:F = 2.6f


# instance fields
.field private _dotSize:I

.field private _progressAnimation:Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x79

    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/microsoft/onlineid/internal/ui/ProgressView;->ProgressColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/ui/ProgressView;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/ui/ProgressView;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/ui/ProgressView;->initialize()V

    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/onlineid/internal/ui/ProgressView;)I
    .registers 1

    iget p0, p0, Lcom/microsoft/onlineid/internal/ui/ProgressView;->_dotSize:I

    return p0
.end method

.method private addDot()Landroid/view/View;
    .registers 4

    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/microsoft/onlineid/internal/ui/ProgressView;->_dotSize:I

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v1, Lcom/microsoft/onlineid/internal/ui/ProgressView;->ProgressColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget v1, p0, Lcom/microsoft/onlineid/internal/ui/ProgressView;->_dotSize:I

    mul-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private initialize()V
    .registers 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const v1, 0x40266666    # 2.6f

    invoke-static {v1, v0}, Lcom/microsoft/onlineid/internal/ui/Dimensions;->convertDipToPixels(FLandroid/util/DisplayMetrics;)I

    move-result v2

    iput v2, p0, Lcom/microsoft/onlineid/internal/ui/ProgressView;->_dotSize:I

    invoke-static {v1, v0}, Lcom/microsoft/onlineid/internal/ui/Dimensions;->convertDipToPixels(FLandroid/util/DisplayMetrics;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    :goto_0
    const/4 v0, 0x5

    if-ge v1, v0, :cond_0

    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/ui/ProgressView;->addDot()Landroid/view/View;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;-><init>(Lcom/microsoft/onlineid/internal/ui/ProgressView;I)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/ui/ProgressView;->_progressAnimation:Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;

    return-void
.end method


# virtual methods
.method public isAnimating()Z
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/ProgressView;->_progressAnimation:Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onSizeChanged(IIII)V
    .registers 5

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/ProgressView;->stopAnimation()Z

    move-result p2

    new-instance p3, Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;

    invoke-direct {p3, p0, p1}, Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;-><init>(Lcom/microsoft/onlineid/internal/ui/ProgressView;I)V

    iput-object p3, p0, Lcom/microsoft/onlineid/internal/ui/ProgressView;->_progressAnimation:Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/ProgressView;->startAnimation()Z

    :cond_0
    return-void
.end method

.method public overrideDefaultPadding(F)V
    .registers 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const v0, 0x40266666    # 2.6f

    invoke-static {v0, p1}, Lcom/microsoft/onlineid/internal/ui/Dimensions;->convertDipToPixels(FLandroid/util/DisplayMetrics;)I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public startAnimation()Z
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/ProgressView;->_progressAnimation:Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;->startAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public stopAnimation()Z
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/ProgressView;->_progressAnimation:Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;->stopAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
