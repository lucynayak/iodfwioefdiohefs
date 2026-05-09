.class public final Lo0/j;
.super Landroid/widget/EditText;
.source "SourceFile"


# instance fields
.field public final b:Lo0/d;

.field public final c:Lo0/w;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-static {p1}, Lo0/p0;->a(Landroid/content/Context;)Landroid/content/Context;

    const v0, 0x7f0300de

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lo0/d;

    invoke-direct {p1, p0}, Lo0/d;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lo0/j;->b:Lo0/d;

    invoke-virtual {p1, p2, v0}, Lo0/d;->d(Landroid/util/AttributeSet;I)V

    new-instance p1, Lo0/w;

    invoke-direct {p1, p0}, Lo0/w;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Lo0/j;->c:Lo0/w;

    invoke-virtual {p1, p2, v0}, Lo0/w;->f(Landroid/util/AttributeSet;I)V

    invoke-virtual {p1}, Lo0/w;->b()V

    return-void
.end method


# virtual methods
.method public final drawableStateChanged()V
    .registers 2

    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    iget-object v0, p0, Lo0/j;->b:Lo0/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo0/d;->a()V

    :cond_0
    iget-object v0, p0, Lo0/j;->c:Lo0/w;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo0/w;->b()V

    :cond_1
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Lo0/j;->b:Lo0/d;

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
    .registers 2

    iget-object v0, p0, Lo0/j;->b:Lo0/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo0/d;->c()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getText()Landroid/text/Editable;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    invoke-super {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getText()Ljava/lang/CharSequence;
    .registers 2

    invoke-virtual {p0}, Lo0/j;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public final onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/TextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-static {v0, p1, p0}, La3/r0;->E(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/view/View;)Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lo0/j;->b:Lo0/d;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lo0/d;->e()V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lo0/j;->b:Lo0/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lo0/d;->f(I)V

    :cond_0
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .registers 2

    invoke-static {p0, p1}, Lg0/o;->h(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    iget-object v0, p0, Lo0/j;->b:Lo0/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lo0/d;->h(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    iget-object v0, p0, Lo0/j;->b:Lo0/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lo0/d;->i(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public final setTextAppearance(Landroid/content/Context;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, Lo0/j;->c:Lo0/w;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lo0/w;->g(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method
