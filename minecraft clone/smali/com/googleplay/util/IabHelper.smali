.class public Lcom/googleplay/util/IabHelper;
.super Ljava/lang/Object;
.source "IabHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googleplay/util/IabHelper$OnConsumeMultiFinishedListener;,
        Lcom/googleplay/util/IabHelper$OnConsumeFinishedListener;,
        Lcom/googleplay/util/IabHelper$QueryInventoryFinishedListener;,
        Lcom/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;,
        Lcom/googleplay/util/IabHelper$OnIabSetupFinishedListener;
    }
.end annotation


# static fields
.field public static final BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:I = 0x3

.field public static final BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:I = 0x5

.field public static final BILLING_RESPONSE_RESULT_ERROR:I = 0x6

.field public static final BILLING_RESPONSE_RESULT_ITEM_ALREADY_OWNED:I = 0x7

.field public static final BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:I = 0x8

.field public static final BILLING_RESPONSE_RESULT_ITEM_UNAVAILABLE:I = 0x4

.field public static final BILLING_RESPONSE_RESULT_OK:I = 0x0

.field public static final BILLING_RESPONSE_RESULT_USER_CANCELED:I = 0x1

.field public static final GET_SKU_DETAILS_ITEM_LIST:Ljava/lang/String; = "ITEM_ID_LIST"

.field public static final GET_SKU_DETAILS_ITEM_TYPE_LIST:Ljava/lang/String; = "ITEM_TYPE_LIST"

.field public static final IABHELPER_BAD_RESPONSE:I = -0x3ea

.field public static final IABHELPER_ERROR_BASE:I = -0x3e8

.field public static final IABHELPER_INVALID_CONSUMPTION:I = -0x3f2

.field public static final IABHELPER_INVALID_SERVICE:I = -0x3f3

.field public static final IABHELPER_MISSING_TOKEN:I = -0x3ef

.field public static final IABHELPER_REMOTE_EXCEPTION:I = -0x3e9

.field public static final IABHELPER_SEND_INTENT_FAILED:I = -0x3ec

.field public static final IABHELPER_SUBSCRIPTIONS_NOT_AVAILABLE:I = -0x3f1

.field public static final IABHELPER_UNKNOWN_ERROR:I = -0x3f0

.field public static final IABHELPER_UNKNOWN_PURCHASE_RESPONSE:I = -0x3ee

.field public static final IABHELPER_USER_CANCELLED:I = -0x3ed

.field public static final IABHELPER_VERIFICATION_FAILED:I = -0x3eb

.field public static final INAPP_CONTINUATION_TOKEN:Ljava/lang/String; = "INAPP_CONTINUATION_TOKEN"

.field public static final ITEM_TYPE_INAPP:Ljava/lang/String; = "inapp"

.field public static final ITEM_TYPE_SUBS:Ljava/lang/String; = "subs"

.field public static final RESPONSE_BUY_INTENT:Ljava/lang/String; = "BUY_INTENT"

.field public static final RESPONSE_CODE:Ljava/lang/String; = "RESPONSE_CODE"

.field public static final RESPONSE_GET_SKU_DETAILS_LIST:Ljava/lang/String; = "DETAILS_LIST"

.field public static final RESPONSE_INAPP_ITEM_LIST:Ljava/lang/String; = "INAPP_PURCHASE_ITEM_LIST"

.field public static final RESPONSE_INAPP_PURCHASE_DATA:Ljava/lang/String; = "INAPP_PURCHASE_DATA"

.field public static final RESPONSE_INAPP_PURCHASE_DATA_LIST:Ljava/lang/String; = "INAPP_PURCHASE_DATA_LIST"

.field public static final RESPONSE_INAPP_SIGNATURE:Ljava/lang/String; = "INAPP_DATA_SIGNATURE"

.field public static final RESPONSE_INAPP_SIGNATURE_LIST:Ljava/lang/String; = "INAPP_DATA_SIGNATURE_LIST"


# instance fields
.field mAsyncInProgress:Z

.field mAsyncOperation:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mDebugLog:Z

.field mDebugTag:Ljava/lang/String;

.field mDisposed:Z

.field mPurchaseListener:Lcom/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;

.field mPurchasingItemType:Ljava/lang/String;

.field mRequestCode:I

.field mService:Lcom/android/vending/billing/IInAppBillingService;

.field mServiceConn:Landroid/content/ServiceConnection;

.field mSetupDone:Z

.field mSignatureBase64:Ljava/lang/String;

.field mSubscriptionsSupported:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "base64PublicKey"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-boolean v1, p0, Lcom/googleplay/util/IabHelper;->mDebugLog:Z

    .line 75
    const-string v0, "IabHelper"

    iput-object v0, p0, Lcom/googleplay/util/IabHelper;->mDebugTag:Ljava/lang/String;

    .line 78
    iput-boolean v1, p0, Lcom/googleplay/util/IabHelper;->mSetupDone:Z

    .line 81
    iput-boolean v1, p0, Lcom/googleplay/util/IabHelper;->mDisposed:Z

    .line 84
    iput-boolean v1, p0, Lcom/googleplay/util/IabHelper;->mSubscriptionsSupported:Z

    .line 88
    iput-boolean v1, p0, Lcom/googleplay/util/IabHelper;->mAsyncInProgress:Z

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/googleplay/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/googleplay/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    .line 165
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/googleplay/util/IabHelper;->mContext:Landroid/content/Context;

    .line 166
    iput-object p2, p0, Lcom/googleplay/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    .line 167
    const-string v0, "IAB helper created."

    invoke-virtual {p0, v0}, Lcom/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method private checkNotDisposed()V
    .registers 3

    .prologue
    .line 306
    iget-boolean v0, p0, Lcom/googleplay/util/IabHelper;->mDisposed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IabHelper was disposed of, so it cannot be used."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_0
    return-void
.end method

