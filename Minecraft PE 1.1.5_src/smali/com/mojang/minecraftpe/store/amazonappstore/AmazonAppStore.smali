.class public Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;
.super Ljava/lang/Object;
.source "AmazonAppStore.java"

# interfaces
.implements Lcom/mojang/minecraftpe/store/Store;


# instance fields
.field private mForFireTV:Z

.field private mListener:Lcom/mojang/minecraftpe/store/StoreListener;

.field private mProductIdRequestMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/amazon/device/iap/model/RequestId;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPurchasingListener:Lcom/amazon/device/iap/PurchasingListener;

.field private final subscriptionKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mojang/minecraftpe/store/StoreListener;Z)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/mojang/minecraftpe/store/StoreListener;
    .param p3, "forFireTV"    # Z

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->mProductIdRequestMapping:Ljava/util/Map;

    .line 37
    const-string v0, ".subscription"

    iput-object v0, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->subscriptionKey:Ljava/lang/String;

    .line 39
    new-instance v0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore$1;

    invoke-direct {v0, p0}, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore$1;-><init>(Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;)V

    iput-object v0, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->mPurchasingListener:Lcom/amazon/device/iap/PurchasingListener;

    .line 103
    iput-object p2, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->mListener:Lcom/mojang/minecraftpe/store/StoreListener;

    .line 104
    iput-boolean p3, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->mForFireTV:Z

    .line 105
    iget-object v0, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->mPurchasingListener:Lcom/amazon/device/iap/PurchasingListener;

    invoke-static {p1, v0}, Lcom/amazon/device/iap/PurchasingService;->registerListener(Landroid/content/Context;Lcom/amazon/device/iap/PurchasingListener;)V

    .line 106
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lcom/mojang/minecraftpe/store/StoreListener;->onStoreInitialized(Z)V

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "x0"    # Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->createReceipt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;)Lcom/mojang/minecraftpe/store/StoreListener;
    .registers 2
    .param p0, "x0"    # Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->mListener:Lcom/mojang/minecraftpe/store/StoreListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->mProductIdRequestMapping:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;Lcom/amazon/device/iap/model/PurchaseResponse;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;
    .param p1, "x1"    # Lcom/amazon/device/iap/model/PurchaseResponse;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->createReceipt(Lcom/amazon/device/iap/model/PurchaseResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createReceipt(Lcom/amazon/device/iap/model/PurchaseResponse;)Ljava/lang/String;
    .registers 5
    .param p1, "purchaseResponse"    # Lcom/amazon/device/iap/model/PurchaseResponse;

    .prologue
    .line 178
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseResponse;->getUserData()Lcom/amazon/device/iap/model/UserData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/iap/model/UserData;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, "userId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseResponse;->getReceipt()Lcom/amazon/device/iap/model/Receipt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/iap/model/Receipt;->getReceiptId()Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "receiptId":Ljava/lang/String;
    invoke-direct {p0, v1, v0}, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->createReceipt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private createReceipt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "receiptId"    # Ljava/lang/String;

    .prologue
    .line 166
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 168
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "userId"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 169
    const-string v2, "receiptId"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public acknowledgePurchase(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "receipt"    # Ljava/lang/String;
    .param p2, "productType"    # Ljava/lang/String;

    .prologue
    .line 149
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 150
    .local v0, "json":Lorg/json/JSONObject;
    const-string v2, "receiptId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "receiptId":Ljava/lang/String;
    sget-object v2, Lcom/amazon/device/iap/model/FulfillmentResult;->FULFILLED:Lcom/amazon/device/iap/model/FulfillmentResult;

    invoke-static {v1, v2}, Lcom/amazon/device/iap/PurchasingService;->notifyFulfillment(Ljava/lang/String;Lcom/amazon/device/iap/model/FulfillmentResult;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .end local v0    # "json":Lorg/json/JSONObject;
    .end local v1    # "receiptId":Ljava/lang/String;
    :goto_0
    return-void

    .line 152
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public destructor()V
    .registers 1

    .prologue
    .line 163
    return-void
.end method

.method public getProductSkuPrefix()Ljava/lang/String;
    .registers 2

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->mForFireTV:Z

    if-eqz v0, :cond_0

    const-string v0, "firetv."

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getRealmsSkuPrefix()Ljava/lang/String;
    .registers 2

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->mForFireTV:Z

    if-eqz v0, :cond_0

    const-string v0, "firetv."

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getStoreId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 111
    const-string v0, "android.amazonappstore"

    return-object v0
.end method

.method public purchase(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 6
    .param p1, "productId"    # Ljava/lang/String;
    .param p2, "isSubscription"    # Z
    .param p3, "payload"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-static {p1}, Lcom/amazon/device/iap/PurchasingService;->purchase(Ljava/lang/String;)Lcom/amazon/device/iap/model/RequestId;

    move-result-object v0

    .line 143
    .local v0, "requestId":Lcom/amazon/device/iap/model/RequestId;
    iget-object v1, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->mProductIdRequestMapping:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    return-void
.end method

.method public queryProducts([Ljava/lang/String;)V
    .registers 7
    .param p1, "productIds"    # [Ljava/lang/String;

    .prologue
    .line 126
    array-length v3, p1

    new-array v0, v3, [Ljava/lang/String;

    .line 128
    .local v0, "finalProductIds":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 129
    aget-object v3, p1, v1

    const-string v4, ".subscription"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".child"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 128
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    :cond_0
    aget-object v3, p1, v1

    aput-object v3, v0, v1

    goto :goto_1

    .line 136
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 137
    .local v2, "skus":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v2}, Lcom/amazon/device/iap/PurchasingService;->getProductData(Ljava/util/Set;)Lcom/amazon/device/iap/model/RequestId;

    .line 138
    return-void
.end method

.method public queryPurchases()V
    .registers 2

    .prologue
    .line 158
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/amazon/device/iap/PurchasingService;->getPurchaseUpdates(Z)Lcom/amazon/device/iap/model/RequestId;

    .line 159
    return-void
.end method
