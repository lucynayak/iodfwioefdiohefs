.class Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw1/d$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$5;


# direct methods
.method public constructor <init>(Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$5;)V
    .locals 0

    iput-object p1, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$5$1;->this$1:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lw1/f;Lw1/g;)V
    .locals 5

    invoke-virtual {p1}, Lw1/f;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lw1/f;->a()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p2, Lw1/g;->a:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lw1/h;

    .line 3
    iget-object v2, p2, Lw1/h;->e:Ljava/lang/String;

    .line 4
    iget-object v3, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$5$1;->this$1:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$5;

    iget-object v3, v3, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$5;->this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

    invoke-static {v3, p2}, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->access$000(Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;Lw1/h;)Ljava/lang/String;

    move-result-object v3

    .line 5
    iget p2, p2, Lw1/h;->c:I

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    .line 6
    :goto_1
    new-instance v4, Lcom/mojang/minecraftpe/store/Purchase;

    invoke-direct {v4, v2, v3, p2}, Lcom/mojang/minecraftpe/store/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$5$1;->this$1:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$5;

    iget-object p1, p1, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$5;->this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

    iget-object p1, p1, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mListener:Lcom/mojang/minecraftpe/store/StoreListener;

    new-array p2, v1, [Lcom/mojang/minecraftpe/store/Purchase;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/mojang/minecraftpe/store/Purchase;

    invoke-interface {p1, p2}, Lcom/mojang/minecraftpe/store/StoreListener;->onQueryPurchasesSuccess([Lcom/mojang/minecraftpe/store/Purchase;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$5$1;->this$1:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$5;

    iget-object p1, p1, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$5;->this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

    iget-object p1, p1, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mListener:Lcom/mojang/minecraftpe/store/StoreListener;

    invoke-interface {p1}, Lcom/mojang/minecraftpe/store/StoreListener;->onQueryPurchasesFail()V

    return-void
.end method