.method public static getResponseDesc(I)Ljava/lang/String;
    .registers 6
    .param p0, "code"    # I

    .prologue
    .line 755
    const-string v3, "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned"

    const-string v4, "/"

    .line 758
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 759
    .local v0, "iab_msgs":[Ljava/lang/String;
    const-string v3, "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt"

    const-string v4, "/"

    .line 768
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 770
    .local v1, "iabhelper_msgs":[Ljava/lang/String;
    const/16 v3, -0x3e8

    if-gt p0, v3, :cond_1

    .line 771
    rsub-int v2, p0, -0x3e8

    .line 772
    .local v2, "index":I
    if-ltz v2, :cond_0

    array-length v3, v1

    if-ge v2, v3, :cond_0

    aget-object v3, v1, v2

    .line 778
    .end local v2    # "index":I
    :goto_0
    return-object v3

    .line 773
    .restart local v2    # "index":I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":Unknown IAB Helper Error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 775
    .end local v2    # "index":I
    :cond_1
    if-ltz p0, :cond_2

    array-length v3, v0

    if-lt p0, v3, :cond_3

    .line 776
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":Unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 778
    :cond_3
    aget-object v3, v0, p0

    goto :goto_0
.end method


# virtual methods
.method checkSetupDone(Ljava/lang/String;)V
    .registers 5
    .param p1, "operation"    # Ljava/lang/String;

    .prologue
    .line 784
    iget-boolean v0, p0, Lcom/googleplay/util/IabHelper;->mSetupDone:Z

    if-nez v0, :cond_0

    .line 785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal state for operation ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): IAB helper is not set up."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/googleplay/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 786
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IAB helper is not set up. Can\'t perform operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 788
    :cond_0
    return-void
.end method

.method consume(Lcom/googleplay/util/Purchase;)V
    .registers 10
    .param p1, "itemInfo"    # Lcom/googleplay/util/Purchase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googleplay/util/IabException;
        }
    .end annotation

    .prologue
    .line 661
    invoke-direct {p0}, Lcom/googleplay/util/IabHelper;->checkNotDisposed()V

    .line 662
    const-string v4, "consume"

    invoke-virtual {p0, v4}, Lcom/googleplay/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 664
    iget-object v4, p1, Lcom/googleplay/util/Purchase;->mItemType:Ljava/lang/String;

    const-string v5, "inapp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 665
    new-instance v4, Lcom/googleplay/util/IabException;

    const/16 v5, -0x3f2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Items of type \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/googleplay/util/Purchase;->mItemType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' can\'t be consumed."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/googleplay/util/IabException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 670
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/googleplay/util/Purchase;->getToken()Ljava/lang/String;

    move-result-object v3

    .line 671
    .local v3, "token":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/googleplay/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v2

    .line 672
    .local v2, "sku":Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 673
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t consume "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". No token."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/googleplay/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 674
    new-instance v4, Lcom/googleplay/util/IabException;

    const/16 v5, -0x3ef

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PurchaseInfo is missing token for sku: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/googleplay/util/IabException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 688
    .end local v2    # "sku":Ljava/lang/String;
    .end local v3    # "token":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 689
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v4, Lcom/googleplay/util/IabException;

    const/16 v5, -0x3e9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Remote exception while consuming. PurchaseInfo: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v0}, Lcom/googleplay/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 678
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "sku":Ljava/lang/String;
    .restart local v3    # "token":Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Consuming sku: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 679
    iget-object v4, p0, Lcom/googleplay/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/googleplay/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6, v3}, Lcom/android/vending/billing/IInAppBillingService;->consumePurchase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 680
    .local v1, "response":I
    if-nez v1, :cond_3

    .line 681
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Successfully consumed sku: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 691
    return-void

    .line 684
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error consuming consuming sku "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/googleplay/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 685
    new-instance v4, Lcom/googleplay/util/IabException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error consuming sku "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/googleplay/util/IabException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public consumeAsync(Lcom/googleplay/util/Purchase;Lcom/googleplay/util/IabHelper$OnConsumeFinishedListener;)V
    .registers 5
    .param p1, "purchase"    # Lcom/googleplay/util/Purchase;
    .param p2, "listener"    # Lcom/googleplay/util/IabHelper$OnConsumeFinishedListener;

    .prologue
    .line 729
    invoke-direct {p0}, Lcom/googleplay/util/IabHelper;->checkNotDisposed()V

    .line 730
    const-string v1, "consume"

    invoke-virtual {p0, v1}, Lcom/googleplay/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 731
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 732
    .local v0, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/googleplay/util/Purchase;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 733
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lcom/googleplay/util/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/googleplay/util/IabHelper$OnConsumeFinishedListener;Lcom/googleplay/util/IabHelper$OnConsumeMultiFinishedListener;)V

    .line 734
    return-void
.end method

.method public consumeAsync(Ljava/util/List;Lcom/googleplay/util/IabHelper$OnConsumeMultiFinishedListener;)V
    .registers 4
    .param p2, "listener"    # Lcom/googleplay/util/IabHelper$OnConsumeMultiFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/googleplay/util/Purchase;",
            ">;",
            "Lcom/googleplay/util/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 742
    .local p1, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/googleplay/util/Purchase;>;"
    invoke-direct {p0}, Lcom/googleplay/util/IabHelper;->checkNotDisposed()V

    .line 743
    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lcom/googleplay/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 744
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/googleplay/util/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/googleplay/util/IabHelper$OnConsumeFinishedListener;Lcom/googleplay/util/IabHelper$OnConsumeMultiFinishedListener;)V

    .line 745
    return-void
.end method

