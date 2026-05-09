.class public Lo0/z;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field public static final d:Ly1/a;


# instance fields
.field public b:Z

.field public c:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ly1/a;

    invoke-direct {v0}, Ly1/a;-><init>()V

    sput-object v0, Lo0/z;->d:Ly1/a;

    return-void
.end method


# virtual methods
.method public getCardBackgroundColor()Landroid/content/res/ColorStateList;
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method public getCardElevation()F
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method public getContentPaddingBottom()I
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method public getContentPaddingLeft()I
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method public getContentPaddingRight()I
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method public getContentPaddingTop()I
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method public getMaxCardElevation()F
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method public getPreventCornerOverlap()Z
    .registers 2

    iget-boolean v0, p0, Lo0/z;->c:Z

    return v0
.end method

.method public getRadius()F
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method public getUseCompatPadding()Z
    .registers 2

    iget-boolean v0, p0, Lo0/z;->b:Z

    return v0
.end method

.method public final onMeasure(II)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setCardBackgroundColor(I)V
    .registers 2

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    .line 1
    throw p1
.end method

.method public setCardBackgroundColor(Landroid/content/res/ColorStateList;)V
    .registers 2

    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public setCardElevation(F)V
    .registers 2

    const/4 p1, 0x0

    throw p1
.end method

.method public setMaxCardElevation(F)V
    .registers 2

    const/4 p1, 0x0

    throw p1
.end method

.method public setMinimumHeight(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    return-void
.end method

.method public setMinimumWidth(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->setMinimumWidth(I)V

    return-void
.end method

.method public final setPadding(IIII)V
    .registers 5

    return-void
.end method

.method public final setPaddingRelative(IIII)V
    .registers 5

    return-void
.end method

.method public setPreventCornerOverlap(Z)V
    .registers 3

    iget-boolean v0, p0, Lo0/z;->c:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lo0/z;->c:Z

    const/4 p1, 0x0

    throw p1
.end method

.method public setRadius(F)V
    .registers 2

    const/4 p1, 0x0

    throw p1
.end method

.method public setUseCompatPadding(Z)V
    .registers 3

    iget-boolean v0, p0, Lo0/z;->b:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lo0/z;->b:Z

    const/4 p1, 0x0

    throw p1
.end method
