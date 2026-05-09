.class public Lcom/mojang/minecraftpe/store/StoreFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAmazonAppStore(Lcom/mojang/minecraftpe/store/StoreListener;Z)Lcom/mojang/minecraftpe/store/Store;
    .registers 4

    new-instance v0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;

    sget-object v1, Lcom/mojang/minecraftpe/MainActivity;->mInstance:Lcom/mojang/minecraftpe/MainActivity;

    invoke-direct {v0, v1, p0, p1}, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;-><init>(Landroid/content/Context;Lcom/mojang/minecraftpe/store/StoreListener;Z)V

    return-object v0
.end method

.method public static createGooglePlayStore(Ljava/lang/String;Lcom/mojang/minecraftpe/store/StoreListener;)Lcom/mojang/minecraftpe/store/Store;
    .registers 4

    new-instance v0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

    sget-object v1, Lcom/mojang/minecraftpe/MainActivity;->mInstance:Lcom/mojang/minecraftpe/MainActivity;

    invoke-direct {v0, v1, p0, p1}, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;-><init>(Lcom/mojang/minecraftpe/MainActivity;Ljava/lang/String;Lcom/mojang/minecraftpe/store/StoreListener;)V

    return-object v0
.end method