.method consumeAsyncInternal(Ljava/util/List;Lcom/googleplay/util/IabHelper$OnConsumeFinishedListener;Lcom/googleplay/util/IabHelper$OnConsumeMultiFinishedListener;)V
    .registers 11
    .param p2, "singleListener"    # Lcom/googleplay/util/IabHelper$OnConsumeFinishedListener;
    .param p3, "multiListener"    # Lcom/googleplay/util/IabHelper$OnConsumeMultiFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/googleplay/util/Purchase;",
            ">;",
            "Lcom/googleplay/util/IabHelper$OnConsumeFinishedListener;",
            "Lcom/googleplay/util/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 981
    .local p1, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/googleplay/util/Purchase;>;"
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 982
    .local v4, "handler":Landroid/os/Handler;
    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lcom/googleplay/util/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 983
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/googleplay/util/IabHelper$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/googleplay/util/IabHelper$3;-><init>(Lcom/googleplay/util/IabHelper;Ljava/util/List;Lcom/googleplay/util/IabHelper$OnConsumeFinishedListener;Landroid/os/Handler;Lcom/googleplay/util/IabHelper$OnConsumeMultiFinishedListener;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1012
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 1013
    return-void
.end method

.method public dispose()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 292
    const-string v0, "Disposing."

    invoke-virtual {p0, v0}, Lcom/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 293
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/googleplay/util/IabHelper;->mSetupDone:Z

    .line 294
    iget-object v0, p0, Lcom/googleplay/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 295
    const-string v0, "Unbinding from service."

    invoke-virtual {p0, v0}, Lcom/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/googleplay/util/IabHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/googleplay/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/googleplay/util/IabHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/googleplay/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 298
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/googleplay/util/IabHelper;->mDisposed:Z

    .line 299
    iput-object v2, p0, Lcom/googleplay/util/IabHelper;->mContext:Landroid/content/Context;

    .line 300
    iput-object v2, p0, Lcom/googleplay/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 301
    iput-object v2, p0, Lcom/googleplay/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 302
    iput-object v2, p0, Lcom/googleplay/util/IabHelper;->mPurchaseListener:Lcom/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;

    .line 303
    return-void
.end method

.method public enableDebugLogging(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/googleplay/util/IabHelper;->checkNotDisposed()V

    .line 181
    iput-boolean p1, p0, Lcom/googleplay/util/IabHelper;->mDebugLog:Z

    .line 182
    return-void
.end method

.method public enableDebugLogging(ZLjava/lang/String;)V
    .registers 3
    .param p1, "enable"    # Z
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/googleplay/util/IabHelper;->checkNotDisposed()V

    .line 175
    iput-boolean p1, p0, Lcom/googleplay/util/IabHelper;->mDebugLog:Z

    .line 176
    iput-object p2, p0, Lcom/googleplay/util/IabHelper;->mDebugTag:Ljava/lang/String;

    .line 177
    return-void
.end method

.method flagEndAsync()V
    .registers 3

    .prologue
    .line 831
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ending async operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/googleplay/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 832
    const-string v0, ""

    iput-object v0, p0, Lcom/googleplay/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 833
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/googleplay/util/IabHelper;->mAsyncInProgress:Z

    .line 834
    return-void
.end method

.method flagStartAsync(Ljava/lang/String;)V
    .registers 5
    .param p1, "operation"    # Ljava/lang/String;

    .prologue
    .line 823
    iget-boolean v0, p0, Lcom/googleplay/util/IabHelper;->mAsyncInProgress:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t start async operation ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") because another async operation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/googleplay/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is in progress."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 825
    :cond_0
    iput-object p1, p0, Lcom/googleplay/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 826
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/googleplay/util/IabHelper;->mAsyncInProgress:Z

    .line 827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting async operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 828
    return-void
.end method

.method getResponseCodeFromBundle(Landroid/os/Bundle;)I
    .registers 6
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 792
    const-string v1, "RESPONSE_CODE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 793
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 794
    const-string v1, "Bundle with null response code, assuming OK (known issue)"

    invoke-virtual {p0, v1}, Lcom/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 795
    const/4 v1, 0x0

    .line 798
    .end local v0    # "o":Ljava/lang/Object;
    :goto_0
    return v1

    .line 797
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 798
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Long;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v1, v2

    goto :goto_0

    .line 800
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_2
    const-string v1, "Unexpected type for bundle response code."

    invoke-virtual {p0, v1}, Lcom/googleplay/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 801
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/googleplay/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 802
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type for bundle response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getResponseCodeFromIntent(Landroid/content/Intent;)I
    .registers 6
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 808
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "RESPONSE_CODE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 809
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 810
    const-string v1, "Intent with no response code, assuming OK (known issue)"

    invoke-virtual {p0, v1}, Lcom/googleplay/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 811
    const/4 v1, 0x0

    .line 814
    .end local v0    # "o":Ljava/lang/Object;
    :goto_0
    return v1

    .line 813
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 814
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Long;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v1, v2

    goto :goto_0

    .line 816
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_2
    const-string v1, "Unexpected type for intent response code."

    invoke-virtual {p0, v1}, Lcom/googleplay/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 817
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/googleplay/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 818
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type for intent response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .registers 16
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 443
    iget v8, p0, Lcom/googleplay/util/IabHelper;->mRequestCode:I

    if-eq p1, v8, :cond_0

    const/4 v8, 0x0

    .line 522
    :goto_0
    return v8

    .line 445
    :cond_0
    invoke-direct {p0}, Lcom/googleplay/util/IabHelper;->checkNotDisposed()V

    .line 446
    const-string v8, "handleActivityResult"

    invoke-virtual {p0, v8}, Lcom/googleplay/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 449
    invoke-virtual {p0}, Lcom/googleplay/util/IabHelper;->flagEndAsync()V

    .line 451
    if-nez p3, :cond_2

    .line 452
    const-string v8, "Null data in IAB activity result."

    invoke-virtual {p0, v8}, Lcom/googleplay/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 453
    new-instance v6, Lcom/googleplay/util/IabResult;

    const/16 v8, -0x3ea

    const-string v9, "Null data in IAB result"

    invoke-direct {v6, v8, v9}, Lcom/googleplay/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 454
    .local v6, "result":Lcom/googleplay/util/IabResult;
    iget-object v8, p0, Lcom/googleplay/util/IabHelper;->mPurchaseListener:Lcom/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/googleplay/util/IabHelper;->mPurchaseListener:Lcom/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/googleplay/util/IabResult;Lcom/googleplay/util/Purchase;)V

    .line 455
    :cond_1
    const/4 v8, 0x1

    goto :goto_0

    .line 458
    .end local v6    # "result":Lcom/googleplay/util/IabResult;
    :cond_2
    invoke-virtual {p0, p3}, Lcom/googleplay/util/IabHelper;->getResponseCodeFromIntent(Landroid/content/Intent;)I

    move-result v5

    .line 459
    .local v5, "responseCode":I
    const-string v8, "INAPP_PURCHASE_DATA"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 460
    .local v4, "purchaseData":Ljava/lang/String;
    const-string v8, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 462
    .local v0, "dataSignature":Ljava/lang/String;
    const/4 v8, -0x1

    if-ne p2, v8, :cond_a

    if-nez v5, :cond_a

    .line 463
    const-string v8, "Successful resultcode from purchase activity."

    invoke-virtual {p0, v8}, Lcom/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 464
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Purchase data: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 465
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Data signature: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 466
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Extras: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 467
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expected item type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/googleplay/util/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 469
    if-eqz v4, :cond_3

    if-nez v0, :cond_5

    .line 470
    :cond_3
    const-string v8, "BUG: either purchaseData or dataSignature is null."

    invoke-virtual {p0, v8}, Lcom/googleplay/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 471
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Extras: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 472
    new-instance v6, Lcom/googleplay/util/IabResult;

    const/16 v8, -0x3f0

    const-string v9, "IAB returned null purchaseData or dataSignature"

    invoke-direct {v6, v8, v9}, Lcom/googleplay/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 473
    .restart local v6    # "result":Lcom/googleplay/util/IabResult;
    iget-object v8, p0, Lcom/googleplay/util/IabHelper;->mPurchaseListener:Lcom/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/googleplay/util/IabHelper;->mPurchaseListener:Lcom/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/googleplay/util/IabResult;Lcom/googleplay/util/Purchase;)V

    .line 474
    :cond_4
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 477
    .end local v6    # "result":Lcom/googleplay/util/IabResult;
    :cond_5
    const/4 v2, 0x0

    .line 479
    .local v2, "purchase":Lcom/googleplay/util/Purchase;
    :try_start_0
    new-instance v3, Lcom/googleplay/util/Purchase;

    iget-object v8, p0, Lcom/googleplay/util/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    invoke-direct {v3, v8, v4, v0}, Lcom/googleplay/util/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    .end local v2    # "purchase":Lcom/googleplay/util/Purchase;
    .local v3, "purchase":Lcom/googleplay/util/Purchase;
    :try_start_1
    invoke-virtual {v3}, Lcom/googleplay/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v7

    .line 483
    .local v7, "sku":Ljava/lang/String;
    iget-object v8, p0, Lcom/googleplay/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    invoke-static {v8, v4, v0}, Lcom/googleplay/util/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 484
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Purchase signature verification FAILED for sku "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/googleplay/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 485
    new-instance v6, Lcom/googleplay/util/IabResult;

    const/16 v8, -0x3eb

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Signature verification failed for sku "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Lcom/googleplay/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 486
    .restart local v6    # "result":Lcom/googleplay/util/IabResult;
    iget-object v8, p0, Lcom/googleplay/util/IabHelper;->mPurchaseListener:Lcom/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/googleplay/util/IabHelper;->mPurchaseListener:Lcom/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v8, v6, v3}, Lcom/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/googleplay/util/IabResult;Lcom/googleplay/util/Purchase;)V

    .line 487
    :cond_6
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 489
    .end local v6    # "result":Lcom/googleplay/util/IabResult;
    :cond_7
    const-string v8, "Purchase signature successfully verified."

    invoke-virtual {p0, v8}, Lcom/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 499
    iget-object v8, p0, Lcom/googleplay/util/IabHelper;->mPurchaseListener:Lcom/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_8

    .line 500
    iget-object v8, p0, Lcom/googleplay/util/IabHelper;->mPurchaseListener:Lcom/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;

    new-instance v9, Lcom/googleplay/util/IabResult;

    const/4 v10, 0x0

    const-string v11, "Success"

    invoke-direct {v9, v10, v11}, Lcom/googleplay/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v8, v9, v3}, Lcom/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/googleplay/util/IabResult;Lcom/googleplay/util/Purchase;)V

    .line 522
    .end local v3    # "purchase":Lcom/googleplay/util/Purchase;
    .end local v7    # "sku":Ljava/lang/String;
    :cond_8
    :goto_1
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 491
    .restart local v2    # "purchase":Lcom/googleplay/util/Purchase;
    :catch_0
    move-exception v1

    .line 492
    .local v1, "e":Lorg/json/JSONException;
    :goto_2
    const-string v8, "Failed to parse purchase data."

    invoke-virtual {p0, v8}, Lcom/googleplay/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 493
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 494
    new-instance v6, Lcom/googleplay/util/IabResult;

    const/16 v8, -0x3ea

    const-string v9, "Failed to parse purchase data."

    invoke-direct {v6, v8, v9}, Lcom/googleplay/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 495
    .restart local v6    # "result":Lcom/googleplay/util/IabResult;
    iget-object v8, p0, Lcom/googleplay/util/IabHelper;->mPurchaseListener:Lcom/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/googleplay/util/IabHelper;->mPurchaseListener:Lcom/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/googleplay/util/IabResult;Lcom/googleplay/util/Purchase;)V

    .line 496
    :cond_9
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 503
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "purchase":Lcom/googleplay/util/Purchase;
    .end local v6    # "result":Lcom/googleplay/util/IabResult;
    :cond_a
    const/4 v8, -0x1

    if-ne p2, v8, :cond_b

    .line 505
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Result code was OK but in-app billing response was not OK: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5}, Lcom/googleplay/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 506
    iget-object v8, p0, Lcom/googleplay/util/IabHelper;->mPurchaseListener:Lcom/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_8

    .line 507
    new-instance v6, Lcom/googleplay/util/IabResult;

    const-string v8, "Problem purchashing item."

    invoke-direct {v6, v5, v8}, Lcom/googleplay/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 508
    .restart local v6    # "result":Lcom/googleplay/util/IabResult;
    iget-object v8, p0, Lcom/googleplay/util/IabHelper;->mPurchaseListener:Lcom/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/googleplay/util/IabResult;Lcom/googleplay/util/Purchase;)V

    goto :goto_1

    .line 511
    .end local v6    # "result":Lcom/googleplay/util/IabResult;
    :cond_b
    if-nez p2, :cond_c

    .line 512
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Purchase canceled - Response: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5}, Lcom/googleplay/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 513
    new-instance v6, Lcom/googleplay/util/IabResult;

    const/16 v8, -0x3ed

    const-string v9, "User canceled."

    invoke-direct {v6, v8, v9}, Lcom/googleplay/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 514
    .restart local v6    # "result":Lcom/googleplay/util/IabResult;
    iget-object v8, p0, Lcom/googleplay/util/IabHelper;->mPurchaseListener:Lcom/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/googleplay/util/IabHelper;->mPurchaseListener:Lcom/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/googleplay/util/IabResult;Lcom/googleplay/util/Purchase;)V

    goto :goto_1

    .line 517
    .end local v6    # "result":Lcom/googleplay/util/IabResult;
    :cond_c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Purchase failed. Result code: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". Response: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 518
    invoke-static {v5}, Lcom/googleplay/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 517
    invoke-virtual {p0, v8}, Lcom/googleplay/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 519
    new-instance v6, Lcom/googleplay/util/IabResult;

    const/16 v8, -0x3ee

    const-string v9, "Unknown purchase response."

    invoke-direct {v6, v8, v9}, Lcom/googleplay/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 520
    .restart local v6    # "result":Lcom/googleplay/util/IabResult;
    iget-object v8, p0, Lcom/googleplay/util/IabHelper;->mPurchaseListener:Lcom/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/googleplay/util/IabHelper;->mPurchaseListener:Lcom/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/googleplay/util/IabResult;Lcom/googleplay/util/Purchase;)V

    goto/16 :goto_1

    .line 491
    .end local v6    # "result":Lcom/googleplay/util/IabResult;
    .restart local v3    # "purchase":Lcom/googleplay/util/Purchase;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "purchase":Lcom/googleplay/util/Purchase;
    .restart local v2    # "purchase":Lcom/googleplay/util/Purchase;
    goto/16 :goto_2
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;)V
    .registers 11
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;

    .prologue
    .line 337
    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/googleplay/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 338
    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .registers 13
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;
    .param p5, "extraData"    # Ljava/lang/String;

    .prologue
    .line 342
    const-string v3, "inapp"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/googleplay/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 343
    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .registers 21
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "itemType"    # Ljava/lang/String;
    .param p4, "requestCode"    # I
    .param p5, "listener"    # Lcom/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;
    .param p6, "extraData"    # Ljava/lang/String;

    .prologue
    .line 375
    invoke-direct {p0}, Lcom/googleplay/util/IabHelper;->checkNotDisposed()V

    .line 376
    const-string v1, "launchPurchaseFlow"

    invoke-virtual {p0, v1}, Lcom/googleplay/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 377
    const-string v1, "launchPurchaseFlow"

    invoke-virtual {p0, v1}, Lcom/googleplay/util/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 380
    const-string v1, "subs"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/googleplay/util/IabHelper;->mSubscriptionsSupported:Z

    if-nez v1, :cond_1

    .line 381
    new-instance v11, Lcom/googleplay/util/IabResult;

    const/16 v1, -0x3f1

    const-string v2, "Subscriptions are not available."

    invoke-direct {v11, v1, v2}, Lcom/googleplay/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 383
    .local v11, "r":Lcom/googleplay/util/IabResult;
    invoke-virtual {p0}, Lcom/googleplay/util/IabHelper;->flagEndAsync()V

    .line 384
    if-eqz p5, :cond_0

    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v11, v1}, Lcom/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/googleplay/util/IabResult;Lcom/googleplay/util/Purchase;)V

    .line 426
    .end local v11    # "r":Lcom/googleplay/util/IabResult;
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructing buy intent for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", item type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 390
    iget-object v1, p0, Lcom/googleplay/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/googleplay/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p6

    invoke-interface/range {v1 .. v6}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 391
    .local v8, "buyIntentBundle":Landroid/os/Bundle;
    invoke-virtual {p0, v8}, Lcom/googleplay/util/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v12

    .line 392
    .local v12, "response":I
    if-eqz v12, :cond_2

    .line 393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to buy item, Error response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v12}, Lcom/googleplay/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/googleplay/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p0}, Lcom/googleplay/util/IabHelper;->flagEndAsync()V

    .line 395
    new-instance v13, Lcom/googleplay/util/IabResult;

    const-string v1, "Unable to buy item"

    invoke-direct {v13, v12, v1}, Lcom/googleplay/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 396
    .local v13, "result":Lcom/googleplay/util/IabResult;
    if-eqz p5, :cond_0

    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v13, v1}, Lcom/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/googleplay/util/IabResult;Lcom/googleplay/util/Purchase;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 410
    .end local v8    # "buyIntentBundle":Landroid/os/Bundle;
    .end local v12    # "response":I
    .end local v13    # "result":Lcom/googleplay/util/IabResult;
    :catch_0
    move-exception v9

    .line 411
    .local v9, "e":Landroid/content/IntentSender$SendIntentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SendIntentException while launching purchase flow for sku "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/googleplay/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 412
    invoke-virtual {v9}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    .line 413
    invoke-virtual {p0}, Lcom/googleplay/util/IabHelper;->flagEndAsync()V

    .line 415
    new-instance v13, Lcom/googleplay/util/IabResult;

    const/16 v1, -0x3ec

    const-string v2, "Failed to send intent."

    invoke-direct {v13, v1, v2}, Lcom/googleplay/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 416
    .restart local v13    # "result":Lcom/googleplay/util/IabResult;
    if-eqz p5, :cond_0

    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v13, v1}, Lcom/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/googleplay/util/IabResult;Lcom/googleplay/util/Purchase;)V

    goto/16 :goto_0

    .line 400
    .end local v9    # "e":Landroid/content/IntentSender$SendIntentException;
    .end local v13    # "result":Lcom/googleplay/util/IabResult;
    .restart local v8    # "buyIntentBundle":Landroid/os/Bundle;
    .restart local v12    # "response":I
    :cond_2
    :try_start_1
    const-string v1, "BUY_INTENT"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/app/PendingIntent;

    .line 401
    .local v10, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launching buy intent for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Request code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 402
    move/from16 v0, p4

    iput v0, p0, Lcom/googleplay/util/IabHelper;->mRequestCode:I

    .line 403
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/googleplay/util/IabHelper;->mPurchaseListener:Lcom/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;

    .line 404
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/googleplay/util/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    .line 405
    invoke-virtual {v10}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x0

    .line 407
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v1, 0x0

    .line 408
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v1, p1

    move/from16 v3, p4

    .line 405
    invoke-virtual/range {v1 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 418
    .end local v8    # "buyIntentBundle":Landroid/os/Bundle;
    .end local v10    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v12    # "response":I
    :catch_1
    move-exception v9

    .line 419
    .local v9, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException while launching purchase flow for sku "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/googleplay/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 420
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    .line 421
    invoke-virtual {p0}, Lcom/googleplay/util/IabHelper;->flagEndAsync()V

    .line 423
    new-instance v13, Lcom/googleplay/util/IabResult;

    const/16 v1, -0x3e9

    const-string v2, "Remote exception while starting purchase flow"

    invoke-direct {v13, v1, v2}, Lcom/googleplay/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 424
    .restart local v13    # "result":Lcom/googleplay/util/IabResult;
    if-eqz p5, :cond_0

    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v13, v1}, Lcom/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/googleplay/util/IabResult;Lcom/googleplay/util/Purchase;)V

    goto/16 :goto_0
