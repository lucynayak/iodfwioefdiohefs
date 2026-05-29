.class public final Lc1/l;
.super Lo1/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lo1/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTokenRefresh()V
    .registers 3

    invoke-super {p0}, Lo1/b;->onTokenRefresh()V

    .line 1
    sget-object v0, Lc1/g;->c:Lc1/g;

    const-string v1, "gcmProjectNumber"

    .line 2
    invoke-virtual {v0, v1}, Lc1/g;->d(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lo1/a;->b(Landroid/content/Context;Landroid/os/Bundle;)Lo1/a;

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    .line 4
    invoke-static {v0}, Ld1/a;->h(Ljava/lang/Throwable;)V

    return-void
.end method
