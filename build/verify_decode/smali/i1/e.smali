.class public final Li1/e;
.super Landroid/support/v4/app/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li1/e$b;
    }
.end annotation


# static fields
.field public static final synthetic n0:I


# instance fields
.field public e0:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public f0:Landroid/widget/TextView;

.field public volatile g0:Le1/w;

.field public volatile h0:Li1/e$b;

.field public i0:Li1/h;

.field public j0:Landroid/app/Dialog;

.field public k0:Z

.field public l0:Landroid/widget/ProgressBar;

.field public volatile m0:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/f;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Li1/e;->e0:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    iput-boolean v0, p0, Li1/e;->k0:Z

    return-void
.end method

.method public static b0(Li1/e;Le1/m;)V
    .locals 3

    .line 1
    iget-object v0, p0, Li1/e;->e0:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Li1/e;->i0:Li1/h;

    .line 2
    iget-object v1, v0, Li1/r;->b:Li1/n;

    .line 3
    iget-object v1, v1, Li1/n;->j:Li1/n$d;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    .line 5
    invoke-static {v1, v2, p1, v2}, Li1/n$e;->b(Li1/n$d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Li1/n$e;

    move-result-object p1

    .line 6
    iget-object v0, v0, Li1/r;->b:Li1/n;

    invoke-virtual {v0, p1}, Li1/n;->d(Li1/n$e;)V

    .line 7
    iget-object p0, p0, Li1/e;->j0:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :goto_0
    return-void
.end method

.method public static c0(Li1/e;Ljava/lang/String;)V
    .locals 16

    invoke-static/range {p0 .. p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "fields"

    const-string v1, "id,permissions"

    invoke-virtual {v3, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Le1/u;

    new-instance v1, Le1/a;

    sget-object v0, Le1/r;->a:Ljava/lang/Object;

    .line 2
    invoke-static {}, Lr0/e;->k()V

    sget-object v9, Le1/r;->d:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v10, "0"

    move-object v7, v1

    move-object/from16 v8, p1

    .line 3
    invoke-direct/range {v7 .. v15}, Le1/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Le1/e;Ljava/util/Date;Ljava/util/Date;)V

    sget-object v4, Le1/z;->c:Le1/z;

    new-instance v5, Li1/g;

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    invoke-direct {v5, v0, v2}, Li1/g;-><init>(Li1/e;Ljava/lang/String;)V

    const-string v2, "me"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Le1/u;-><init>(Le1/a;Ljava/lang/String;Landroid/os/Bundle;Le1/z;Le1/u$c;)V

    invoke-virtual {v6}, Le1/u;->e()Le1/w;

    return-void
.end method


# virtual methods
.method public final D(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/f;->D(Landroid/os/Bundle;)V

    iget-object v0, p0, Li1/e;->h0:Li1/e$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li1/e;->h0:Li1/e$b;

    const-string v1, "request_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public final Z()Landroid/app/Dialog;
    .locals 3

    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/support/v4/app/g;->c()Landroid/support/v4/app/h;

    move-result-object v1

    const v2, 0x7f070019

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Li1/e;->j0:Landroid/app/Dialog;

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

    iput-object v1, p0, Li1/e;->l0:Landroid/widget/ProgressBar;

    const v1, 0x7f090039

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Li1/e;->f0:Landroid/widget/TextView;

    const v1, 0x7f09002c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Li1/c;

    invoke-direct {v2, p0}, Li1/c;-><init>(Li1/e;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090038

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f080011

    invoke-virtual {p0, v2}, Landroid/support/v4/app/g;->m(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Li1/e;->j0:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Li1/e;->j0:Landroid/app/Dialog;

    return-object v0
.end method

.method public final d0()V
    .locals 3

    iget-object v0, p0, Li1/e;->e0:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Li1/e;->i0:Li1/h;

    if-eqz v0, :cond_1

    .line 1
    iget-object v1, v0, Li1/r;->b:Li1/n;

    .line 2
    iget-object v1, v1, Li1/n;->j:Li1/n$d;

    const-string v2, "User canceled log in."

    .line 3
    invoke-static {v1, v2}, Li1/n$e;->a(Li1/n$d;Ljava/lang/String;)Li1/n$e;

    move-result-object v1

    iget-object v0, v0, Li1/r;->b:Li1/n;

    invoke-virtual {v0, v1}, Li1/n;->d(Li1/n$e;)V

    .line 4
    :cond_1
    iget-object v0, p0, Li1/e;->j0:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public final e0()V
    .locals 9

    iget-object v0, p0, Li1/e;->h0:Li1/e$b;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 1
    iput-wide v1, v0, Li1/e$b;->c:J

    .line 2
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Li1/e;->h0:Li1/e$b;

    .line 3
    iget-object v0, v0, Li1/e$b;->d:Ljava/lang/String;

    const-string v1, "code"

    .line 4
    invoke-virtual {v6, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Le1/u;

    const/4 v4, 0x0

    sget-object v7, Le1/z;->d:Le1/z;

    new-instance v8, Li1/f;

    invoke-direct {v8, p0}, Li1/f;-><init>(Li1/e;)V

    const-string v5, "device/login_status"

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Le1/u;-><init>(Le1/a;Ljava/lang/String;Landroid/os/Bundle;Le1/z;Le1/u$c;)V

    .line 5
    invoke-virtual {v0}, Le1/u;->e()Le1/w;

    move-result-object v0

    iput-object v0, p0, Li1/e;->g0:Le1/w;

    return-void
.end method

.method public final f0()V
    .locals 5

    .line 1
    const-class v0, Li1/h;

    monitor-enter v0

    :try_start_0
    sget-object v0, Li1/h;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v0, Li1/h;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    :cond_0
    sget-object v0, Li1/h;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-class v1, Li1/h;

    monitor-exit v1

    .line 2
    new-instance v1, Li1/e$a;

    invoke-direct {v1, p0}, Li1/e$a;-><init>(Li1/e;)V

    iget-object v2, p0, Li1/e;->h0:Li1/e$b;

    .line 3
    iget-wide v2, v2, Li1/e$b;->b:J

    .line 4
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Li1/e;->m0:Ljava/util/concurrent/ScheduledFuture;

    return-void

    :catchall_0
    move-exception v0

    .line 5
    const-class v1, Li1/h;

    monitor-exit v1

    throw v0
.end method

.method public final g0(Li1/e$b;)V
    .locals 10

    iput-object p1, p0, Li1/e;->h0:Li1/e$b;

    iget-object v0, p0, Li1/e;->f0:Landroid/widget/TextView;

    .line 1
    iget-object v1, p1, Li1/e$b;->e:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Li1/e;->f0:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Li1/e;->l0:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-wide v2, p1, Li1/e$b;->c:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-wide v6, p1, Li1/e$b;->c:J

    sub-long/2addr v2, v6

    const-wide/16 v6, 0x3e8

    iget-wide v8, p1, Li1/e$b;->b:J

    mul-long v8, v8, v6

    sub-long/2addr v2, v8

    cmp-long p1, v2, v4

    if-gez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {p0}, Li1/e;->f0()V

    return-void

    :cond_2
    invoke-virtual {p0}, Li1/e;->e0()V

    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v4/app/f;->onDismiss(Landroid/content/DialogInterface;)V

    iget-boolean p1, p0, Li1/e;->k0:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Li1/e;->d0()V

    :cond_0
    return-void
.end method

.method public final w(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Landroid/support/v4/app/g;->c()Landroid/support/v4/app/h;

    move-result-object p1

    check-cast p1, Le1/h;

    .line 1
    iget-object p1, p1, Le1/h;->l:Landroid/support/v4/app/g;

    .line 2
    check-cast p1, Li1/o;

    .line 3
    iget-object p1, p1, Li1/o;->X:Li1/n;

    .line 4
    invoke-virtual {p1}, Li1/n;->f()Li1/r;

    move-result-object p1

    check-cast p1, Li1/h;

    iput-object p1, p0, Li1/e;->i0:Li1/h;

    if-eqz p3, :cond_0

    const-string p1, "request_state"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Li1/e$b;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Li1/e;->g0(Li1/e$b;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final x()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Li1/e;->k0:Z

    iget-object v1, p0, Li1/e;->e0:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-super {p0}, Landroid/support/v4/app/g;->x()V

    iget-object v1, p0, Li1/e;->g0:Le1/w;

    if-eqz v1, :cond_0

    iget-object v1, p0, Li1/e;->g0:Le1/w;

    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    iget-object v1, p0, Li1/e;->m0:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_1

    iget-object v1, p0, Li1/e;->m0:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_1
    return-void
.end method
