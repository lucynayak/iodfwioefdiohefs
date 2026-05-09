.class public Lcom/microsoft/xbox/idp/util/ResultLoaderInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/xbox/idp/util/ErrorHelper$LoaderInfo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/microsoft/xbox/idp/util/ErrorHelper$LoaderInfo;"
    }
.end annotation


# instance fields
.field private final callbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks<",
            "*>;"
        }
    .end annotation
.end field

.field private final cls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Landroid/app/LoaderManager$LoaderCallbacks;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TR;>;",
            "Landroid/app/LoaderManager$LoaderCallbacks<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xbox/idp/util/ResultLoaderInfo;->cls:Ljava/lang/Class;

    iput-object p2, p0, Lcom/microsoft/xbox/idp/util/ResultLoaderInfo;->callbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    return-void
.end method


# virtual methods
.method public clearCache(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/idp/util/ResultLoaderInfo;->cls:Ljava/lang/Class;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/util/CacheUtil;->getResultCache(Ljava/lang/Class;)Lcom/microsoft/xbox/idp/util/ResultCache;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/idp/util/ResultCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getLoaderCallbacks()Landroid/app/LoaderManager$LoaderCallbacks;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/app/LoaderManager$LoaderCallbacks<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/xbox/idp/util/ResultLoaderInfo;->callbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    return-object v0
.end method

.method public hasCachedData(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/idp/util/ResultLoaderInfo;->cls:Ljava/lang/Class;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/util/CacheUtil;->getResultCache(Ljava/lang/Class;)Lcom/microsoft/xbox/idp/util/ResultCache;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/idp/util/ResultCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