.end method

.method public launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;)V
    .registers 11
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;

    .prologue
    .line 347
    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/googleplay/util/IabHelper;->launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 348
    return-void
.end method

.method public launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .registers 13
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;
    .param p5, "extraData"    # Ljava/lang/String;

    .prologue
    .line 352
    const-string v3, "subs"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/googleplay/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 353
    return-void
.end method

.method logDebug(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1016
    iget-boolean v0, p0, Lcom/googleplay/util/IabHelper;->mDebugLog:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/googleplay/util/IabHelper;->mDebugTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    :cond_0
    return-void
.end method

.method logError(Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/googleplay/util/IabHelper;->mDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In-app billing error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    return-void
.end method

.method logWarn(Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/googleplay/util/IabHelper;->mDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In-app billing warning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    return-void
.end method

.method public queryInventory(ZLjava/util/List;)Lcom/googleplay/util/Inventory;
    .registers 4
    .param p1, "querySkuDetails"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/googleplay/util/Inventory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googleplay/util/IabException;
        }
    .end annotation

    .prologue
    .line 526
    .local p2, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/googleplay/util/IabHelper;->queryInventory(ZLjava/util/List;Ljava/util/List;)Lcom/googleplay/util/Inventory;

    move-result-object v0

    return-object v0
.end method

.method public queryInventory(ZLjava/util/List;Ljava/util/List;)Lcom/googleplay/util/Inventory;
    .registers 10
    .param p1, "querySkuDetails"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/googleplay/util/Inventory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googleplay/util/IabException;
        }
    .end annotation

    .prologue
    .line 544
    .local p2, "moreItemSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "moreSubsSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/googleplay/util/IabHelper;->checkNotDisposed()V

    .line 545
    const-string v3, "queryInventory"

    invoke-virtual {p0, v3}, Lcom/googleplay/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 547
    :try_start_0
    new-instance v1, Lcom/googleplay/util/Inventory;

    invoke-direct {v1}, Lcom/googleplay/util/Inventory;-><init>()V

    .line 548
    .local v1, "inv":Lcom/googleplay/util/Inventory;
    const-string v3, "inapp"

    invoke-virtual {p0, v1, v3}, Lcom/googleplay/util/IabHelper;->queryPurchases(Lcom/googleplay/util/Inventory;Ljava/lang/String;)I

    move-result v2

    .line 549
    .local v2, "r":I
    if-eqz v2, :cond_0

    .line 550
    new-instance v3, Lcom/googleplay/util/IabException;

    const-string v4, "Error refreshing inventory (querying owned items)."

    invoke-direct {v3, v2, v4}, Lcom/googleplay/util/IabException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 577
    .end local v1    # "inv":Lcom/googleplay/util/Inventory;
    .end local v2    # "r":I
    :catch_0
    move-exception v0

    .line 578
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Lcom/googleplay/util/IabException;

    const/16 v4, -0x3e9

    const-string v5, "Remote exception while refreshing inventory."

    invoke-direct {v3, v4, v5, v0}, Lcom/googleplay/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 553
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "inv":Lcom/googleplay/util/Inventory;
    .restart local v2    # "r":I
    :cond_0
    if-eqz p1, :cond_1

    .line 554
    :try_start_1
    const-string v3, "inapp"

    invoke-virtual {p0, v3, v1, p2}, Lcom/googleplay/util/IabHelper;->querySkuDetails(Ljava/lang/String;Lcom/googleplay/util/Inventory;Ljava/util/List;)I

    move-result v2

    .line 555
    if-eqz v2, :cond_1

    .line 556
    new-instance v3, Lcom/googleplay/util/IabException;

    const-string v4, "Error refreshing inventory (querying prices of items)."

    invoke-direct {v3, v2, v4}, Lcom/googleplay/util/IabException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 580
    .end local v1    # "inv":Lcom/googleplay/util/Inventory;
    .end local v2    # "r":I
    :catch_1
    move-exception v0

    .line 581
    .local v0, "e":Lorg/json/JSONException;
    new-instance v3, Lcom/googleplay/util/IabException;

    const/16 v4, -0x3ea

    const-string v5, "Error parsing JSON response while refreshing inventory."

    invoke-direct {v3, v4, v5, v0}, Lcom/googleplay/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 561
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "inv":Lcom/googleplay/util/Inventory;
    .restart local v2    # "r":I
    :cond_1
    :try_start_2
    iget-boolean v3, p0, Lcom/googleplay/util/IabHelper;->mSubscriptionsSupported:Z

    if-eqz v3, :cond_3

    .line 562
    const-string v3, "subs"

    invoke-virtual {p0, v1, v3}, Lcom/googleplay/util/IabHelper;->queryPurchases(Lcom/googleplay/util/Inventory;Ljava/lang/String;)I

    move-result v2

    .line 563
    if-eqz v2, :cond_2

    .line 564
    new-instance v3, Lcom/googleplay/util/IabException;

    const-string v4, "Error refreshing inventory (querying owned subscriptions)."

    invoke-direct {v3, v2, v4}, Lcom/googleplay/util/IabException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 567
    :cond_2
    if-eqz p1, :cond_3

    .line 568
    const-string v3, "subs"

    invoke-virtual {p0, v3, v1, p2}, Lcom/googleplay/util/IabHelper;->querySkuDetails(Ljava/lang/String;Lcom/googleplay/util/Inventory;Ljava/util/List;)I

    move-result v2

    .line 569
    if-eqz v2, :cond_3

    .line 570
    new-instance v3, Lcom/googleplay/util/IabException;

    const-string v4, "Error refreshing inventory (querying prices of subscriptions)."

    invoke-direct {v3, v2, v4}, Lcom/googleplay/util/IabException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 575
    :cond_3
    return-object v1
.end method

.method public queryInventoryAsync(Lcom/googleplay/util/IabHelper$QueryInventoryFinishedListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/googleplay/util/IabHelper$QueryInventoryFinishedListener;

    .prologue
    .line 643
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/googleplay/util/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/googleplay/util/IabHelper$QueryInventoryFinishedListener;)V

    .line 644
    return-void
.end method

.method public queryInventoryAsync(ZLcom/googleplay/util/IabHelper$QueryInventoryFinishedListener;)V
    .registers 4
    .param p1, "querySkuDetails"    # Z
    .param p2, "listener"    # Lcom/googleplay/util/IabHelper$QueryInventoryFinishedListener;

    .prologue
    .line 647
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/googleplay/util/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/googleplay/util/IabHelper$QueryInventoryFinishedListener;)V

    .line 648
    return-void
