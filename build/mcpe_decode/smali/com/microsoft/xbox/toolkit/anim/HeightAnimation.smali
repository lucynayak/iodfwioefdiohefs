.class public Lcom/microsoft/xbox/toolkit/anim/HeightAnimation;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# instance fields
.field private fromValue:I

.field private toValue:I

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput p1, p0, Lcom/microsoft/xbox/toolkit/anim/HeightAnimation;->fromValue:I

    iput p2, p0, Lcom/microsoft/xbox/toolkit/anim/HeightAnimation;->toValue:I

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    iget p2, p0, Lcom/microsoft/xbox/toolkit/anim/HeightAnimation;->toValue:I

    iget v0, p0, Lcom/microsoft/xbox/toolkit/anim/HeightAnimation;->fromValue:I

    sub-int/2addr p2, v0

    int-to-float p2, p2

    mul-float p1, p1, p2

    float-to-int p1, p1

    iget-object p2, p0, Lcom/microsoft/xbox/toolkit/anim/HeightAnimation;->view:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget v0, p0, Lcom/microsoft/xbox/toolkit/anim/HeightAnimation;->fromValue:I

    add-int/2addr p1, v0

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/anim/HeightAnimation;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setTargetView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/anim/HeightAnimation;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/microsoft/xbox/toolkit/anim/HeightAnimation;->fromValue:I

    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
