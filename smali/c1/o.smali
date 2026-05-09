.class public final Lc1/o;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lc1/b;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .registers 2

    iput-object p1, p0, Lc1/o;->b:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    :try_start_0
    iget-object p1, p0, Lc1/o;->a:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lc1/o;->b:Ljava/lang/ref/WeakReference;

    invoke-static {v0, p1}, Lc1/m;->a(Ljava/lang/ref/WeakReference;Ljava/lang/String;)Lc1/b;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Ld1/a;->h(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Lc1/b;

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p1, Lc1/b;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lc1/g;->c:Lc1/g;

    const-string v1, "afUninstallToken"

    .line 3
    invoke-virtual {v0, v1}, Lc1/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc1/o;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, p1}, Lc1/m;->g(Landroid/content/Context;Lc1/b;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lc1/b;->c(Ljava/lang/String;)Lc1/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc1/b;->e(Lc1/b;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lc1/o;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1, v0}, Lc1/m;->g(Landroid/content/Context;Lc1/b;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onPreExecute()V
    .registers 3

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1
    sget-object v0, Lc1/g;->c:Lc1/g;

    const-string v1, "gcmProjectNumber"

    .line 2
    invoke-virtual {v0, v1}, Lc1/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc1/o;->a:Ljava/lang/String;

    return-void
.end method
