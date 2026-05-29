.class public Le2/XrayView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public volatile mBlocks:[F

.field private final mFillPaint:Landroid/graphics/Paint;

.field private final mLinePaint:Landroid/graphics/Paint;

.field private final mPath:Landroid/graphics/Path;

.field private mScreenH:F

.field private mScreenW:F

.field private final mSx:[F

.field private final mSy:[F

.field private final mValid:[Z

.field private final mXray:Le2/Xray;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le2/Xray;)V
    .registers 7

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iput-object p2, p0, Le2/XrayView;->mXray:Le2/Xray;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iput-object v0, p0, Le2/XrayView;->mLinePaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iput-object v0, p0, Le2/XrayView;->mFillPaint:Landroid/graphics/Paint;

    const/16 v0, 0x8

    new-array v2, v0, [F

    iput-object v2, p0, Le2/XrayView;->mSx:[F

    new-array v2, v0, [F

    iput-object v2, p0, Le2/XrayView;->mSy:[F

    new-array v0, v0, [Z

    iput-object v0, p0, Le2/XrayView;->mValid:[Z

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Le2/XrayView;->mPath:Landroid/graphics/Path;

    return-void
.end method

.method public static clamp255(I)I
    .registers 3

    if-gez p0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/16 v0, 0xff

    if-le p0, v0, :cond_1

    return v0

    :cond_1
    return p0
.end method


# virtual methods
.method public drawEdges(Landroid/graphics/Canvas;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Le2/XrayView;->edge(Landroid/graphics/Canvas;II)V

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, p1, v0, v1}, Le2/XrayView;->edge(Landroid/graphics/Canvas;II)V

    const/4 v0, 0x3

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Le2/XrayView;->edge(Landroid/graphics/Canvas;II)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Le2/XrayView;->edge(Landroid/graphics/Canvas;II)V

    const/4 v0, 0x4

    const/4 v1, 0x5

    invoke-virtual {p0, p1, v0, v1}, Le2/XrayView;->edge(Landroid/graphics/Canvas;II)V

    const/4 v0, 0x5

    const/4 v1, 0x7

    invoke-virtual {p0, p1, v0, v1}, Le2/XrayView;->edge(Landroid/graphics/Canvas;II)V

    const/4 v0, 0x7

    const/4 v1, 0x6

    invoke-virtual {p0, p1, v0, v1}, Le2/XrayView;->edge(Landroid/graphics/Canvas;II)V

    const/4 v0, 0x6

    const/4 v1, 0x4

    invoke-virtual {p0, p1, v0, v1}, Le2/XrayView;->edge(Landroid/graphics/Canvas;II)V

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-virtual {p0, p1, v0, v1}, Le2/XrayView;->edge(Landroid/graphics/Canvas;II)V

    const/4 v0, 0x1

    const/4 v1, 0x5

    invoke-virtual {p0, p1, v0, v1}, Le2/XrayView;->edge(Landroid/graphics/Canvas;II)V

    const/4 v0, 0x2

    const/4 v1, 0x6

    invoke-virtual {p0, p1, v0, v1}, Le2/XrayView;->edge(Landroid/graphics/Canvas;II)V

    const/4 v0, 0x3

    const/4 v1, 0x7

    invoke-virtual {p0, p1, v0, v1}, Le2/XrayView;->edge(Landroid/graphics/Canvas;II)V

    return-void
.end method

.method public drawFaces(Landroid/graphics/Canvas;)V
    .registers 3

    const/16 v0, 0x2310

    invoke-virtual {p0, p1, v0}, Le2/XrayView;->face(Landroid/graphics/Canvas;I)V

    const/16 v0, 0x5764

    invoke-virtual {p0, p1, v0}, Le2/XrayView;->face(Landroid/graphics/Canvas;I)V

    const/16 v0, 0x1540

    invoke-virtual {p0, p1, v0}, Le2/XrayView;->face(Landroid/graphics/Canvas;I)V

    const/16 v0, 0x6732

    invoke-virtual {p0, p1, v0}, Le2/XrayView;->face(Landroid/graphics/Canvas;I)V

    const/16 v0, 0x4620

    invoke-virtual {p0, p1, v0}, Le2/XrayView;->face(Landroid/graphics/Canvas;I)V

    const/16 v0, 0x3751

    invoke-virtual {p0, p1, v0}, Le2/XrayView;->face(Landroid/graphics/Canvas;I)V

    return-void
.end method

.method public edge(Landroid/graphics/Canvas;II)V
    .registers 13

    iget-object v6, p0, Le2/XrayView;->mValid:[Z

    aget-boolean v0, v6, p2

    if-eqz v0, :cond_0

    aget-boolean v0, v6, p3

    if-eqz v0, :cond_0

    iget-object v6, p0, Le2/XrayView;->mSx:[F

    iget-object v7, p0, Le2/XrayView;->mSy:[F

    move-object v0, p1

    aget v1, v6, p2

    aget v2, v7, p2

    aget v3, v6, p3

    aget v4, v7, p3

    iget-object v5, p0, Le2/XrayView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public face(Landroid/graphics/Canvas;I)V
    .registers 13

    and-int/lit8 v0, p2, 0x7

    ushr-int/lit8 v1, p2, 0x4

    and-int/lit8 v1, v1, 0x7

    ushr-int/lit8 v2, p2, 0x8

    and-int/lit8 v2, v2, 0x7

    ushr-int/lit8 v3, p2, 0xc

    and-int/lit8 v3, v3, 0x7

    iget-object v4, p0, Le2/XrayView;->mValid:[Z

    aget-boolean v5, v4, v0

    if-eqz v5, :cond_0

    aget-boolean v5, v4, v1

    if-eqz v5, :cond_0

    aget-boolean v5, v4, v2

    if-eqz v5, :cond_0

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_0

    iget-object v4, p0, Le2/XrayView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    iget-object v5, p0, Le2/XrayView;->mSx:[F

    iget-object v6, p0, Le2/XrayView;->mSy:[F

    aget v7, v5, v0

    aget v8, v6, v0

    invoke-virtual {v4, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    aget v7, v5, v1

    aget v8, v6, v1

    invoke-virtual {v4, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    aget v7, v5, v2

    aget v8, v6, v2

    invoke-virtual {v4, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    aget v7, v5, v3

    aget v8, v6, v3

    invoke-virtual {v4, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    iget-object v5, p0, Le2/XrayView;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 16

    invoke-static {}, Ldev/virus/variable/launcher/api/Api;->getScreenName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string v1, "hud_screen"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v0, Ldev/virus/variable/app/MinecraftActivity;->b:La2/d;

    if-eqz v0, :cond_0

    iget-object v0, v0, La2/d;->a:Lb2/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_a

    :cond_0
    sget-object v0, Lb2/a;->e:Lb2/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_a

    :cond_1
    sget-object v0, Lb2/a;->f:Lb2/a;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_a

    :cond_2
    sget-object v0, Lb2/a;->g:Lb2/a;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_a

    :cond_3
    sget-object v0, Lb2/a;->h:Lb2/a;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_a

    :cond_4
    sget-object v0, Lb2/a;->i:Lb2/a;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_a

    :cond_5
    iget-object v0, p0, Le2/XrayView;->mBlocks:[F

    if-eqz v0, :cond_a

    array-length v1, v0

    const/4 v2, 0x3

    if-ge v1, v2, :cond_6

    return-void

    :cond_6
    iget-object v2, p0, Le2/XrayView;->mXray:Le2/Xray;

    if-nez v2, :cond_7

    return-void

    :cond_7
    iget-object v3, v2, Le2/Xray;->colorR:Li2/d;

    invoke-virtual {v3}, Li2/d;->getCurrentValue()D

    move-result-wide v3

    double-to-int v3, v3

    invoke-static {v3}, Le2/XrayView;->clamp255(I)I

    move-result v3

    iget-object v4, v2, Le2/Xray;->colorG:Li2/d;

    invoke-virtual {v4}, Li2/d;->getCurrentValue()D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {v4}, Le2/XrayView;->clamp255(I)I

    move-result v4

    iget-object v5, v2, Le2/Xray;->colorB:Li2/d;

    invoke-virtual {v5}, Li2/d;->getCurrentValue()D

    move-result-wide v5

    double-to-int v5, v5

    invoke-static {v5}, Le2/XrayView;->clamp255(I)I

    move-result v5

    iget-object v6, p0, Le2/XrayView;->mLinePaint:Landroid/graphics/Paint;

    const/16 v7, 0xff

    invoke-virtual {v6, v7, v3, v4, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v6, p0, Le2/XrayView;->mFillPaint:Landroid/graphics/Paint;

    const/16 v7, 0x55

    invoke-virtual {v6, v7, v3, v4, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v8, v2, Le2/Xray;->thickness:Li2/d;

    if-eqz v8, :cond_8

    invoke-virtual {v8}, Li2/d;->getCurrentValue()D

    move-result-wide v10

    double-to-float v8, v10

    iget-object v9, p0, Le2/XrayView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_8
    iget-object v3, v2, Le2/Xray;->style:Li2/b;

    invoke-virtual {v3}, Li2/b;->getCurrentMode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Filled"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Le2/XrayView;->mScreenW:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Le2/XrayView;->mScreenH:F

    const/4 v4, 0x0

    :goto_0
    add-int/lit8 v5, v4, 0x3

    if-gt v5, v1, :cond_a

    aget v5, v0, v4

    add-int/lit8 v6, v4, 0x1

    aget v6, v0, v6

    add-int/lit8 v7, v4, 0x2

    aget v7, v0, v7

    invoke-virtual {p0, v5, v6, v7}, Le2/XrayView;->projectCube(FFF)V

    if-eqz v3, :cond_9

    invoke-virtual {p0, p1}, Le2/XrayView;->drawFaces(Landroid/graphics/Canvas;)V

    :cond_9
    invoke-virtual {p0, p1}, Le2/XrayView;->drawEdges(Landroid/graphics/Canvas;)V

    add-int/lit8 v4, v4, 0x3

    goto :goto_0

    :cond_a
    return-void
.end method

.method public projectCube(FFF)V
    .registers 13

    const v0, 0x3fcf5c29    # 1.62f

    add-float/2addr p2, v0

    iget-object v0, p0, Le2/XrayView;->mSx:[F

    iget-object v1, p0, Le2/XrayView;->mSy:[F

    iget-object v2, p0, Le2/XrayView;->mValid:[Z

    iget v7, p0, Le2/XrayView;->mScreenW:F

    iget v8, p0, Le2/XrayView;->mScreenH:F

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x8

    if-ge v3, v4, :cond_4

    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_0

    const/high16 v4, 0x3f800000    # 1.0f

    add-float v4, v4, p1

    goto :goto_1

    :cond_0
    move v4, p1

    :goto_1
    and-int/lit8 v5, v3, 0x2

    if-eqz v5, :cond_1

    const/high16 v5, 0x3f800000    # 1.0f

    add-float v5, v5, p2

    goto :goto_2

    :cond_1
    move v5, p2

    :goto_2
    and-int/lit8 v6, v3, 0x4

    if-eqz v6, :cond_2

    const/high16 v6, 0x3f800000    # 1.0f

    add-float v6, v6, p3

    goto :goto_3

    :cond_2
    move v6, p3

    :goto_3
    invoke-static {v4, v5, v6, v7, v8}, Ldev/virus/variable/launcher/api/ScreenUtils;->worldToScreen(FFFFF)[F

    move-result-object v4

    if-eqz v4, :cond_3

    const/4 v5, 0x0

    aget v5, v4, v5

    aput v5, v0, v3

    const/4 v5, 0x1

    aget v5, v4, v5

    aput v5, v1, v3

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    goto :goto_4

    :cond_3
    const/4 v4, 0x0

    aput-boolean v4, v2, v3

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
