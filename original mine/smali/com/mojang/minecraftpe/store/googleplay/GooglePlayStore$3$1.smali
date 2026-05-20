.class Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3$1;
.super Ljava/lang/Object;
.source "GooglePlayStore.java"

# interfaces
.implements Lcom/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3;


# direct methods
.method constructor <init>(Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3;)V
    .registers 2
    .param p1, "this$1"    # Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3$1;->this$1:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabPurchaseFinished(Lcom/googleplay/util/IabResult;Lcom/googleplay/util/Purchase;)V
    .registers 6
    .param p1, "result"    # Lcom/googleplay/util/IabResult;
    .param p2, "info"    # Lcom/googleplay/util/Purchase;

    .prologue
    .line 116
    invoke-virtual {p1}, Lcom/googleplay/util/IabResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3$1;->this$1:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3;

    iget-object v0, v0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3;->this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

    iget-object v0, v0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mListener:Lcom/mojang/minecraftpe/store/StoreListener;

    iget-object v1, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3$1;->this$1:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3;

    iget-object v1, v1, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3;->val$productId:Ljava/lang/String;

    iget-object v2, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3$1;->this$1:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3;

    iget-object v2, v2, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3;->this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

    invoke-static {v2, p2}, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->access$000(Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;Lcom/googleplay/util/Purchase;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/mojang/minecraftpe/store/StoreListener;->onPurchaseSuccessful(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-virtual {p1}, Lcom/googleplay/util/IabResult;->getResponse()I

    move-result v0

    const/16 v1, -0x3ed

    if-ne v0, v1, :cond_1

    .line 119
    iget-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3$1;->this$1:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3;

    iget-object v0, v0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3;->this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

    iget-object v0, v0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mListener:Lcom/mojang/minecraftpe/store/StoreListener;

    iget-object v1, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3$1;->this$1:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3;

    iget-object v1, v1, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3;->val$productId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/mojang/minecraftpe/store/StoreListener;->onPurchaseCanceled(Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3$1;->this$1:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3;

    iget-object v0, v0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3;->this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

    iget-object v0, v0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mListener:Lcom/mojang/minecraftpe/store/StoreListener;

    iget-object v1, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3$1;->this$1:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3;

    iget-object v1, v1, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3;->val$productId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/mojang/minecraftpe/store/StoreListener;->onPurchaseFailed(Ljava/lang/String;)V

    goto :goto_0
.end method
