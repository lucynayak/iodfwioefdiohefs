.class public final Lc1/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static c:Lc1/g;


# instance fields
.field public a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lc1/g;

    invoke-direct {v0}, Lc1/g;-><init>()V

    sput-object v0, Lc1/g;->c:Lc1/g;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc1/g;->a:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc1/g;->b:Z

    return-void
.end method

.method public static b()Lc1/g;
    .registers 1

    sget-object v0, Lc1/g;->c:Lc1/g;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Z)Z
    .registers 3

    invoke-virtual {p0, p1}, Lc1/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return p2

    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final c(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const-string v0, "AF_REFERRER"

    invoke-virtual {p0, v0}, Lc1/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lc1/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    const-string v2, "appsflyer-data"

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, "referrer"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method public final d(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lc1/g;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final e()Z
    .registers 3

    const-string v0, "disableOtherSdk"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lc1/g;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final f(Landroid/content/SharedPreferences;)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lc1/g;->a:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "savedProperties"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lc1/g;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
