.class public final Lh0/i$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/view/menu/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh0/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "h"
.end annotation


# instance fields
.field public final synthetic b:Lh0/i;


# direct methods
.method public constructor <init>(Lh0/i;)V
    .locals 0

    iput-object p1, p0, Lh0/i$h;->b:Lh0/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/view/menu/e;Z)V
    .locals 4

    invoke-virtual {p1}, Landroid/support/v7/view/menu/e;->l()Landroid/support/v7/view/menu/e;

    move-result-object v0

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lh0/i$h;->b:Lh0/i;

    if-eqz v2, :cond_1

    move-object p1, v0

    :cond_1
    invoke-virtual {v3, p1}, Lh0/i;->v(Landroid/view/Menu;)Lh0/i$g;

    move-result-object p1

    if-eqz p1, :cond_3

    if-eqz v2, :cond_2

    iget-object p2, p0, Lh0/i$h;->b:Lh0/i;

    iget v2, p1, Lh0/i$g;->a:I

    invoke-virtual {p2, v2, p1, v0}, Lh0/i;->n(ILh0/i$g;Landroid/view/Menu;)V

    iget-object p2, p0, Lh0/i$h;->b:Lh0/i;

    invoke-virtual {p2, p1, v1}, Lh0/i;->p(Lh0/i$g;Z)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lh0/i$h;->b:Lh0/i;

    invoke-virtual {v0, p1, p2}, Lh0/i;->p(Lh0/i$g;Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final b(Landroid/support/v7/view/menu/e;)Z
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lh0/i$h;->b:Lh0/i;

    iget-boolean v1, v0, Lh0/i;->x:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lh0/i;->x()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lh0/i$h;->b:Lh0/i;

    iget-boolean v1, v1, Lh0/i;->G:Z

    if-nez v1, :cond_0

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
