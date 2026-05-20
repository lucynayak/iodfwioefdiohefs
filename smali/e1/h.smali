.class public final Le1/h;
.super Landroid/support/v4/app/h;
.source "SourceFile"


# static fields
.field public static final synthetic m:I


# instance fields
.field public l:Landroid/support/v4/app/g;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/app/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final m(Landroid/os/Bundle;Le1/m;)V
    .registers 8

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez p2, :cond_0

    const/4 p2, -0x1

    sget-object v1, Li1/p;->b:Ljava/util/Set;

    .line 1
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "request"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Li1/n$d;

    .line 2
    iget-object v2, v1, Li1/n$d;->h:Ljava/util/Set;

    .line 3
    sget-object v3, Le1/e;->d:Le1/e;

    .line 4
    iget-object v4, v1, Li1/n$d;->b:Ljava/lang/String;

    .line 5
    invoke-static {v2, p1, v3, v4}, Li1/r;->c(Ljava/util/Collection;Landroid/os/Bundle;Le1/e;Ljava/lang/String;)Le1/a;

    move-result-object p1

    invoke-static {v1, p1}, Li1/n$e;->c(Li1/n$d;Le1/a;)Li1/n$e;

    move-result-object p1

    const-string v1, "com.facebook.LoginFragment:Result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v0, p1, p2}, Lh1/r;->c(Landroid/content/Intent;Landroid/os/Bundle;Le1/m;)Landroid/content/Intent;

    move-result-object v0

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, p2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/support/v4/app/h;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Le1/h;->l:Landroid/support/v4/app/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/g;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 7

    invoke-super {p0, p1}, Landroid/support/v4/app/h;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f030008

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PassThrough"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lh1/r;->i(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lh1/r;->f(Landroid/os/Bundle;)Le1/m;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Le1/h;->m(Landroid/os/Bundle;Le1/m;)V

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/h;->j()Landroid/support/v4/app/b0;

    move-result-object v0

    const-string v1, "SingleFragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/b0;->c(Ljava/lang/String;)Landroid/support/v4/app/g;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FacebookDialogFragment"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    new-instance p1, Lh1/j;

    invoke-direct {p1}, Lh1/j;-><init>()V

    .line 3
    iput-boolean v3, p1, Landroid/support/v4/app/g;->C:Z

    move-object v2, p1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v4, "DeviceShareDialogFragment"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lk1/c;

    invoke-direct {v2}, Lk1/c;-><init>()V

    .line 5
    iput-boolean v3, v2, Landroid/support/v4/app/g;->C:Z

    const-string v3, "content"

    .line 6
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Ll1/a;

    .line 7
    iput-object p1, v2, Lk1/c;->j0:Ll1/a;

    .line 8
    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/support/v4/app/f;->a0(Landroid/support/v4/app/b0;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v2, Li1/o;

    invoke-direct {v2}, Li1/o;-><init>()V

    .line 9
    iput-boolean v3, v2, Landroid/support/v4/app/g;->C:Z

    .line 10
    check-cast v0, Landroid/support/v4/app/k;

    .line 11
    new-instance p1, Landroid/support/v4/app/d;

    invoke-direct {p1, v0}, Landroid/support/v4/app/d;-><init>(Landroid/support/v4/app/k;)V

    const v0, 0x7f090036

    .line 12
    invoke-virtual {p1, v0, v2, v1}, Landroid/support/v4/app/d;->n(ILandroid/support/v4/app/g;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Landroid/support/v4/app/d;->l()I

    :cond_3
    :goto_1
    iput-object v2, p0, Le1/h;->l:Landroid/support/v4/app/g;

    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .registers 8

    invoke-super {p0, p1}, Landroid/support/v4/app/h;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b

    const-string v0, "fb"

    .line 1
    invoke-static {v0}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    sget-object v1, Le1/r;->a:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lr0/e;->k()V

    sget-object v1, Le1/r;->d:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://authorize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lh1/x;->x(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lh1/x;->x(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    iget-object p1, p0, Le1/h;->l:Landroid/support/v4/app/g;

    instance-of v1, p1, Li1/o;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Li1/o;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    :try_start_0
    const-string v3, "state"

    .line 6
    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "7_challenge"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p1, Li1/o;->W:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-nez v1, :cond_2

    .line 7
    :cond_1
    new-instance p1, Le1/m;

    const-string v1, "Invalid state parameter"

    invoke-direct {p1, v1}, Le1/m;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, p1}, Le1/h;->m(Landroid/os/Bundle;Le1/m;)V

    :cond_2
    const-string p1, "error"

    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    const-string p1, "error_type"

    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    const-string v1, "error_msg"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    const-string v1, "error_message"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_4
    if-nez v1, :cond_5

    const-string v1, "error_description"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_5
    const-string v3, "error_code"

    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lh1/x;->r(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, -0x1

    if-nez v4, :cond_6

    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    :cond_6
    const/4 v3, -0x1

    :goto_1
    invoke-static {p1}, Lh1/x;->r(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {v1}, Lh1/x;->r(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    if-ne v3, v5, :cond_7

    invoke-virtual {p0, v0, v2}, Le1/h;->m(Landroid/os/Bundle;Le1/m;)V

    goto :goto_3

    :cond_7
    if-eqz p1, :cond_9

    const-string v0, "access_denied"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "OAuthAccessDeniedException"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    new-instance p1, Le1/n;

    invoke-direct {p1}, Le1/n;-><init>()V

    goto :goto_2

    :cond_9
    const/16 v0, 0x1069

    if-ne v3, v0, :cond_a

    new-instance p1, Le1/n;

    invoke-direct {p1}, Le1/n;-><init>()V

    :goto_2
    invoke-virtual {p0, v2, p1}, Le1/h;->m(Landroid/os/Bundle;Le1/m;)V

    goto :goto_3

    :cond_a
    new-instance v0, Le1/t;

    new-instance v4, Le1/o;

    invoke-direct {v4, v3, p1, v1}, Le1/o;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v4, v1}, Le1/t;-><init>(Le1/o;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v0}, Le1/h;->m(Landroid/os/Bundle;Le1/m;)V

    :cond_b
    :goto_3
    return-void
.end method
