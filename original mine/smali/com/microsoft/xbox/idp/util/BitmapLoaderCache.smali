.class public Lcom/microsoft/xbox/idp/util/BitmapLoaderCache;
.super Ljava/lang/Object;
.source "BitmapLoaderCache.java"

# interfaces
.implements Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;


# instance fields
.field private final cache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Object;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "numOfEntries"    # I

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Landroid/util/LruCache;

    invoke-direct {v0, p1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/util/BitmapLoaderCache;->cache:Landroid/util/LruCache;

    .line 15
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/microsoft/xbox/idp/util/BitmapLoaderCache;->cache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 35
    return-void
.end method

.method public get(Ljava/lang/Object;)[B
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/microsoft/xbox/idp/util/BitmapLoaderCache;->cache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public put(Ljava/lang/Object;[B)[B
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # [B

    .prologue
    .line 24
    iget-object v0, p0, Lcom/microsoft/xbox/idp/util/BitmapLoaderCache;->cache:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)[B
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/microsoft/xbox/idp/util/BitmapLoaderCache;->cache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method
