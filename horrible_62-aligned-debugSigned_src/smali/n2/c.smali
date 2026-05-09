.class public final Ln2/c;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public final synthetic b:Ln2/d;

.field public final synthetic c:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Ln2/d;)V
    .registers 3

    iput-object p1, p0, Ln2/c;->c:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Ln2/c;->b:Ln2/d;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 17

    move-object/from16 v1, p0

    iget-object v2, v1, Ln2/c;->c:Ljava/lang/ref/WeakReference;

    iget-object v3, v1, Ln2/c;->b:Ln2/d;

    const-string v4, ".stacktrace"

    .line 1
    invoke-static {}, Ln2/b;->h()[Ljava/lang/String;

    move-result-object v5

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v6, 0x0

    if-eqz v5, :cond_d

    array-length v7, v5

    if-lez v7, :cond_d

    move-object v7, v0

    const/4 v8, 0x0

    :goto_0
    array-length v0, v5

    if-ge v8, v0, :cond_d

    :try_start_0
    aget-object v0, v5, v8

    invoke-static {v2, v0}, Ln2/b;->a(Ljava/lang/ref/WeakReference;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_4

    const-string v11, ".user"

    invoke-virtual {v0, v4, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Ln2/b;->a(Ljava/lang/ref/WeakReference;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, ".contact"

    invoke-virtual {v0, v4, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Ln2/b;->a(Ljava/lang/ref/WeakReference;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, ".description"

    invoke-virtual {v0, v4, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Ln2/b;->a(Ljava/lang/ref/WeakReference;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v13, ""

    :try_start_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    const/4 v15, 0x1

    if-nez v14, :cond_1

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    const-string v14, "%s\n\nLog:\n%s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v13, v9, v6

    aput-object v0, v9, v15

    invoke-static {v14, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    :cond_0
    const-string v9, "Log:\n%s"

    new-array v13, v15, [Ljava/lang/Object;

    aput-object v0, v13, v6

    invoke-static {v9, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    :cond_1
    :goto_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v9, "raw"

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "userID"

    invoke-virtual {v0, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "contact"

    invoke-virtual {v0, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "description"

    invoke-virtual {v0, v9, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "sdk"

    const-string v10, "HockeySDK"

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "sdk_version"

    const-string v10, "4.1.1"

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, La0/a;

    invoke-static {}, Ln2/b;->e()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, La0/a;-><init>(Ljava/lang/String;)V

    const-string v10, "POST"

    .line 2
    iput-object v10, v9, La0/a;->c:Ljava/lang/String;

    .line 3
    invoke-virtual {v9, v0}, La0/a;->c(Ljava/util/Map;)La0/a;

    invoke-virtual {v9}, La0/a;->a()Ljava/net/HttpURLConnection;

    move-result-object v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v10, 0xca

    if-eq v0, v10, :cond_3

    const/16 v10, 0xc9

    if-ne v0, v10, :cond_2

    goto :goto_2

    :cond_2
    const/4 v15, 0x0

    :cond_3
    :goto_2
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_4
    const/4 v9, 0x0

    :goto_3
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    aget-object v0, v5, v8

    invoke-static {v2, v0}, Ln2/b;->c(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ln2/d;->onCrashesSent()V

    aget-object v0, v5, v8

    goto :goto_5

    :cond_6
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ln2/d;->onCrashesNotSent()V

    aget-object v0, v5, v8

    goto :goto_6

    :catchall_0
    move-exception v0

    const/4 v9, 0x0

    goto :goto_8

    :catch_1
    move-exception v0

    const/4 v9, 0x0

    :goto_4
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v9, :cond_7

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    aget-object v0, v5, v8

    invoke-static {v2, v0}, Ln2/b;->c(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ln2/d;->onCrashesSent()V

    aget-object v0, v5, v8

    :goto_5
    invoke-virtual {v3}, Ln2/d;->getMaxRetryAttempts()I

    invoke-static {v2, v0}, Ln2/b;->b(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    goto :goto_7

    :cond_8
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ln2/d;->onCrashesNotSent()V

    aget-object v0, v5, v8

    :goto_6
    invoke-virtual {v3}, Ln2/d;->getMaxRetryAttempts()I

    move-result v9

    invoke-static {v2, v0, v9}, Ln2/b;->k(Ljava/lang/ref/WeakReference;Ljava/lang/String;I)V

    :cond_9
    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    :goto_8
    if-eqz v9, :cond_a

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_b

    aget-object v4, v5, v8

    invoke-static {v2, v4}, Ln2/b;->c(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ln2/d;->onCrashesSent()V

    aget-object v4, v5, v8

    invoke-virtual {v3}, Ln2/d;->getMaxRetryAttempts()I

    invoke-static {v2, v4}, Ln2/b;->b(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    goto :goto_9

    :cond_b
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ln2/d;->onCrashesNotSent()V

    aget-object v4, v5, v8

    invoke-virtual {v3}, Ln2/d;->getMaxRetryAttempts()I

    move-result v3

    invoke-static {v2, v4, v3}, Ln2/b;->k(Ljava/lang/ref/WeakReference;Ljava/lang/String;I)V

    :cond_c
    :goto_9
    throw v0

    .line 4
    :cond_d
    sput-boolean v6, Ln2/b;->c:Z

    return-void
.end method
