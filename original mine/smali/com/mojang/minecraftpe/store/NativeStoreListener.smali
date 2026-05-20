.class public Lcom/mojang/minecraftpe/store/NativeStoreListener;
.super Ljava/lang/Object;
.source "NativeStoreListener.java"

# interfaces
.implements Lcom/mojang/minecraftpe/store/StoreListener;


# instance fields
.field mStoreListener:J


# direct methods
.method public constructor <init>(J)V
    .registers 4
    .param p1, "storeListener"    # J

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-wide p1, p0, Lcom/mojang/minecraftpe/store/NativeStoreListener;->mStoreListener:J

    .line 8
    return-void
.end method


# virtual methods
.method public native onPurchaseCanceled(JLjava/lang/String;)V
.end method

.method public onPurchaseCanceled(Ljava/lang/String;)V
    .registers 4
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/mojang/minecraftpe/store/NativeStoreListener;->mStoreListener:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/mojang/minecraftpe/store/NativeStoreListener;->onPurchaseCanceled(JLjava/lang/String;)V

    .line 33
    return-void
.end method

.method public native onPurchaseFailed(JLjava/lang/String;)V
.end method

.method public onPurchaseFailed(Ljava/lang/String;)V
    .registers 4
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/mojang/minecraftpe/store/NativeStoreListener;->mStoreListener:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/mojang/minecraftpe/store/NativeStoreListener;->onPurchaseFailed(JLjava/lang/String;)V

    .line 38
    return-void
.end method

.method public native onPurchaseSuccessful(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method public onPurchaseSuccessful(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "productId"    # Ljava/lang/String;
    .param p2, "receipt"    # Ljava/lang/String;

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/mojang/minecraftpe/store/NativeStoreListener;->mStoreListener:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/mojang/minecraftpe/store/NativeStoreListener;->onPurchaseSuccessful(JLjava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public onQueryProductsFail()V
    .registers 3

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/mojang/minecraftpe/store/NativeStoreListener;->mStoreListener:J

    invoke-virtual {p0, v0, v1}, Lcom/mojang/minecraftpe/store/NativeStoreListener;->onQueryProductsFail(J)V

    .line 23
    return-void
.end method

.method public native onQueryProductsFail(J)V
.end method

.method public native onQueryProductsSuccess(J[Lcom/mojang/minecraftpe/store/Product;)V
.end method

.method public onQueryProductsSuccess([Lcom/mojang/minecraftpe/store/Product;)V
    .registers 4
    .param p1, "products"    # [Lcom/mojang/minecraftpe/store/Product;

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/mojang/minecraftpe/store/NativeStoreListener;->mStoreListener:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/mojang/minecraftpe/store/NativeStoreListener;->onQueryProductsSuccess(J[Lcom/mojang/minecraftpe/store/Product;)V

    .line 18
    return-void
.end method

.method public onQueryPurchasesFail()V
    .registers 3

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/mojang/minecraftpe/store/NativeStoreListener;->mStoreListener:J

    invoke-virtual {p0, v0, v1}, Lcom/mojang/minecraftpe/store/NativeStoreListener;->onQueryPurchasesFail(J)V

    .line 48
    return-void
.end method

.method public native onQueryPurchasesFail(J)V
.end method

.method public native onQueryPurchasesSuccess(J[Lcom/mojang/minecraftpe/store/Purchase;)V
.end method

.method public onQueryPurchasesSuccess([Lcom/mojang/minecraftpe/store/Purchase;)V
    .registers 4
    .param p1, "purchases"    # [Lcom/mojang/minecraftpe/store/Purchase;

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/mojang/minecraftpe/store/NativeStoreListener;->mStoreListener:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/mojang/minecraftpe/store/NativeStoreListener;->onQueryPurchasesSuccess(J[Lcom/mojang/minecraftpe/store/Purchase;)V

    .line 43
    return-void
.end method

.method public native onStoreInitialized(JZ)V
.end method

.method public onStoreInitialized(Z)V
    .registers 4
    .param p1, "available"    # Z

    .prologue
    .line 12
    iget-wide v0, p0, Lcom/mojang/minecraftpe/store/NativeStoreListener;->mStoreListener:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/mojang/minecraftpe/store/NativeStoreListener;->onStoreInitialized(JZ)V

    .line 13
    return-void
.end method
