.class public final Landroid/arch/lifecycle/k;
.super Landroid/app/Fragment;
.source "SourceFile"


# static fields
.field public static final synthetic b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/arch/lifecycle/d$a;)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v1, v0, Landroid/arch/lifecycle/g;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/arch/lifecycle/g;

    invoke-interface {v0}, Landroid/arch/lifecycle/g;->a()Landroid/arch/lifecycle/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/f;->b(Landroid/arch/lifecycle/d$a;)V

    return-void

    :cond_0
    instance-of v1, v0, Landroid/arch/lifecycle/e;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/arch/lifecycle/e;

    invoke-interface {v0}, Landroid/arch/lifecycle/e;->a()Landroid/arch/lifecycle/d;

    move-result-object v0

    instance-of v1, v0, Landroid/arch/lifecycle/f;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/arch/lifecycle/f;

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/f;->b(Landroid/arch/lifecycle/d$a;)V

    :cond_1
    return-void
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    sget-object p1, Landroid/arch/lifecycle/d$a;->ON_CREATE:Landroid/arch/lifecycle/d$a;

    invoke-virtual {p0, p1}, Landroid/arch/lifecycle/k;->a(Landroid/arch/lifecycle/d$a;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    sget-object v0, Landroid/arch/lifecycle/d$a;->ON_DESTROY:Landroid/arch/lifecycle/d$a;

    invoke-virtual {p0, v0}, Landroid/arch/lifecycle/k;->a(Landroid/arch/lifecycle/d$a;)V

    return-void
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    sget-object v0, Landroid/arch/lifecycle/d$a;->ON_PAUSE:Landroid/arch/lifecycle/d$a;

    invoke-virtual {p0, v0}, Landroid/arch/lifecycle/k;->a(Landroid/arch/lifecycle/d$a;)V

    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    sget-object v0, Landroid/arch/lifecycle/d$a;->ON_RESUME:Landroid/arch/lifecycle/d$a;

    invoke-virtual {p0, v0}, Landroid/arch/lifecycle/k;->a(Landroid/arch/lifecycle/d$a;)V

    return-void
.end method

.method public final onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    sget-object v0, Landroid/arch/lifecycle/d$a;->ON_START:Landroid/arch/lifecycle/d$a;

    invoke-virtual {p0, v0}, Landroid/arch/lifecycle/k;->a(Landroid/arch/lifecycle/d$a;)V

    return-void
.end method

.method public final onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    sget-object v0, Landroid/arch/lifecycle/d$a;->ON_STOP:Landroid/arch/lifecycle/d$a;

    invoke-virtual {p0, v0}, Landroid/arch/lifecycle/k;->a(Landroid/arch/lifecycle/d$a;)V

    return-void
.end method
