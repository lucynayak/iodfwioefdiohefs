.class public Lcom/mojang/minecraftpe/Minecraft_Market_Demo;
.super Lcom/mojang/minecraftpe/MainActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/mojang/minecraftpe/MainActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public buyGame()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "market://details?id=com.mojang.minecraftpe"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public isDemo()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
