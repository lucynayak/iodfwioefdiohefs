.class public final Lj/a;
.super Lo0/e;
.source "SourceFile"


# instance fields
.field public final d:Lj/c;

.field public e:I

.field public f:Landroid/graphics/PorterDuff$Mode;

.field public g:Landroid/content/res/ColorStateList;

.field public h:Landroid/graphics/drawable/Drawable;

.field public i:I

.field public j:I

.field public k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    const v0, 0x7f03019a

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lo0/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v3, Ly1/a;->f:[I

    const/4 v0, 0x0

    new-array v6, v0, [I

    const v5, 0x7f0e01d6

    const v4, 0x7f03019a

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Ld1/a;->J(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0x9

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lj/a;->e:I

    const/16 p2, 0xc

    const/4 v1, -0x1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p2, v2}, Ln/b;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p2

    iput-object p2, p0, Lj/a;->f:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/16 v2, 0xb

    invoke-static {p2, p1, v2}, Ld1/a;->B(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lj/a;->g:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v2, 0x7

    .line 2
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p2, v3}, Lj0/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 3
    :goto_0
    iput-object p2, p0, Lj/a;->h:Landroid/graphics/drawable/Drawable;

    const/16 p2, 0x8

    const/4 v2, 0x1

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lj/a;->k:I

    const/16 p2, 0xa

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lj/a;->i:I

    new-instance p2, Lj/c;

    invoke-direct {p2, p0}, Lj/c;-><init>(Lj/a;)V

    iput-object p2, p0, Lj/a;->d:Lj/c;

    .line 4
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p2, Lj/c;->b:I

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p2, Lj/c;->c:I

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p2, Lj/c;->d:I

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p2, Lj/c;->e:I

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p2, Lj/c;->f:I

    const/16 v2, 0xf

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p2, Lj/c;->g:I

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v2}, Ln/b;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    iput-object v1, p2, Lj/c;->h:Landroid/graphics/PorterDuff$Mode;

    iget-object v1, p2, Lj/c;->a:Lj/a;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v1, p1, v2}, Ld1/a;->B(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p2, Lj/c;->i:Landroid/content/res/ColorStateList;

    iget-object v1, p2, Lj/c;->a:Lj/a;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0xe

    invoke-static {v1, p1, v2}, Ld1/a;->B(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p2, Lj/c;->j:Landroid/content/res/ColorStateList;

    iget-object v1, p2, Lj/c;->a:Lj/a;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v1, p1, v2}, Ld1/a;->B(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p2, Lj/c;->k:Landroid/content/res/ColorStateList;

    iget-object v1, p2, Lj/c;->l:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p2, Lj/c;->l:Landroid/graphics/Paint;

    iget v2, p2, Lj/c;->g:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p2, Lj/c;->l:Landroid/graphics/Paint;

    iget-object v2, p2, Lj/c;->j:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    iget-object v3, p2, Lj/c;->a:Lj/a;

    invoke-virtual {v3}, Landroid/view/View;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    :cond_1
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p2, Lj/c;->a:Lj/a;

    sget-object v1, Ld0/l;->a:Ljava/util/WeakHashMap;

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    .line 6
    iget-object v1, p2, Lj/c;->a:Lj/a;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget-object v2, p2, Lj/c;->a:Lj/a;

    .line 7
    invoke-virtual {v2}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    .line 8
    iget-object v3, p2, Lj/c;->a:Lj/a;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    iget-object v4, p2, Lj/c;->a:Lj/a;

    invoke-virtual {p2}, Lj/c;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lj/a;->setInternalBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p2, Lj/c;->a:Lj/a;

    iget v5, p2, Lj/c;->b:I

    add-int/2addr v0, v5

    iget v5, p2, Lj/c;->d:I

    add-int/2addr v1, v5

    iget v5, p2, Lj/c;->c:I

    add-int/2addr v2, v5

    iget p2, p2, Lj/c;->e:I

    add-int/2addr v3, p2

    .line 9
    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 10
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget p1, p0, Lj/a;->e:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    invoke-virtual {p0}, Lj/a;->b()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    iget-object v0, p0, Lj/a;->d:Lj/c;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lj/c;->p:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final b()V
    .registers 6

    iget-object v0, p0, Lj/a;->h:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lj/a;->h:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lj/a;->g:Landroid/content/res/ColorStateList;

    .line 1
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 2
    iget-object v0, p0, Lj/a;->f:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lj/a;->h:Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 4
    :cond_0
    iget v0, p0, Lj/a;->i:I

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lj/a;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :goto_0
    iget v1, p0, Lj/a;->i:I

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lj/a;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    :goto_1
    iget-object v2, p0, Lj/a;->h:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lj/a;->j:I

    const/4 v4, 0x0

    add-int/2addr v0, v3

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    iget-object v0, p0, Lj/a;->h:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v0, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public getBackgroundTintList()Landroid/content/res/ColorStateList;
    .registers 2

    invoke-virtual {p0}, Lj/a;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    invoke-virtual {p0}, Lj/a;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getCornerRadius()I
    .registers 2

    invoke-virtual {p0}, Lj/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj/a;->d:Lj/c;

    iget v0, v0, Lj/c;->f:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lj/a;->h:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconGravity()I
    .registers 2

    iget v0, p0, Lj/a;->k:I

    return v0
.end method

.method public getIconPadding()I
    .registers 2

    iget v0, p0, Lj/a;->e:I

    return v0
.end method

.method public getIconSize()I
    .registers 2

    iget v0, p0, Lj/a;->i:I

    return v0
.end method

.method public getIconTint()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Lj/a;->g:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    iget-object v0, p0, Lj/a;->f:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getRippleColor()Landroid/content/res/ColorStateList;
    .registers 2

    invoke-virtual {p0}, Lj/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj/a;->d:Lj/c;

    iget-object v0, v0, Lj/c;->k:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getStrokeColor()Landroid/content/res/ColorStateList;
    .registers 2

    invoke-virtual {p0}, Lj/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj/a;->d:Lj/c;

    iget-object v0, v0, Lj/c;->j:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getStrokeWidth()I
    .registers 2

    invoke-virtual {p0}, Lj/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj/a;->d:Lj/c;

    iget v0, v0, Lj/c;->g:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .registers 2

    invoke-virtual {p0}, Lj/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj/a;->d:Lj/c;

    .line 1
    iget-object v0, v0, Lj/c;->i:Landroid/content/res/ColorStateList;

    return-object v0

    .line 2
    :cond_0
    invoke-super {p0}, Lo0/e;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    invoke-virtual {p0}, Lj/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj/a;->d:Lj/c;

    .line 1
    iget-object v0, v0, Lj/c;->h:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 2
    :cond_0
    invoke-super {p0}, Lo0/e;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .registers 8

    invoke-super/range {p0 .. p5}, Lo0/e;->onLayout(ZIIII)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lj/a;->d:Lj/c;

    if-eqz p1, :cond_0

    sub-int/2addr p5, p3

    sub-int/2addr p4, p2

    iget-object p2, p1, Lj/c;->o:Landroid/graphics/drawable/GradientDrawable;

    if-eqz p2, :cond_0

    iget p3, p1, Lj/c;->b:I

    iget v0, p1, Lj/c;->d:I

    iget v1, p1, Lj/c;->c:I

    sub-int/2addr p4, v1

    iget p1, p1, Lj/c;->e:I

    sub-int/2addr p5, p1

    invoke-virtual {p2, p3, v0, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method public final onMeasure(II)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    iget-object p1, p0, Lj/a;->h:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_4

    iget p1, p0, Lj/a;->k:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    iget v0, p0, Lj/a;->i:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lj/a;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v1, p1

    sget-object p1, Ld0/l;->a:Ljava/util/WeakHashMap;

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result p1

    sub-int/2addr v1, p1

    sub-int/2addr v1, v0

    .line 2
    iget p1, p0, Lj/a;->e:I

    sub-int/2addr v1, p1

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result p1

    sub-int/2addr v1, p1

    .line 4
    div-int/2addr v1, p2

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_3

    neg-int v1, v1

    .line 6
    :cond_3
    iget p1, p0, Lj/a;->j:I

    if-eq p1, v1, :cond_4

    iput v1, p0, Lj/a;->j:I

    invoke-virtual {p0}, Lj/a;->b()V

    :cond_4
    :goto_1
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-virtual {p0, p1}, Lj/a;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 3

    invoke-virtual {p0}, Lj/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj/a;->d:Lj/c;

    .line 1
    iget-object v0, v0, Lj/c;->m:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 5

    invoke-virtual {p0}, Lj/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq p1, v0, :cond_0

    const-string v0, "MaterialButton"

    const-string v1, "Setting a custom background is not supported."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lj/a;->d:Lj/c;

    const/4 v1, 0x1

    .line 1
    iput-boolean v1, v0, Lj/c;->p:Z

    iget-object v1, v0, Lj/c;->a:Lj/a;

    iget-object v2, v0, Lj/c;->i:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Lj/a;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, v0, Lj/c;->a:Lj/a;

    iget-object v0, v0, Lj/c;->h:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0}, Lj/a;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_1

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lo0/e;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method

.method public setBackgroundResource(I)V
    .registers 3

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lj0/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lj/a;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .registers 2

    invoke-virtual {p0, p1}, Lj/a;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 2

    invoke-virtual {p0, p1}, Lj/a;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setCornerRadius(I)V
    .registers 8

    invoke-virtual {p0}, Lj/a;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lj/a;->d:Lj/c;

    .line 1
    iget v1, v0, Lj/c;->f:I

    if-eq v1, p1, :cond_3

    iput p1, v0, Lj/c;->f:I

    iget-object v1, v0, Lj/c;->m:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lj/c;->n:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lj/c;->o:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_3

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const v3, 0x3727c5ac    # 1.0E-5f

    if-ne v1, v2, :cond_2

    .line 2
    iget-object v1, v0, Lj/c;->a:Lj/a;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, Lj/c;->a:Lj/a;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    goto :goto_0

    :cond_0
    move-object v1, v4

    :goto_0
    int-to-float v5, p1

    add-float/2addr v5, v3

    .line 3
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 4
    iget-object v1, v0, Lj/c;->a:Lj/a;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lj/c;->a:Lj/a;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/graphics/drawable/GradientDrawable;

    .line 5
    :cond_1
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    :cond_2
    iget-object v1, v0, Lj/c;->m:Landroid/graphics/drawable/GradientDrawable;

    int-to-float p1, p1

    add-float/2addr p1, v3

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v1, v0, Lj/c;->n:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v0, v0, Lj/c;->o:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    :cond_3
    return-void
.end method

.method public setCornerRadiusResource(I)V
    .registers 3

    invoke-virtual {p0}, Lj/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lj/a;->setCornerRadius(I)V

    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Lj/a;->h:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lj/a;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lj/a;->b()V

    :cond_0
    return-void
.end method

.method public setIconGravity(I)V
    .registers 2

    iput p1, p0, Lj/a;->k:I

    return-void
.end method

.method public setIconPadding(I)V
    .registers 3

    iget v0, p0, Lj/a;->e:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lj/a;->e:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    :cond_0
    return-void
.end method

.method public setIconResource(I)V
    .registers 3

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lj0/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lj/a;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIconSize(I)V
    .registers 3

    if-ltz p1, :cond_1

    iget v0, p0, Lj/a;->i:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lj/a;->i:I

    invoke-virtual {p0}, Lj/a;->b()V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "iconSize cannot be less than 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setIconTint(Landroid/content/res/ColorStateList;)V
    .registers 3

    iget-object v0, p0, Lj/a;->g:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lj/a;->g:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lj/a;->b()V

    :cond_0
    return-void
.end method

.method public setIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    iget-object v0, p0, Lj/a;->f:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lj/a;->f:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0}, Lj/a;->b()V

    :cond_0
    return-void
.end method

.method public setIconTintResource(I)V
    .registers 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lj0/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj/a;->setIconTint(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setInternalBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-super {p0, p1}, Lo0/e;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .registers 4

    invoke-virtual {p0}, Lj/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj/a;->d:Lj/c;

    iget-object v1, v0, Lj/c;->k:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, Lj/c;->k:Landroid/content/res/ColorStateList;

    iget-object v1, v0, Lj/c;->a:Lj/a;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lj/c;->a:Lj/a;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setRippleColorResource(I)V
    .registers 3

    invoke-virtual {p0}, Lj/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lj0/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj/a;->setRippleColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setStrokeColor(Landroid/content/res/ColorStateList;)V
    .registers 6

    invoke-virtual {p0}, Lj/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lj/a;->d:Lj/c;

    .line 1
    iget-object v1, v0, Lj/c;->j:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_1

    iput-object p1, v0, Lj/c;->j:Landroid/content/res/ColorStateList;

    iget-object v1, v0, Lj/c;->l:Landroid/graphics/Paint;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v3, v0, Lj/c;->a:Lj/a;

    invoke-virtual {v3}, Landroid/view/View;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {p1, v3, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    :cond_0
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    iget-object p1, v0, Lj/c;->n:Landroid/graphics/drawable/GradientDrawable;

    if-eqz p1, :cond_1

    iget-object p1, v0, Lj/c;->a:Lj/a;

    invoke-virtual {v0}, Lj/c;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lj/a;->setInternalBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public setStrokeColorResource(I)V
    .registers 3

    invoke-virtual {p0}, Lj/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lj0/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj/a;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setStrokeWidth(I)V
    .registers 4

    invoke-virtual {p0}, Lj/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj/a;->d:Lj/c;

    .line 1
    iget v1, v0, Lj/c;->g:I

    if-eq v1, p1, :cond_0

    iput p1, v0, Lj/c;->g:I

    iget-object v1, v0, Lj/c;->l:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2
    iget-object p1, v0, Lj/c;->n:Landroid/graphics/drawable/GradientDrawable;

    if-eqz p1, :cond_0

    iget-object p1, v0, Lj/c;->a:Lj/a;

    invoke-virtual {v0}, Lj/c;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lj/a;->setInternalBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setStrokeWidthResource(I)V
    .registers 3

    invoke-virtual {p0}, Lj/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lj/a;->setStrokeWidth(I)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .registers 4

    invoke-virtual {p0}, Lj/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj/a;->d:Lj/c;

    .line 1
    iget-object v1, v0, Lj/c;->i:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_1

    iput-object p1, v0, Lj/c;->i:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Lj/c;->b()V

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lj/a;->d:Lj/c;

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Lo0/e;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 4

    invoke-virtual {p0}, Lj/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj/a;->d:Lj/c;

    .line 1
    iget-object v1, v0, Lj/c;->h:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_1

    iput-object p1, v0, Lj/c;->h:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0}, Lj/c;->b()V

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lj/a;->d:Lj/c;

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Lo0/e;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_1
    :goto_0
    return-void
.end method
