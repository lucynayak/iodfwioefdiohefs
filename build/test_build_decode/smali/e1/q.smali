.class public final Le1/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le1/r$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Le1/q;->a:Le1/r$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Le1/d;->a()Le1/d;

    move-result-object v0

    .line 2
    iget-object v1, v0, Le1/d;->a:Le1/b;

    .line 3
    iget-object v2, v1, Le1/b;->a:Landroid/content/SharedPreferences;

    const-string v3, "com.facebook.AccessTokenManager.CachedAccessToken"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 4
    iget-object v1, v1, Le1/b;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Le1/a;->a(Lorg/json/JSONObject;)Le1/a;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :cond_0
    sget-object v1, Le1/r;->a:Ljava/lang/Object;

    :catch_0
    :cond_1
    move-object v1, v4

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v0, v1, v2}, Le1/d;->c(Le1/a;Z)V

    .line 7
    :cond_2
    invoke-static {}, Le1/c0;->a()Le1/c0;

    move-result-object v0

    .line 8
    iget-object v1, v0, Le1/c0;->c:Ljava/lang/Object;

    check-cast v1, Landroid/support/v4/app/i;

    .line 9
    iget-object v1, v1, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v1, Landroid/content/SharedPreferences;

    const-string v3, "com.facebook.ProfileManager.CachedProfile"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    :try_start_1
    new-instance v3, Le1/b0;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Le1/b0;-><init>(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    :cond_3
    move-object v3, v4

    :goto_1
    if-eqz v3, :cond_4

    .line 10
    invoke-virtual {v0, v3, v2}, Le1/c0;->d(Le1/b0;Z)V

    .line 11
    :cond_4
    invoke-static {}, Le1/a;->b()Le1/a;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 12
    invoke-static {}, Le1/c0;->a()Le1/c0;

    move-result-object v0

    .line 13
    iget-object v0, v0, Le1/c0;->a:Ljava/lang/Object;

    check-cast v0, Le1/b0;

    if-nez v0, :cond_5

    .line 14
    invoke-static {}, Le1/b0;->a()V

    :cond_5
    iget-object v0, p0, Le1/q;->a:Le1/r$a;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Le1/r$a;->a()V

    :cond_6
    return-object v4
.end method
