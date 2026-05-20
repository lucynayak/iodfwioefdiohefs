.class Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore$1;
.super Ljava/lang/Object;
.source "AmazonAppStore.java"

# interfaces
.implements Lcom/amazon/device/iap/PurchasingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;


# direct methods
.method constructor <init>(Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore$1;->this$0:Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProductDataResponse(Lcom/amazon/device/iap/model/ProductDataResponse;)V
    .registers 13
    .param p1, "productDataResponse"    # Lcom/amazon/device/iap/model/ProductDataResponse;

    .prologue
    .line 75
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/ProductDataResponse;->getRequestStatus()Lcom/amazon/device/iap/model/ProductDataResponse$RequestStatus;

    move-result-object v7

    sget-object v8, Lcom/amazon/device/iap/model/ProductDataResponse$RequestStatus;->SUCCESSFUL:Lcom/amazon/device/iap/model/ProductDataResponse$RequestStatus;

    if-ne v7, v8, :cond_4

    .line 76
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v4, "products":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mojang/minecraftpe/store/Product;>;"
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/ProductDataResponse;->getUnavailableSkus()Ljava/util/Set;

    move-result-object v6

    .line 79
    .local v6, "unavailableSkus":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/ProductDataResponse;->getProductData()Ljava/util/Map;

    move-result-object v1

    .line 81
    .local v1, "productDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/amazon/device/iap/model/Product;>;"
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 82
    .local v3, "productKey":Ljava/lang/String;
    invoke-interface {v6, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 83
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/device/iap/model/Product;

    .line 85
    .local v2, "productEntry":Lcom/amazon/device/iap/model/Product;
    invoke-virtual {v2}, Lcom/amazon/device/iap/model/Product;->getSku()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v2}, Lcom/amazon/device/iap/model/Product;->getSku()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".child"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 86
    .local v5, "skuStr":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2}, Lcom/amazon/device/iap/model/Product;->getPrice()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v2}, Lcom/amazon/device/iap/model/Product;->getPrice()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "priceStr":Ljava/lang/String;
    :goto_2
    new-instance v8, Lcom/mojang/minecraftpe/store/Product;

    invoke-direct {v8, v5, v0}, Lcom/mojang/minecraftpe/store/Product;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 85
    .end local v0    # "priceStr":Ljava/lang/String;
    .end local v5    # "skuStr":Ljava/lang/String;
    :cond_1
    const-string v5, ""

    goto :goto_1

    .line 86
    .restart local v5    # "skuStr":Ljava/lang/String;
    :cond_2
    const-string v0, ""

    goto :goto_2

    .line 95
    .end local v2    # "productEntry":Lcom/amazon/device/iap/model/Product;
    .end local v3    # "productKey":Ljava/lang/String;
    .end local v5    # "skuStr":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore$1;->this$0:Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;

    invoke-static {v7}, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->access$100(Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;)Lcom/mojang/minecraftpe/store/StoreListener;

    move-result-object v8

    const/4 v7, 0x0

    new-array v7, v7, [Lcom/mojang/minecraftpe/store/Product;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/mojang/minecraftpe/store/Product;

    invoke-interface {v8, v7}, Lcom/mojang/minecraftpe/store/StoreListener;->onQueryProductsSuccess([Lcom/mojang/minecraftpe/store/Product;)V

    .line 99
    .end local v1    # "productDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/amazon/device/iap/model/Product;>;"
    .end local v4    # "products":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mojang/minecraftpe/store/Product;>;"
    .end local v6    # "unavailableSkus":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_3
    return-void

    .line 97
    :cond_4
    iget-object v7, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore$1;->this$0:Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;

    invoke-static {v7}, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->access$100(Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;)Lcom/mojang/minecraftpe/store/StoreListener;

    move-result-object v7

    invoke-interface {v7}, Lcom/mojang/minecraftpe/store/StoreListener;->onQueryProductsFail()V

    goto :goto_3
.end method

.method public onPurchaseResponse(Lcom/amazon/device/iap/model/PurchaseResponse;)V
    .registers 5
    .param p1, "purchaseResponse"    # Lcom/amazon/device/iap/model/PurchaseResponse;

    .prologue
    .line 64
    iget-object v1, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore$1;->this$0:Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;

    invoke-static {v1}, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->access$200(Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseResponse;->getRequestId()Lcom/amazon/device/iap/model/RequestId;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 66
    .local v0, "productId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseResponse;->getRequestStatus()Lcom/amazon/device/iap/model/PurchaseResponse$RequestStatus;

    move-result-object v1

    sget-object v2, Lcom/amazon/device/iap/model/PurchaseResponse$RequestStatus;->SUCCESSFUL:Lcom/amazon/device/iap/model/PurchaseResponse$RequestStatus;

    if-ne v1, v2, :cond_0

    .line 67
    iget-object v1, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore$1;->this$0:Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;

    invoke-static {v1}, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->access$100(Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;)Lcom/mojang/minecraftpe/store/StoreListener;

    move-result-object v1

    iget-object v2, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore$1;->this$0:Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;

    invoke-static {v2, p1}, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->access$300(Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;Lcom/amazon/device/iap/model/PurchaseResponse;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/mojang/minecraftpe/store/StoreListener;->onPurchaseSuccessful(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore$1;->this$0:Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;

    invoke-static {v1}, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->access$100(Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;)Lcom/mojang/minecraftpe/store/StoreListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mojang/minecraftpe/store/StoreListener;->onPurchaseFailed(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPurchaseUpdatesResponse(Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;)V
    .registers 11
    .param p1, "purchaseUpdatesResponse"    # Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;

    .prologue
    const/4 v4, 0x0

    .line 47
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;->getRequestStatus()Lcom/amazon/device/iap/model/PurchaseUpdatesResponse$RequestStatus;

    move-result-object v3

    sget-object v5, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse$RequestStatus;->SUCCESSFUL:Lcom/amazon/device/iap/model/PurchaseUpdatesResponse$RequestStatus;

    if-ne v3, v5, :cond_2

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v0, "purchases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mojang/minecraftpe/store/Purchase;>;"
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;->getUserData()Lcom/amazon/device/iap/model/UserData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/device/iap/model/UserData;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "userId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;->getReceipts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/device/iap/model/Receipt;

    .line 53
    .local v1, "receipt":Lcom/amazon/device/iap/model/Receipt;
    new-instance v6, Lcom/mojang/minecraftpe/store/Purchase;

    invoke-virtual {v1}, Lcom/amazon/device/iap/model/Receipt;->getSku()Ljava/lang/String;

    move-result-object v7

    iget-object v3, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore$1;->this$0:Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;

    invoke-virtual {v1}, Lcom/amazon/device/iap/model/Receipt;->getReceiptId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v2, v8}, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->access$000(Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/amazon/device/iap/model/Receipt;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    invoke-direct {v6, v7, v8, v3}, Lcom/mojang/minecraftpe/store/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move v3, v4

    goto :goto_1

    .line 56
    .end local v1    # "receipt":Lcom/amazon/device/iap/model/Receipt;
    :cond_1
    iget-object v3, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore$1;->this$0:Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;

    invoke-static {v3}, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->access$100(Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;)Lcom/mojang/minecraftpe/store/StoreListener;

    move-result-object v5

    new-array v3, v4, [Lcom/mojang/minecraftpe/store/Purchase;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/mojang/minecraftpe/store/Purchase;

    invoke-interface {v5, v3}, Lcom/mojang/minecraftpe/store/StoreListener;->onQueryPurchasesSuccess([Lcom/mojang/minecraftpe/store/Purchase;)V

    .line 60
    .end local v0    # "purchases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mojang/minecraftpe/store/Purchase;>;"
    .end local v2    # "userId":Ljava/lang/String;
    :goto_2
    return-void

    .line 58
    :cond_2
    iget-object v3, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore$1;->this$0:Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;

    invoke-static {v3}, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->access$100(Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;)Lcom/mojang/minecraftpe/store/StoreListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/mojang/minecraftpe/store/StoreListener;->onQueryPurchasesFail()V

    goto :goto_2
.end method

.method public onUserDataResponse(Lcom/amazon/device/iap/model/UserDataResponse;)V
    .registers 2
    .param p1, "userDataResponse"    # Lcom/amazon/device/iap/model/UserDataResponse;

    .prologue
    .line 43
    return-void
.end method
