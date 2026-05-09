.class public Lcom/mojang/minecraftpe/store/Product;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mId:Ljava/lang/String;

.field public mPrice:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mojang/minecraftpe/store/Product;->mId:Ljava/lang/String;

    iput-object p2, p0, Lcom/mojang/minecraftpe/store/Product;->mPrice:Ljava/lang/String;

    return-void
.end method
