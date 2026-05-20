.class Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2$1;
.super Ljava/lang/Object;
.source "GooglePlayStore.java"

# interfaces
.implements Lcom/googleplay/util/IabHelper$QueryInventoryFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2;


# direct methods
.method constructor <init>(Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2;)V
    .registers 2
    .param p1, "this$1"    # Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2$1;->this$1:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/googleplay/util/IabResult;Lcom/googleplay/util/Inventory;)V
    .registers 12
    .param p1, "result"    # Lcom/googleplay/util/IabResult;
    .param p2, "inv"    # Lcom/googleplay/util/Inventory;

    .prologue
    const/4 v4, 0x0

    .line 87
    invoke-virtual {p1}, Lcom/googleplay/util/IabResult;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v1, "products":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mojang/minecraftpe/store/Product;>;"
    invoke-virtual {p1}, Lcom/googleplay/util/IabResult;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 90
    iget-object v3, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2$1;->this$1:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2;

    iget-object v5, v3, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2;->val$productIds:[Ljava/lang/String;

    array-length v6, v5

    move v3, v4

    :goto_0
    if-ge v3, v6, :cond_1

    aget-object v0, v5, v3

    .line 91
    .local v0, "productId":Ljava/lang/String;
    invoke-virtual {p2, v0}, Lcom/googleplay/util/Inventory;->getSkuDetails(Ljava/lang/String;)Lcom/googleplay/util/SkuDetails;

    move-result-object v2

    .line 92
    .local v2, "skuDetails":Lcom/googleplay/util/SkuDetails;
    if-eqz v2, :cond_0

    .line 93
    new-instance v7, Lcom/mojang/minecraftpe/store/Product;

    invoke-virtual {v2}, Lcom/googleplay/util/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v0, v8}, Lcom/mojang/minecraftpe/store/Product;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 97
    .end local v0    # "productId":Ljava/lang/String;
    .end local v2    # "skuDetails":Lcom/googleplay/util/SkuDetails;
    :cond_1
    iget-object v3, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2$1;->this$1:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2;

    iget-object v3, v3, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2;->this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

    iget-object v5, v3, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mListener:Lcom/mojang/minecraftpe/store/StoreListener;

    new-array v3, v4, [Lcom/mojang/minecraftpe/store/Product;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/mojang/minecraftpe/store/Product;

    invoke-interface {v5, v3}, Lcom/mojang/minecraftpe/store/StoreListener;->onQueryProductsSuccess([Lcom/mojang/minecraftpe/store/Product;)V

    .line 101
    .end local v1    # "products":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mojang/minecraftpe/store/Product;>;"
    :goto_1
    return-void

    .line 99
    :cond_2
    iget-object v3, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2$1;->this$1:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2;

    iget-object v3, v3, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2;->this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

    iget-object v3, v3, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mListener:Lcom/mojang/minecraftpe/store/StoreListener;

    invoke-interface {v3}, Lcom/mojang/minecraftpe/store/StoreListener;->onQueryProductsFail()V

    goto :goto_1
.end method
