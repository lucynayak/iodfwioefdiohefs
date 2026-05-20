.class public Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;
.super Landroid/content/BroadcastReceiver;
.source "GooglePlayStore.java"

# interfaces
.implements Lcom/mojang/minecraftpe/store/Store;
.implements Lcom/mojang/minecraftpe/ActivityListener;


# static fields
.field static final IAB_BROADCAST_ACTION:Ljava/lang/String; = "com.android.vending.billing.PURCHASES_UPDATED"


# instance fields
.field mActivity:Lcom/mojang/minecraftpe/MainActivity;

.field mIabHelper:Lcom/googleplay/util/IabHelper;

.field mListener:Lcom/mojang/minecraftpe/store/StoreListener;

.field mPurchaseRequestCode:I


# direct methods
.method public constructor <init>(Lcom/mojang/minecraftpe/MainActivity;Ljava/lang/String;Lcom/mojang/minecraftpe/store/StoreListener;)V
    .registers 7
    .param p1, "activity"    # Lcom/mojang/minecraftpe/MainActivity;
    .param p2, "licenseKey"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/mojang/minecraftpe/store/StoreListener;

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 35
    iput-object p3, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mListener:Lcom/mojang/minecraftpe/store/StoreListener;

    .line 36
    iput-object p1, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    .line 37
    iget-object v1, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v1, p0}, Lcom/mojang/minecraftpe/MainActivity;->addListener(Lcom/mojang/minecraftpe/ActivityListener;)V

    .line 38
    sget v1, Lcom/mojang/minecraftpe/MainActivity;->RESULT_GOOGLEPLAY_PURCHASE:I

    iput v1, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mPurchaseRequestCode:I

    .line 39
    new-instance v1, Lcom/googleplay/util/IabHelper;

    iget-object v2, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    invoke-direct {v1, v2, p2}, Lcom/googleplay/util/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mIabHelper:Lcom/googleplay/util/IabHelper;

    .line 40
    move-object v0, p0

    .line 41
    .local v0, "iabBroadcastReceiver":Landroid/content/BroadcastReceiver;
    iget-object v1, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mIabHelper:Lcom/googleplay/util/IabHelper;

    new-instance v2, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$1;

    invoke-direct {v2, p0, v0}, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$1;-><init>(Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;Landroid/content/BroadcastReceiver;)V

    invoke-virtual {v1, v2}, Lcom/googleplay/util/IabHelper;->startSetup(Lcom/googleplay/util/IabHelper$OnIabSetupFinishedListener;)V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;Lcom/googleplay/util/Purchase;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;
    .param p1, "x1"    # Lcom/googleplay/util/Purchase;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->createReceipt(Lcom/googleplay/util/Purchase;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;Ljava/lang/String;)Lcom/googleplay/util/Purchase;
    .registers 3
    .param p0, "x0"    # Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->parseReceipt(Ljava/lang/String;)Lcom/googleplay/util/Purchase;

    move-result-object v0

    return-object v0
.end method

.method private createReceipt(Lcom/googleplay/util/Purchase;)Ljava/lang/String;
    .registers 6
    .param p1, "purchase"    # Lcom/googleplay/util/Purchase;

    .prologue
    .line 193
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 195
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "itemtype"

    invoke-virtual {p1}, Lcom/googleplay/util/Purchase;->getItemType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    const-string v2, "originaljson"

    invoke-virtual {p1}, Lcom/googleplay/util/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 197
    const-string v2, "signature"

    invoke-virtual {p1}, Lcom/googleplay/util/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private parseReceipt(Ljava/lang/String;)Lcom/googleplay/util/Purchase;
    .registers 8
    .param p1, "receipt"    # Ljava/lang/String;

    .prologue
    .line 207
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 208
    .local v1, "json":Lorg/json/JSONObject;
    new-instance v2, Lcom/googleplay/util/Purchase;

    const-string v3, "itemtype"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "originaljson"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "signature"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/googleplay/util/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .end local v1    # "json":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Lorg/json/JSONException;
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public acknowledgePurchase(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "receipt"    # Ljava/lang/String;
    .param p2, "productType"    # Ljava/lang/String;

    .prologue
    .line 131
    const-string v0, "Consumable"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    new-instance v1, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$4;

    invoke-direct {v1, p0, p1}, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$4;-><init>(Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 142
    :cond_0
    return-void
.end method

.method public destructor()V
    .registers 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->onDestroy()V

    .line 190
    return-void
.end method

.method public getProductSkuPrefix()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    const-string v0, ""

    return-object v0
.end method

.method public getRealmsSkuPrefix()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    const-string v0, ""

    return-object v0
.end method

.method public getStoreId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    const-string v0, "android.googleplay"

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mIabHelper:Lcom/googleplay/util/IabHelper;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mIabHelper:Lcom/googleplay/util/IabHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/googleplay/util/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    .line 174
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v0, p0}, Lcom/mojang/minecraftpe/MainActivity;->removeListener(Lcom/mojang/minecraftpe/ActivityListener;)V

    .line 181
    iget-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mIabHelper:Lcom/googleplay/util/IabHelper;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mIabHelper:Lcom/googleplay/util/IabHelper;

    invoke-virtual {v0}, Lcom/googleplay/util/IabHelper;->dispose()V

    .line 184
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mIabHelper:Lcom/googleplay/util/IabHelper;

    .line 185
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 75
    const-string v0, "GooglePlayStore"

    const-string v1, "IabBroadcastReceiver received message PURCHASES_UPDATED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->queryPurchases()V

    .line 77
    return-void
.end method

.method public purchase(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 6
    .param p1, "productId"    # Ljava/lang/String;
    .param p2, "isSubscription"    # Z
    .param p3, "payload"    # Ljava/lang/String;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    new-instance v1, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3;-><init>(Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 127
    return-void
.end method

.method public queryProducts([Ljava/lang/String;)V
    .registers 4
    .param p1, "productIds"    # [Ljava/lang/String;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    new-instance v1, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2;

    invoke-direct {v1, p0, p1}, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2;-><init>(Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 105
    return-void
.end method

.method public queryPurchases()V
    .registers 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    new-instance v1, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$5;

    invoke-direct {v1, p0}, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$5;-><init>(Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;)V

    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 167
    return-void
.end method
