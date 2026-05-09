.class public Lh0/o;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Lh0/g;


# instance fields
.field public b:Lh0/i;

.field public final c:Lh0/o$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x7f0300cd

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance p1, Lh0/o$a;

    invoke-direct {p1, p0}, Lh0/o$a;-><init>(Lh0/o;)V

    iput-object p1, p0, Lh0/o;->c:Lh0/o$a;

    invoke-virtual {p0}, Lh0/o;->a()Lh0/h;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lh0/h;->g(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lh0/o;->a()Lh0/h;

    move-result-object p1

    invoke-virtual {p1}, Lh0/h;->d()Z

    return-void
.end method


# virtual methods
.method public final a()Lh0/h;
    .locals 3

    iget-object v0, p0, Lh0/o;->b:Lh0/i;

    if-nez v0, :cond_0

    .line 1
    new-instance v0, Lh0/i;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lh0/i;-><init>(Landroid/content/Context;Landroid/view/Window;Lh0/g;)V

    .line 2
    iput-object v0, p0, Lh0/o;->b:Lh0/i;

    :cond_0
    iget-object v0, p0, Lh0/o;->b:Lh0/i;

    return-object v0
.end method

.method public final addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-virtual {p0}, Lh0/o;->a()Lh0/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lh0/h;->c(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c(Landroid/view/KeyEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lh0/o;->c:Lh0/o$a;

    invoke-static {v1, v0, p0, p1}, Ld0/d;->b(Ld0/d$a;Landroid/view/View;Landroid/view/Window$Callback;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final e()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 0

    return-void
.end method

.method public final findViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lh0/o;->a()Lh0/h;

    move-result-object v0

    check-cast v0, Lh0/i;

    invoke-virtual {v0}, Lh0/i;->u()V

    iget-object v0, v0, Lh0/i;->c:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final invalidateOptionsMenu()V
    .locals 1

    invoke-virtual {p0}, Lh0/o;->a()Lh0/h;

    move-result-object v0

    invoke-virtual {v0}, Lh0/h;->f()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Lh0/o;->a()Lh0/h;

    move-result-object v0

    invoke-virtual {v0}, Lh0/h;->e()V

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lh0/o;->a()Lh0/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lh0/h;->g(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    invoke-virtual {p0}, Lh0/o;->a()Lh0/h;

    move-result-object v0

    invoke-virtual {v0}, Lh0/h;->h()V

    return-void
.end method

.method public final setContentView(I)V
    .locals 1

    invoke-virtual {p0}, Lh0/o;->a()Lh0/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lh0/h;->j(I)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lh0/o;->a()Lh0/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lh0/h;->k(Landroid/view/View;)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-virtual {p0}, Lh0/o;->a()Lh0/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lh0/h;->l(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final setTitle(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(I)V

    invoke-virtual {p0}, Lh0/o;->a()Lh0/h;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lh0/h;->m(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lh0/o;->a()Lh0/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lh0/h;->m(Ljava/lang/CharSequence;)V

    return-void
.end method
