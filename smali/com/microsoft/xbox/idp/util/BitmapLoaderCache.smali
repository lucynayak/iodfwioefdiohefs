.class public Lcom/microsoft/xbox/idp/util/BitmapLoaderCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;


# instance fields
.field private final cache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/Object;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/LruCache;

    invoke-direct {v0, p1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/util/BitmapLoaderCache;->cache:Landroid/util/LruCache;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/microsoft/xbox/idp/util/BitmapLoaderCache;->cache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    return-void
.end method

.method public get(Ljava/lang/Object;)[B
    .registers 3

    iget-object v0, p0, Lcom/microsoft/xbox/idp/util/BitmapLoaderCache;->cache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method public put(Ljava/lang/Object;[B)[B
    .registers 4

    iget-object v0, p0, Lcom/microsoft/xbox/idp/util/BitmapLoaderCache;->cache:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)[B
    .registers 3

    iget-object v0, p0, Lcom/microsoft/xbox/idp/util/BitmapLoaderCache;->cache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method
