.class public Le2/CompassView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private mPaintBg:Landroid/graphics/Paint;

.field private mPaintCardinal:Landroid/graphics/Paint;

.field private mPaintNeedle:Landroid/graphics/Paint;

.field private mPaintNeedleTip:Landroid/graphics/Paint;

.field private mPaintRing:Landroid/graphics/Paint;

.field private mPaintText:Landroid/graphics/Paint;

.field private mYaw:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v1, -0x33e5e5d2    # -4.0396984E7f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iput-object v0, p0, Le2/CompassView;->mPaintBg:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const v1, -0x56000001

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iput-object v0, p0, Le2/CompassView;->mPaintRing:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v1, -0xcccd

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iput-object v0, p0, Le2/CompassView;->mPaintNeedle:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iput-object v0, p0, Le2/CompassView;->mPaintNeedleTip:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iput-object v0, p0, Le2/CompassView;->mPaintText:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iput-object v0, p0, Le2/CompassView;->mPaintCardinal:Landroid/graphics/Paint;

    const/4 v1, 0x0

    int-to-float v1, v1

    iput v1, p0, Le2/CompassView;->mYaw:F

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v2, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float v2, v2, v5

    int-to-float v3, v1

    div-float v3, v3, v5

    if-gt v0, v1, :cond_0

    move v5, v0

    goto :goto_0

    :cond_0
    move v5, v1

    :goto_0
    int-to-float v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float v4, v4, v5

    const/high16 v5, 0x40a00000    # 5.0f

    sub-float v4, v4, v5

    const/4 v12, 0x0

    iget-object v5, p0, Le2/CompassView;->mPaintBg:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v5, p0, Le2/CompassView;->mPaintRing:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget v6, p0, Le2/CompassView;->mYaw:F

    const/high16 v7, 0x43340000    # 180.0f

    add-float v6, v6, v7

    neg-float v6, v6

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    const/high16 v7, 0x40400000    # 3.0f

    const v8, 0x3f400000    # 0.75f

    mul-float v8, v4, v8

    neg-float v9, v8

    neg-float v11, v7

    new-instance v10, Landroid/graphics/Path;

    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v10, v7, v12}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v10, v12, v9}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v10}, Landroid/graphics/Path;->close()V

    iget-object v11, p0, Le2/CompassView;->mPaintNeedleTip:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    neg-float v11, v7

    new-instance v10, Landroid/graphics/Path;

    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v10, v7, v12}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v10, v12, v8}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v10}, Landroid/graphics/Path;->close()V

    iget-object v11, p0, Le2/CompassView;->mPaintNeedle:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/high16 v8, 0x40800000    # 4.0f

    iget-object v9, p0, Le2/CompassView;->mPaintRing:Landroid/graphics/Paint;

    invoke-virtual {p1, v12, v12, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v5, p0, Le2/CompassView;->mPaintCardinal:Landroid/graphics/Paint;

    const/high16 v6, 0x41800000    # 16.0f

    sub-float v6, v4, v6

    const v7, 0x40aaaaab

    sub-float v8, v3, v6

    add-float v8, v8, v7

    const-string v9, "N"

    invoke-virtual {p1, v9, v2, v8, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-float v8, v3, v6

    add-float v8, v8, v7

    const-string v9, "S"

    invoke-virtual {p1, v9, v2, v8, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    sub-float v8, v2, v6

    add-float v9, v3, v7

    const-string v10, "W"

    invoke-virtual {p1, v10, v8, v9, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-float v8, v2, v6

    const-string v10, "E"

    invoke-virtual {p1, v10, v8, v9, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v6, p0, Le2/CompassView;->mYaw:F

    const v7, 0x43b40000    # 360.0f

    rem-float v6, v6, v7

    add-float v6, v6, v7

    rem-float v6, v6, v7

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\u0412\u00b0"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v5, p0, Le2/CompassView;->mPaintText:Landroid/graphics/Paint;

    const v8, 0x3f0ccccd    # 0.55f

    mul-float v8, v4, v8

    add-float v8, v3, v8

    invoke-virtual {p1, v7, v2, v8, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    const/16 v0, 0x78

    const/16 v1, 0x78

    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    move-result v0

    invoke-static {v1, p2}, Landroid/view/View;->resolveSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setYaw(F)V
    .locals 0

    iput p1, p0, Le2/CompassView;->mYaw:F

    return-void
.end method
