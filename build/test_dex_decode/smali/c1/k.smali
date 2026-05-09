.class public final Lc1/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc1/k$b;
    }
.end annotation


# static fields
.field public static d:Lc1/k;


# instance fields
.field public a:Z

.field public b:Lc1/k$b;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc1/k;->a:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc1/k;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lc1/k;->b:Lc1/k$b;

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc1/k;->c:Z

    new-instance v0, Lc1/k$a;

    invoke-direct {v0, p0, p1}, Lc1/k$a;-><init>(Lc1/k;Landroid/app/Activity;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc1/k;->c:Z

    iget-boolean v0, p0, Lc1/k;->a:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v1, p0, Lc1/k;->a:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lc1/k;->b:Lc1/k$b;

    check-cast v0, Lc1/f;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onBecameForeground"

    .line 1
    invoke-static {v1}, Ld1/a;->g(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2
    sput-wide v1, Lcom/appsflyer/a;->l:J

    .line 3
    iget-object v0, v0, Lc1/f;->a:Lcom/appsflyer/a;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Lcom/appsflyer/a;->U(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-static {p1}, Ld1/a;->h(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
