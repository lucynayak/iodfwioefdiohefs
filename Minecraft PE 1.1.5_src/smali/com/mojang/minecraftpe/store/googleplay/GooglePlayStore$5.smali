.class Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$5;
.super Ljava/lang/Object;
.source "GooglePlayStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->queryPurchases()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;


# direct methods
.method constructor <init>(Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$5;->this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 149
    iget-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$5;->this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

    iget-object v0, v0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mIabHelper:Lcom/googleplay/util/IabHelper;

    const/4 v1, 0x0

    new-instance v2, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$5$1;

    invoke-direct {v2, p0}, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$5$1;-><init>(Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$5;)V

    invoke-virtual {v0, v1, v2}, Lcom/googleplay/util/IabHelper;->queryInventoryAsync(ZLcom/googleplay/util/IabHelper$QueryInventoryFinishedListener;)V

    .line 165
    return-void
.end method
