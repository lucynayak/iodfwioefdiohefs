.class public final Lh1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh1/b$b;
    }
.end annotation


# static fields
.field public static final a:Lh1/b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lh1/b$b;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lh1/b$a;

    invoke-direct {v0}, Lh1/b$a;-><init>()V

    sput-object v0, Lh1/b;->a:Lh1/b$a;

    return-void
.end method

.method public static a(Lh1/c;Ljava/lang/String;ZLandroid/content/Context;)Lorg/json/JSONObject;
    .registers 7

    sget-object v0, Lh1/b$b;->c:Lh1/b$b;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    sget-object v2, Lh1/b;->a:Lh1/b$a;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "event"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lh1/x;->a:[Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 1
    iget-object v0, p0, Lh1/c;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v2, "attribution"

    .line 2
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    if-eqz p0, :cond_1

    .line 3
    iget-object v0, p0, Lh1/c;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v2, "advertiser_id"

    .line 4
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    iget-boolean v0, p0, Lh1/c;->e:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v2, "advertiser_tracking_enabled"

    .line 6
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_1
    if-eqz p0, :cond_2

    .line 7
    iget-object p0, p0, Lh1/c;->b:Ljava/lang/String;

    if-eqz p0, :cond_2

    const-string v0, "installer_package"

    .line 8
    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const-string p0, "anon_id"

    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    xor-int/lit8 p0, p2, 0x1

    const-string p1, "application_tracking_enabled"

    invoke-virtual {v1, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 9
    :try_start_0
    invoke-static {v1, p3}, Lh1/x;->C(Lorg/json/JSONObject;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    sget-object p0, Lh1/p;->c:Ljava/util/HashMap;

    .line 10
    invoke-static {}, Le1/r;->b()V

    .line 11
    :goto_0
    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "application_package_name"

    invoke-virtual {v1, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v1
.end method
