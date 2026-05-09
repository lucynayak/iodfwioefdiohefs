.class public final Le1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le1/b$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/SharedPreferences;

.field public final b:Le1/b$a;


# direct methods
.method public constructor <init>()V
    .locals 3

    sget-object v0, Le1/r;->a:Ljava/lang/Object;

    .line 1
    invoke-static {}, Lr0/e;->k()V

    sget-object v0, Le1/r;->c:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "com.facebook.AccessTokenManager.SharedPreferences"

    .line 2
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Le1/b$a;

    invoke-direct {v1}, Le1/b$a;-><init>()V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Le1/b;->a:Landroid/content/SharedPreferences;

    iput-object v1, p0, Le1/b;->b:Le1/b$a;

    return-void
.end method


# virtual methods
.method public final a(Le1/a;)V
    .locals 2

    const-string v0, "accessToken"

    invoke-static {p1, v0}, Lr0/e;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Le1/a;->d()Lorg/json/JSONObject;

    move-result-object p1

    iget-object v0, p0, Le1/b;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.facebook.AccessTokenManager.CachedAccessToken"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
