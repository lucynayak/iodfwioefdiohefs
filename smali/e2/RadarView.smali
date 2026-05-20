.class public Le2/RadarView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public volatile mBitmap:Landroid/graphics/Bitmap;

.field private mClipPath:Landroid/graphics/Path;

.field private mDstRect:Landroid/graphics/RectF;

.field private mPaintBg:Landroid/graphics/Paint;

.field private mPaintBitmap:Landroid/graphics/Paint;

.field private mPaintBorder:Landroid/graphics/Paint;

.field private mPaintLocal:Landroid/graphics/Paint;

.field private mPaintLocalOutline:Landroid/graphics/Paint;

.field private mPaintOther:Landroid/graphics/Paint;

.field private mPaintOtherOutline:Landroid/graphics/Paint;

.field public volatile mPlayerCount:I

.field public volatile mPlayerDX:[F

.field public volatile mPlayerDZ:[F

.field public volatile mRange:I

.field public volatile mShape:I

.field private mSrcRect:Landroid/graphics/Rect;

.field public volatile mYaw:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v1, -0x60000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iput-object v0, p0, Le2/RadarView;->mPaintBg:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iput-object v0, p0, Le2/RadarView;->mPaintBorder:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    iput-object v0, p0, Le2/RadarView;->mPaintBitmap:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iput-object v0, p0, Le2/RadarView;->mPaintLocal:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iput-object v0, p0, Le2/RadarView;->mPaintLocalOutline:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v1, -0xff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iput-object v0, p0, Le2/RadarView;->mPaintOther:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iput-object v0, p0, Le2/RadarView;->mPaintOtherOutline:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Le2/RadarView;->mSrcRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Le2/RadarView;->mDstRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Le2/RadarView;->mClipPath:Landroid/graphics/Path;

    const/4 v0, 0x0

    iput v0, p0, Le2/RadarView;->mYaw:F

    const/16 v0, 0x10

    iput v0, p0, Le2/RadarView;->mRange:I

    const/4 v0, 0x0

    iput v0, p0, Le2/RadarView;->mPlayerCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Le2/RadarView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    new-array v0, v0, [F

    iput-object v0, p0, Le2/RadarView;->mPlayerDX:[F

    const/4 v0, 0x0

    new-array v0, v0, [F

    iput-object v0, p0, Le2/RadarView;->mPlayerDZ:[F

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 32

    move-object/from16 v15, p0

    move-object/from16 v8, p1

    invoke-virtual {v15}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v15}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v4, v2

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float v4, v4, v10

    int-to-float v5, v3

    mul-float v5, v5, v10

    if-le v2, v3, :cond_0

    move v6, v3

    goto :goto_0

    :cond_0
    move v6, v2

    :goto_0
    int-to-float v6, v6

    const/high16 v10, 0x40000000    # 2.0f

    sub-float/2addr v6, v10

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float v7, v6, v10

    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v8, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v9, v15, Le2/RadarView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    const/4 v10, 0x0

    int-to-float v10, v10

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    iget v0, v15, Le2/RadarView;->mShape:I

    const/4 v1, 0x1

    if-eq v0, v1, :shape_square

    const/4 v1, 0x2

    if-eq v0, v1, :shape_triangle

    invoke-virtual {v9, v10, v10, v7, v11}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    goto :shape_done

    :shape_square
    neg-float v1, v7

    invoke-virtual {v9, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v9, v7, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v9, v7, v7}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v9, v1, v7}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v9}, Landroid/graphics/Path;->close()V

    goto :shape_done

    :shape_triangle
    neg-float v1, v7

    invoke-virtual {v9, v10, v1}, Landroid/graphics/Path;->moveTo(FF)V

    const v1, 0x3f5db3d7

    mul-float v1, v7, v1

    const/high16 v2, 0x3f000000

    mul-float v2, v7, v2

    invoke-virtual {v9, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    neg-float v1, v1

    invoke-virtual {v9, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v9}, Landroid/graphics/Path;->close()V

    :shape_done
    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v8, v9}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v0, v15, Le2/RadarView;->mPaintBg:Landroid/graphics/Paint;

    invoke-virtual {v8, v9, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget v11, v15, Le2/RadarView;->mYaw:F

    const/high16 v12, 0x43340000    # 180.0f

    add-float v11, v11, v12

    neg-float v11, v11

    invoke-virtual {v8, v11}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v9, v15, Le2/RadarView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_1

    iget-object v11, v15, Le2/RadarView;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    const/4 v0, 0x0

    invoke-virtual {v11, v0, v0, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v12, v15, Le2/RadarView;->mDstRect:Landroid/graphics/RectF;

    neg-float v13, v7

    invoke-virtual {v12, v13, v13, v7, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v13, v15, Le2/RadarView;->mPaintBitmap:Landroid/graphics/Paint;

    invoke-virtual {v8, v9, v11, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_1
    iget v9, v15, Le2/RadarView;->mPlayerCount:I

    if-lez v9, :cond_3

    iget v11, v15, Le2/RadarView;->mRange:I

    if-lez v11, :cond_3

    iget-object v10, v15, Le2/RadarView;->mPlayerDX:[F

    if-eqz v10, :cond_3

    iget-object v12, v15, Le2/RadarView;->mPlayerDZ:[F

    if-eqz v12, :cond_3

    array-length v2, v10

    if-lt v2, v9, :cond_3

    array-length v2, v12

    if-lt v2, v9, :cond_3

    int-to-float v3, v11

    div-float v13, v7, v3

    int-to-float v14, v11

    move-object/from16 v16, v8

    const v22, 0x3d75c28f    # 0.06f

    mul-float v22, v7, v22

    move/from16 v19, v22

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v9, :cond_3

    aget v2, v10, v0

    aget v3, v12, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v22

    cmpg-float v22, v22, v14

    if-gtz v22, :cond_2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v22

    cmpg-float v22, v22, v14

    if-gtz v22, :cond_2

    mul-float v17, v2, v13

    mul-float v18, v3, v13

    iget-object v11, v15, Le2/RadarView;->mPaintOther:Landroid/graphics/Paint;

    move-object/from16 v20, v11

    invoke-virtual/range {v16 .. v20}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v11, v15, Le2/RadarView;->mPaintOtherOutline:Landroid/graphics/Paint;

    move-object/from16 v20, v11

    invoke-virtual/range {v16 .. v20}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v8}, Landroid/graphics/Canvas;->restore()V

    iget-object v10, v15, Le2/RadarView;->mPaintBorder:Landroid/graphics/Paint;

    iget-object v9, v15, Le2/RadarView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v10, v15, Le2/RadarView;->mPaintLocal:Landroid/graphics/Paint;

    new-instance v11, Landroid/graphics/Path;

    invoke-direct {v11}, Landroid/graphics/Path;-><init>()V

    const v0, 0x3e051eb8    # 0.13f

    mul-float v0, v7, v0

    const v1, 0x3db851ec    # 0.09f

    mul-float v1, v7, v1

    const v2, 0x3ca3d70a    # 0.02f

    mul-float v2, v7, v2

    neg-float v12, v0

    invoke-virtual {v11, v9, v12}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v11, v1, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v11, v9, v2}, Landroid/graphics/Path;->lineTo(FF)V

    neg-float v13, v1

    invoke-virtual {v11, v13, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v11}, Landroid/graphics/Path;->close()V

    invoke-virtual {v8, v11, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v10, v15, Le2/RadarView;->mPaintLocalOutline:Landroid/graphics/Paint;

    invoke-virtual {v8, v11, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v8}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public setData(Landroid/graphics/Bitmap;I[F[FI)V
    .registers 6

    iput-object p1, p0, Le2/RadarView;->mBitmap:Landroid/graphics/Bitmap;

    iput p2, p0, Le2/RadarView;->mRange:I

    iput-object p3, p0, Le2/RadarView;->mPlayerDX:[F

    iput-object p4, p0, Le2/RadarView;->mPlayerDZ:[F

    iput p5, p0, Le2/RadarView;->mPlayerCount:I

    return-void
.end method

.method public setYaw(F)V
    .registers 2

    iput p1, p0, Le2/RadarView;->mYaw:F

    return-void
.end method

.method public setShape(I)V
    .registers 2

    iput p1, p0, Le2/RadarView;->mShape:I

    return-void
.end method
