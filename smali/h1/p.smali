.class public final Lh1/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Le1/a0;

.field public b:Ljava/lang/StringBuilder;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lh1/p;->c:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    sget-object v0, Le1/a0;->i:Le1/a0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "Request"

    const-string v2, "tag"

    invoke-static {v1, v2}, Lr0/e;->j(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lh1/p;->a:Le1/a0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lh1/p;->b:Ljava/lang/StringBuilder;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 4

    const-class v0, Lh1/p;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Le1/r;->b()V

    const-string v1, "ACCESS_TOKEN_REMOVED"

    .line 1
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v2, Lh1/p;->c:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 3
    :try_start_3
    monitor-exit v0

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    .line 4
    monitor-exit v0

    throw p0
.end method
