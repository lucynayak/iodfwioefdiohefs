.class public final Landroid/support/v7/view/menu/ActionMenuItemView$a;
.super Lo0/f0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/view/menu/ActionMenuItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic k:Landroid/support/v7/view/menu/ActionMenuItemView;


# direct methods
.method public constructor <init>(Landroid/support/v7/view/menu/ActionMenuItemView;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/view/menu/ActionMenuItemView$a;->k:Landroid/support/v7/view/menu/ActionMenuItemView;

    invoke-direct {p0, p1}, Lo0/f0;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final b()Ln0/g;
    .registers 3

    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView$a;->k:Landroid/support/v7/view/menu/ActionMenuItemView;

    iget-object v0, v0, Landroid/support/v7/view/menu/ActionMenuItemView;->j:Landroid/support/v7/view/menu/ActionMenuItemView$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/support/v7/widget/a$b;

    iget-object v0, v0, Landroid/support/v7/widget/a$b;->a:Landroid/support/v7/widget/a;

    iget-object v0, v0, Landroid/support/v7/widget/a;->v:Landroid/support/v7/widget/a$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->a()Ln0/e;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public final c()Z
    .registers 4

    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView$a;->k:Landroid/support/v7/view/menu/ActionMenuItemView;

    iget-object v1, v0, Landroid/support/v7/view/menu/ActionMenuItemView;->h:Landroid/support/v7/view/menu/e$b;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroid/support/v7/view/menu/ActionMenuItemView;->e:Landroid/support/v7/view/menu/g;

    invoke-interface {v1, v0}, Landroid/support/v7/view/menu/e$b;->a(Landroid/support/v7/view/menu/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView$a;->b()Ln0/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ln0/g;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method
