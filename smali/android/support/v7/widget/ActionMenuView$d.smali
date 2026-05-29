.class public final Landroid/support/v7/widget/ActionMenuView$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/view/menu/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic b:Landroid/support/v7/widget/ActionMenuView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/ActionMenuView;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView$d;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/view/menu/e;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView$d;->b:Landroid/support/v7/widget/ActionMenuView;

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuView;->w:Landroid/support/v7/view/menu/e$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/support/v7/view/menu/e$a;->a(Landroid/support/v7/view/menu/e;)V

    :cond_0
    return-void
.end method

.method public final b(Landroid/support/v7/view/menu/e;Landroid/view/MenuItem;)Z
    .registers 3

    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuView$d;->b:Landroid/support/v7/widget/ActionMenuView;

    iget-object p1, p1, Landroid/support/v7/widget/ActionMenuView;->B:Landroid/support/v7/widget/ActionMenuView$e;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    check-cast p1, Landroid/support/v7/widget/Toolbar$a;

    iget-object p1, p1, Landroid/support/v7/widget/Toolbar$a;->a:Landroid/support/v7/widget/Toolbar;

    iget-object p1, p1, Landroid/support/v7/widget/Toolbar;->H:Landroid/support/v7/widget/Toolbar$e;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/support/v7/widget/Toolbar$e;->a()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/4 p2, 0x1

    :cond_1
    return p2
.end method
