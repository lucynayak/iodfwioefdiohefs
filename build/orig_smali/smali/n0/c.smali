.class public Ln0/c;
.super Ln0/b;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln0/c$b;,
        Ln0/c$a;,
        Ln0/c$c;,
        Ln0/c$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln0/b<",
        "Ly/b;",
        ">;",
        "Landroid/view/MenuItem;"
    }
.end annotation


# instance fields
.field public e:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ly/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ln0/b;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final collapseActionView()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/b;

    invoke-interface {v0}, Ly/b;->collapseActionView()Z

    move-result v0

    return v0
.end method

.method public final expandActionView()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/b;

    invoke-interface {v0}, Ly/b;->expandActionView()Z

    move-result v0

    return v0
.end method

.method public final getActionProvider()Landroid/view/ActionProvider;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/b;

    invoke-interface {v0}, Ly/b;->a()Ld0/c;

    move-result-object v0

    instance-of v1, v0, Ln0/c$a;

    if-eqz v1, :cond_0

    check-cast v0, Ln0/c$a;

    iget-object v0, v0, Ln0/c$a;->b:Landroid/view/ActionProvider;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getActionView()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/b;

    invoke-interface {v0}, Ly/b;->getActionView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Ln0/c$b;

    if-eqz v1, :cond_0

    check-cast v0, Ln0/c$b;

    iget-object v0, v0, Ln0/c$b;->b:Landroid/view/CollapsibleActionView;

    check-cast v0, Landroid/view/View;

    :cond_0
    return-object v0
.end method

.method public final getAlphabeticModifiers()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/b;

    invoke-interface {v0}, Ly/b;->getAlphabeticModifiers()I

    move-result v0

    return v0
.end method

.method public final getAlphabeticShortcut()C
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/b;

    invoke-interface {v0}, Landroid/view/MenuItem;->getAlphabeticShortcut()C

    move-result v0

    return v0
.end method

.method public final getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/b;

    invoke-interface {v0}, Ly/b;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getGroupId()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/b;

    invoke-interface {v0}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    return v0
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/b;

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final getIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/b;

    invoke-interface {v0}, Ly/b;->getIconTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public final getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/b;

    invoke-interface {v0}, Ly/b;->getIconTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public final getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/b;

    invoke-interface {v0}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/b;

    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    return v0
.end method

.method public final getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/b;

    invoke-interface {v0}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getNumericModifiers()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/b;

    invoke-interface {v0}, Ly/b;->getNumericModifiers()I

    move-result v0

    return v0
.end method

.method public final getNumericShortcut()C
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/b;

    invoke-interface {v0}, Landroid/view/MenuItem;->getNumericShortcut()C

    move-result v0

    return v0
.end method

.method public final getOrder()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/b;

    invoke-interface {v0}, Landroid/view/MenuItem;->getOrder()I

    move-result v0

    return v0
.end method

.method public final getSubMenu()Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/b;

    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v0

    invoke-virtual {p0, v0}, Ln0/b;->i(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/b;

    invoke-interface {v0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/b;

    invoke-interface {v0}, Landroid/view/MenuItem;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getTooltipText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/b;

    invoke-interface {v0}, Ly/b;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final hasSubMenu()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/b;

    invoke-interface {v0}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v0

    return v0
.end method

.method public final isActionViewExpanded()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/b;

    invoke-interface {v0}, Ly/b;->isActionViewExpanded()Z

    move-result v0

    return v0
.end method

.method public final isCheckable()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/b;

    invoke-interface {v0}, Landroid/view/MenuItem;->isCheckable()Z

    move-result v0

    return v0
.end method

.method public final isChecked()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/b;

    invoke-interface {v0}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    return v0
.end method

.method public final isEnabled()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/b;

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/b;

    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v0

    return v0
.end method

.method public j(Landroid/view/ActionProvider;)Ln0/c$a;
    .locals 2

    new-instance v0, Ln0/c$a;

    iget-object v1, p0, Ln0/b;->b:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Ln0/c$a;-><init>(Ln0/c;Landroid/content/Context;Landroid/view/ActionProvider;)V

    return-object v0
.end method

.method public final setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/b;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ln0/c;->j(Landroid/view/ActionProvider;)Ln0/c$a;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, p1}, Ly/b;->b(Ld0/c;)Ly/b;

    return-object p0
.end method

.method public final setActionView(I)Landroid/view/MenuItem;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/b;

    invoke-interface {v0, p1}, Ly/b;->setActionView(I)Landroid/view/MenuItem;

    iget-object p1, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast p1, Ly/b;

    invoke-interface {p1}, Ly/b;->getActionView()Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Landroid/view/CollapsibleActionView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/b;

    new-instance v1, Ln0/c$b;

    invoke-direct {v1, p1}, Ln0/c$b;-><init>(Landroid/view/View;)V

    invoke-interface {v0, v1}, Ly/b;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    :cond_0
    return-object p0
.end method

.method public final setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 1

    instance-of v0, p1, Landroid/view/CollapsibleActionView;

    if-eqz v0, :cond_0

    new-instance v0, Ln0/c$b;

    invoke-direct {v0, p1}, Ln0/c$b;-><init>(Landroid/view/View;)V

    move-object p1, v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/b;

    invoke-interface {v0, p1}, Ly/b;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/b;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setAlphabeticShortcut(CI)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/b;

    invoke-interface {v0, p1, p2}, Ly/b;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setCheckable(Z)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/b;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setChecked(Z)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/b;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/b;

    invoke-interface {v0, p1}, Ly/b;->setContentDescription(Ljava/lang/CharSequence;)Ly/b;

    return-object p0
.end method

.method public final setEnabled(Z)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/b;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setIcon(I)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/b;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/b;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/b;

    invoke-interface {v0, p1}, Ly/b;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/b;

    invoke-interface {v0, p1}, Ly/b;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/b;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/b;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setNumericShortcut(C)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setNumericShortcut(CI)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/b;

    invoke-interface {v0, p1, p2}, Ly/b;->setNumericShortcut(CI)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/b;

    if-eqz p1, :cond_0

    new-instance v1, Ln0/c$c;

    invoke-direct {v1, p0, p1}, Ln0/c$c;-><init>(Ln0/c;Landroid/view/MenuItem$OnActionExpandListener;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/b;

    if-eqz p1, :cond_0

    new-instance v1, Ln0/c$d;

    invoke-direct {v1, p0, p1}, Ln0/c$d;-><init>(Ln0/c;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setShortcut(CC)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/b;

    invoke-interface {v0, p1, p2}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setShortcut(CCII)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/b;

    invoke-interface {v0, p1, p2, p3, p4}, Ly/b;->setShortcut(CCII)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setShowAsAction(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/b;

    invoke-interface {v0, p1}, Ly/b;->setShowAsAction(I)V

    return-void
.end method

.method public final setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/b;

    invoke-interface {v0, p1}, Ly/b;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setTitle(I)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/b;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/b;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/b;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/b;

    invoke-interface {v0, p1}, Ly/b;->setTooltipText(Ljava/lang/CharSequence;)Ly/b;

    return-object p0
.end method

.method public final setVisible(Z)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/b;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method
