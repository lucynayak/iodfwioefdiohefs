.class public final Lh1/j;
.super Landroid/support/v4/app/f;
.source "SourceFile"


# instance fields
.field public e0:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/app/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final Z()Landroid/app/Dialog;
    .registers 2

    iget-object v0, p0, Lh1/j;->e0:Landroid/app/Dialog;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lh1/j;->b0(Landroid/os/Bundle;Le1/m;)V

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroid/support/v4/app/f;->Y:Z

    .line 2
    :cond_0
    iget-object v0, p0, Lh1/j;->e0:Landroid/app/Dialog;

    return-object v0
.end method

.method public final b0(Landroid/os/Bundle;Le1/m;)V
    .registers 5

    invoke-virtual {p0}, Landroid/support/v4/app/g;->c()Landroid/support/v4/app/h;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lh1/r;->c(Landroid/content/Intent;Landroid/os/Bundle;Le1/m;)Landroid/content/Intent;

    move-result-object p1

    if-nez p2, :cond_0

    const/4 p2, -0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Landroid/support/v4/app/g;->E:Z

    .line 2
    iget-object p1, p0, Lh1/j;->e0:Landroid/app/Dialog;

    instance-of v0, p1, Lh1/z;

    if-eqz v0, :cond_0

    check-cast p1, Lh1/z;

    invoke-virtual {p1}, Lh1/z;->c()V

    :cond_0
    return-void
.end method

.method public final v(Landroid/os/Bundle;)V
    .registers 8

    invoke-super {p0, p1}, Landroid/support/v4/app/f;->v(Landroid/os/Bundle;)V

    iget-object p1, p0, Lh1/j;->e0:Landroid/app/Dialog;

    if-nez p1, :cond_7

    invoke-virtual {p0}, Landroid/support/v4/app/g;->c()Landroid/support/v4/app/h;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lh1/r;->i(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "is_fallback"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v1, "action"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "params"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v1}, Lh1/x;->r(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1
    sget-object v0, Le1/r;->a:Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_4

    :cond_0
    const/4 v2, 0x0

    .line 3
    invoke-static {}, Le1/a;->b()Le1/a;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-static {p1}, Lh1/x;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Le1/m;

    const-string v0, "Attempted to create a builder without a valid access token or a valid default Application ID."

    invoke-direct {p1, v0}, Le1/m;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    goto :goto_1

    .line 4
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5
    :goto_1
    new-instance v4, Lh1/j$a;

    invoke-direct {v4, p0}, Lh1/j$a;-><init>(Lh1/j;)V

    const-string v5, "app_id"

    if-eqz v3, :cond_4

    .line 6
    iget-object v2, v3, Le1/a;->b:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v5, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v2, v3, Le1/a;->h:Ljava/lang/String;

    const-string v3, "access_token"

    .line 9
    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v5, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    new-instance v2, Lh1/z;

    invoke-direct {v2, p1, v1, v0, v4}, Lh1/z;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lh1/z$c;)V

    goto :goto_3

    :cond_5
    const-string v2, "url"

    .line 10
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lh1/x;->r(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 11
    sget-object v0, Le1/r;->a:Ljava/lang/Object;

    .line 12
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_6
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Le1/r;->a:Ljava/lang/Object;

    .line 13
    invoke-static {}, Lr0/e;->k()V

    sget-object v3, Le1/r;->d:Ljava/lang/String;

    aput-object v3, v2, v1

    .line 14
    new-instance v1, Lh1/n;

    const-string v3, "fb%s://bridge/"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v0, v2}, Lh1/n;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lh1/j$b;

    invoke-direct {p1, p0}, Lh1/j$b;-><init>(Lh1/j;)V

    .line 15
    iput-object p1, v1, Lh1/z;->h:Lh1/z$c;

    move-object v2, v1

    .line 16
    :goto_3
    iput-object v2, p0, Lh1/j;->e0:Landroid/app/Dialog;

    :cond_7
    :goto_4
    return-void
.end method

.method public final y()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroid/support/v4/app/f;->a0:Landroid/app/Dialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v2, p0, Landroid/support/v4/app/g;->C:Z

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroid/support/v4/app/g;->E:Z

    .line 5
    iget-object v2, p0, Landroid/support/v4/app/f;->a0:Landroid/app/Dialog;

    if-eqz v2, :cond_1

    iput-boolean v0, p0, Landroid/support/v4/app/f;->b0:Z

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    iput-object v1, p0, Landroid/support/v4/app/f;->a0:Landroid/app/Dialog;

    :cond_1
    return-void
.end method
