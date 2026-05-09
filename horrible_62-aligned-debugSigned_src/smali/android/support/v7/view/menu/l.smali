.class public final Landroid/support/v7/view/menu/l;
.super Landroid/support/v7/view/menu/e;
.source "SourceFile"

# interfaces
.implements Landroid/view/SubMenu;


# instance fields
.field public A:Landroid/support/v7/view/menu/g;

.field public z:Landroid/support/v7/view/menu/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/view/menu/e;Landroid/support/v7/view/menu/g;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/support/v7/view/menu/e;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroid/support/v7/view/menu/l;->z:Landroid/support/v7/view/menu/e;

    iput-object p3, p0, Landroid/support/v7/view/menu/l;->A:Landroid/support/v7/view/menu/g;

    return-void
.end method


# virtual methods
.method public final e(Landroid/support/v7/view/menu/g;)Z
    .registers 3

    iget-object v0, p0, Landroid/support/v7/view/menu/l;->z:Landroid/support/v7/view/menu/e;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/e;->e(Landroid/support/v7/view/menu/g;)Z

    move-result p1

    return p1
.end method

.method public final f(Landroid/support/v7/view/menu/e;Landroid/view/MenuItem;)Z
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/support/v7/view/menu/e;->f(Landroid/support/v7/view/menu/e;Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/view/menu/l;->z:Landroid/support/v7/view/menu/e;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/view/menu/e;->f(Landroid/support/v7/view/menu/e;Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final g(Landroid/support/v7/view/menu/g;)Z
    .registers 3

    iget-object v0, p0, Landroid/support/v7/view/menu/l;->z:Landroid/support/v7/view/menu/e;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/e;->g(Landroid/support/v7/view/menu/g;)Z

    move-result p1

    return p1
.end method

.method public final getItem()Landroid/view/MenuItem;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/view/menu/l;->A:Landroid/support/v7/view/menu/g;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Landroid/support/v7/view/menu/l;->A:Landroid/support/v7/view/menu/g;

    if-eqz v0, :cond_0

    .line 1
    iget v0, v0, Landroid/support/v7/view/menu/g;->a:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android:menu:actionviewstates"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final l()Landroid/support/v7/view/menu/e;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/view/menu/l;->z:Landroid/support/v7/view/menu/e;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/e;->l()Landroid/support/v7/view/menu/e;

    move-result-object v0

    return-object v0
.end method

.method public final n()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v7/view/menu/l;->z:Landroid/support/v7/view/menu/e;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/e;->n()Z

    move-result v0

    return v0
.end method

.method public final o()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v7/view/menu/l;->z:Landroid/support/v7/view/menu/e;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/e;->o()Z

    move-result v0

    return v0
.end method

.method public final p()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v7/view/menu/l;->z:Landroid/support/v7/view/menu/e;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/e;->p()Z

    move-result v0

    return v0
.end method

.method public final setGroupDividerEnabled(Z)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/view/menu/l;->z:Landroid/support/v7/view/menu/e;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/e;->setGroupDividerEnabled(Z)V

    return-void
.end method

.method public final setHeaderIcon(I)Landroid/view/SubMenu;
    .registers 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    .line 1
    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/view/menu/e;->z(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public final setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .registers 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    .line 2
    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/view/menu/e;->z(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public final setHeaderTitle(I)Landroid/view/SubMenu;
    .registers 8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    .line 1
    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/view/menu/e;->z(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public final setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 8

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    .line 2
    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/view/menu/e;->z(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public final setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .registers 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/view/menu/e;->z(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public final setIcon(I)Landroid/view/SubMenu;
    .registers 3

    iget-object v0, p0, Landroid/support/v7/view/menu/l;->A:Landroid/support/v7/view/menu/g;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/g;->setIcon(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .registers 3

    iget-object v0, p0, Landroid/support/v7/view/menu/l;->A:Landroid/support/v7/view/menu/g;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/g;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setQwertyMode(Z)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/view/menu/l;->z:Landroid/support/v7/view/menu/e;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/e;->setQwertyMode(Z)V

    return-void
.end method

.method public final y(Landroid/support/v7/view/menu/e$a;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/view/menu/l;->z:Landroid/support/v7/view/menu/e;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/e;->y(Landroid/support/v7/view/menu/e$a;)V

    return-void
.end method
