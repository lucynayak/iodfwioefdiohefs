.class public final Ln0/d$a;
.super Ln0/c$a;
.source "SourceFile"

# interfaces
.implements Landroid/view/ActionProvider$VisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public d:Ld0/c$a;


# direct methods
.method public constructor <init>(Ln0/d;Landroid/content/Context;Landroid/view/ActionProvider;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Ln0/c$a;-><init>(Ln0/c;Landroid/content/Context;Landroid/view/ActionProvider;)V

    return-void
.end method


# virtual methods
.method public final b()Z
    .registers 2

    iget-object v0, p0, Ln0/c$a;->b:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->isVisible()Z

    move-result v0

    return v0
.end method

.method public final d(Landroid/view/MenuItem;)Landroid/view/View;
    .registers 3

    iget-object v0, p0, Ln0/c$a;->b:Landroid/view/ActionProvider;

    invoke-virtual {v0, p1}, Landroid/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final g()Z
    .registers 2

    iget-object v0, p0, Ln0/c$a;->b:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->overridesItemVisibility()Z

    move-result v0

    return v0
.end method

.method public final h(Ld0/c$a;)V
    .registers 2

    iput-object p1, p0, Ln0/d$a;->d:Ld0/c$a;

    iget-object p1, p0, Ln0/c$a;->b:Landroid/view/ActionProvider;

    invoke-virtual {p1, p0}, Landroid/view/ActionProvider;->setVisibilityListener(Landroid/view/ActionProvider$VisibilityListener;)V

    return-void
.end method

.method public final onActionProviderVisibilityChanged(Z)V
    .registers 3

    iget-object p1, p0, Ln0/d$a;->d:Ld0/c$a;

    if-eqz p1, :cond_0

    check-cast p1, Landroid/support/v7/view/menu/g$a;

    .line 1
    iget-object p1, p1, Landroid/support/v7/view/menu/g$a;->a:Landroid/support/v7/view/menu/g;

    iget-object p1, p1, Landroid/support/v7/view/menu/g;->n:Landroid/support/v7/view/menu/e;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p1, Landroid/support/v7/view/menu/e;->h:Z

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/e;->r(Z)V

    :cond_0
    return-void
.end method
