.class public final Lk1/m;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/util/UUID;Ll1/d;)Lh1/q$a;
    .locals 3

    .line 1
    instance-of v0, p1, Ll1/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Ll1/j;

    .line 2
    iget-object v0, p1, Ll1/j;->c:Landroid/graphics/Bitmap;

    .line 3
    iget-object p1, p1, Ll1/j;->e:Landroid/net/Uri;

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Ll1/l;

    if-eqz v0, :cond_1

    check-cast p1, Ll1/l;

    .line 5
    iget-object p1, p1, Ll1/l;->c:Landroid/net/Uri;

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object p1, v1

    move-object v0, p1

    :goto_0
    const-string v2, "callId"

    if-eqz v0, :cond_2

    .line 6
    sget-object p1, Lh1/q;->a:Ljava/io/File;

    .line 7
    invoke-static {p0, v2}, Lr0/e;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget p1, Lr0/e;->l:I

    new-instance p1, Lh1/q$a;

    invoke-direct {p1, p0, v0, v1}, Lh1/q$a;-><init>(Ljava/util/UUID;Landroid/graphics/Bitmap;Landroid/net/Uri;)V

    move-object v1, p1

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 8
    sget-object v0, Lh1/q;->a:Ljava/io/File;

    .line 9
    invoke-static {p0, v2}, Lr0/e;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lr0/e;->l:I

    new-instance v0, Lh1/q$a;

    invoke-direct {v0, p0, v1, p1}, Lh1/q$a;-><init>(Ljava/util/UUID;Landroid/graphics/Bitmap;Landroid/net/Uri;)V

    goto :goto_2

    :cond_3
    :goto_1
    move-object v0, v1

    :goto_2
    return-object v0
.end method

