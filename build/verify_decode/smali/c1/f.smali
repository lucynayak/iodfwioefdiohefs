.class public final Lc1/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc1/k$b;


# instance fields
.field public final synthetic a:Lcom/appsflyer/a;


# direct methods
.method public constructor <init>(Lcom/appsflyer/a;)V
    .locals 0

    iput-object p1, p0, Lc1/f;->a:Lcom/appsflyer/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/ref/WeakReference;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onBecameBackground"

    invoke-static {v0}, Ld1/a;->g(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1
    sput-wide v0, Lcom/appsflyer/a;->m:J

    const-string v0, "callStatsBackground background call"

    .line 2
    invoke-static {v0}, Ld1/a;->g(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object p1, p0, Lc1/f;->a:Lcom/appsflyer/a;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v1, "app went to background"

    invoke-static {v1}, Ld1/a;->g(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-string v4, "appsflyer-data"

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 5
    sget-object v4, Lc1/g;->c:Lc1/g;

    .line 6
    invoke-virtual {v4, v1}, Lc1/g;->f(Landroid/content/SharedPreferences;)V

    sget-wide v4, Lcom/appsflyer/a;->m:J

    sget-wide v6, Lcom/appsflyer/a;->l:J

    sub-long/2addr v4, v6

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v7, "AppsFlyerKey"

    invoke-virtual {p1, v7}, Lcom/appsflyer/a;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "KSAppsFlyerId"

    invoke-virtual {p1, v8}, Lcom/appsflyer/a;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 7
    sget-object v9, Lc1/g;->c:Lc1/g;

    const-string v10, "deviceTrackingDisabled"

    .line 8
    invoke-virtual {v9, v10, v3}, Lc1/g;->a(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "true"

    invoke-virtual {v6, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {v9}, Lc1/e;->b(Landroid/content/ContentResolver;)Lc1/d;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 9
    iget-object v10, v9, Lc1/d;->a:Ljava/lang/String;

    const-string v11, "amazon_aid"

    .line 10
    invoke-virtual {v6, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-boolean v9, v9, Lc1/d;->b:Z

    .line 12
    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    const-string v10, "amazon_aid_limit"

    invoke-virtual {v6, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_2
    sget-object v9, Lc1/g;->c:Lc1/g;

    const-string v10, "advertiserId"

    .line 14
    invoke-virtual {v9, v10}, Lc1/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v6, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "app_id"

    invoke-virtual {v6, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "devkey"

    invoke-virtual {v6, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lc1/m;->e(Ljava/lang/ref/WeakReference;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "uid"

    invoke-virtual {v6, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v9, 0x3e8

    div-long/2addr v4, v9

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "time_in_app"

    invoke-virtual {v6, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "statType"

    const-string v5, "user_closed_app"

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "platform"

    const-string v5, "Android"

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "appsFlyerCount"

    invoke-virtual {p1, v1, v4, v3}, Lcom/appsflyer/a;->o(Landroid/content/SharedPreferences;Ljava/lang/String;Z)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "launch_counter"

    invoke-virtual {v6, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v4, 0x0

    const-string v7, "appsflyerGetConversionDataTiming"

    invoke-interface {v1, v7, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v4, "gcd_conversion_data_timing"

    invoke-virtual {v6, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/appsflyer/a;->n(Ljava/lang/ref/WeakReference;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "channel"

    invoke-virtual {v6, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v8, :cond_4

    goto :goto_0

    :cond_4
    const-string v8, ""

    :goto_0
    const-string v1, "originalAppsflyerId"

    invoke-virtual {v6, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v1, Lc1/g;->c:Lc1/g;

    const-string v4, "collectFingerPrint"

    .line 16
    invoke-virtual {v1, v4, v2}, Lc1/g;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/appsflyer/a;->E()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string v1, "deviceFingerPrintId"

    invoke-virtual {v6, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :try_start_0
    new-instance p1, Lc1/h;

    invoke-direct {p1}, Lc1/h;-><init>()V

    iput-object v6, p1, Lc1/h;->b:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "https://stats.appsflyer.com/stats"

    if-ne v1, v4, :cond_6

    :try_start_1
    const-string v1, "Main thread detected. Running callStats task in a new thread."

    invoke-static {v1}, Ld1/a;->f(Ljava/lang/String;)V

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Running callStats task (on current thread: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " )"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ld1/a;->f(Ljava/lang/String;)V

    invoke-virtual {p1}, Lc1/h;->onPreExecute()V

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lc1/h;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lc1/h;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-static {p1}, Ld1/a;->h(Ljava/lang/Throwable;)V

    .line 17
    :goto_1
    invoke-static {}, Lc1/n;->g()Lc1/n;

    move-result-object p1

    .line 18
    iget-boolean v1, p1, Lc1/n;->b:Z

    if-eqz v1, :cond_8

    .line 19
    invoke-virtual {p1}, Lc1/n;->m()V

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    const/4 v4, 0x0

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 20
    :try_start_2
    invoke-static {}, Lc1/n;->g()Lc1/n;

    move-result-object v5

    invoke-virtual {v5, v1, v0}, Lc1/n;->h(Ljava/lang/String;Landroid/content/pm/PackageManager;)V

    invoke-static {}, Lc1/n;->g()Lc1/n;

    move-result-object v0

    .line 21
    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v5, v0, Lc1/n;->c:Lorg/json/JSONObject;

    const-string v6, "data"

    iget-object v7, v0, Lc1/n;->a:Lorg/json/JSONArray;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v5, v0, Lc1/n;->c:Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v0}, Lc1/n;->e()V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v0

    throw v1

    :catch_0
    move-object v5, v4

    :catch_1
    :goto_2
    monitor-exit v0

    .line 22
    new-instance v0, Lc1/h;

    invoke-direct {v0}, Lc1/h;-><init>()V

    iput-object v5, v0, Lc1/h;->a:Ljava/lang/String;

    .line 23
    iput-boolean v3, v0, Lc1/h;->f:Z

    new-array v2, v2, [Ljava/lang/String;

    .line 24
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "https://monitorsdk.appsflyer.com/remote-debug?app_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 25
    :catchall_2
    :cond_7
    monitor-enter p1

    :try_start_6
    iput-object v4, p1, Lc1/n;->c:Lorg/json/JSONObject;

    iput-object v4, p1, Lc1/n;->a:Lorg/json/JSONArray;

    sput-object v4, Lc1/n;->e:Lc1/n;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    monitor-exit p1

    return-void

    :catchall_3
    move-exception v0

    monitor-exit p1

    throw v0

    :cond_8
    const-string p1, "RD status is OFF"

    .line 26
    invoke-static {p1}, Ld1/a;->f(Ljava/lang/String;)V

    return-void
.end method
