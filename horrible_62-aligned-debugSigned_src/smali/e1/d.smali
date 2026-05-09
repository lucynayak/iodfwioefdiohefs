.class public final Le1/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le1/d$d;
    }
.end annotation


# static fields
.field public static volatile f:Le1/d;


# instance fields
.field public final a:Le1/b;

.field public b:Le1/a;

.field public c:Ljava/util/Date;

.field public final d:Lu/b;

.field public e:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lu/b;Le1/b;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Le1/d;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Le1/d;->c:Ljava/util/Date;

    const-string v0, "localBroadcastManager"

    invoke-static {p1, v0}, Lr0/e;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lr0/e;->l:I

    iput-object p1, p0, Le1/d;->d:Lu/b;

    iput-object p2, p0, Le1/d;->a:Le1/b;

    return-void
.end method

.method public static a()Le1/d;
    .registers 4

    const-class v0, Le1/d;

    sget-object v1, Le1/d;->f:Le1/d;

    if-nez v1, :cond_1

    monitor-enter v0

    :try_start_0
    sget-object v1, Le1/d;->f:Le1/d;

    if-nez v1, :cond_0

    new-instance v1, Le1/d;

    sget-object v2, Le1/r;->a:Ljava/lang/Object;

    .line 1
    invoke-static {}, Lr0/e;->k()V

    sget-object v2, Le1/r;->c:Landroid/content/Context;

    .line 2
    invoke-static {v2}, Lu/b;->a(Landroid/content/Context;)Lu/b;

    move-result-object v2

    new-instance v3, Le1/b;

    invoke-direct {v3}, Le1/b;-><init>()V

    invoke-direct {v1, v2, v3}, Le1/d;-><init>(Lu/b;Le1/b;)V

    sput-object v1, Le1/d;->f:Le1/d;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Le1/d;->f:Le1/d;

    return-object v0
.end method


# virtual methods
.method public final b(Le1/a$b;)V
    .registers 19

    move-object/from16 v8, p0

    iget-object v6, v8, Le1/d;->b:Le1/a;

    if-nez v6, :cond_0

    if-eqz p1, :cond_1

    new-instance v0, Le1/m;

    const-string v1, "No current access token to refresh"

    invoke-direct {v0, v1}, Le1/m;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-interface/range {p1 .. p1}, Le1/a$b;->a()V

    goto :goto_1

    :cond_0
    iget-object v0, v8, Le1/d;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x0

    const/4 v9, 0x1

    invoke-virtual {v0, v7, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    new-instance v0, Le1/m;

    const-string v1, "Refresh already in progress"

    invoke-direct {v0, v1}, Le1/m;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, v8, Le1/d;->c:Ljava/util/Date;

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    new-instance v12, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v12, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v13, Le1/d$d;

    invoke-direct {v13}, Le1/d$d;-><init>()V

    const/4 v0, 0x2

    new-array v14, v0, [Le1/u;

    new-instance v5, Le1/d$a;

    invoke-direct {v5, v12, v10, v11}, Le1/d$a;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/Set;Ljava/util/Set;)V

    .line 1
    new-instance v15, Le1/u;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    sget-object v16, Le1/z;->c:Le1/z;

    const-string v2, "me/permissions"

    move-object v0, v15

    move-object v1, v6

    move-object/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Le1/u;-><init>(Le1/a;Ljava/lang/String;Landroid/os/Bundle;Le1/z;Le1/u$c;)V

    aput-object v15, v14, v7

    .line 2
    new-instance v5, Le1/d$b;

    invoke-direct {v5, v13}, Le1/d$b;-><init>(Le1/d$d;)V

    .line 3
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "grant_type"

    const-string v1, "fb_extend_sso_token"

    invoke-virtual {v3, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Le1/u;

    const-string v2, "oauth/access_token"

    move-object v0, v7

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Le1/u;-><init>(Le1/a;Ljava/lang/String;Landroid/os/Bundle;Le1/z;Le1/u$c;)V

    aput-object v7, v14, v9

    .line 4
    new-instance v9, Le1/x;

    invoke-direct {v9, v14}, Le1/x;-><init>([Le1/u;)V

    new-instance v14, Le1/d$c;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v6

    move-object/from16 v3, p1

    move-object v4, v12

    move-object v5, v13

    move-object v6, v10

    move-object v7, v11

    invoke-direct/range {v0 .. v7}, Le1/d$c;-><init>(Le1/d;Le1/a;Le1/a$b;Ljava/util/concurrent/atomic/AtomicBoolean;Le1/d$d;Ljava/util/Set;Ljava/util/Set;)V

    .line 5
    iget-object v0, v9, Le1/x;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v9, Le1/x;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_3
    invoke-static {v9}, Le1/u;->g(Le1/x;)Le1/w;

    return-void
.end method

.method public final c(Le1/a;Z)V
    .registers 7

    iget-object v0, p0, Le1/d;->b:Le1/a;

    iput-object p1, p0, Le1/d;->b:Le1/a;

    iget-object v1, p0, Le1/d;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v1, Ljava/util/Date;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v1, p0, Le1/d;->c:Ljava/util/Date;

    if-eqz p2, :cond_1

    iget-object p2, p0, Le1/d;->a:Le1/b;

    if-eqz p1, :cond_0

    invoke-virtual {p2, p1}, Le1/b;->a(Le1/a;)V

    goto :goto_0

    .line 1
    :cond_0
    iget-object p2, p2, Le1/b;->a:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v1, "com.facebook.AccessTokenManager.CachedAccessToken"

    invoke-interface {p2, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2
    sget-object p2, Le1/r;->a:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lr0/e;->k()V

    sget-object p2, Le1/r;->c:Landroid/content/Context;

    .line 4
    invoke-static {p2}, Lh1/x;->d(Landroid/content/Context;)V

    :cond_1
    :goto_0
    invoke-static {v0, p1}, Lh1/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 5
    new-instance p2, Landroid/content/Intent;

    const-string v1, "com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED"

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.facebook.sdk.EXTRA_OLD_ACCESS_TOKEN"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "com.facebook.sdk.EXTRA_NEW_ACCESS_TOKEN"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object p1, p0, Le1/d;->d:Lu/b;

    invoke-virtual {p1, p2}, Lu/b;->b(Landroid/content/Intent;)Z

    :cond_2
    return-void
.end method
