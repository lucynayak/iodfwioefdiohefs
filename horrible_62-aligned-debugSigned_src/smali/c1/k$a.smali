.class public final Lc1/k$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc1/k;->onActivityPaused(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc1/k;

.field public final synthetic b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lc1/k;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lc1/k$a;->a:Lc1/k;

    iput-object p2, p0, Lc1/k$a;->b:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, [Ljava/lang/Void;

    const-wide/16 v0, 0x1f4

    .line 1
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Ld1/a;->h(Ljava/lang/Throwable;)V

    :goto_0
    iget-object p1, p0, Lc1/k$a;->a:Lc1/k;

    .line 2
    iget-boolean v0, p1, Lc1/k;->a:Z

    if-eqz v0, :cond_0

    .line 3
    iget-boolean v0, p1, Lc1/k;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p1, Lc1/k;->a:Z

    .line 5
    :try_start_1
    new-instance p1, Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lc1/k$a;->b:Landroid/app/Activity;

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v0, p0, Lc1/k$a;->a:Lc1/k;

    .line 6
    iget-object v0, v0, Lc1/k;->b:Lc1/k$b;

    .line 7
    check-cast v0, Lc1/f;

    invoke-virtual {v0, p1}, Lc1/f;->a(Ljava/lang/ref/WeakReference;)V

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-static {p1}, Ld1/a;->h(Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method
