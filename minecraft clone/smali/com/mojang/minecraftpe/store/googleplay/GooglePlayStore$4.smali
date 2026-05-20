.class Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$4;
.super Ljava/lang/Object;
.source "GooglePlayStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->acknowledgePurchase(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

.field final synthetic val$receipt:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$4;->this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

    iput-object p2, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$4;->val$receipt:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 135
    iget-object v1, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$4;->this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

    iget-object v2, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$4;->val$receipt:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->access$100(Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;Ljava/lang/String;)Lcom/googleplay/util/Purchase;

    move-result-object v0

    .line 136
    .local v0, "purchase":Lcom/googleplay/util/Purchase;
    if-eqz v0, :cond_0

    .line 137
    iget-object v1, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$4;->this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

    iget-object v1, v1, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mIabHelper:Lcom/googleplay/util/IabHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/googleplay/util/IabHelper;->consumeAsync(Lcom/googleplay/util/Purchase;Lcom/googleplay/util/IabHelper$OnConsumeFinishedListener;)V

    .line 139
    :cond_0
    return-void
.end method
