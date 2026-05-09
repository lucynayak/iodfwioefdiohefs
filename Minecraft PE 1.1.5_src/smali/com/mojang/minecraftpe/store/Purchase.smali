.class public Lcom/mojang/minecraftpe/store/Purchase;
.super Ljava/lang/Object;
.source "Purchase.java"


# instance fields
.field public mProductId:Ljava/lang/String;

.field public mPurchaseActive:Z

.field public mReceipt:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4
    .param p1, "productId"    # Ljava/lang/String;
    .param p2, "receipt"    # Ljava/lang/String;
    .param p3, "purchaseActive"    # Z

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/mojang/minecraftpe/store/Purchase;->mProductId:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/mojang/minecraftpe/store/Purchase;->mReceipt:Ljava/lang/String;

    .line 7
    iput-boolean p3, p0, Lcom/mojang/minecraftpe/store/Purchase;->mPurchaseActive:Z

    .line 8
    return-void
.end method
