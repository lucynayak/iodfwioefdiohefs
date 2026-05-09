.class public final Li1/v$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh1/z$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li1/v;->i(Li1/n$d;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Li1/v;

.field public final synthetic b:Li1/n$d;


# direct methods
.method public constructor <init>(Li1/v;Li1/n$d;)V
    .registers 3

    iput-object p1, p0, Li1/v$a;->a:Li1/v;

    iput-object p2, p0, Li1/v$a;->b:Li1/n$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;Le1/m;)V
    .registers 8

    iget-object v0, p0, Li1/v$a;->a:Li1/v;

    iget-object v1, p0, Li1/v$a;->b:Li1/n$d;

    const/4 v2, 0x0

    .line 1
    iput-object v2, v0, Li1/u;->d:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    const-string p2, "e2e"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Li1/u;->d:Ljava/lang/String;

    .line 2
    :cond_0
    :try_start_0
    iget-object p2, v1, Li1/n$d;->h:Ljava/util/Set;

    .line 3
    sget-object v4, Le1/e;->h:Le1/e;

    .line 4
    iget-object v1, v1, Li1/n$d;->b:Ljava/lang/String;

    .line 5
    invoke-static {p2, p1, v4, v1}, Li1/r;->c(Ljava/util/Collection;Landroid/os/Bundle;Le1/e;Ljava/lang/String;)Le1/a;

    move-result-object p1

    iget-object p2, v0, Li1/r;->b:Li1/n;

    .line 6
    iget-object p2, p2, Li1/n;->j:Li1/n$d;

    .line 7
    invoke-static {p2, p1}, Li1/n$e;->c(Li1/n$d;Le1/a;)Li1/n$e;

    move-result-object p2

    iget-object v1, v0, Li1/r;->b:Li1/n;

    invoke-virtual {v1}, Li1/n;->e()Landroid/support/v4/app/h;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 8
    iget-object p1, p1, Le1/a;->h:Ljava/lang/String;

    .line 9
    iget-object v1, v0, Li1/r;->b:Li1/n;

    invoke-virtual {v1}, Li1/n;->e()Landroid/support/v4/app/h;

    move-result-object v1

    const-string v4, "com.facebook.login.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY"

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "TOKEN"

    invoke-interface {v1, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Le1/m; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 10
    iget-object p2, v0, Li1/r;->b:Li1/n;

    .line 11
    iget-object p2, p2, Li1/n;->j:Li1/n$d;

    .line 12
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-static {p2, v2, p1, v2}, Li1/n$e;->b(Li1/n$d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Li1/n$e;

    move-result-object p2

    goto :goto_1

    .line 14
    :cond_1
    instance-of p1, p2, Le1/n;

    if-eqz p1, :cond_2

    iget-object p1, v0, Li1/r;->b:Li1/n;

    .line 15
    iget-object p1, p1, Li1/n;->j:Li1/n$d;

    const-string p2, "User canceled log in."

    .line 16
    invoke-static {p1, p2}, Li1/n$e;->a(Li1/n$d;Ljava/lang/String;)Li1/n$e;

    move-result-object p2

    goto :goto_1

    :cond_2
    iput-object v2, v0, Li1/u;->d:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    instance-of v1, p2, Le1/t;

    if-eqz v1, :cond_3

    check-cast p2, Le1/t;

    .line 17
    iget-object p1, p2, Le1/t;->b:Le1/o;

    .line 18
    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 19
    iget v4, p1, Le1/o;->c:I

    .line 20
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v3, "%d"

    invoke-static {p2, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Le1/o;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    move-object p2, v2

    :goto_0
    iget-object v1, v0, Li1/r;->b:Li1/n;

    .line 21
    iget-object v1, v1, Li1/n;->j:Li1/n$d;

    .line 22
    invoke-static {v1, v2, p1, p2}, Li1/n$e;->b(Li1/n$d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Li1/n$e;

    move-result-object p2

    :goto_1
    iget-object p1, v0, Li1/u;->d:Ljava/lang/String;

    invoke-static {p1}, Lh1/x;->r(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, v0, Li1/u;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Li1/r;->f(Ljava/lang/String;)V

    :cond_4
    iget-object p1, v0, Li1/r;->b:Li1/n;

    invoke-virtual {p1, p2}, Li1/n;->d(Li1/n$e;)V

    return-void
.end method
