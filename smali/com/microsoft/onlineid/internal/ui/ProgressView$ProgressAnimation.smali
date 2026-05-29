.class Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/internal/ui/ProgressView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProgressAnimation"
.end annotation


# instance fields
.field private _animationDuration:I

.field private _dotDelays:[I

.field private _keyframeXTranslations:[I

.field private _progressAnimator:Landroid/animation/AnimatorSet;

.field public final synthetic this$0:Lcom/microsoft/onlineid/internal/ui/ProgressView;


# direct methods
.method public constructor <init>(Lcom/microsoft/onlineid/internal/ui/ProgressView;I)V
    .registers 3

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;->this$0:Lcom/microsoft/onlineid/internal/ui/ProgressView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p2}, Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;->setAnimationParams(I)V

    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;->generateAnimation()Landroid/animation/AnimatorSet;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;->_progressAnimator:Landroid/animation/AnimatorSet;

    return-void
.end method

.method private createKeyframes()Landroid/animation/PropertyValuesHolder;
    .registers 6

    const/4 v0, 0x5

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;->_keyframeXTranslations:[I

    array-length v1, v1

    new-array v1, v1, [Landroid/animation/Keyframe;

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;->_keyframeXTranslations:[I

    array-length v4, v3

    if-ge v2, v4, :cond_0

    aget v4, v0, v2

    aget v3, v3, v2

    int-to-float v3, v3

    invoke-static {v4, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v3}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Landroid/util/Property;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3e19999a    # 0.15f
        0x3f266666    # 0.65f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private generateAnimation()Landroid/animation/AnimatorSet;
    .registers 9

    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;->createKeyframes()Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    const/4 v1, 0x5

    new-array v2, v1, [Landroid/animation/ObjectAnimator;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    iget-object v5, p0, Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;->this$0:Lcom/microsoft/onlineid/internal/ui/ProgressView;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v6, v3

    invoke-static {v5, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget v6, p0, Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;->_animationDuration:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v6, p0, Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;->_dotDelays:[I

    aget v6, v6, v4

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0
.end method

.method private setAnimationParams(I)V
    .registers 16

    int-to-float v0, p1

    const/high16 v1, 0x41c80000    # 25.0f

    div-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    div-float v2, v0, v2

    const/high16 v3, 0x41f00000    # 30.0f

    add-float/2addr v2, v3

    const v3, 0x3ed5553f

    mul-float v3, v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    const v4, 0x3e2aab04

    mul-float v0, v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit16 v4, v0, 0x3e8

    int-to-float v4, v4

    div-float/2addr v4, v2

    const v5, 0x3eaaa64c    # 0.3333f

    div-float v5, v4, v5

    sub-float/2addr v5, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    mul-int/lit16 v1, v1, 0x3e8

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/16 v2, 0x14d

    if-le v1, v2, :cond_0

    const/16 v1, 0x14d

    :cond_0
    const/4 v2, 0x5

    new-array v7, v2, [I

    const/4 v8, 0x0

    aput v8, v7, v8

    const/4 v9, 0x1

    aput v1, v7, v9

    mul-int/lit8 v10, v1, 0x2

    const/4 v11, 0x2

    aput v10, v7, v11

    mul-int/lit8 v10, v1, 0x3

    const/4 v12, 0x3

    aput v10, v7, v12

    mul-int/lit8 v10, v1, 0x4

    const/4 v13, 0x4

    aput v10, v7, v13

    iput-object v7, p0, Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;->_dotDelays:[I

    const/high16 v7, 0x437a0000    # 250.0f

    const/high16 v10, 0x40800000    # 4.0f

    int-to-float v1, v1

    mul-float v1, v1, v10

    mul-float v5, v5, v6

    add-float/2addr v5, v4

    add-float/2addr v5, v1

    add-float/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;->_animationDuration:I

    new-array v1, v2, [I

    iget-object v2, p0, Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;->this$0:Lcom/microsoft/onlineid/internal/ui/ProgressView;

    invoke-static {v2}, Lcom/microsoft/onlineid/internal/ui/ProgressView;->access$000(Lcom/microsoft/onlineid/internal/ui/ProgressView;)I

    move-result v2

    mul-int/lit8 v2, v2, -0x1

    aput v2, v1, v8

    aput v3, v1, v9

    add-int/2addr v3, v0

    aput v3, v1, v11

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;->this$0:Lcom/microsoft/onlineid/internal/ui/ProgressView;

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/ui/ProgressView;->access$000(Lcom/microsoft/onlineid/internal/ui/ProgressView;)I

    move-result v0

    add-int/2addr v0, p1

    aput v0, v1, v12

    iget-object p1, p0, Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;->this$0:Lcom/microsoft/onlineid/internal/ui/ProgressView;

    invoke-static {p1}, Lcom/microsoft/onlineid/internal/ui/ProgressView;->access$000(Lcom/microsoft/onlineid/internal/ui/ProgressView;)I

    move-result p1

    mul-int/lit8 p1, p1, -0x1

    aput p1, v1, v13

    iput-object v1, p0, Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;->_keyframeXTranslations:[I

    return-void
.end method


# virtual methods
.method public isAnimating()Z
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;->_progressAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    return v0
.end method

.method public startAnimation()Z
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;->_progressAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;->_progressAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public stopAnimation()Z
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;->_progressAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;->_progressAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
