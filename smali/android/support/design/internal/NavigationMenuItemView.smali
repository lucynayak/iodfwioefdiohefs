.class public Landroid/support/design/internal/NavigationMenuItemView;
.super Ln/a;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/view/menu/j$a;


# static fields
.field public static final G:[I


# instance fields
.field public A:Landroid/widget/FrameLayout;

.field public B:Landroid/support/v7/view/menu/g;

.field public C:Landroid/content/res/ColorStateList;

.field public D:Z

.field public E:Landroid/graphics/drawable/Drawable;

.field public final F:Landroid/support/design/internal/NavigationMenuItemView$a;

.field public final w:I

.field public x:Z

.field public y:Z

.field public final z:Landroid/widget/CheckedTextView;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Landroid/support/design/internal/NavigationMenuItemView;->G:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/internal/NavigationMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Ln/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroid/support/design/internal/NavigationMenuItemView$a;

    invoke-direct {p2, p0}, Landroid/support/design/internal/NavigationMenuItemView$a;-><init>(Landroid/support/design/internal/NavigationMenuItemView;)V

    iput-object p2, p0, Landroid/support/design/internal/NavigationMenuItemView;->F:Landroid/support/design/internal/NavigationMenuItemView$a;

    invoke-virtual {p0, p3}, Landroid/support/v7/widget/h;->setOrientation(I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0b0031

    const/4 v1, 0x1

    invoke-virtual {p3, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f06006c

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->w:I

    const p1, 0x7f080090

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckedTextView;

    iput-object p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->z:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setDuplicateParentStateEnabled(Z)V

    invoke-static {p1, p2}, Ld0/l;->i(Landroid/view/View;Ld0/b;)V

    return-void
.end method

.method private setActionView(Landroid/view/View;)V
    .registers 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->A:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    const v0, 0x7f08008f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->A:Landroid/widget/FrameLayout;

    :cond_0
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->A:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->A:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final b(Landroid/support/v7/view/menu/g;)V
    .registers 9

    iput-object p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->B:Landroid/support/v7/view/menu/g;

    invoke-virtual {p1}, Landroid/support/v7/view/menu/g;->isVisible()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x7f030095

    invoke-virtual {v4, v5, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    sget-object v5, Landroid/support/design/internal/NavigationMenuItemView;->G:[I

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-direct {v6, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    sget-object v0, Landroid/view/ViewGroup;->EMPTY_STATE_SET:[I

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v0, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 2
    :goto_1
    sget-object v0, Ld0/l;->a:Ljava/util/WeakHashMap;

    .line 3
    invoke-virtual {p0, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4
    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/view/menu/g;->isCheckable()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/NavigationMenuItemView;->setCheckable(Z)V

    invoke-virtual {p1}, Landroid/support/v7/view/menu/g;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/NavigationMenuItemView;->setChecked(Z)V

    invoke-virtual {p1}, Landroid/support/v7/view/menu/g;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 5
    iget-object v0, p1, Landroid/support/v7/view/menu/g;->e:Ljava/lang/CharSequence;

    .line 6
    invoke-virtual {p0, v0}, Landroid/support/design/internal/NavigationMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/support/v7/view/menu/g;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/NavigationMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroid/support/v7/view/menu/g;->getActionView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/design/internal/NavigationMenuItemView;->setActionView(Landroid/view/View;)V

    .line 7
    iget-object v0, p1, Landroid/support/v7/view/menu/g;->q:Ljava/lang/CharSequence;

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, p1, Landroid/support/v7/view/menu/g;->r:Ljava/lang/CharSequence;

    .line 10
    invoke-static {p0, p1}, Lo0/v0;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 11
    iget-object p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->B:Landroid/support/v7/view/menu/g;

    .line 12
    iget-object v0, p1, Landroid/support/v7/view/menu/g;->e:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    .line 13
    invoke-virtual {p1}, Landroid/support/v7/view/menu/g;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_3

    iget-object p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->B:Landroid/support/v7/view/menu/g;

    invoke-virtual {p1}, Landroid/support/v7/view/menu/g;->getActionView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_4

    .line 14
    iget-object p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->z:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v1}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    iget-object p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->A:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/h$a;

    const/4 v0, -0x1

    goto :goto_3

    :cond_4
    iget-object p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->z:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v2}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    iget-object p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->A:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/h$a;

    const/4 v0, -0x2

    :goto_3
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->A:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    return-void
.end method

.method public getItemData()Landroid/support/v7/view/menu/g;
    .registers 2

    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->B:Landroid/support/v7/view/menu/g;

    return-object v0
.end method

.method public final onCreateDrawableState(I)[I
    .registers 3

    add-int/lit8 p1, p1, 0x1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onCreateDrawableState(I)[I

    move-result-object p1

    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->B:Landroid/support/v7/view/menu/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/view/menu/g;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->B:Landroid/support/v7/view/menu/g;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/g;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/support/design/internal/NavigationMenuItemView;->G:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method public setCheckable(Z)V
    .registers 4

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    iget-boolean v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->y:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->y:Z

    iget-object p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->F:Landroid/support/design/internal/NavigationMenuItemView$a;

    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->z:Landroid/widget/CheckedTextView;

    const/16 v1, 0x800

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Ld0/b;->b:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p1, v0, v1}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .registers 3

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->z:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    return-void
.end method

.method public setHorizontalPadding(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p1, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-boolean v1, p0, Landroid/support/design/internal/NavigationMenuItemView;->D:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lx/a;->d(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuItemView;->C:Landroid/content/res/ColorStateList;

    .line 1
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 2
    :cond_1
    iget v1, p0, Landroid/support/design/internal/NavigationMenuItemView;->w:I

    invoke-virtual {p1, v0, v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1

    :cond_2
    iget-boolean v1, p0, Landroid/support/design/internal/NavigationMenuItemView;->x:Z

    if-eqz v1, :cond_4

    iget-object p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->E:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070085

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 3
    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 4
    iput-object p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->E:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3

    iget v1, p0, Landroid/support/design/internal/NavigationMenuItemView;->w:I

    invoke-virtual {p1, v0, v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    iget-object p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->E:Landroid/graphics/drawable/Drawable;

    :cond_4
    :goto_1
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->z:Landroid/widget/CheckedTextView;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, p1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIconPadding(I)V
    .registers 3

    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->z:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .registers 2

    iput-object p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->C:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->D:Z

    iget-object p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->B:Landroid/support/v7/view/menu/g;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/support/v7/view/menu/g;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/design/internal/NavigationMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public setNeedsEmptyIcon(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->x:Z

    return-void
.end method

.method public setTextAppearance(I)V
    .registers 3

    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->z:Landroid/widget/CheckedTextView;

    invoke-static {v0, p1}, Lg0/o;->f(Landroid/widget/TextView;I)V

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->z:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->z:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
