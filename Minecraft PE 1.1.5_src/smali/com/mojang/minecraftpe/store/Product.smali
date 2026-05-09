.class public Lcom/mojang/minecraftpe/store/Product;
.super Ljava/lang/Object;
.source "Product.java"


# instance fields
.field public mId:Ljava/lang/String;

.field public mPrice:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "price"    # Ljava/lang/String;

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/mojang/minecraftpe/store/Product;->mId:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/mojang/minecraftpe/store/Product;->mPrice:Ljava/lang/String;

    .line 7
    return-void
.end method
