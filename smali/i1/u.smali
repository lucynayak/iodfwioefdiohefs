.class public abstract Li1/u;
.super Li1/r;
.source "SourceFile"


# instance fields
.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0, p1}, Li1/r;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Li1/n;)V
    .registers 2

    invoke-direct {p0, p1}, Li1/r;-><init>(Li1/n;)V

    return-void
.end method


# virtual methods
.method public final j(Li1/n$d;)Landroid/os/Bundle;
    .registers 7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1
    iget-object v1, p1, Li1/n$d;->h:Ljava/util/Set;

    .line 2
    invoke-static {v1}, Lh1/x;->s(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p1, Li1/n$d;->h:Ljava/util/Set;

    const-string v2, ","

    .line 4
    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "scope"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v1}, Li1/r;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    :cond_0
    iget-object v1, p1, Li1/n$d;->d:Li1/b;

    .line 6
    iget-object v1, v1, Li1/b;->b:Ljava/lang/String;

    const-string v2, "default_audience"

    .line 7
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p1, p1, Li1/n$d;->c:Ljava/lang/String;

    .line 9
    invoke-virtual {p0, p1}, Li1/r;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Le1/a;->b()Le1/a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 10
    iget-object p1, p1, Le1/a;->h:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const-string v1, "access_token"

    if-eqz p1, :cond_2

    .line 11
    iget-object v2, p0, Li1/r;->b:Li1/n;

    invoke-virtual {v2}, Li1/n;->e()Landroid/support/v4/app/h;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "com.facebook.login.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY"

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "TOKEN"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "1"

    goto :goto_1

    :cond_2
    iget-object p1, p0, Li1/r;->b:Li1/n;

    invoke-virtual {p1}, Li1/n;->e()Landroid/support/v4/app/h;

    move-result-object p1

    invoke-static {p1}, Lh1/x;->d(Landroid/content/Context;)V

    const-string p1, "0"

    :goto_1
    invoke-virtual {p0, v1, p1}, Li1/r;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
