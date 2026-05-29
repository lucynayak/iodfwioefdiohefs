.class Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq0/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;


# direct methods
.method public constructor <init>(Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;)V
    .registers 2

    iput-object p1, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore$1;->this$0:Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProductDataResponse(La1/b;)V
    .registers 2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore$1;->this$0:Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;

    invoke-static {p1}, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->access$100(Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;)Lcom/mojang/minecraftpe/store/StoreListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/mojang/minecraftpe/store/StoreListener;->onQueryProductsFail()V

    return-void
.end method

.method public onPurchaseResponse(La1/c;)V
    .registers 3

    iget-object v0, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore$1;->this$0:Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;

    invoke-static {v0}, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->access$200(Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore$1;->this$0:Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;

    invoke-static {v0}, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->access$100(Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;)Lcom/mojang/minecraftpe/store/StoreListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mojang/minecraftpe/store/StoreListener;->onPurchaseFailed(Ljava/lang/String;)V

    return-void
.end method

.method public onPurchaseUpdatesResponse(La1/d;)V
    .registers 2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore$1;->this$0:Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;

    invoke-static {p1}, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->access$100(Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;)Lcom/mojang/minecraftpe/store/StoreListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/mojang/minecraftpe/store/StoreListener;->onQueryPurchasesFail()V

    return-void
.end method

.method public onUserDataResponse(La1/f;)V
    .registers 2

    return-void
.end method
