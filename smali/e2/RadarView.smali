.class public Le2/RadarView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private mPaintBg:Landroid/graphics/Paint;

.field private mPaintBorder:Landroid/graphics/Paint;

.field private mPaintBitmap:Landroid/graphics/Paint;

.field private mPaintLocal:Landroid/graphics/Paint;

.field private mPaintLocalOutline:Landroid/graphics/Paint;

.field private mPaintOther:Landroid/graphics/Paint;

.field private mPaintOtherOutline:Landroid/graphics/Paint;

.field private mSrcRect:Landroid/graphics/Rect;

.field private mDstRect:Landroid/graphics/RectF;

.field private mClipPath:Landroid/graphics/Path;

.field public volatile mYaw:F

.field public volatile mBitmap:Landroid/graphics/Bitmap;

.field public volatile mRange:I

.field public volatile mPlayerCount:I

.field public volatile mPlayerDX:[F

.field public volatile mPlayerDZ:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    # Force software rendering. clipPath with non-rect paths is unreliable
    # under hardware acceleration on some devices/states — the GPU falls
    # back to clipping by the path's bounding box (= square), which is why
    # the radar sometimes "snaps" back to a square. Software rendering
    # always honours the actual path, so the circle stays a circle.
    const/4 v0, 0x1                # LAYER_TYPE_SOFTWARE

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    # mPaintBg
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v1, -0x60000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iput-object v0, p0, Le2/RadarView;->mPaintBg:Landroid/graphics/Paint;

    # mPaintBorder
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v1, 0x40000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iput-object v0, p0, Le2/RadarView;->mPaintBorder:Landroid/graphics/Paint;

    # mPaintBitmap: nearest-neighbor scaling (no filter, no AA -> crisp pixels, fast)
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    iput-object v0, p0, Le2/RadarView;->mPaintBitmap:Landroid/graphics/Paint;

    # mPaintLocal: white
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iput-object v0, p0, Le2/RadarView;->mPaintLocal:Landroid/graphics/Paint;

    # mPaintLocalOutline: black stroke around player arrow (contrast on snow/quartz)
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v1, 0x3fc00000    # 1.5f stroke

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const v1, -0x1000000           # 0xFF000000 black

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iput-object v0, p0, Le2/RadarView;->mPaintLocalOutline:Landroid/graphics/Paint;

    # mPaintOther: bright magenta fill for other players (rarely matches terrain)
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v1, -0xff01            # 0xFFFF00FF magenta

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iput-object v0, p0, Le2/RadarView;->mPaintOther:Landroid/graphics/Paint;

    # mPaintOtherOutline: black stroke around player dot for contrast
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v1, 0x3fc00000  # 1.5f stroke width

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const v1, -0x1000000         # 0xFF000000 black

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iput-object v0, p0, Le2/RadarView;->mPaintOtherOutline:Landroid/graphics/Paint;

    # Reusable rects
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Le2/RadarView;->mSrcRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Le2/RadarView;->mDstRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Le2/RadarView;->mClipPath:Landroid/graphics/Path;

    # Defaults
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
.method public setYaw(F)V
    .registers 2

    iput p1, p0, Le2/RadarView;->mYaw:F

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

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 30

    # Layout: circular radar. All content clipped to a circle => no visible
    # clipping when the map rotates. Border is a circle (rotation invisible)
    # so player arrow on top is the direction indicator.
    #   v15 = this, v8 = canvas
    #   v4 = cx, v5 = cy, v6 = side, v7 = half
    #   v9..v14 = scratch / paint refs
    #   v16..v20 = drawCircle /range args for player dots

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

    if-le v2, v3, :cond_mwh

    move v6, v3

    goto :goto_mwh

    :cond_mwh
    move v6, v2

    :goto_mwh
    int-to-float v6, v6

    const/high16 v10, 0x40000000    # 2.0f

    sub-float/2addr v6, v10

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float v7, v6, v10           # half = side / 2

    # Outer save + translate to view center (origin now at center)
    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v8, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    # Setup clip path: circle of radius `half` at origin
    iget-object v9, v15, Le2/RadarView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    const/4 v10, 0x0

    int-to-float v10, v10           # v10 = 0.0f (origin)

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v9, v10, v10, v7, v11}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    # Inner save (will restore to remove clip + rotation)
    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v8, v9}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    # BG: filled circle (matches clip)
    iget-object v9, v15, Le2/RadarView;->mPaintBg:Landroid/graphics/Paint;

    invoke-virtual {v8, v10, v10, v7, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    # Rotate to player-up: -(yaw + 180), same convention as CompassView
    iget v11, v15, Le2/RadarView;->mYaw:F

    const/high16 v12, 0x43340000    # 180.0f

    add-float v11, v11, v12

    neg-float v11, v11

    invoke-virtual {v8, v11}, Landroid/graphics/Canvas;->rotate(F)V

    # ---- Bitmap terrain (square fills inscribed area, gets clipped to circle) ----
    iget-object v9, v15, Le2/RadarView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_no_bitmap

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

    :cond_no_bitmap
    # ---- Other players (red dots, rotated with map) ----
    iget v9, v15, Le2/RadarView;->mPlayerCount:I

    if-lez v9, :cond_after_players

    iget v11, v15, Le2/RadarView;->mRange:I

    if-lez v11, :cond_after_players

    iget-object v10, v15, Le2/RadarView;->mPlayerDX:[F

    if-eqz v10, :cond_after_players

    iget-object v12, v15, Le2/RadarView;->mPlayerDZ:[F

    if-eqz v12, :cond_after_players

    array-length v2, v10

    if-lt v2, v9, :cond_after_players

    array-length v2, v12

    if-lt v2, v9, :cond_after_players

    int-to-float v3, v11

    div-float v13, v7, v3       # cellSize = half / range

    int-to-float v14, v11       # rangeF (clamp)

    move-object/from16 v16, v8

    # Player dot radius scales with view: half * 0.06 (~4.2px at default size, bigger and more visible)
    const v22, 0x3d75c28f           # 0.06f

    mul-float v22, v7, v22

    move/from16 v19, v22

    const/4 v0, 0x0

    :loop_p
    if-ge v0, v9, :cond_after_players

    aget v2, v10, v0

    aget v3, v12, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v22

    cmpg-float v22, v22, v14

    if-gtz v22, :cond_p_next

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v22

    cmpg-float v22, v22, v14

    if-gtz v22, :cond_p_next

    mul-float v17, v2, v13

    mul-float v18, v3, v13

    # 1) fill (magenta)
    iget-object v11, v15, Le2/RadarView;->mPaintOther:Landroid/graphics/Paint;

    move-object/from16 v20, v11

    invoke-virtual/range {v16 .. v20}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    # 2) outline (black stroke) drawn on top for contrast
    iget-object v11, v15, Le2/RadarView;->mPaintOtherOutline:Landroid/graphics/Paint;

    move-object/from16 v20, v11

    invoke-virtual/range {v16 .. v20}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_p_next
    add-int/lit8 v0, v0, 0x1

    goto :loop_p

    :cond_after_players
    # Inner restore: removes clip + rotation
    invoke-virtual {v8}, Landroid/graphics/Canvas;->restore()V

    # Border: stroke circle (rotation-invariant)
    const/4 v9, 0x0

    int-to-float v9, v9             # 0.0f

    iget-object v10, v15, Le2/RadarView;->mPaintBorder:Landroid/graphics/Paint;

    invoke-virtual {v8, v9, v9, v7, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    # ---- Local player arrow (always points UP, on top of everything) ----
    iget-object v10, v15, Le2/RadarView;->mPaintLocal:Landroid/graphics/Paint;

    new-instance v11, Landroid/graphics/Path;

    invoke-direct {v11}, Landroid/graphics/Path;-><init>()V

    # Sizes proportional to half (scale with Size slider)
    const v0, 0x3e051eb8        # 0.13f tipDy
    mul-float v0, v7, v0

    const v1, 0x3db851ec        # 0.09f armDx/Dy
    mul-float v1, v7, v1

    const v2, 0x3ca3d70a        # 0.02f notchDy
    mul-float v2, v7, v2

    # tip = (0, -tipDy)
    neg-float v12, v0

    invoke-virtual {v11, v9, v12}, Landroid/graphics/Path;->moveTo(FF)V

    # bottom-right = (armDx, armDy)
    invoke-virtual {v11, v1, v1}, Landroid/graphics/Path;->lineTo(FF)V

    # notch = (0, notchDy)
    invoke-virtual {v11, v9, v2}, Landroid/graphics/Path;->lineTo(FF)V

    # bottom-left = (-armDx, armDy)
    neg-float v13, v1

    invoke-virtual {v11, v13, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v11}, Landroid/graphics/Path;->close()V

    # 1) white fill
    invoke-virtual {v8, v11, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    # 2) black outline on top for contrast on light terrain (snow/quartz/etc.)
    iget-object v10, v15, Le2/RadarView;->mPaintLocalOutline:Landroid/graphics/Paint;

    invoke-virtual {v8, v11, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    # Outer restore
    invoke-virtual {v8}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
