.class public final Le2/at$a;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public final a:Le2/at;

.field public volatile b:[F

.field public final c:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le2/at;)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Le2/at$a;->a:Le2/at;

    const/4 v0, 0x0

    iput-object v0, p0, Le2/at$a;->b:[F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iput-object v0, p0, Le2/at$a;->c:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 16

    iget-object v0, p0, Le2/at$a;->b:[F

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    iget-object v2, p0, Le2/at$a;->a:Le2/at;

    iget v3, v2, Le2/at;->cachedR:F

    iget v4, v2, Le2/at;->cachedG:F

    iget v5, v2, Le2/at;->cachedB:F

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v3, v6

    mul-float/2addr v4, v6

    mul-float/2addr v5, v6

    float-to-int v3, v3

    float-to-int v4, v4

    float-to-int v5, v5

    const/4 v6, 0x0

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/16 v7, 0xff

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget-object v6, p0, Le2/at$a;->c:Landroid/graphics/Paint;

    invoke-virtual {v6, v7, v3, v4, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    const/high16 v3, 0x40400000    # 3.0f

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    const/4 v4, 0x0

    :goto_0
    add-int/lit8 v7, v4, 0x1

    if-ge v7, v1, :cond_0

    move-object v8, p1

    move v9, v3

    move v10, v5

    aget v11, v0, v4

    aget v12, v0, v7

    move-object v13, v6

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method
