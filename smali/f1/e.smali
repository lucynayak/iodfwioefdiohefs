.class public final Lf1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le1/u$c;


# instance fields
.field public final synthetic a:Lf1/f$a;

.field public final synthetic b:Lf1/f$d;

.field public final synthetic c:Lf1/f$f;


# direct methods
.method public constructor <init>(Lf1/f$a;Le1/u;Lf1/f$f;Lf1/f$d;)V
    .registers 5

    iput-object p1, p0, Lf1/e;->a:Lf1/f$a;

    iput-object p3, p0, Lf1/e;->c:Lf1/f$f;

    iput-object p4, p0, Lf1/e;->b:Lf1/f$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Le1/y;)V
    .registers 12

    iget-object v0, p0, Lf1/e;->a:Lf1/f$a;

    iget-object v1, p0, Lf1/e;->c:Lf1/f$f;

    iget-object v2, p0, Lf1/e;->b:Lf1/f$d;

    .line 1
    sget-object v3, Lf1/f$c;->e:Lf1/f$c;

    sget-object v4, Lf1/f$c;->c:Lf1/f$c;

    iget-object v5, p1, Le1/y;->b:Le1/o;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_1

    .line 2
    iget v8, v5, Le1/o;->c:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_0

    move-object p1, v4

    goto :goto_0

    :cond_0
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Le1/y;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v8, v6

    invoke-virtual {v5}, Le1/o;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v8, v7

    const-string p1, "Failed:\n  Response: %s\n  Error %s"

    invoke-static {p1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    sget-object p1, Lf1/f$c;->d:Lf1/f$c;

    goto :goto_0

    :cond_1
    move-object p1, v3

    :goto_0
    invoke-static {}, Le1/r;->b()V

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    .line 4
    :goto_1
    monitor-enter v1

    if-eqz v7, :cond_3

    :try_start_0
    iget-object v5, v1, Lf1/f$f;->a:Ljava/util/ArrayList;

    iget-object v7, v1, Lf1/f$f;->d:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    iget-object v5, v1, Lf1/f$f;->d:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iput v6, v1, Lf1/f$f;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    monitor-exit v1

    if-ne p1, v4, :cond_7

    .line 5
    sget-object v5, Lf1/f;->d:Landroid/content/Context;

    .line 6
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lf1/f;->j:Ljava/lang/Object;

    .line 8
    monitor-enter v0

    .line 9
    :try_start_1
    sget-object v1, Lf1/f;->j:Ljava/lang/Object;

    .line 10
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v7, Lf1/f$e;

    invoke-direct {v7, v5}, Lf1/f$e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7}, Lf1/f$e;->a()V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 11
    :try_start_3
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lf1/f$f;

    .line 12
    monitor-enter v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-object v8, v6, Lf1/f$f;->a:Ljava/util/ArrayList;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v6, Lf1/f$f;->a:Ljava/util/ArrayList;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    monitor-exit v6

    .line 13
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf1/f$a;

    .line 14
    iget-object v6, v7, Lf1/f$e;->b:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, v7, Lf1/f$e;->b:Ljava/util/HashMap;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v6, v7, Lf1/f$e;->b:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 15
    monitor-exit v6

    throw p1

    .line 16
    :cond_6
    invoke-virtual {v7}, Lf1/f$e;->b()V

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 17
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw p1

    :catchall_2
    move-exception p1

    .line 18
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw p1

    :cond_7
    :goto_3
    if-eq p1, v3, :cond_8

    .line 19
    iget-object v0, v2, Lf1/f$d;->b:Lf1/f$c;

    if-eq v0, v4, :cond_8

    iput-object p1, v2, Lf1/f$d;->b:Lf1/f$c;

    :cond_8
    return-void

    :catchall_3
    move-exception p1

    .line 20
    monitor-exit v1

    throw p1
.end method
