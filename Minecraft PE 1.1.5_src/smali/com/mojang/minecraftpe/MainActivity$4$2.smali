.class Lcom/mojang/minecraftpe/MainActivity$4$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/MainActivity$4;->onBackKeyPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mojang/minecraftpe/MainActivity$4;


# direct methods
.method constructor <init>(Lcom/mojang/minecraftpe/MainActivity$4;)V
    .registers 2
    .param p1, "this$1"    # Lcom/mojang/minecraftpe/MainActivity$4;

    .prologue
    .line 358
    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$4$2;->this$1:Lcom/mojang/minecraftpe/MainActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 362
    const-string v0, "mcpe - keyboard"

    const-string v1, "textInputWidget.onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$4$2;->this$1:Lcom/mojang/minecraftpe/MainActivity$4;

    iget-object v0, v0, Lcom/mojang/minecraftpe/MainActivity$4;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/MainActivity;->nativeBackPressed()V

    .line 366
    return-void
.end method
