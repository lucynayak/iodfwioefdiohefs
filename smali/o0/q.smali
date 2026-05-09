.class public final Lo0/q;
.super Landroid/widget/RadioButton;
.source "SourceFile"


# instance fields
.field public final b:Lo0/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-static {p1}, Lo0/p0;->a(Landroid/content/Context;)Landroid/content/Context;

    const v0, 0x7f0301e3

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lo0/h;

    invoke-direct {p1, p0}, Lo0/h;-><init>(Landroid/widget/CompoundButton;)V

    iput-object p1, p0, Lo0/q;->b:Lo0/h;

    invoke-virtual {p1, p2, v0}, Lo0/h;->b(Landroid/util/AttributeSet;I)V

    new-instance p1, Lo0/w;

    invoke-direct {p1, p0}, Lo0/w;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p1, p2, v0}, Lo0/w;->f(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getCompoundPaddingLeft()I
    .registers 3

    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lo0/q;->b:Lo0/h;

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return v0
.end method

.method public getSupportButtonTintList()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Lo0/q;->b:Lo0/h;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lo0/h;->b:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportButtonTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    iget-object v0, p0, Lo0/q;->b:Lo0/h;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lo0/h;->c:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public setButtonDrawable(I)V
    .registers 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lj0/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo0/q;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lo0/q;->b:Lo0/h;

    if-eqz p1, :cond_1

    .line 1
    iget-boolean v0, p1, Lo0/h;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p1, Lo0/h;->f:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Lo0/h;->f:Z

    invoke-virtual {p1}, Lo0/h;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSupportButtonTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    iget-object v0, p0, Lo0/q;->b:Lo0/h;

    if-eqz v0, :cond_0

    iput-object p1, v0, Lo0/h;->b:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lo0/h;->d:Z

    invoke-virtual {v0}, Lo0/h;->a()V

    :cond_0
    return-void
.end method

.method public setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    iget-object v0, p0, Lo0/q;->b:Lo0/h;

    if-eqz v0, :cond_0

    iput-object p1, v0, Lo0/h;->c:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lo0/h;->e:Z

    invoke-virtual {v0}, Lo0/h;->a()V

    :cond_0
    return-void
.end method
