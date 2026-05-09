.class Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw1/d$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2;


# direct methods
.method public constructor <init>(Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2;)V
    .locals 0

    iput-object p1, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2$1;->this$1:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lw1/f;Lw1/g;)V
    .locals 7

    invoke-virtual {p1}, Lw1/f;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lw1/f;->a()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2$1;->this$1:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2;

    iget-object p1, p1, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2;->val$productIds:[Ljava/lang/String;

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    .line 1
    iget-object v5, p2, Lw1/g;->b:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lw1/i;

    if-eqz v5, :cond_0

    .line 2
    new-instance v6, Lcom/mojang/minecraftpe/store/Product;

    .line 3
    iget-object v5, v5, Lw1/i;->b:Ljava/lang/String;

    .line 4
    invoke-direct {v6, v4, v5}, Lcom/mojang/minecraftpe/store/Product;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2$1;->this$1:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2;

    iget-object p1, p1, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2;->this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

    iget-object p1, p1, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mListener:Lcom/mojang/minecraftpe/store/StoreListener;

    new-array p2, v1, [Lcom/mojang/minecraftpe/store/Product;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/mojang/minecraftpe/store/Product;

    invoke-interface {p1, p2}, Lcom/mojang/minecraftpe/store/StoreListener;->onQueryProductsSuccess([Lcom/mojang/minecraftpe/store/Product;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2$1;->this$1:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2;

    iget-object p1, p1, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2;->this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

    iget-object p1, p1, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mListener:Lcom/mojang/minecraftpe/store/StoreListener;

    invoke-interface {p1}, Lcom/mojang/minecraftpe/store/StoreListener;->onQueryProductsFail()V

    return-void
.end method
