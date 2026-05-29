.class public final Ln0/h;
.super Ln0/f;
.source "SourceFile"

# interfaces
.implements Landroid/view/SubMenu;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ly/c;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ln0/f;-><init>(Landroid/content/Context;Ly/a;)V

    return-void
.end method


# virtual methods
.method public final clearHeader()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/c;

    .line 2
    invoke-interface {v0}, Landroid/view/SubMenu;->clearHeader()V

    return-void
.end method

.method public final getItem()Landroid/view/MenuItem;
    .registers 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/c;

    .line 2
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Ln0/b;->h(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public final setHeaderIcon(I)Landroid/view/SubMenu;
    .registers 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/c;

    .line 2
    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setHeaderIcon(I)Landroid/view/SubMenu;

    return-object p0
.end method

.method public final setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .registers 3

    .line 3
    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/c;

    .line 4
    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;

    return-object p0
.end method

.method public final setHeaderTitle(I)Landroid/view/SubMenu;
    .registers 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/c;

    .line 2
    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setHeaderTitle(I)Landroid/view/SubMenu;

    return-object p0
.end method

.method public final setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 3

    .line 3
    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/c;

    .line 4
    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    return-object p0
.end method

.method public final setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .registers 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/c;

    .line 2
    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;

    return-object p0
.end method

.method public final setIcon(I)Landroid/view/SubMenu;
    .registers 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/c;

    .line 2
    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    return-object p0
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .registers 3

    .line 3
    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/c;

    .line 4
    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;

    return-object p0
.end method
