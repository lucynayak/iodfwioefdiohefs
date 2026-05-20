.class Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3;
.super Ljava/lang/Object;
.source "GooglePlayStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->purchase(Ljava/lang/String;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

.field final synthetic val$isSubscription:Z

.field final synthetic val$payload:Ljava/lang/String;

.field final synthetic val$productId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "this$0"    # Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3;->this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

    iput-boolean p2, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3;->val$isSubscription:Z

    iput-object p3, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3;->val$productId:Ljava/lang/String;

    iput-object p4, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3;->val$payload:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3;->val$isSubscription:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3;->this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

    iget-object v0, v0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mIabHelper:Lcom/googleplay/util/IabHelper;

    const-string v3, "subs"

    .line 113
    .local v3, "itemType":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3;->this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

    iget-object v0, v0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mIabHelper:Lcom/googleplay/util/IabHelper;

    iget-object v1, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3;->this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

    iget-object v1, v1, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    iget-object v2, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3;->val$productId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3;->this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

    iget v4, v4, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mPurchaseRequestCode:I

    new-instance v5, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3$1;

    invoke-direct {v5, p0}, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3$1;-><init>(Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3;)V

    iget-object v6, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3;->val$payload:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/googleplay/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 125
    return-void

    .line 112
    .end local v3    # "itemType":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3;->this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

    iget-object v0, v0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mIabHelper:Lcom/googleplay/util/IabHelper;

    const-string v3, "inapp"

    goto :goto_0
.end method
