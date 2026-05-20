.class Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$1;
.super Ljava/lang/Object;
.source "GooglePlayStore.java"

# interfaces
.implements Lcom/googleplay/util/IabHelper$OnIabSetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;-><init>(Lcom/mojang/minecraftpe/MainActivity;Ljava/lang/String;Lcom/mojang/minecraftpe/store/StoreListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

.field final synthetic val$iabBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;Landroid/content/BroadcastReceiver;)V
    .registers 3
    .param p1, "this$0"    # Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$1;->this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

    iput-object p2, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$1;->val$iabBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Lcom/googleplay/util/IabResult;)V
    .registers 6
    .param p1, "result"    # Lcom/googleplay/util/IabResult;

    .prologue
    .line 44
    const-string v1, "GooglePlayStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onIabSetupFinished: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/googleplay/util/IabResult;->getResponse()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/googleplay/util/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.vending.billing.PURCHASES_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 51
    .local v0, "broadcastFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$1;->this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

    iget-object v1, v1, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    iget-object v2, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$1;->val$iabBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v2, v0}, Lcom/mojang/minecraftpe/compat/ReceiverCompat;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 53
    iget-object v1, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$1;->this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

    iget-object v1, v1, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mListener:Lcom/mojang/minecraftpe/store/StoreListener;

    invoke-virtual {p1}, Lcom/googleplay/util/IabResult;->isSuccess()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/mojang/minecraftpe/store/StoreListener;->onStoreInitialized(Z)V

    .line 54
    return-void
.end method
