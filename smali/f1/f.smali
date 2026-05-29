.class public final Lf1/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf1/f$a;,
        Lf1/f$b;,
        Lf1/f$c;,
        Lf1/f$d;,
        Lf1/f$e;,
        Lf1/f$f;
    }
.end annotation


# static fields
.field public static c:Ljava/lang/String;

.field public static d:Landroid/content/Context;

.field public static e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field public static f:I

.field public static g:Z

.field public static h:Z

.field public static i:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lf1/f$a;",
            "Lf1/f$f;",
            ">;"
        }
    .end annotation
.end field

.field public static j:Ljava/lang/Object;


# instance fields
.field public final a:Lf1/f$a;

.field public final b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lf1/f;->i:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x1

    sput v0, Lf1/f;->f:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lf1/f;->j:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 16

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "context"

    invoke-static {p1, v0}, Lr0/e;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lh1/x;->a:[Ljava/lang/String;

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const-string v0, "unknown"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 2
    :goto_0
    iput-object v0, p0, Lf1/f;->b:Ljava/lang/String;

    invoke-static {}, Le1/a;->b()Le1/a;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    .line 3
    iget-object v1, v0, Le1/a;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    new-instance p2, Lf1/f$a;

    invoke-direct {p2, v0}, Lf1/f$a;-><init>(Le1/a;)V

    iput-object p2, p0, Lf1/f;->a:Lf1/f$a;

    goto :goto_1

    :cond_2
    if-nez p2, :cond_3

    invoke-static {p1}, Lh1/x;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    :cond_3
    new-instance v0, Lf1/f$a;

    invoke-direct {v0, p2}, Lf1/f$a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lf1/f;->a:Lf1/f$a;

    :goto_1
    sget-object p2, Lf1/f;->j:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    sget-object v0, Lf1/f;->d:Landroid/content/Context;

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lf1/f;->d:Landroid/content/Context;

    :cond_4
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    sget-object p1, Lf1/f;->j:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    sget-object p2, Lf1/f;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz p2, :cond_5

    monitor-exit p1

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 p2, 0x1

    invoke-direct {v0, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v0, Lf1/f;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v1, Lf1/a;

    invoke-direct {v1}, Lf1/a;-><init>()V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xf

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v6, v12

    invoke-virtual/range {v0 .. v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    new-instance v7, Lf1/b;

    invoke-direct {v7}, Lf1/b;-><init>()V

    sget-object v6, Lf1/f;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-wide/16 v8, 0x0

    const-wide/32 v10, 0x15180

    invoke-virtual/range {v6 .. v12}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :goto_2
    return-void

    :catchall_0
    move-exception p2

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2

    :catchall_1
    move-exception p1

    .line 6
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public static a(I)V
    .registers 7

    .line 1
    sget-object v0, Lf1/f;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lf1/f;->h:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    goto/16 :goto_2

    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lf1/f;->h:Z

    new-instance v1, Ljava/util/HashSet;

    sget-object v2, Lf1/f;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 2
    sget-object v0, Lf1/f;->d:Landroid/content/Context;

    .line 3
    sget-object v2, Lf1/f;->j:Ljava/lang/Object;

    .line 4
    monitor-enter v2

    :try_start_1
    new-instance v3, Lf1/f$e;

    invoke-direct {v3, v0}, Lf1/f$e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lf1/f$e;->a()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 5
    iget-object v0, v3, Lf1/f$e;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf1/f$a;

    sget-object v4, Lf1/f;->d:Landroid/content/Context;

    invoke-static {v4, v2}, Lf1/f;->e(Landroid/content/Context;Lf1/f$a;)Lf1/f$f;

    move-result-object v4

    .line 7
    iget-object v5, v3, Lf1/f$e;->b:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 8
    monitor-enter v4

    :try_start_2
    iget-object v5, v4, Lf1/f$f;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    .line 9
    invoke-interface {v2}, Ljava/util/List;->size()I

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 10
    monitor-exit v4

    throw p0

    .line 11
    :cond_1
    :try_start_3
    invoke-static {p0, v1}, Lf1/f;->b(ILjava/util/Set;)Lf1/f$d;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    sget-object p0, Lh1/x;->a:[Ljava/lang/String;

    .line 12
    sget-object p0, Le1/r;->a:Ljava/lang/Object;

    const/4 p0, 0x0

    .line 13
    :goto_1
    sget-object v0, Lf1/f;->j:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    sput-boolean v1, Lf1/f;->h:Z

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz p0, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.facebook.sdk.APP_EVENTS_FLUSHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.facebook.sdk.APP_EVENTS_NUM_EVENTS_FLUSHED"

    iget v2, p0, Lf1/f$d;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.facebook.sdk.APP_EVENTS_FLUSH_RESULT"

    iget-object p0, p0, Lf1/f$d;->b:Lf1/f$c;

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    sget-object p0, Lf1/f;->d:Landroid/content/Context;

    invoke-static {p0}, Lu/b;->a(Landroid/content/Context;)Lu/b;

    move-result-object p0

    invoke-virtual {p0, v0}, Lu/b;->b(Landroid/content/Intent;)Z

    :cond_2
    :goto_2
    return-void

    :catchall_1
    move-exception p0

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    .line 14
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0

    :catchall_3
    move-exception p0

    .line 15
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p0
.end method

.method public static b(ILjava/util/Set;)Lf1/f$d;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Set<",
            "Lf1/f$a;",
            ">;)",
            "Lf1/f$d;"
        }
    .end annotation

    new-instance v0, Lf1/f$d;

    invoke-direct {v0}, Lf1/f$d;-><init>()V

    sget-object v1, Lf1/f;->d:Landroid/content/Context;

    sget-object v2, Le1/r;->a:Ljava/lang/Object;

    .line 1
    invoke-static {}, Lr0/e;->k()V

    const-string v2, "com.facebook.sdk.appEventPreferences"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "limitEventUsage"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf1/f$a;

    .line 3
    sget-object v7, Lf1/f;->j:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    sget-object v8, Lf1/f;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lf1/f$f;

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v8, :cond_0

    .line 4
    iget-object v7, v5, Lf1/f$a;->c:Ljava/lang/String;

    .line 5
    invoke-static {v7, v3}, Lh1/x;->A(Ljava/lang/String;Z)Lh1/x$c;

    move-result-object v9

    const/4 v11, 0x0

    const-string v10, "%s/activities"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v7, v12, v3

    invoke-static {v10, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const/4 v15, 0x0

    .line 6
    new-instance v7, Le1/u;

    sget-object v14, Le1/z;->d:Le1/z;

    const/4 v13, 0x0

    move-object v10, v7

    invoke-direct/range {v10 .. v15}, Le1/u;-><init>(Le1/a;Ljava/lang/String;Landroid/os/Bundle;Le1/z;Le1/u$c;)V

    .line 7
    iput-object v6, v7, Le1/u;->c:Lorg/json/JSONObject;

    .line 8
    iget-object v10, v7, Le1/u;->f:Landroid/os/Bundle;

    if-nez v10, :cond_1

    .line 9
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    :cond_1
    const-string v11, "access_token"

    .line 10
    iget-object v12, v5, Lf1/f$a;->b:Ljava/lang/String;

    .line 11
    invoke-virtual {v10, v11, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iput-object v10, v7, Le1/u;->f:Landroid/os/Bundle;

    if-nez v9, :cond_2

    goto/16 :goto_6

    .line 13
    :cond_2
    iget-boolean v9, v9, Lh1/x$c;->d:Z

    .line 14
    monitor-enter v8

    :try_start_1
    iget v10, v8, Lf1/f$f;->e:I

    iget-object v11, v8, Lf1/f$f;->d:Ljava/util/ArrayList;

    iget-object v12, v8, Lf1/f$f;->a:Ljava/util/ArrayList;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v11, v8, Lf1/f$f;->a:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    iget-object v12, v8, Lf1/f$f;->d:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_3
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lf1/f$b;

    if-nez v9, :cond_4

    .line 15
    iget-boolean v14, v13, Lf1/f$b;->b:Z

    if-nez v14, :cond_3

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    .line 16
    :cond_4
    :goto_2
    iget-object v13, v13, Lf1/f$b;->c:Lorg/json/JSONObject;

    .line 17
    invoke-virtual {v11, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_5
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-nez v9, :cond_6

    monitor-exit v8

    const/4 v9, 0x0

    goto :goto_5

    :cond_6
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    :try_start_2
    iget-object v9, v8, Lf1/f$f;->c:Lh1/c;

    iget-object v12, v8, Lf1/f$f;->b:Ljava/lang/String;

    .line 19
    sget-object v13, Lf1/f;->d:Landroid/content/Context;

    .line 20
    invoke-static {v9, v12, v1, v13}, Lh1/b;->a(Lh1/c;Ljava/lang/String;ZLandroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v9

    iget v12, v8, Lf1/f$f;->e:I

    if-lez v12, :cond_7

    const-string v12, "num_skipped_events"

    invoke-virtual {v9, v12, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 21
    :cond_7
    :goto_3
    iput-object v9, v7, Le1/u;->c:Lorg/json/JSONObject;

    .line 22
    iget-object v9, v7, Le1/u;->f:Landroid/os/Bundle;

    if-nez v9, :cond_8

    .line 23
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    :cond_8
    invoke-virtual {v11}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_9

    :try_start_3
    const-string v12, "UTF-8"

    .line 24
    invoke-virtual {v10, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    sget-object v12, Lh1/x;->a:[Ljava/lang/String;

    .line 25
    sget-object v12, Le1/r;->a:Ljava/lang/Object;

    move-object v12, v6

    :goto_4
    const-string v13, "custom_events_file"

    .line 26
    invoke-virtual {v9, v13, v12}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 27
    iput-object v10, v7, Le1/u;->h:Ljava/lang/Object;

    .line 28
    :cond_9
    iput-object v9, v7, Le1/u;->f:Landroid/os/Bundle;

    .line 29
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v9

    :goto_5
    if-nez v9, :cond_a

    goto :goto_6

    .line 30
    :cond_a
    iget v6, v0, Lf1/f$d;->a:I

    add-int/2addr v9, v6

    iput v9, v0, Lf1/f$d;->a:I

    new-instance v6, Lf1/e;

    invoke-direct {v6, v5, v7, v8, v0}, Lf1/e;-><init>(Lf1/f$a;Le1/u;Lf1/f$f;Lf1/f$d;)V

    invoke-virtual {v7, v6}, Le1/u;->t(Le1/u$c;)V

    move-object v6, v7

    :goto_6
    if-eqz v6, :cond_0

    .line 31
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 32
    :goto_7
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 33
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 34
    :cond_b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_c

    invoke-static/range {p0 .. p0}, La/c;->f(I)Ljava/lang/String;

    sget-object v1, Lh1/p;->c:Ljava/util/HashMap;

    .line 35
    invoke-static {}, Le1/r;->b()V

    .line 36
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le1/u;

    invoke-virtual {v2}, Le1/u;->d()Le1/y;

    goto :goto_8

    :cond_c
    move-object v0, v6

    :cond_d
    return-object v0
.end method

.method public static c()I
    .registers 5

    sget-object v0, Lf1/f;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lf1/f;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf1/f$f;

    .line 1
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, v3, Lf1/f$f;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v3

    add-int/2addr v2, v4

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v3

    throw v1

    .line 2
    :cond_0
    monitor-exit v0

    return v2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    sget-object v0, Lf1/f;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v0, Lf1/f;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lf1/f;->c:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "com.facebook.sdk.appEventPreferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "anonymousAppDeviceGUID"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lf1/f;->c:Ljava/lang/String;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XZ"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lf1/f;->c:Ljava/lang/String;

    const-string v1, "com.facebook.sdk.appEventPreferences"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v1, "anonymousAppDeviceGUID"

    sget-object v2, Lf1/f;->c:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lf1/f;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static e(Landroid/content/Context;Lf1/f$a;)Lf1/f$f;
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    sget-object v0, Lf1/f;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf1/f$f;

    const/4 v3, 0x0

    if-nez v0, :cond_14

    const-string v0, "limit_tracking"

    const-string v4, "androidid"

    const-string v5, "aid"

    .line 1
    sget-object v6, Lh1/c;->f:Lh1/c;

    if-eqz v6, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-object v8, Lh1/c;->f:Lh1/c;

    iget-wide v9, v8, Lh1/c;->d:J

    sub-long/2addr v6, v9

    const-wide/32 v9, 0x36ee80

    cmp-long v11, v6, v9

    if-gez v11, :cond_0

    move-object v3, v8

    goto/16 :goto_e

    :cond_0
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    if-eq v8, v9, :cond_6

    const-string v8, "com.google.android.gms.common.GooglePlayServicesUtil"

    const-string v9, "isGooglePlayServicesAvailable"

    new-array v10, v6, [Ljava/lang/Class;

    const-class v11, Landroid/content/Context;

    aput-object v11, v10, v7

    sget-object v11, Lh1/x;->a:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 3
    :try_start_1
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8, v9, v10}, Lh1/x;->n(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-object v8, v3

    :goto_0
    if-nez v8, :cond_1

    goto/16 :goto_2

    :cond_1
    :try_start_2
    new-array v9, v6, [Ljava/lang/Object;

    aput-object v1, v9, v7

    .line 4
    invoke-static {v3, v8, v9}, Lh1/x;->q(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Ljava/lang/Integer;

    if-eqz v9, :cond_7

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_2

    :cond_2
    const-string v8, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    const-string v9, "getAdvertisingIdInfo"

    new-array v10, v6, [Ljava/lang/Class;

    const-class v11, Landroid/content/Context;

    aput-object v11, v10, v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 5
    :try_start_3
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8, v9, v10}, Lh1/x;->n(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_1
    move-object v8, v3

    :goto_1
    if-nez v8, :cond_3

    goto :goto_2

    :cond_3
    :try_start_4
    new-array v9, v6, [Ljava/lang/Object;

    aput-object v1, v9, v7

    .line 6
    invoke-static {v3, v8, v9}, Lh1/x;->q(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v10, "getId"

    new-array v11, v7, [Ljava/lang/Class;

    invoke-static {v9, v10, v11}, Lh1/x;->n(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-string v11, "isLimitAdTrackingEnabled"

    new-array v12, v7, [Ljava/lang/Class;

    invoke-static {v10, v11, v12}, Lh1/x;->n(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    if-eqz v9, :cond_7

    if-nez v10, :cond_5

    goto :goto_2

    :cond_5
    new-instance v11, Lh1/c;

    invoke-direct {v11}, Lh1/c;-><init>()V

    new-array v12, v7, [Ljava/lang/Object;

    invoke-static {v8, v9, v12}, Lh1/x;->q(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iput-object v9, v11, Lh1/c;->a:Ljava/lang/String;

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {v8, v10, v9}, Lh1/x;->q(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iput-boolean v8, v11, Lh1/c;->e:Z

    goto :goto_3

    :cond_6
    new-instance v8, Le1/m;

    const-string v9, "getAndroidId cannot be called on the main thread."

    invoke-direct {v8, v9}, Le1/m;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    sget-object v8, Lh1/x;->a:[Ljava/lang/String;

    .line 7
    sget-object v8, Le1/r;->a:Ljava/lang/Object;

    :cond_7
    :goto_2
    move-object v11, v3

    :goto_3
    if-nez v11, :cond_9

    .line 8
    new-instance v8, Lh1/c$b;

    invoke-direct {v8}, Lh1/c$b;-><init>()V

    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v10, "com.google.android.gms"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v9, v8, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v6

    if-eqz v6, :cond_8

    :try_start_5
    new-instance v6, Lh1/c$a;

    invoke-virtual {v8}, Lh1/c$b;->a()Landroid/os/IBinder;

    move-result-object v9

    invoke-direct {v6, v9}, Lh1/c$a;-><init>(Landroid/os/IBinder;)V

    new-instance v9, Lh1/c;

    invoke-direct {v9}, Lh1/c;-><init>()V

    invoke-virtual {v6}, Lh1/c$a;->f()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lh1/c;->a:Ljava/lang/String;

    invoke-virtual {v6}, Lh1/c$a;->g()Z

    move-result v6

    iput-boolean v6, v9, Lh1/c;->e:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {v1, v8}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    move-object v11, v9

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_3
    :try_start_6
    sget-object v6, Lh1/x;->a:[Ljava/lang/String;

    .line 9
    sget-object v6, Le1/r;->a:Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 10
    invoke-virtual {v1, v8}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_5

    :goto_4
    invoke-virtual {v1, v8}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v0

    :cond_8
    :goto_5
    move-object v11, v3

    :goto_6
    if-nez v11, :cond_9

    .line 11
    new-instance v11, Lh1/c;

    invoke-direct {v11}, Lh1/c;-><init>()V

    .line 12
    :cond_9
    :try_start_7
    filled-new-array {v5, v4, v0}, [Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v8, "com.facebook.katana.provider.AttributionIdProvider"

    invoke-virtual {v6, v8, v7}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v6

    if-eqz v6, :cond_a

    const-string v6, "content://com.facebook.katana.provider.AttributionIdProvider"

    goto :goto_7

    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v8, "com.facebook.wakizashi.provider.AttributionIdProvider"

    invoke-virtual {v6, v8, v7}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v6

    if-eqz v6, :cond_b

    const-string v6, "content://com.facebook.wakizashi.provider.AttributionIdProvider"

    :goto_7
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    move-object v13, v6

    goto :goto_8

    :cond_b
    move-object v13, v3

    .line 13
    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    if-eqz v6, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_9

    :cond_c
    move-object v6, v3

    :goto_9
    if-eqz v6, :cond_d

    .line 14
    iput-object v6, v11, Lh1/c;->b:Ljava/lang/String;

    :cond_d
    if-nez v13, :cond_e

    invoke-static {v11}, Lh1/c;->a(Lh1/c;)Lh1/c;

    goto :goto_b

    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v6, :cond_11

    :try_start_8
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-nez v7, :cond_f

    goto :goto_a

    :cond_f
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v11, Lh1/c;->c:Ljava/lang/String;

    if-lez v4, :cond_10

    if-lez v0, :cond_10

    .line 15
    iget-object v5, v11, Lh1/c;->a:Ljava/lang/String;

    if-nez v5, :cond_10

    .line 16
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v11, Lh1/c;->a:Ljava/lang/String;

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v11, Lh1/c;->e:Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :cond_10
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    invoke-static {v11}, Lh1/c;->a(Lh1/c;)Lh1/c;

    goto :goto_b

    :cond_11
    :goto_a
    :try_start_9
    invoke-static {v11}, Lh1/c;->a(Lh1/c;)Lh1/c;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz v6, :cond_12

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_12
    :goto_b
    move-object v3, v11

    goto :goto_e

    :catch_4
    move-exception v0

    goto :goto_c

    :catchall_1
    move-exception v0

    goto :goto_d

    :catch_5
    move-exception v0

    move-object v6, v3

    :goto_c
    :try_start_a
    const-string v4, "h1.c"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Caught unexpected exception in getAttributionId(): "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-eqz v6, :cond_14

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_e

    :catchall_2
    move-exception v0

    move-object v3, v6

    :goto_d
    if-eqz v3, :cond_13

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_13
    throw v0

    .line 17
    :cond_14
    :goto_e
    sget-object v4, Lf1/f;->j:Ljava/lang/Object;

    monitor-enter v4

    :try_start_b
    sget-object v0, Lf1/f;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf1/f$f;

    if-nez v0, :cond_15

    new-instance v0, Lf1/f$f;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Lf1/f;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lf1/f$f;-><init>(Lh1/c;Ljava/lang/String;)V

    sget-object v1, Lf1/f;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    monitor-exit v4

    return-object v0

    :catchall_3
    move-exception v0

    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v0
.end method

.method public static h(Landroid/content/Context;)Lf1/f;
    .registers 3

    new-instance v0, Lf1/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lf1/f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final f(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .registers 6

    new-instance v0, Lf1/f$b;

    iget-object v1, p0, Lf1/f;->b:Ljava/lang/String;

    invoke-direct {v0, v1, p1, p2, p3}, Lf1/f$b;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    sget-object p1, Lf1/f;->d:Landroid/content/Context;

    iget-object p2, p0, Lf1/f;->a:Lf1/f$a;

    .line 1
    invoke-static {}, Le1/r;->a()Ljava/util/concurrent/Executor;

    move-result-object p3

    new-instance v1, Lf1/c;

    invoke-direct {v1, p1, p2, v0}, Lf1/c;-><init>(Landroid/content/Context;Lf1/f$a;Lf1/f$b;)V

    invoke-interface {p3, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2
    iget-boolean p1, v0, Lf1/f$b;->b:Z

    if-nez p1, :cond_1

    .line 3
    sget-boolean p1, Lf1/f;->g:Z

    if-nez p1, :cond_1

    .line 4
    iget-object p1, v0, Lf1/f$b;->d:Ljava/lang/String;

    const-string p2, "fb_mobile_activate_app"

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    .line 5
    sput-boolean p1, Lf1/f;->g:Z

    goto :goto_0

    :cond_0
    sget-object p1, Lh1/p;->c:Ljava/util/HashMap;

    .line 6
    invoke-static {}, Le1/r;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final g(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    sget v0, Lg1/a;->a:I

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lf1/f;->f(Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method
