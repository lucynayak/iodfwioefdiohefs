.class public final Li1/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li1/p$c;,
        Li1/p$d;
    }
.end annotation


# static fields
.field public static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile c:Li1/p;


# instance fields
.field public a:Li1/m;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Li1/q;

    invoke-direct {v0}, Li1/q;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 2
    sput-object v0, Li1/p;->b:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Li1/m;->f:Li1/m;

    iput-object v0, p0, Li1/p;->a:Li1/m;

    invoke-static {}, Lr0/e;->k()V

    return-void
.end method

.method public static b()Li1/p;
    .registers 2

    const-class v0, Li1/p;

    sget-object v1, Li1/p;->c:Li1/p;

    if-nez v1, :cond_1

    monitor-enter v0

    :try_start_0
    sget-object v1, Li1/p;->c:Li1/p;

    if-nez v1, :cond_0

    new-instance v1, Li1/p;

    invoke-direct {v1}, Li1/p;-><init>()V

    sput-object v1, Li1/p;->c:Li1/p;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Li1/p;->c:Li1/p;

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_1

    const-string v0, "publish"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "manage"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Li1/p;->b:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Ljava/util/Collection;)Li1/n$d;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Li1/n$d;"
        }
    .end annotation

    iget-object v0, p0, Li1/p;->a:Li1/m;

    new-instance v1, Ljava/util/HashSet;

    if-eqz p1, :cond_0

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    :goto_0
    new-instance p1, Li1/n$d;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    sget-object v2, Le1/r;->a:Ljava/lang/Object;

    .line 1
    invoke-static {}, Lr0/e;->k()V

    sget-object v2, Le1/r;->d:Ljava/lang/String;

    .line 2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v0, v1, v2, v3}, Li1/n$d;-><init>(Li1/m;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Le1/a;->b()Le1/a;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 3
    :goto_1
    iput-boolean v0, p1, Li1/n$d;->f:Z

    return-object p1
.end method

.method public final d(Landroid/content/Context;ILjava/util/Map;Ljava/lang/Exception;ZLi1/n$d;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Exception;",
            "Z",
            "Li1/n$d;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Li1/p$d;->a(Landroid/content/Context;)Le1/c0;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "fb_mobile_login_complete"

    if-nez p6, :cond_1

    const-string p2, ""

    .line 1
    invoke-virtual {p1, v0, p2}, Le1/c0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz p5, :cond_2

    const-string p5, "1"

    goto :goto_0

    :cond_2
    const-string p5, "0"

    :goto_0
    const-string v2, "try_login_activity"

    invoke-virtual {v1, v2, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p5, p6, Li1/n$d;->c:Ljava/lang/String;

    .line 4
    invoke-static {p5}, Le1/c0;->c(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p5

    if-eqz p2, :cond_3

    .line 5
    invoke-static {p2}, La/b;->a(I)Ljava/lang/String;

    move-result-object p2

    const-string p6, "2_result"

    .line 6
    invoke-virtual {p5, p6, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz p4, :cond_4

    invoke-virtual {p4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string p4, "5_error_message"

    invoke-virtual {p5, p4, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p2

    const/4 p4, 0x0

    if-nez p2, :cond_5

    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    :cond_5
    if-eqz p3, :cond_7

    if-nez p4, :cond_6

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    move-object p4, p2

    :cond_6
    :try_start_0
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p4, p6, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    :cond_7
    if-eqz p4, :cond_8

    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "6_extras"

    invoke-virtual {p5, p3, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget-object p1, p1, Le1/c0;->a:Ljava/lang/Object;

    check-cast p1, Lf1/f;

    invoke-virtual {p1, v0, p5}, Lf1/f;->g(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final e(ILandroid/content/Intent;Le1/j;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Intent;",
            "Le1/j<",
            "Li1/s;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    const-string v3, "com.facebook.LoginFragment:Result"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Li1/n$e;

    if-eqz p2, :cond_4

    iget-object v3, p2, Li1/n$e;->f:Li1/n$d;

    iget v4, p2, Li1/n$e;->b:I

    const/4 v5, -0x1

    if-ne p1, v5, :cond_1

    if-ne v4, v1, :cond_0

    iget-object p1, p2, Li1/n$e;->g:Le1/a;

    move-object v1, v2

    goto :goto_0

    :cond_0
    new-instance p1, Le1/i;

    iget-object v1, p2, Li1/n$e;->d:Ljava/lang/String;

    invoke-direct {p1, v1}, Le1/i;-><init>(Ljava/lang/String;)V

    move-object v1, p1

    move-object p1, v2

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    move-object p1, v2

    move-object v1, p1

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move-object p1, v2

    move-object v1, p1

    :goto_0
    iget-object p2, p2, Li1/n$e;->e:Ljava/util/Map;

    move-object v6, p2

    move-object p2, v3

    move v5, v4

    goto :goto_1

    :cond_3
    if-nez p1, :cond_4

    const/4 v4, 0x2

    move-object p1, v2

    move-object p2, p1

    move-object v1, p2

    move-object v6, v1

    const/4 v0, 0x1

    const/4 v5, 0x2

    goto :goto_1

    :cond_4
    const/4 v4, 0x3

    move-object p1, v2

    move-object p2, p1

    move-object v1, p2

    move-object v6, v1

    const/4 v5, 0x3

    :goto_1
    if-nez v1, :cond_5

    if-nez p1, :cond_5

    if-nez v0, :cond_5

    new-instance v1, Le1/m;

    const-string v3, "Unexpected call to LoginManager.onActivityResult"

    invoke-direct {v1, v3}, Le1/m;-><init>(Ljava/lang/String;)V

    :cond_5
    const/4 v4, 0x0

    const/4 v8, 0x1

    move-object v3, p0

    move-object v7, v1

    move-object v9, p2

    invoke-virtual/range {v3 .. v9}, Li1/p;->d(Landroid/content/Context;ILjava/util/Map;Ljava/lang/Exception;ZLi1/n$d;)V

    if-eqz p1, :cond_6

    .line 1
    invoke-static {p1}, Le1/a;->c(Le1/a;)V

    invoke-static {}, Le1/b0;->a()V

    :cond_6
    if-eqz p3, :cond_c

    if-eqz p1, :cond_8

    .line 2
    iget-object v2, p2, Li1/n$d;->h:Ljava/util/Set;

    .line 3
    new-instance v3, Ljava/util/HashSet;

    .line 4
    iget-object v4, p1, Le1/a;->f:Ljava/util/Set;

    .line 5
    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 6
    iget-boolean p2, p2, Li1/n$d;->f:Z

    if-eqz p2, :cond_7

    .line 7
    invoke-interface {v3, v2}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    :cond_7
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {p2, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    new-instance v2, Li1/s;

    invoke-direct {v2, p1, v3}, Li1/s;-><init>(Le1/a;Ljava/util/Set;)V

    :cond_8
    if-nez v0, :cond_b

    if-eqz v2, :cond_9

    .line 8
    iget-object p2, v2, Li1/s;->b:Ljava/util/Set;

    .line 9
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    if-nez p2, :cond_9

    goto :goto_2

    :cond_9
    if-eqz v1, :cond_a

    invoke-interface {p3, v1}, Le1/j;->onError(Le1/m;)V

    goto :goto_3

    :cond_a
    if-eqz p1, :cond_c

    invoke-interface {p3, v2}, Le1/j;->onSuccess(Ljava/lang/Object;)V

    goto :goto_3

    :cond_b
    :goto_2
    invoke-interface {p3}, Le1/j;->onCancel()V

    :cond_c
    :goto_3
    return-void
.end method

.method public final f(Le1/f;Le1/j;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le1/f;",
            "Le1/j<",
            "Li1/s;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lh1/f;

    if-eqz v0, :cond_0

    check-cast p1, Lh1/f;

    const/4 v0, 0x1

    invoke-static {v0}, La/c;->a(I)I

    move-result v0

    new-instance v1, Li1/p$a;

    invoke-direct {v1, p0, p2}, Li1/p$a;-><init>(Li1/p;Le1/j;)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    sget p2, Lr0/e;->l:I

    iget-object p1, p1, Lh1/f;->a:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 2
    :cond_0
    new-instance p1, Le1/m;

    const-string p2, "Unexpected CallbackManager, please use the provided Factory."

    invoke-direct {p1, p2}, Le1/m;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g(Li1/t;Li1/n$d;)V
    .registers 13

    move-object v0, p1

    check-cast v0, Li1/p$c;

    .line 1
    iget-object v1, v0, Li1/p$c;->a:Landroid/app/Activity;

    .line 2
    invoke-static {v1}, Li1/p$d;->a(Landroid/content/Context;)Le1/c0;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 3
    iget-object v3, p2, Li1/n$d;->c:Ljava/lang/String;

    .line 4
    invoke-static {v3}, Le1/c0;->c(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "login_behavior"

    .line 5
    iget-object v6, p2, Li1/n$d;->g:Li1/m;

    .line 6
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "request_code"

    .line 7
    invoke-static {v2}, La/c;->a(I)I

    move-result v6

    .line 8
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "permissions"

    const-string v6, ","

    .line 9
    iget-object v7, p2, Li1/n$d;->h:Ljava/util/Set;

    .line 10
    invoke-static {v6, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "default_audience"

    .line 11
    iget-object v6, p2, Li1/n$d;->d:Li1/b;

    .line 12
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "isReauthorize"

    .line 13
    iget-boolean v6, p2, Li1/n$d;->f:Z

    .line 14
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v5, v1, Le1/c0;->c:Ljava/lang/Object;

    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_0

    const-string v6, "facebookVersion"

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v5, "6_extras"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v1, v1, Le1/c0;->a:Ljava/lang/Object;

    check-cast v1, Lf1/f;

    const-string v4, "fb_mobile_login_start"

    invoke-virtual {v1, v4, v3}, Lf1/f;->g(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 15
    :cond_1
    invoke-static {v2}, La/c;->a(I)I

    move-result v1

    new-instance v3, Li1/p$b;

    invoke-direct {v3, p0}, Li1/p$b;-><init>(Li1/p;)V

    invoke-static {v1, v3}, Lh1/f;->a(ILh1/f$a;)V

    .line 16
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-object v3, Le1/r;->a:Ljava/lang/Object;

    .line 17
    invoke-static {}, Lr0/e;->k()V

    sget-object v3, Le1/r;->c:Landroid/content/Context;

    .line 18
    const-class v4, Le1/h;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 19
    iget-object v3, p2, Li1/n$d;->g:Li1/m;

    .line 20
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "request"

    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 21
    invoke-static {}, Lr0/e;->k()V

    sget-object v3, Le1/r;->c:Landroid/content/Context;

    .line 22
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    :goto_0
    if-nez v3, :cond_3

    goto :goto_1

    .line 23
    :cond_3
    :try_start_1
    invoke-static {v2}, La/c;->a(I)I

    move-result v3

    .line 24
    check-cast p1, Li1/p$c;

    .line 25
    iget-object p1, p1, Li1/p$c;->a:Landroid/app/Activity;

    invoke-virtual {p1, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    :goto_1
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_4

    return-void

    .line 26
    :cond_4
    new-instance p1, Le1/m;

    const-string v1, "Log in attempt failed: FacebookActivity could not be started. Please make sure you added FacebookActivity to the AndroidManifest."

    invoke-direct {p1, v1}, Le1/m;-><init>(Ljava/lang/String;)V

    .line 27
    iget-object v4, v0, Li1/p$c;->a:Landroid/app/Activity;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v7, p1

    move-object v9, p2

    .line 28
    invoke-virtual/range {v3 .. v9}, Li1/p;->d(Landroid/content/Context;ILjava/util/Map;Ljava/lang/Exception;ZLi1/n$d;)V

    throw p1
.end method
