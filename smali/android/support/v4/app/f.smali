.class public Landroid/support/v4/app/f;
.super Landroid/support/v4/app/g;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public V:I

.field public W:I

.field public X:Z

.field public Y:Z

.field public Z:I

.field public a0:Landroid/app/Dialog;

.field public b0:Z

.field public c0:Z

.field public d0:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/support/v4/app/g;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/f;->V:I

    iput v0, p0, Landroid/support/v4/app/f;->W:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/f;->X:Z

    iput-boolean v0, p0, Landroid/support/v4/app/f;->Y:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/f;->Z:I

    return-void
.end method


# virtual methods
.method public final A(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .registers 5

    iget-boolean v0, p0, Landroid/support/v4/app/f;->Y:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v4/app/g;->A(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/f;->Z()Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/app/f;->a0:Landroid/app/Dialog;

    if-eqz p1, :cond_3

    iget v0, p0, Landroid/support/v4/app/f;->V:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 1
    :cond_1
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x18

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    :cond_2
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 2
    :goto_0
    iget-object p1, p0, Landroid/support/v4/app/f;->a0:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Landroid/support/v4/app/g;->s:Landroid/support/v4/app/j;

    .line 3
    iget-object p1, p1, Landroid/support/v4/app/j;->b:Landroid/content/Context;

    :goto_1
    const-string v0, "layout_inflater"

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    return-object p1
.end method

.method public D(Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/f;->a0:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android:savedDialogState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    iget v0, p0, Landroid/support/v4/app/f;->V:I

    if-eqz v0, :cond_1

    const-string v1, "android:style"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    iget v0, p0, Landroid/support/v4/app/f;->W:I

    if-eqz v0, :cond_2

    const-string v1, "android:theme"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    iget-boolean v0, p0, Landroid/support/v4/app/f;->X:Z

    if-nez v0, :cond_3

    const-string v1, "android:cancelable"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3
    iget-boolean v0, p0, Landroid/support/v4/app/f;->Y:Z

    if-nez v0, :cond_4

    const-string v1, "android:showsDialog"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4
    iget v0, p0, Landroid/support/v4/app/f;->Z:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    const-string v1, "android:backStackId"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_5
    return-void
.end method

.method public final E()V
    .registers 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroid/support/v4/app/g;->E:Z

    .line 2
    iget-object v0, p0, Landroid/support/v4/app/f;->a0:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/app/f;->b0:Z

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method public final F()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroid/support/v4/app/g;->E:Z

    .line 2
    iget-object v0, p0, Landroid/support/v4/app/f;->a0:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    :cond_0
    return-void
.end method

.method public Z()Landroid/app/Dialog;
    .registers 1

    const/4 p0, 0x0

    throw p0
.end method

.method public final a0(Landroid/support/v4/app/b0;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/f;->c0:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/app/f;->d0:Z

    check-cast p1, Landroid/support/v4/app/k;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    new-instance v1, Landroid/support/v4/app/d;

    invoke-direct {v1, p1}, Landroid/support/v4/app/d;-><init>(Landroid/support/v4/app/k;)V

    .line 2
    invoke-virtual {v1, v0, p0, p2}, Landroid/support/v4/app/d;->n(ILandroid/support/v4/app/g;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Landroid/support/v4/app/d;->l()I

    return-void
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .registers 2

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 5

    iget-boolean p1, p0, Landroid/support/v4/app/f;->b0:Z

    if-nez p1, :cond_4

    .line 1
    iget-boolean p1, p0, Landroid/support/v4/app/f;->c0:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/app/f;->c0:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/f;->d0:Z

    iget-object v1, p0, Landroid/support/v4/app/f;->a0:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    iput-boolean p1, p0, Landroid/support/v4/app/f;->b0:Z

    iget v1, p0, Landroid/support/v4/app/f;->Z:I

    if-ltz v1, :cond_3

    .line 2
    iget-object p1, p0, Landroid/support/v4/app/g;->r:Landroid/support/v4/app/k;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-ltz v1, :cond_2

    .line 4
    new-instance v2, Landroid/support/v4/app/k$j;

    invoke-direct {v2, p1, v1}, Landroid/support/v4/app/k$j;-><init>(Landroid/support/v4/app/k;I)V

    invoke-virtual {p1, v2, v0}, Landroid/support/v4/app/k;->U(Landroid/support/v4/app/k$i;Z)V

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Landroid/support/v4/app/f;->Z:I

    goto :goto_0

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad id: "

    .line 7
    invoke-static {v0, v1}, La/c;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/g;->r:Landroid/support/v4/app/k;

    .line 10
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v1, Landroid/support/v4/app/d;

    invoke-direct {v1, v0}, Landroid/support/v4/app/d;-><init>(Landroid/support/v4/app/k;)V

    .line 12
    new-instance v0, Landroid/support/v4/app/d$a;

    const/4 v2, 0x3

    invoke-direct {v0, v2, p0}, Landroid/support/v4/app/d$a;-><init>(ILandroid/support/v4/app/g;)V

    invoke-virtual {v1, v0}, Landroid/support/v4/app/d;->j(Landroid/support/v4/app/d$a;)V

    .line 13
    invoke-virtual {v1, p1}, Landroid/support/v4/app/d;->m(Z)I

    :cond_4
    :goto_0
    return-void
.end method

.method public final s(Landroid/os/Bundle;)V
    .registers 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroid/support/v4/app/g;->E:Z

    .line 2
    iget-boolean v0, p0, Landroid/support/v4/app/f;->Y:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/g;->G:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/support/v4/app/f;->a0:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "DialogFragment can not be attached to a container view"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/app/g;->c()Landroid/support/v4/app/h;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Landroid/support/v4/app/f;->a0:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/f;->a0:Landroid/app/Dialog;

    iget-boolean v1, p0, Landroid/support/v4/app/f;->X:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Landroid/support/v4/app/f;->a0:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Landroid/support/v4/app/f;->a0:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    if-eqz p1, :cond_4

    const-string v0, "android:savedDialogState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object v0, p0, Landroid/support/v4/app/f;->a0:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_4
    return-void
.end method

.method public final u()V
    .registers 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroid/support/v4/app/g;->E:Z

    iget-object v1, p0, Landroid/support/v4/app/g;->s:Landroid/support/v4/app/j;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, v1, Landroid/support/v4/app/j;->a:Landroid/app/Activity;

    :goto_0
    if-eqz v1, :cond_1

    .line 3
    iput-boolean v0, p0, Landroid/support/v4/app/g;->E:Z

    .line 4
    :cond_1
    iget-boolean v0, p0, Landroid/support/v4/app/f;->d0:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/f;->c0:Z

    :cond_2
    return-void
.end method

.method public v(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/support/v4/app/g;->v(Landroid/os/Bundle;)V

    iget v0, p0, Landroid/support/v4/app/g;->y:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/app/f;->Y:Z

    if-eqz p1, :cond_1

    const-string v0, "android:style"

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/f;->V:I

    const-string v0, "android:theme"

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/f;->W:I

    const-string v0, "android:cancelable"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v4/app/f;->X:Z

    iget-boolean v0, p0, Landroid/support/v4/app/f;->Y:Z

    const-string v1, "android:showsDialog"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v4/app/f;->Y:Z

    const/4 v0, -0x1

    const-string v1, "android:backStackId"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Landroid/support/v4/app/f;->Z:I

    :cond_1
    return-void
.end method

.method public y()V
    .registers 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroid/support/v4/app/g;->E:Z

    .line 2
    iget-object v1, p0, Landroid/support/v4/app/f;->a0:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Landroid/support/v4/app/f;->b0:Z

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/f;->a0:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method public final z()V
    .registers 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroid/support/v4/app/g;->E:Z

    .line 2
    iget-boolean v1, p0, Landroid/support/v4/app/f;->d0:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/support/v4/app/f;->c0:Z

    if-nez v1, :cond_0

    iput-boolean v0, p0, Landroid/support/v4/app/f;->c0:Z

    :cond_0
    return-void
.end method
