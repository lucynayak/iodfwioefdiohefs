.class public Ln0/f;
.super Ln0/b;
.source "SourceFile"

# interfaces
.implements Landroid/view/Menu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln0/b<",
        "Ly/a;",
        ">;",
        "Landroid/view/Menu;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ly/a;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ln0/b;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final add(I)Landroid/view/MenuItem;
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/a;

    invoke-interface {v0, p1}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Ln0/b;->h(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public final add(IIII)Landroid/view/MenuItem;
    .registers 6

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/a;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Ln0/b;->h(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public final add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 6

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/a;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Ln0/b;->h(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public final add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/a;

    invoke-interface {v0, p1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Ln0/b;->h(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public final addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .registers 21

    move-object v0, p0

    move-object/from16 v1, p8

    if-eqz v1, :cond_0

    array-length v2, v1

    new-array v2, v2, [Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v3, v0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v3, Ly/a;

    move v4, p1

    move v5, p2

    move v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move-object v11, v2

    invoke-interface/range {v3 .. v11}, Landroid/view/Menu;->addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I

    move-result v3

    if-eqz v2, :cond_1

    const/4 v4, 0x0

    array-length v5, v2

    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v6, v2, v4

    invoke-virtual {p0, v6}, Ln0/b;->h(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v6

    aput-object v6, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    return v3
.end method

.method public final addSubMenu(I)Landroid/view/SubMenu;
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/a;

    invoke-interface {v0, p1}, Landroid/view/Menu;->addSubMenu(I)Landroid/view/SubMenu;

    move-result-object p1

    invoke-virtual {p0, p1}, Ln0/b;->i(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public final addSubMenu(IIII)Landroid/view/SubMenu;
    .registers 6

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/a;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object p1

    invoke-virtual {p0, p1}, Ln0/b;->i(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public final addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 6

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/a;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    invoke-virtual {p0, p1}, Ln0/b;->i(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public final addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/a;

    invoke-interface {v0, p1}, Landroid/view/Menu;->addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    invoke-virtual {p0, p1}, Ln0/b;->i(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public final clear()V
    .registers 2

    .line 1
    iget-object v0, p0, Ln0/b;->c:Lc0/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc0/j;->clear()V

    :cond_0
    iget-object v0, p0, Ln0/b;->d:Lc0/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lc0/j;->clear()V

    .line 2
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/a;

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    return-void
.end method

.method public final close()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/a;

    invoke-interface {v0}, Landroid/view/Menu;->close()V

    return-void
.end method

.method public final findItem(I)Landroid/view/MenuItem;
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/a;

    invoke-interface {v0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Ln0/b;->h(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public final getItem(I)Landroid/view/MenuItem;
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/a;

    invoke-interface {v0, p1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Ln0/b;->h(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public final hasVisibleItems()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/a;

    invoke-interface {v0}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v0

    return v0
.end method

.method public final isShortcutKey(ILandroid/view/KeyEvent;)Z
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/a;

    invoke-interface {v0, p1, p2}, Landroid/view/Menu;->isShortcutKey(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final performIdentifierAction(II)Z
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/a;

    invoke-interface {v0, p1, p2}, Landroid/view/Menu;->performIdentifierAction(II)Z

    move-result p1

    return p1
.end method

.method public final performShortcut(ILandroid/view/KeyEvent;I)Z
    .registers 5

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/a;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p1

    return p1
.end method

.method public final removeGroup(I)V
    .registers 5

    .line 1
    iget-object v0, p0, Ln0/b;->c:Lc0/a;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lc0/a;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Lc0/g$c;

    invoke-virtual {v0}, Lc0/g$c;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    move-object v1, v0

    check-cast v1, Lc0/g$a;

    invoke-virtual {v1}, Lc0/g$a;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lc0/g$a;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->getGroupId()I

    move-result v2

    if-ne p1, v2, :cond_1

    invoke-virtual {v1}, Lc0/g$a;->remove()V

    goto :goto_0

    .line 2
    :cond_2
    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/a;

    invoke-interface {v0, p1}, Landroid/view/Menu;->removeGroup(I)V

    return-void
.end method

.method public final removeItem(I)V
    .registers 5

    .line 1
    iget-object v0, p0, Ln0/b;->c:Lc0/a;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lc0/a;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Lc0/g$c;

    invoke-virtual {v0}, Lc0/g$c;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    move-object v1, v0

    check-cast v1, Lc0/g$a;

    invoke-virtual {v1}, Lc0/g$a;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lc0/g$a;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    if-ne p1, v2, :cond_1

    invoke-virtual {v1}, Lc0/g$a;->remove()V

    .line 2
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/a;

    invoke-interface {v0, p1}, Landroid/view/Menu;->removeItem(I)V

    return-void
.end method

.method public final setGroupCheckable(IZZ)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/a;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/Menu;->setGroupCheckable(IZZ)V

    return-void
.end method

.method public final setGroupEnabled(IZ)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/a;

    invoke-interface {v0, p1, p2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    return-void
.end method

.method public final setGroupVisible(IZ)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/a;

    invoke-interface {v0, p1, p2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    return-void
.end method

.method public final setQwertyMode(Z)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/a;

    invoke-interface {v0, p1}, Landroid/view/Menu;->setQwertyMode(Z)V

    return-void
.end method

.method public final size()I
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Ly/a;

    invoke-interface {v0}, Landroid/view/Menu;->size()I

    move-result v0

    return v0
.end method
