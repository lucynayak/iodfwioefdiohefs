.class public Lo0/e;
.super Landroid/widget/Button;
.source "SourceFile"

# interfaces
.implements Lg0/b;


# instance fields
.field public final b:Lo0/d;

.field public final c:Lo0/w;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-static {p1}, Lo0/p0;->a(Landroid/content/Context;)Landroid/content/Context;

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lo0/d;

    invoke-direct {p1, p0}, Lo0/d;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lo0/e;->b:Lo0/d;

    invoke-virtual {p1, p2, p3}, Lo0/d;->d(Landroid/util/AttributeSet;I)V

    new-instance p1, Lo0/w;

    invoke-direct {p1, p0}, Lo0/w;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Lo0/e;->c:Lo0/w;

    invoke-virtual {p1, p2, p3}, Lo0/w;->f(Landroid/util/AttributeSet;I)V

    invoke-virtual {p1}, Lo0/w;->b()V

    return-void
.end method


# virtual methods
.method public final drawableStateChanged()V
    .registers 2

    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    iget-object v0, p0, Lo0/e;->b:Lo0/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo0/d;->a()V

    :cond_0
    iget-object v0, p0, Lo0/e;->c:Lo0/w;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo0/w;->b()V

    :cond_1
    return-void
.end method

.method public getAutoSizeMaxTextSize()I
    .registers 2

    sget-boolean v0, Lg0/b;->a:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeMaxTextSize()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lo0/e;->c:Lo0/w;

    if-eqz v0, :cond_1

    .line 1
    iget-object v0, v0, Lo0/w;->h:Lo0/y;

    .line 2
    iget v0, v0, Lo0/y;->e:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getAutoSizeMinTextSize()I
    .registers 2

    sget-boolean v0, Lg0/b;->a:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeMinTextSize()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lo0/e;->c:Lo0/w;

    if-eqz v0, :cond_1

    .line 1
    iget-object v0, v0, Lo0/w;->h:Lo0/y;

    .line 2
    iget v0, v0, Lo0/y;->d:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getAutoSizeStepGranularity()I
    .registers 2

    sget-boolean v0, Lg0/b;->a:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lo0/e;->c:Lo0/w;

    if-eqz v0, :cond_1

    .line 1
    iget-object v0, v0, Lo0/w;->h:Lo0/y;

    .line 2
    iget v0, v0, Lo0/y;->c:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getAutoSizeTextAvailableSizes()[I
    .registers 2

    sget-boolean v0, Lg0/b;->a:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeTextAvailableSizes()[I

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lo0/e;->c:Lo0/w;

    if-eqz v0, :cond_1

    .line 1
    iget-object v0, v0, Lo0/w;->h:Lo0/y;

    .line 2
    iget-object v0, v0, Lo0/y;->f:[I

    return-object v0

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public getAutoSizeTextType()I
    .registers 4

    sget-boolean v0, Lg0/b;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeTextType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lo0/e;->c:Lo0/w;

    if-eqz v0, :cond_2

    .line 1
    iget-object v0, v0, Lo0/w;->h:Lo0/y;

    .line 2
    iget v0, v0, Lo0/y;->a:I

    return v0

    :cond_2
    return v1
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Lo0/e;->b:Lo0/d;

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

    iget-object v0, p0, Lo0/e;->b:Lo0/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo0/d;->c()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    iget-object p1, p0, Lo0/e;->c:Lo0/w;

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean p2, Lg0/b;->a:Z

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lo0/w;->c()V

    :cond_0
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    iget-object p1, p0, Lo0/e;->c:Lo0/w;

    if-eqz p1, :cond_0

    sget-boolean p2, Lg0/b;->a:Z

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lo0/w;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo0/e;->c:Lo0/w;

    invoke-virtual {p1}, Lo0/w;->c()V

    :cond_0
    return-void
.end method

.method public final setAutoSizeTextTypeUniformWithConfiguration(IIII)V
    .registers 6

    sget-boolean v0, Lg0/b;->a:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo0/e;->c:Lo0/w;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3, p4}, Lo0/w;->i(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setAutoSizeTextTypeUniformWithPresetSizes([II)V
    .registers 4

    sget-boolean v0, Lg0/b;->a:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo0/e;->c:Lo0/w;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lo0/w;->j([II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAutoSizeTextTypeWithDefaults(I)V
    .registers 3

    sget-boolean v0, Lg0/b;->a:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setAutoSizeTextTypeWithDefaults(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo0/e;->c:Lo0/w;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lo0/w;->k(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lo0/e;->b:Lo0/d;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lo0/d;->e()V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lo0/e;->b:Lo0/d;

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

.method public setSupportAllCaps(Z)V
    .registers 3

    iget-object v0, p0, Lo0/e;->c:Lo0/w;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lo0/w;->h(Z)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    iget-object v0, p0, Lo0/e;->b:Lo0/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lo0/d;->h(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    iget-object v0, p0, Lo0/e;->b:Lo0/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lo0/d;->i(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public final setTextAppearance(Landroid/content/Context;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, Lo0/e;->c:Lo0/w;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lo0/w;->g(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public final setTextSize(IF)V
    .registers 5

    sget-boolean v0, Lg0/b;->a:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lo0/e;->c:Lo0/w;

    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 1
    invoke-virtual {v1}, Lo0/w;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, v1, Lo0/w;->h:Lo0/y;

    invoke-virtual {v0, p1, p2}, Lo0/y;->f(IF)V

    :cond_1
    :goto_0
    return-void
.end method