.method public static b(Ljava/lang/String;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, v0, 0x1

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public static c(Ll1/k;Ljava/util/UUID;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll1/k;",
            "Ljava/util/UUID;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Ll1/k;->g:Ljava/util/List;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 3
    check-cast v2, Ll1/j;

    .line 4
    invoke-static {p1, v2}, Lk1/m;->a(Ljava/util/UUID;Ll1/d;)Lh1/q$a;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_3

    move-object v1, v0

    :cond_3
    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 6
    check-cast v2, Lh1/q$a;

    .line 7
    iget-object v2, v2, Lh1/q$a;->b:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 8
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_7

    goto :goto_2

    :cond_7
    move-object v0, p0

    .line 9
    :goto_2
    invoke-static {v1}, Lh1/q;->a(Ljava/util/Collection;)V

    :goto_3
    return-object v0
.end method

.method public static d(ILandroid/content/Intent;Lc/c;)Z
    .locals 5

    .line 1
    invoke-static {p1}, Lh1/r;->e(Landroid/content/Intent;)Ljava/util/UUID;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v3, v1

    goto :goto_2

    .line 2
    :cond_0
    const-class v2, Lh1/a;

    monitor-enter v2

    .line 3
    :try_start_0
    sget-object v3, Lh1/a;->d:Lh1/a;

    if-eqz v3, :cond_2

    .line 4
    iget-object v4, v3, Lh1/a;->b:Ljava/io/Serializable;

    check-cast v4, Ljava/util/UUID;

    .line 5
    invoke-virtual {v4, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget v0, v3, Lh1/a;->a:I

    if-eq v0, p0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sput-object v1, Lh1/a;->d:Lh1/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v2

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    :goto_0
    move-object v3, v1

    .line 8
    :goto_1
    monitor-exit v2

    :goto_2
    const/4 p0, 0x0

    const/4 v0, 0x1

    if-nez v3, :cond_3

    return p0

    .line 9
    :cond_3
    iget-object v2, v3, Lh1/a;->b:Ljava/io/Serializable;

    check-cast v2, Ljava/util/UUID;

    .line 10
    invoke-static {v2, p0}, Lh1/q;->d(Ljava/util/UUID;Z)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {v2}, Lh1/x;->g(Ljava/io/File;)V

    .line 11
    :cond_4
    invoke-static {p1}, Lh1/r;->d(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "error"

    if-eqz v2, :cond_5

    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    goto :goto_3

    :cond_5
    const-string v2, "com.facebook.platform.status.ERROR_TYPE"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    :goto_3
    if-nez v2, :cond_6

    move-object v2, v1

    goto :goto_4

    .line 12
    :cond_6
    invoke-static {p1}, Lh1/r;->d(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_4

    :cond_7
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 13
    :goto_4
    invoke-static {v2}, Lh1/r;->f(Landroid/os/Bundle;)Le1/m;

    move-result-object v2

    if-eqz v2, :cond_b

    instance-of p0, v2, Le1/n;

    check-cast p2, Lk1/i;

    if-eqz p0, :cond_9

    .line 14
    iget-object p0, p2, Lk1/i;->b:Le1/j;

    const-string p1, "cancelled"

    .line 15
    invoke-static {p1, v1}, Lk1/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_8

    invoke-interface {p0}, Le1/j;->onCancel()V

    :cond_8
    return v0

    .line 16
    :cond_9
    iget-object p0, p2, Lk1/i;->b:Le1/j;

    .line 17
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "error"

    invoke-static {p2, p1}, Lk1/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_a

    invoke-interface {p0, v2}, Le1/j;->onError(Le1/m;)V

    :cond_a
    return v0

    :cond_b
    const-string v2, "com.facebook.platform.protocol.PROTOCOL_VERSION"

    .line 18
    invoke-virtual {p1, v2, p0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    .line 19
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p0}, Lh1/r;->j(I)Z

    move-result p0

    if-eqz p0, :cond_d

    if-nez p1, :cond_c

    goto :goto_5

    :cond_c
    const-string p0, "com.facebook.platform.protocol.RESULT_ARGS"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 20
    :cond_d
    :goto_5
    check-cast p2, Lk1/i;

    if-eqz p1, :cond_14

    const-string p0, "completionGesture"

    .line 21
    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_6

    :cond_e
    const-string p0, "com.facebook.platform.extra.COMPLETION_GESTURE"

    :goto_6
    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_11

    const-string v2, "post"

    .line 22
    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_7

    :cond_f
    const-string p1, "cancel"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_10

    iget-object p0, p2, Lk1/i;->b:Le1/j;

    const-string p1, "cancelled"

    .line 23
    invoke-static {p1, v1}, Lk1/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_14

    invoke-interface {p0}, Le1/j;->onCancel()V

    goto :goto_9

    .line 24
    :cond_10
    iget-object p0, p2, Lk1/i;->b:Le1/j;

    new-instance p1, Le1/m;

    const-string p2, "UnknownError"

    invoke-direct {p1, p2}, Le1/m;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v1, "error"

    invoke-static {v1, p2}, Lk1/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_14

    invoke-interface {p0, p1}, Le1/j;->onError(Le1/m;)V

    goto :goto_9

    :cond_11
    :goto_7
    const-string p0, "postId"

    .line 26
    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    goto :goto_8

    :cond_12
    const-string p0, "com.facebook.platform.extra.POST_ID"

    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    goto :goto_8

    :cond_13
    const-string p0, "post_id"

    :goto_8
    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    iget-object p0, p2, Lk1/i;->b:Le1/j;

    const-string p1, "succeeded"

    .line 28
    invoke-static {p1, v1}, Lk1/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_14

    new-instance p1, Lj1/a;

    invoke-direct {p1}, Lj1/a;-><init>()V

    invoke-interface {p0, p1}, Le1/j;->onSuccess(Ljava/lang/Object;)V

    :cond_14
    :goto_9
    return v0

    :catchall_1
    move-exception p0

    .line 29
    monitor-exit v2

    throw p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Le1/r;->a:Ljava/lang/Object;

    .line 1
    invoke-static {}, Lr0/e;->k()V

    sget-object v0, Le1/r;->c:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Lf1/f;->h(Landroid/content/Context;)Lf1/f;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "fb_share_dialog_outcome"

    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string p0, "error_message"

    invoke-virtual {v1, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p0, "fb_share_dialog_result"

    invoke-virtual {v0, p0, v1}, Lf1/f;->g(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static f(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 4

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lorg/json/JSONArray;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/json/JSONArray;

    invoke-static {v2}, Lk1/m;->f(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v2

    goto :goto_1

    :cond_0
    instance-of v3, v2, Lorg/json/JSONObject;

    if-eqz v3, :cond_1

    check-cast v2, Lorg/json/JSONObject;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lk1/m;->g(Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static g(Lorg/json/JSONObject;Z)Lorg/json/JSONObject;
    .locals 9

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto/16 :goto_5

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_7

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lorg/json/JSONObject;

    if-eqz v6, :cond_1

    check-cast v5, Lorg/json/JSONObject;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lk1/m;->g(Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object v5

    goto :goto_1

    :cond_1
    instance-of v6, v5, Lorg/json/JSONArray;

    if-eqz v6, :cond_2

    check-cast v5, Lorg/json/JSONArray;

    invoke-static {v5}, Lk1/m;->f(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-static {v4}, Lk1/m;->b(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v6

    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    if-eqz p1, :cond_5

    if-eqz v7, :cond_3

    const-string v8, "fbsdk"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_2

    :cond_3
    if-eqz v7, :cond_6

    const-string v4, "og"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    :cond_5
    if-eqz v7, :cond_6

    const-string v8, "fb"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    :goto_2
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    :cond_6
    :goto_3
    invoke-virtual {v0, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result p0

    if-lez p0, :cond_8

    const-string p0, "data"

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_8
    move-object p0, v0

    :goto_5
    return-object p0

    :catch_0
    new-instance p0, Le1/m;

    const-string p1, "Failed to create json object from share content"

    invoke-direct {p0, p1}, Le1/m;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static h(Ljava/util/UUID;Ll1/g;)Lorg/json/JSONObject;
    .locals 5

    .line 1
    iget-object v0, p1, Ll1/g;->g:Ll1/f;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lk1/m$a;

    invoke-direct {v2, p0, v1}, Lk1/m$a;-><init>(Ljava/util/UUID;Ljava/util/ArrayList;)V

    invoke-static {v0, v2}, Lk1/e;->a(Ll1/f;Lk1/e$a;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {v1}, Lh1/q;->a(Ljava/util/Collection;)V

    .line 3
    iget-object v0, p1, Ll1/a;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "place"

    .line 4
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lh1/x;->r(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p1, Ll1/a;->e:Ljava/lang/String;

    .line 6
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    :cond_0
    iget-object v0, p1, Ll1/a;->d:Ljava/util/List;

    if-eqz v0, :cond_4

    const-string v0, "tags"

    .line 8
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    goto :goto_1

    :cond_1
    sget-object v2, Lh1/x;->a:[Ljava/lang/String;

    .line 9
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 10
    :goto_1
    iget-object p1, p1, Ll1/a;->d:Ljava/util/List;

    .line 11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    return-object p0
.end method
