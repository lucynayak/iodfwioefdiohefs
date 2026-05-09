.class public final Landroid/support/v7/view/menu/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/support/v7/view/menu/i$a;


# instance fields
.field public b:Landroid/support/v7/view/menu/e;

.field public c:Lh0/e;

.field public d:Landroid/support/v7/view/menu/c;


# direct methods
.method public constructor <init>(Landroid/support/v7/view/menu/e;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v7/view/menu/f;->b:Landroid/support/v7/view/menu/e;

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/view/menu/e;Z)V
    .registers 3

    if-nez p2, :cond_0

    iget-object p2, p0, Landroid/support/v7/view/menu/f;->b:Landroid/support/v7/view/menu/e;

    if-ne p1, p2, :cond_1

    :cond_0
    iget-object p1, p0, Landroid/support/v7/view/menu/f;->c:Lh0/e;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    return-void
.end method

.method public final b(Landroid/support/v7/view/menu/e;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object p1, p0, Landroid/support/v7/view/menu/f;->b:Landroid/support/v7/view/menu/e;

    iget-object v0, p0, Landroid/support/v7/view/menu/f;->d:Landroid/support/v7/view/menu/c;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/c;->d()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/c$a;

    .line 1
    invoke-virtual {v0, p2}, Landroid/support/v7/view/menu/c$a;->c(I)Landroid/support/v7/view/menu/g;

    move-result-object p2

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p2, v0}, Landroid/support/v7/view/menu/e;->s(Landroid/view/MenuItem;I)Z

    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 4

    iget-object p1, p0, Landroid/support/v7/view/menu/f;->d:Landroid/support/v7/view/menu/c;

    iget-object v0, p0, Landroid/support/v7/view/menu/f;->b:Landroid/support/v7/view/menu/e;

    iget-object p1, p1, Landroid/support/v7/view/menu/c;->f:Landroid/support/v7/view/menu/i$a;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/support/v7/view/menu/i$a;->a(Landroid/support/v7/view/menu/e;Z)V

    :cond_0
    return-void
.end method

.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6

    const/16 v0, 0x52

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Landroid/support/v7/view/menu/f;->c:Lh0/e;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    return v1

    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/view/menu/f;->c:Lh0/e;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p3}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p2, p0, Landroid/support/v7/view/menu/f;->b:Landroid/support/v7/view/menu/e;

    invoke-virtual {p2, v1}, Landroid/support/v7/view/menu/e;->d(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return v1

    :cond_2
    iget-object p1, p0, Landroid/support/v7/view/menu/f;->b:Landroid/support/v7/view/menu/e;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/support/v7/view/menu/e;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p1

    return p1
.end method
