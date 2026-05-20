.class Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2;
.super Ljava/lang/Object;
.source "GooglePlayStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->queryProducts([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

.field final synthetic val$productIds:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;[Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2;->this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

    iput-object p2, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2;->val$productIds:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2;->this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

    iget-object v0, v0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mIabHelper:Lcom/googleplay/util/IabHelper;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2;->val$productIds:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2$1;

    invoke-direct {v3, p0}, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2$1;-><init>(Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/googleplay/util/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/googleplay/util/IabHelper$QueryInventoryFinishedListener;)V

    .line 103
    return-void
.end method
