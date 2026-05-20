.class public final Lcom/microsoft/xbox/idp/util/CacheUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "CacheUtil"

.field private static final bitmapCache:Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;

.field private static final map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/microsoft/xbox/idp/util/ResultCache<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final objectLoaderCache:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/util/CacheUtil;->map:Ljava/util/HashMap;

    new-instance v1, Lcom/microsoft/xbox/idp/util/ObjectLoaderCache;

    invoke-direct {v1}, Lcom/microsoft/xbox/idp/util/ObjectLoaderCache;-><init>()V

    sput-object v1, Lcom/microsoft/xbox/idp/util/CacheUtil;->objectLoaderCache:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;

    new-instance v1, Lcom/microsoft/xbox/idp/util/BitmapLoaderCache;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Lcom/microsoft/xbox/idp/util/BitmapLoaderCache;-><init>(I)V

    sput-object v1, Lcom/microsoft/xbox/idp/util/CacheUtil;->bitmapCache:Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;

    const-class v1, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;

    new-instance v2, Lcom/microsoft/xbox/idp/util/ResultCache;

    invoke-direct {v2}, Lcom/microsoft/xbox/idp/util/ResultCache;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$Result;

    new-instance v2, Lcom/microsoft/xbox/idp/util/ResultCache;

    invoke-direct {v2}, Lcom/microsoft/xbox/idp/util/ResultCache;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$Result;

    new-instance v2, Lcom/microsoft/xbox/idp/util/ResultCache;

    invoke-direct {v2}, Lcom/microsoft/xbox/idp/util/ResultCache;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lcom/microsoft/xbox/idp/toolkit/StartSignInLoader$Result;

    new-instance v2, Lcom/microsoft/xbox/idp/util/ResultCache;

    invoke-direct {v2}, Lcom/microsoft/xbox/idp/util/ResultCache;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$Result;

    new-instance v2, Lcom/microsoft/xbox/idp/util/ResultCache;

    invoke-direct {v2}, Lcom/microsoft/xbox/idp/util/ResultCache;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$Result;

    new-instance v2, Lcom/microsoft/xbox/idp/util/ResultCache;

    invoke-direct {v2}, Lcom/microsoft/xbox/idp/util/ResultCache;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearCaches()V
    .registers 2

    sget-object v0, Lcom/microsoft/xbox/idp/util/CacheUtil;->TAG:Ljava/lang/String;

    const-string v1, "clearCaches"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/microsoft/xbox/idp/util/CacheUtil;->objectLoaderCache:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    sget-object v1, Lcom/microsoft/xbox/idp/util/CacheUtil;->bitmapCache:Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;

    monitor-enter v1

    :try_start_1
    invoke-interface {v1}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sget-object v0, Lcom/microsoft/xbox/idp/util/CacheUtil;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/idp/util/ResultCache;

    monitor-enter v1

    :try_start_2
    invoke-virtual {v1}, Lcom/microsoft/xbox/idp/util/ResultCache;->clear()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    return-void

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1
.end method

.method public static getBitmapCache()Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;
    .registers 1

    sget-object v0, Lcom/microsoft/xbox/idp/util/CacheUtil;->bitmapCache:Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;

    return-object v0
.end method

.method public static getObjectLoaderCache()Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;
    .registers 1

    sget-object v0, Lcom/microsoft/xbox/idp/util/CacheUtil;->objectLoaderCache:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;

    return-object v0
.end method

.method public static getResultCache(Ljava/lang/Class;)Lcom/microsoft/xbox/idp/util/ResultCache;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TR;>;)",
            "Lcom/microsoft/xbox/idp/util/ResultCache<",
            "TR;>;"
        }
    .end annotation

    sget-object v0, Lcom/microsoft/xbox/idp/util/CacheUtil;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/idp/util/ResultCache;

    return-object p0
.end method