.end method

.method public queryInventoryAsync(ZLjava/util/List;Lcom/googleplay/util/IabHelper$QueryInventoryFinishedListener;)V
    .registers 11
    .param p1, "querySkuDetails"    # Z
    .param p3, "listener"    # Lcom/googleplay/util/IabHelper$QueryInventoryFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/googleplay/util/IabHelper$QueryInventoryFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 612
    .local p2, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    .line 613
    .local v5, "handler":Landroid/os/Handler;
    invoke-direct {p0}, Lcom/googleplay/util/IabHelper;->checkNotDisposed()V

    .line 614
    const-string v0, "queryInventory"

    invoke-virtual {p0, v0}, Lcom/googleplay/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 615
    const-string v0, "refresh inventory"

    invoke-virtual {p0, v0}, Lcom/googleplay/util/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 616
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/googleplay/util/IabHelper$2;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/googleplay/util/IabHelper$2;-><init>(Lcom/googleplay/util/IabHelper;ZLjava/util/List;Lcom/googleplay/util/IabHelper$QueryInventoryFinishedListener;Landroid/os/Handler;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 639
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 640
    return-void
.end method

.method queryPurchases(Lcom/googleplay/util/Inventory;Ljava/lang/String;)I
    .registers 19
    .param p1, "inv"    # Lcom/googleplay/util/Inventory;
    .param p2, "itemType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 839
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Querying owned items, item type: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 840
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Package name: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googleplay/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 841
    const/4 v12, 0x0

    .line 842
    .local v12, "verificationFailed":Z
    const/4 v1, 0x0

    .line 844
    .local v1, "continueToken":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/googleplay/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    if-nez v13, :cond_0

    .line 845
    const/16 v8, -0x3f3

    .line 901
    :goto_0
    return v8

    .line 849
    :cond_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Calling getPurchases with continuation token: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 850
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/googleplay/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v14, 0x3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/googleplay/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-interface {v13, v14, v15, v0, v1}, Lcom/android/vending/billing/IInAppBillingService;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 853
    .local v3, "ownedItems":Landroid/os/Bundle;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/googleplay/util/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v8

    .line 854
    .local v8, "response":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Owned items response: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 855
    if-eqz v8, :cond_1

    .line 856
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getPurchases() failed: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v8}, Lcom/googleplay/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 859
    :cond_1
    const-string v13, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    const-string v13, "INAPP_PURCHASE_DATA_LIST"

    .line 860
    invoke-virtual {v3, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    const-string v13, "INAPP_DATA_SIGNATURE_LIST"

    .line 861
    invoke-virtual {v3, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 862
    :cond_2
    const-string v13, "Bundle returned from getPurchases() doesn\'t contain required fields."

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/googleplay/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 863
    const/16 v8, -0x3ea

    goto/16 :goto_0

    .line 866
    :cond_3
    const-string v13, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 868
    .local v4, "ownedSkus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v13, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 870
    .local v7, "purchaseDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v13, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 873
    .local v10, "signatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_6

    .line 874
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 875
    .local v6, "purchaseData":Ljava/lang/String;
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 876
    .local v9, "signature":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 877
    .local v11, "sku":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/googleplay/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    invoke-static {v13, v6, v9}, Lcom/googleplay/util/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 878
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Sku is owned: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 879
    new-instance v5, Lcom/googleplay/util/Purchase;

    move-object/from16 v0, p2

    invoke-direct {v5, v0, v6, v9}, Lcom/googleplay/util/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    .local v5, "purchase":Lcom/googleplay/util/Purchase;
    invoke-virtual {v5}, Lcom/googleplay/util/Purchase;->getToken()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 882
    const-string v13, "BUG: empty/null token!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/googleplay/util/IabHelper;->logWarn(Ljava/lang/String;)V

    .line 883
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Purchase data: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 887
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/googleplay/util/Inventory;->addPurchase(Lcom/googleplay/util/Purchase;)V

    .line 873
    .end local v5    # "purchase":Lcom/googleplay/util/Purchase;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 890
    :cond_5
    const-string v13, "Purchase signature verification **FAILED**. Not adding item."

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/googleplay/util/IabHelper;->logWarn(Ljava/lang/String;)V

    .line 891
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "   Purchase data: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 892
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "   Signature: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 893
    const/4 v12, 0x1

    goto :goto_2

    .line 897
    .end local v6    # "purchaseData":Ljava/lang/String;
    .end local v9    # "signature":Ljava/lang/String;
    .end local v11    # "sku":Ljava/lang/String;
    :cond_6
    const-string v13, "INAPP_CONTINUATION_TOKEN"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 898
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Continuation token: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 899
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 901
    if-eqz v12, :cond_7

    const/16 v13, -0x3eb

    :goto_3
    move v8, v13

    goto/16 :goto_0

    :cond_7
    const/4 v13, 0x0

    goto :goto_3
.end method

.method querySkuDetails(Ljava/lang/String;Lcom/googleplay/util/Inventory;Ljava/util/List;)I
    .registers 27
    .param p1, "itemType"    # Ljava/lang/String;
    .param p2, "inv"    # Lcom/googleplay/util/Inventory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/googleplay/util/Inventory;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 906
    .local p3, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v19, "Querying SKU details."

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googleplay/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googleplay/util/IabHelper;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    .line 909
    :cond_0
    const/16 v10, -0x3f3

    .line 974
    :goto_0
    return v10

    .line 912
    :cond_1
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 913
    .local v15, "skuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/googleplay/util/Inventory;->getAllOwnedSkus(Ljava/lang/String;)Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 914
    if-eqz p3, :cond_3

    .line 915
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_2
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 916
    .local v13, "sku":Ljava/lang/String;
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 917
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 922
    .end local v13    # "sku":Ljava/lang/String;
    :cond_3
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-nez v19, :cond_4

    .line 923
    const-string v19, "queryPrices: nothing to do because there are no SKUs."

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 924
    const/4 v10, 0x0

    goto :goto_0

    .line 928
    :cond_4
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 930
    .local v8, "packs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v19

    div-int/lit8 v7, v19, 0x14

    .line 931
    .local v7, "n":I
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v19

    rem-int/lit8 v6, v19, 0x14

    .line 932
    .local v6, "mod":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v7, :cond_6

    .line 933
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 934
    .local v17, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    mul-int/lit8 v19, v5, 0x14

    mul-int/lit8 v20, v5, 0x14

    add-int/lit8 v20, v20, 0x14

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 935
    .local v12, "s":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 937
    .end local v12    # "s":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 932
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 939
    .end local v17    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    if-eqz v6, :cond_8

    .line 940
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 941
    .restart local v17    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    mul-int/lit8 v19, v7, 0x14

    mul-int/lit8 v20, v7, 0x14

    add-int v20, v20, v6

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 942
    .restart local v12    # "s":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 944
    .end local v12    # "s":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 947
    .end local v17    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_9
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_c

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 948
    .local v16, "skuPartList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 949
    .local v9, "querySkus":Landroid/os/Bundle;
    const-string v20, "ITEM_ID_LIST"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googleplay/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googleplay/util/IabHelper;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, p1

    invoke-interface {v0, v1, v2, v3, v9}, Lcom/android/vending/billing/IInAppBillingService;->getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v14

    .line 953
    .local v14, "skuDetails":Landroid/os/Bundle;
    const-string v20, "DETAILS_LIST"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_b

    .line 954
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/googleplay/util/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v10

    .line 955
    .local v10, "response":I
    if-eqz v10, :cond_a

    .line 956
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getSkuDetails() failed: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v10}, Lcom/googleplay/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 959
    :cond_a
    const-string v19, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/googleplay/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 960
    const/16 v10, -0x3ea

    goto/16 :goto_0

    .line 964
    .end local v10    # "response":I
    :cond_b
    const-string v20, "DETAILS_LIST"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 967
    .local v11, "responseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_5
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_9

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 968
    .local v18, "thisResponse":Ljava/lang/String;
    new-instance v4, Lcom/googleplay/util/SkuDetails;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v1}, Lcom/googleplay/util/SkuDetails;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    .local v4, "d":Lcom/googleplay/util/SkuDetails;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Got sku details: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 970
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/googleplay/util/Inventory;->addSkuDetails(Lcom/googleplay/util/SkuDetails;)V

    goto :goto_5

    .line 974
    .end local v4    # "d":Lcom/googleplay/util/SkuDetails;
    .end local v9    # "querySkus":Landroid/os/Bundle;
    .end local v11    # "responseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14    # "skuDetails":Landroid/os/Bundle;
    .end local v16    # "skuPartList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v18    # "thisResponse":Ljava/lang/String;
    :cond_c
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method public startSetup(Lcom/googleplay/util/IabHelper$OnIabSetupFinishedListener;)V
    .registers 6
    .param p1, "listener"    # Lcom/googleplay/util/IabHelper$OnIabSetupFinishedListener;

    .prologue
    const/4 v2, 0x0

    .line 206
    invoke-direct {p0}, Lcom/googleplay/util/IabHelper;->checkNotDisposed()V

    .line 207
    iget-boolean v1, p0, Lcom/googleplay/util/IabHelper;->mSetupDone:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "IAB helper is already set up."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 210
    :cond_0
    const-string v1, "Starting in-app billing setup."

    invoke-virtual {p0, v1}, Lcom/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 211
    new-instance v1, Lcom/googleplay/util/IabHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/googleplay/util/IabHelper$1;-><init>(Lcom/googleplay/util/IabHelper;Lcom/googleplay/util/IabHelper$OnIabSetupFinishedListener;)V

    iput-object v1, p0, Lcom/googleplay/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 266
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 267
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    iget-object v1, p0, Lcom/googleplay/util/IabHelper;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/googleplay/util/IabHelper;->mContext:Landroid/content/Context;

    .line 269
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/googleplay/util/IabHelper;->mContext:Landroid/content/Context;

    .line 270
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/googleplay/util/IabHelper;->mContext:Landroid/content/Context;

    .line 271
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 273
    iget-object v1, p0, Lcom/googleplay/util/IabHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/googleplay/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 283
    :cond_1
    :goto_0
    return-void

    .line 277
    :cond_2
    if-eqz p1, :cond_1

    .line 278
    new-instance v1, Lcom/googleplay/util/IabResult;

    const/4 v2, 0x3

    const-string v3, "Billing service unavailable on device."

    invoke-direct {v1, v2, v3}, Lcom/googleplay/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/googleplay/util/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/googleplay/util/IabResult;)V

    goto :goto_0
.end method

.method public subscriptionsSupported()Z
    .registers 2

    .prologue
    .line 311
    invoke-direct {p0}, Lcom/googleplay/util/IabHelper;->checkNotDisposed()V

    .line 312
    iget-boolean v0, p0, Lcom/googleplay/util/IabHelper;->mSubscriptionsSupported:Z

    return v0
.end method
