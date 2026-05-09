.class public final Lk1/c;
.super Landroid/support/v4/app/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk1/c$b;
    }
.end annotation


# static fields
.field public static k0:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# instance fields
.field public volatile e0:Ljava/util/concurrent/ScheduledFuture;

.field public f0:Landroid/widget/TextView;

.field public volatile g0:Lk1/c$b;

.field public h0:Landroid/app/Dialog;

.field public i0:Landroid/widget/ProgressBar;

.field public j0:Ll1/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/app/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final D(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/support/v4/app/f;->D(Landroid/os/Bundle;)V

    iget-object v0, p0, Lk1/c;->g0:Lk1/c$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lk1/c;->g0:Lk1/c$b;

    const-string v1, "request_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public final Z()Landroid/app/Dialog;
    .registers 10

    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/support/v4/app/g;->c()Landroid/support/v4/app/h;

    move-result-object v1

    const v2, 0x7f070019

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lk1/c;->h0:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/support/v4/app/g;->c()Landroid/support/v4/app/h;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09003a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lk1/c;->i0:Landroid/widget/ProgressBar;

    const v1, 0x7f090039

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lk1/c;->f0:Landroid/widget/TextView;

    const v1, 0x7f09002c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v3, Lk1/a;

    invoke-direct {v3, p0}, Lk1/a;-><init>(Lk1/c;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090038

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f080011

    invoke-virtual {p0, v3}, Landroid/support/v4/app/g;->m(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f090037

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f08000f

    invoke-virtual {p0, v3}, Landroid/support/v4/app/g;->m(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lk1/c;->h0:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1
    iget-object v0, p0, Lk1/c;->j0:Ll1/a;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v1, v0, Ll1/c;

    if-eqz v1, :cond_1

    check-cast v0, Ll1/c;

    invoke-static {v0}, La3/r0;->m(Ll1/c;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_0

    :cond_1
    instance-of v1, v0, Ll1/g;

    if-eqz v1, :cond_2

    check-cast v0, Ll1/g;

    invoke-static {v0}, La3/r0;->n(Ll1/g;)Landroid/os/Bundle;

    move-result-object v2

    :cond_2
    :goto_0
    move-object v6, v2

    if-eqz v6, :cond_3

    .line 2
    invoke-virtual {v6}, Landroid/os/BaseBundle;->size()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    new-instance v0, Le1/o;

    const/4 v1, 0x0

    const-string v2, ""

    const-string v3, "Failed to get share content"

    invoke-direct {v0, v1, v2, v3}, Le1/o;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lk1/c;->b0(Le1/o;)V

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lr0/e;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    sget-object v1, Le1/r;->a:Ljava/lang/Object;

    .line 4
    invoke-static {}, Lr0/e;->k()V

    sget-object v1, Le1/r;->b:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "access_token"

    invoke-virtual {v6, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Le1/u;

    const/4 v4, 0x0

    sget-object v7, Le1/z;->d:Le1/z;

    new-instance v8, Lk1/b;

    invoke-direct {v8, p0}, Lk1/b;-><init>(Lk1/c;)V

    const-string v5, "device/share"

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Le1/u;-><init>(Le1/a;Ljava/lang/String;Landroid/os/Bundle;Le1/z;Le1/u$c;)V

    invoke-virtual {v0}, Le1/u;->e()Le1/w;

    .line 6
    iget-object v0, p0, Lk1/c;->h0:Landroid/app/Dialog;

    return-object v0

    .line 7
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No Client Token found, please set the Client Token."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b0(Le1/o;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/app/g;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/support/v4/app/g;->r:Landroid/support/v4/app/k;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v1, Landroid/support/v4/app/d;

    invoke-direct {v1, v0}, Landroid/support/v4/app/d;-><init>(Landroid/support/v4/app/k;)V

    .line 5
    new-instance v0, Landroid/support/v4/app/d$a;

    const/4 v2, 0x3

    invoke-direct {v0, v2, p0}, Landroid/support/v4/app/d$a;-><init>(ILandroid/support/v4/app/g;)V

    invoke-virtual {v1, v0}, Landroid/support/v4/app/d;->j(Landroid/support/v4/app/d$a;)V

    .line 6
    invoke-virtual {v1}, Landroid/support/v4/app/d;->l()I

    .line 7
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "error"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 8
    invoke-virtual {p0}, Landroid/support/v4/app/g;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/app/g;->c()Landroid/support/v4/app/h;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public final c0(Lk1/c$b;)V
    .registers 6

    iput-object p1, p0, Lk1/c;->g0:Lk1/c$b;

    iget-object v0, p0, Lk1/c;->f0:Landroid/widget/TextView;

    .line 1
    iget-object v1, p1, Lk1/c$b;->c:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lk1/c;->f0:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lk1/c;->i0:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    const-class v0, Lk1/c;

    monitor-enter v0

    :try_start_0
    sget-object v0, Lk1/c;->k0:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v0, Lk1/c;->k0:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    :cond_0
    sget-object v0, Lk1/c;->k0:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-class v1, Lk1/c;

    monitor-exit v1

    .line 4
    new-instance v1, Lk1/c$a;

    invoke-direct {v1, p0}, Lk1/c$a;-><init>(Lk1/c;)V

    .line 5
    iget-wide v2, p1, Lk1/c$b;->b:J

    .line 6
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lk1/c;->e0:Ljava/util/concurrent/ScheduledFuture;

    return-void

    :catchall_0
    move-exception p1

    .line 7
    const-class v0, Lk1/c;

    monitor-exit v0

    throw p1
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/support/v4/app/f;->onDismiss(Landroid/content/DialogInterface;)V

    iget-object p1, p0, Lk1/c;->e0:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lk1/c;->e0:Ljava/util/concurrent/ScheduledFuture;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    const/4 p1, -0x1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroid/support/v4/app/g;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/app/g;->c()Landroid/support/v4/app/h;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public final w(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    if-eqz p3, :cond_0

    const-string p1, "request_state"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lk1/c$b;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lk1/c;->c0(Lk1/c$b;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
