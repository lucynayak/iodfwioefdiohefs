.class Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$5$1;
.super Ljava/lang/Object;
.source "GooglePlayStore.java"

# interfaces
.implements Lcom/googleplay/util/IabHelper$QueryInventoryFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$5;


# direct methods
.method constructor <init>(Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$5;)V
    .registers 2
    .param p1, "this$1"    # Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$5;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$5$1;->this$1:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/googleplay/util/IabResult;Lcom/googleplay/util/Inventory;)V
    .registers 11
    .param p1, "result"    # Lcom/googleplay/util/IabResult;
    .param p2, "inv"    # Lcom/googleplay/util/Inventory;

    .prologue
    const/4 v3, 0x0

    .line 152
    invoke-virtual {p1}, Lcom/googleplay/util/IabResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 153
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v1, "purchases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mojang/minecraftpe/store/Purchase;>;"
    invoke-virtual {p1}, Lcom/googleplay/util/IabResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 155
    invoke-virtual {p2}, Lcom/googleplay/util/Inventory;->getAllPurchases()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googleplay/util/Purchase;

    .line 156
    .local v0, "purchase":Lcom/googleplay/util/Purchase;
    new-instance v5, Lcom/mojang/minecraftpe/store/Purchase;

    invoke-virtual {v0}, Lcom/googleplay/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$5$1;->this$1:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$5;

    iget-object v2, v2, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$5;->this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

    invoke-static {v2, v0}, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->access$000(Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;Lcom/googleplay/util/Purchase;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/googleplay/util/Purchase;->getPurchaseState()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-direct {v5, v6, v7, v2}, Lcom/mojang/minecraftpe/store/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    .line 159
    .end local v0    # "purchase":Lcom/googleplay/util/Purchase;
    :cond_1
    iget-object v2, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$5$1;->this$1:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$5;

    iget-object v2, v2, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$5;->this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

    iget-object v4, v2, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mListener:Lcom/mojang/minecraftpe/store/StoreListener;

    new-array v2, v3, [Lcom/mojang/minecraftpe/store/Purchase;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/mojang/minecraftpe/store/Purchase;

    invoke-interface {v4, v2}, Lcom/mojang/minecraftpe/store/StoreListener;->onQueryPurchasesSuccess([Lcom/mojang/minecraftpe/store/Purchase;)V

    .line 163
    .end local v1    # "purchases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mojang/minecraftpe/store/Purchase;>;"
    :goto_2
    return-void

    .line 161
    :cond_2
    iget-object v2, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$5$1;->this$1:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$5;

    iget-object v2, v2, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$5;->this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

    iget-object v2, v2, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mListener:Lcom/mojang/minecraftpe/store/StoreListener;

    invoke-interface {v2}, Lcom/mojang/minecraftpe/store/StoreListener;->onQueryPurchasesFail()V

    goto :goto_2
.end method
