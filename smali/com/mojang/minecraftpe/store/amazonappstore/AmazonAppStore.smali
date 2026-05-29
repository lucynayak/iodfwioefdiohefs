.class public Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mojang/minecraftpe/store/Store;


# instance fields
.field private mForFireTV:Z

.field private mListener:Lcom/mojang/minecraftpe/store/StoreListener;

.field private mProductIdRequestMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "La1/e;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPurchasingListener:Lq0/a;

.field private final subscriptionKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mojang/minecraftpe/store/StoreListener;Z)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->mProductIdRequestMapping:Ljava/util/Map;

    const-string v0, ".subscription"

    iput-object v0, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->subscriptionKey:Ljava/lang/String;

    new-instance v0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore$1;

    invoke-direct {v0, p0}, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore$1;-><init>(Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;)V

    iput-object v0, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->mPurchasingListener:Lq0/a;

    iput-object p2, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->mListener:Lcom/mojang/minecraftpe/store/StoreListener;

    iput-boolean p3, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->mForFireTV:Z

    sget-boolean p3, Lq0/b;->a:Z

    .line 1
    sget-object p3, Lr0/d;->d:Lr0/d;

    .line 2
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "d"

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PurchasingListener registered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, La3/r0;->f(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PurchasingListener Context: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, La3/r0;->f(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p3, Lr0/d;->b:Landroid/content/Context;

    iput-object v0, p3, Lr0/d;->c:Lq0/a;

    const/4 p1, 0x1

    .line 4
    invoke-interface {p2, p1}, Lcom/mojang/minecraftpe/store/StoreListener;->onStoreInitialized(Z)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Neither PurchasingListener or its Context can be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$000(Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->createReceipt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;)Lcom/mojang/minecraftpe/store/StoreListener;
    .registers 1

    iget-object p0, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->mListener:Lcom/mojang/minecraftpe/store/StoreListener;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->mProductIdRequestMapping:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;La1/c;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->createReceipt(La1/c;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private createReceipt(La1/c;)Ljava/lang/String;
    .registers 2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1
.end method

.method private createReceipt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "userId"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "receiptId"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public acknowledgePurchase(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "receiptId"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lq0/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public destructor()V
    .registers 1

    return-void
.end method

.method public getProductSkuPrefix()Ljava/lang/String;
    .registers 2

    iget-boolean v0, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->mForFireTV:Z

    if-eqz v0, :cond_0

    const-string v0, "firetv."

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getRealmsSkuPrefix()Ljava/lang/String;
    .registers 2

    iget-boolean v0, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->mForFireTV:Z

    if-eqz v0, :cond_0

    const-string v0, "firetv."

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getStoreId()Ljava/lang/String;
    .registers 2

    const-string v0, "android.amazonappstore"

    return-object v0
.end method

.method public purchase(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 4

    sget-boolean p2, Lq0/b;->a:Z

    .line 1
    sget-object p2, Lr0/d;->d:Lr0/d;

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "sku"

    .line 3
    invoke-static {p1, p3}, Ld1/a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lr0/d;->a()V

    new-instance p3, La1/e;

    invoke-direct {p3}, La1/e;-><init>()V

    iget-object p2, p2, Lr0/d;->a:Lr0/c;

    invoke-interface {p2, p3, p1}, Lr0/c;->b(La1/e;Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->mProductIdRequestMapping:Ljava/util/Map;

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public queryProducts([Ljava/lang/String;)V
    .registers 7

    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-object v2, p1, v1

    const-string v3, ".subscription"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p1, v1

    const-string v4, ".child"

    .line 1
    invoke-static {v2, v3, v4}, La/a;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    aput-object v2, v0, v1

    goto :goto_1

    :cond_0
    aget-object v2, p1, v1

    aput-object v2, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sget-boolean v0, Lq0/b;->a:Z

    .line 3
    sget-object v0, Lr0/d;->d:Lr0/d;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 6
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Empty SKU values are not allowed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v1

    const/16 v2, 0x64

    if-gt v1, v2, :cond_4

    invoke-virtual {v0}, Lr0/d;->a()V

    new-instance v1, La1/e;

    invoke-direct {v1}, La1/e;-><init>()V

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iget-object p1, v0, Lr0/d;->a:Lr0/c;

    invoke-interface {p1, v1, v2}, Lr0/c;->a(La1/e;Ljava/util/Set;)V

    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " SKUs were provided, but no more than "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " SKUs are allowed"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "skus must not be empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public queryPurchases()V
    .registers 3

    sget-boolean v0, Lq0/b;->a:Z

    .line 1
    sget-object v0, Lr0/d;->d:Lr0/d;

    .line 2
    invoke-virtual {v0}, Lr0/d;->a()V

    new-instance v1, La1/e;

    invoke-direct {v1}, La1/e;-><init>()V

    iget-object v0, v0, Lr0/d;->a:Lr0/c;

    invoke-interface {v0, v1}, Lr0/c;->d(La1/e;)V

    return-void
.end method
