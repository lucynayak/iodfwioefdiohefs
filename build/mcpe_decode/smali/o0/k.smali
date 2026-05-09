.class public Lo0/k;
.super Landroid/widget/ImageButton;
.source "SourceFile"


# instance fields
.field public final b:Lo0/d;

.field public final c:Lo0/l;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f030133

    invoke-direct {p0, p1, p2, v0}, Lo0/k;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-static {p1}, Lo0/p0;->a(Landroid/content/Context;)Landroid/content/Context;

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lo0/d;

    invoke-direct {p1, p0}, Lo0/d;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lo0/k;->b:Lo0/d;

    invoke-virtual {p1, p2, p3}, Lo0/d;->d(Landroid/util/AttributeSet;I)V

    new-instance p1, Lo0/l;

    invoke-direct {p1, p0}, Lo0/l;-><init>(Landroid/widget/ImageView;)V

    iput-object p1, p0, Lo0/k;->c:Lo0/l;

    invoke-virtual {p1, p2, p3}, Lo0/l;->b(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    iget-object v0, p0, Lo0/k;->b:Lo0/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo0/d;->a()V

    :cond_0
    iget-object v0, p0, Lo0/k;->c:Lo0/l;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo0/l;->a()V

    :cond_1
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lo0/k;->b:Lo0/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo0/d;->b()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Lo0/k;->b:Lo0/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo0/d;->c()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportImageTintList()Landroid/content/res/ColorStateList;
    .locals 2

    iget-object v0, p0, Lo0/k;->c:Lo0/l;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lo0/l;->b:Lo0/q0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lo0/q0;->a:Landroid/content/res/ColorStateList;

    move-object v1, v0

    :cond_0
    return-object v1
.end method

.method public getSupportImageTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 2

    iget-object v0, p0, Lo0/k;->c:Lo0/l;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lo0/l;->b:Lo0/q0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lo0/q0;->b:Landroid/graphics/PorterDuff$Mode;

    move-object v1, v0

    :cond_0
    return-object v1
.end method

.method public final hasOverlappingRendering()Z
    .locals 2

    iget-object v0, p0, Lo0/k;->c:Lo0/l;

    .line 1
    iget-object v0, v0, Lo0/l;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0}, Landroid/widget/ImageView;->hasOverlappingRendering()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lo0/k;->b:Lo0/d;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lo0/d;->e()V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lo0/k;->b:Lo0/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lo0/d;->f(I)V

    :cond_0
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lo0/k;->c:Lo0/l;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lo0/l;->a()V

    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lo0/k;->c:Lo0/l;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lo0/l;->a()V

    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    iget-object v0, p0, Lo0/k;->c:Lo0/l;

    invoke-virtual {v0, p1}, Lo0/l;->c(I)V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    iget-object p1, p0, Lo0/k;->c:Lo0/l;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lo0/l;->a()V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lo0/k;->b:Lo0/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lo0/d;->h(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Lo0/k;->b:Lo0/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lo0/d;->i(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setSupportImageTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lo0/k;->c:Lo0/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lo0/l;->d(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportImageTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Lo0/k;->c:Lo0/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lo0/l;->e(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method
