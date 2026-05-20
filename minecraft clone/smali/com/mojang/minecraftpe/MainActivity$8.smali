.class Lcom/mojang/minecraftpe/MainActivity$8;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/MainActivity;->updateLocalization(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mojang/minecraftpe/MainActivity;

.field final synthetic val$langString:Ljava/lang/String;

.field final synthetic val$regionString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mojang/minecraftpe/MainActivity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/mojang/minecraftpe/MainActivity;

    .prologue
    .line 440
    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$8;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iput-object p2, p0, Lcom/mojang/minecraftpe/MainActivity$8;->val$langString:Ljava/lang/String;

    iput-object p3, p0, Lcom/mojang/minecraftpe/MainActivity$8;->val$regionString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 442
    new-instance v1, Ljava/util/Locale;

    iget-object v2, p0, Lcom/mojang/minecraftpe/MainActivity$8;->val$langString:Ljava/lang/String;

    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity$8;->val$regionString:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    .local v1, "locale":Ljava/util/Locale;
    invoke-static {v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 444
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 445
    .local v0, "config":Landroid/content/res/Configuration;
    iput-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 446
    iget-object v2, p0, Lcom/mojang/minecraftpe/MainActivity$8;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v2}, Lcom/mojang/minecraftpe/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity$8;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    .line 447
    invoke-virtual {v3}, Lcom/mojang/minecraftpe/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 446
    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 448
    return-void
.end method
