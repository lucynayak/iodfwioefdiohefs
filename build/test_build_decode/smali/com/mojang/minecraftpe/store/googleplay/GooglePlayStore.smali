.class public Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"

# interfaces
.implements Lcom/mojang/minecraftpe/store/Store;
.implements Lcom/mojang/minecraftpe/ActivityListener;


# static fields
.field public static final IAB_BROADCAST_ACTION:Ljava/lang/String; = "com.android.vending.billing.PURCHASES_UPDATED"

.field private static sProductIds:Ljava/util/ArrayList;


# instance fields
.field public mActivity:Lcom/mojang/minecraftpe/MainActivity;

.field public mIabHelper:Lw1/d;

.field public mListener:Lcom/mojang/minecraftpe/store/StoreListener;

.field public mPurchaseRequestCode:I


# direct methods
.method public constructor <init>(Lcom/mojang/minecraftpe/MainActivity;Ljava/lang/String;Lcom/mojang/minecraftpe/store/StoreListener;)V
    .locals 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p3, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mListener:Lcom/mojang/minecraftpe/store/StoreListener;

    iput-object p1, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {p1, p0}, Lcom/mojang/minecraftpe/MainActivity;->addListener(Lcom/mojang/minecraftpe/ActivityListener;)V

    sget p1, Lcom/mojang/minecraftpe/MainActivity;->RESULT_GOOGLEPLAY_PURCHASE:I

    iput p1, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mPurchaseRequestCode:I

    new-instance p1, Lw1/d;

    iget-object p3, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    invoke-direct {p1, p3, p2}, Lw1/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mIabHelper:Lw1/d;

    new-instance p2, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$1;

    invoke-direct {p2, p0, p0}, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$1;-><init>(Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p1}, Lw1/d;->a()V

    iget-boolean p3, p1, Lw1/d;->j:Z

    if-nez p3, :cond_1

    new-instance p3, Lw1/c;

    invoke-direct {p3, p1, p2}, Lw1/c;-><init>(Lw1/d;Lw1/d$e;)V

    iput-object p3, p1, Lw1/d;->i:Lw1/c;

    new-instance p3, Landroid/content/Intent;

    const-string v0, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.android.vending"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p1, Lw1/d;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lw1/d;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lw1/d;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p3, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p2, p1, Lw1/d;->c:Landroid/content/Context;

    iget-object p1, p1, Lw1/d;->i:Lw1/c;

    const/4 v0, 0x1

    invoke-virtual {p2, p3, p1, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0

    :cond_0
    new-instance p1, Lw1/f;

    const/4 p3, 0x3

    const-string v0, "Billing service unavailable on device."

    invoke-direct {p1, p3, v0}, Lw1/f;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, p1}, Lw1/d$e;->onIabSetupFinished(Lw1/f;)V

    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "IAB helper is already set up."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$000(Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;Lw1/h;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->createReceipt(Lw1/h;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;Ljava/lang/String;)Lw1/h;
    .locals 0

    invoke-direct {p0, p1}, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->parseReceipt(Ljava/lang/String;)Lw1/h;

    move-result-object p0

    return-object p0
.end method

.method private createReceipt(Lw1/h;)Ljava/lang/String;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "itemtype"

    .line 1
    iget-object v2, p1, Lw1/h;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "originaljson"

    .line 3
    iget-object v2, p1, Lw1/h;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "signature"

    .line 5
    iget-object p1, p1, Lw1/h;->d:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private parseReceipt(Ljava/lang/String;)Lw1/h;
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p1, Lw1/h;

    const-string v1, "itemtype"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "originaljson"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "signature"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v2, v0}, Lw1/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public acknowledgePurchase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Consumable"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    new-instance v0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$4;

    invoke-direct {v0, p0, p1}, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$4;-><init>(Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public destructor()V
    .locals 0

    invoke-virtual {p0}, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->onDestroy()V

    return-void
.end method

.method public getProductSkuPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getRealmsSkuPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getStoreId()Ljava/lang/String;
    .locals 1

    const-string v0, "android.googleplay"

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    iget-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mIabHelper:Lw1/d;

    if-eqz v0, :cond_b

    .line 1
    iget v1, v0, Lw1/d;->g:I

    if-eq p1, v1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v0}, Lw1/d;->a()V

    const-string p1, "handleActivityResult"

    invoke-virtual {v0, p1}, Lw1/d;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lw1/d;->d()V

    const/16 p1, -0x3ea

    const/4 v1, 0x0

    if-nez p3, :cond_1

    const-string p2, "Null data in IAB activity result."

    invoke-virtual {v0, p2}, Lw1/d;->i(Ljava/lang/String;)V

    new-instance p2, Lw1/f;

    const-string p3, "Null data in IAB result"

    invoke-direct {p2, p1, p3}, Lw1/f;-><init>(ILjava/lang/String;)V

    iget-object p1, v0, Lw1/d;->e:Lw1/d$d;

    if-eqz p1, :cond_b

    goto/16 :goto_1

    .line 2
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "RESPONSE_CODE"

    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    const-string v2, "Intent with no response code, assuming OK (known issue)"

    invoke-virtual {v0, v2}, Lw1/d;->i(Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    instance-of v4, v2, Ljava/lang/Integer;

    if-eqz v4, :cond_3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_3
    instance-of v4, v2, Ljava/lang/Long;

    if-eqz v4, :cond_a

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-int v2, v4

    :goto_0
    const-string v4, "INAPP_PURCHASE_DATA"

    .line 3
    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    if-ne p2, v6, :cond_7

    if-nez v2, :cond_7

    const-string p2, "Successful resultcode from purchase activity."

    invoke-virtual {v0, p2}, Lw1/d;->h(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Purchase data: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lw1/d;->h(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data signature: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lw1/d;->h(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Extras: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lw1/d;->h(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected item type: "

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lw1/d;->f:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lw1/d;->h(Ljava/lang/String;)V

    if-eqz v4, :cond_6

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    :try_start_0
    new-instance p2, Lw1/h;

    iget-object p3, v0, Lw1/d;->f:Ljava/lang/String;

    invoke-direct {p2, p3, v4, v5}, Lw1/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p3, p2, Lw1/h;->e:Ljava/lang/String;

    .line 5
    iget-object v2, v0, Lw1/d;->k:Ljava/lang/String;

    invoke-static {v2, v4, v5}, Ld1/a;->O(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Purchase signature verification FAILED for sku "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lw1/d;->i(Ljava/lang/String;)V

    new-instance v2, Lw1/f;

    const/16 v3, -0x3eb

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Signature verification failed for sku "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v2, v3, p3}, Lw1/f;-><init>(ILjava/lang/String;)V

    iget-object p3, v0, Lw1/d;->e:Lw1/d$d;

    if-eqz p3, :cond_b

    invoke-interface {p3, v2, p2}, Lw1/d$d;->onIabPurchaseFinished(Lw1/f;Lw1/h;)V

    goto/16 :goto_4

    :cond_5
    const-string p3, "Purchase signature successfully verified."

    invoke-virtual {v0, p3}, Lw1/d;->h(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, v0, Lw1/d;->e:Lw1/d$d;

    if-eqz p1, :cond_b

    new-instance p3, Lw1/f;

    const-string v0, "Success"

    invoke-direct {p3, v3, v0}, Lw1/f;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p3, p2}, Lw1/d$d;->onIabPurchaseFinished(Lw1/f;Lw1/h;)V

    goto/16 :goto_4

    :catch_0
    move-exception p2

    const-string p3, "Failed to parse purchase data."

    invoke-virtual {v0, p3}, Lw1/d;->i(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p2, Lw1/f;

    invoke-direct {p2, p1, p3}, Lw1/f;-><init>(ILjava/lang/String;)V

    iget-object p1, v0, Lw1/d;->e:Lw1/d$d;

    if-eqz p1, :cond_b

    :goto_1
    invoke-interface {p1, p2, v1}, Lw1/d$d;->onIabPurchaseFinished(Lw1/f;Lw1/h;)V

    goto/16 :goto_4

    :cond_6
    :goto_2
    const-string p1, "BUG: either purchaseData or dataSignature is null."

    invoke-virtual {v0, p1}, Lw1/d;->i(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lw1/d;->h(Ljava/lang/String;)V

    new-instance p1, Lw1/f;

    const/16 p2, -0x3f0

    const-string p3, "IAB returned null purchaseData or dataSignature"

    invoke-direct {p1, p2, p3}, Lw1/f;-><init>(ILjava/lang/String;)V

    iget-object p2, v0, Lw1/d;->e:Lw1/d$d;

    if-eqz p2, :cond_b

    goto/16 :goto_3

    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    if-ne p2, v6, :cond_8

    const-string p2, "Result code was OK but in-app billing response was not OK: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lw1/d;->g(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lw1/d;->h(Ljava/lang/String;)V

    iget-object p1, v0, Lw1/d;->e:Lw1/d$d;

    if-eqz p1, :cond_b

    new-instance p1, Lw1/f;

    const-string p2, "Problem purchashing item."

    invoke-direct {p1, v2, p2}, Lw1/f;-><init>(ILjava/lang/String;)V

    iget-object p2, v0, Lw1/d;->e:Lw1/d$d;

    goto :goto_3

    :cond_8
    if-nez p2, :cond_9

    const-string p2, "Purchase canceled - Response: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lw1/d;->g(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lw1/d;->h(Ljava/lang/String;)V

    new-instance p1, Lw1/f;

    const/16 p2, -0x3ed

    const-string p3, "User canceled."

    invoke-direct {p1, p2, p3}, Lw1/f;-><init>(ILjava/lang/String;)V

    iget-object p2, v0, Lw1/d;->e:Lw1/d$d;

    if-eqz p2, :cond_b

    goto :goto_3

    :cond_9
    const-string p3, "Purchase failed. Result code: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". Response: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lw1/d;->g(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lw1/d;->i(Ljava/lang/String;)V

    new-instance p1, Lw1/f;

    const/16 p2, -0x3ee

    const-string p3, "Unknown purchase response."

    invoke-direct {p1, p2, p3}, Lw1/f;-><init>(ILjava/lang/String;)V

    iget-object p2, v0, Lw1/d;->e:Lw1/d$d;

    if-eqz p2, :cond_b

    :goto_3
    invoke-interface {p2, p1, v1}, Lw1/d$d;->onIabPurchaseFinished(Lw1/f;Lw1/h;)V

    goto :goto_4

    :cond_a
    const-string p1, "Unexpected type for intent response code."

    .line 6
    invoke-virtual {v0, p1}, Lw1/d;->i(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lw1/d;->i(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected type for intent response code: "

    .line 7
    invoke-static {p2}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 8
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    :goto_4
    return-void
.end method

.method public onDestroy()V
    .locals 5

    iget-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v0, p0}, Lcom/mojang/minecraftpe/MainActivity;->removeListener(Lcom/mojang/minecraftpe/ActivityListener;)V

    iget-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mIabHelper:Lw1/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 1
    iput-boolean v2, v0, Lw1/d;->j:Z

    iget-object v2, v0, Lw1/d;->i:Lw1/c;

    if-eqz v2, :cond_0

    iget-object v3, v0, Lw1/d;->c:Landroid/content/Context;

    if-eqz v3, :cond_0

    iget-object v4, v0, Lw1/d;->h:Lb1/a;

    if-eqz v4, :cond_0

    invoke-virtual {v3, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v0, Lw1/d;->d:Z

    iput-object v1, v0, Lw1/d;->c:Landroid/content/Context;

    iput-object v1, v0, Lw1/d;->i:Lw1/c;

    iput-object v1, v0, Lw1/d;->h:Lb1/a;

    iput-object v1, v0, Lw1/d;->e:Lw1/d$d;

    .line 2
    :cond_1
    iput-object v1, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mIabHelper:Lw1/d;

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "GooglePlayStore"

    const-string p2, "IabBroadcastReceiver received message PURCHASES_UPDATED"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->queryPurchases()V

    return-void
.end method

.method public purchase(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mListener:Lcom/mojang/minecraftpe/store/StoreListener;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Lcom/mojang/minecraftpe/store/StoreListener;->onPurchaseSuccessful(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public queryProducts([Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sput-object v0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->sProductIds:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    new-instance v1, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2;

    invoke-direct {v1, p0, p1}, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2;-><init>(Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public queryPurchases()V
    .locals 8

    sget-object v0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->sProductIds:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mListener:Lcom/mojang/minecraftpe/store/StoreListener;

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/mojang/minecraftpe/store/Purchase;

    invoke-interface {v0, v2}, Lcom/mojang/minecraftpe/store/StoreListener;->onQueryPurchasesSuccess([Lcom/mojang/minecraftpe/store/Purchase;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v1, [Lcom/mojang/minecraftpe/store/Purchase;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Lcom/mojang/minecraftpe/store/Purchase;

    const-string v6, ""

    const/4 v7, 0x1

    invoke-direct {v5, v4, v6, v7}, Lcom/mojang/minecraftpe/store/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    aput-object v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mListener:Lcom/mojang/minecraftpe/store/StoreListener;

    invoke-interface {v0, v2}, Lcom/mojang/minecraftpe/store/StoreListener;->onQueryPurchasesSuccess([Lcom/mojang/minecraftpe/store/Purchase;)V

    return-void
.end method
