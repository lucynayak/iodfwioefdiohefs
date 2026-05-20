.class public Le2/XrayView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private mPaint:Landroid/graphics/Paint;

.field private mPaintShadow:Landroid/graphics/Paint;

.field public volatile mDiamond:I

.field public volatile mIron:I

.field public volatile mGold:I

.field public volatile mEmerald:I

.field public volatile mShowDiamond:Z

.field public volatile mShowIron:Z

.field public volatile mShowGold:Z

.field public volatile mShowEmerald:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    const v3, -0x1

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iput-object v0, p0, Le2/XrayView;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    const v3, -0x1000000

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iput-object v0, p0, Le2/XrayView;->mPaintShadow:Landroid/graphics/Paint;

    iput v1, p0, Le2/XrayView;->mDiamond:I

    iput v1, p0, Le2/XrayView;->mIron:I

    iput v1, p0, Le2/XrayView;->mGold:I

    iput v1, p0, Le2/XrayView;->mEmerald:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Le2/XrayView;->mShowDiamond:Z

    iput-boolean v0, p0, Le2/XrayView;->mShowIron:Z

    iput-boolean v1, p0, Le2/XrayView;->mShowGold:Z

    iput-boolean v1, p0, Le2/XrayView;->mShowEmerald:Z

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Le2/XrayView;->mShowDiamond:Z

    if-eqz v1, :cond_0

    const-string v1, "Diamond: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le2/XrayView;->mDiamond:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-boolean v1, p0, Le2/XrayView;->mShowIron:Z

    if-eqz v1, :cond_1

    const-string v1, "Iron: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le2/XrayView;->mIron:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-boolean v1, p0, Le2/XrayView;->mShowGold:Z

    if-eqz v1, :cond_2

    const-string v1, "Gold: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le2/XrayView;->mGold:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-boolean v1, p0, Le2/XrayView;->mShowEmerald:Z

    if-eqz v1, :cond_3

    const-string v1, "Emerald: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le2/XrayView;->mEmerald:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41200000    # 10.0f

    const/high16 v2, 0x41a00000    # 20.0f

    const/high16 v3, 0x40000000    # 2.0f

    add-float v4, v1, v3

    add-float v5, v2, v3

    iget-object v6, p0, Le2/XrayView;->mPaintShadow:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v6, p0, Le2/XrayView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setCounts(IIII)V
    .registers 5

    iput p1, p0, Le2/XrayView;->mDiamond:I

    iput p2, p0, Le2/XrayView;->mIron:I

    iput p3, p0, Le2/XrayView;->mGold:I

    iput p4, p0, Le2/XrayView;->mEmerald:I

    return-void
.end method

.method public setShowFlags(ZZZZ)V
    .registers 5

    iput-boolean p1, p0, Le2/XrayView;->mShowDiamond:Z

    iput-boolean p2, p0, Le2/XrayView;->mShowIron:Z

    iput-boolean p3, p0, Le2/XrayView;->mShowGold:Z

    iput-boolean p4, p0, Le2/XrayView;->mShowEmerald:Z

    return-void
.end method
