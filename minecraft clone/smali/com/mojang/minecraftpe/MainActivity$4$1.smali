.class Lcom/mojang/minecraftpe/MainActivity$4$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/MainActivity$4;->onDeleteKeyPressed()V
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
    .line 346
    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$4$1;->this$1:Lcom/mojang/minecraftpe/MainActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$4$1;->this$1:Lcom/mojang/minecraftpe/MainActivity$4;

    iget-object v0, v0, Lcom/mojang/minecraftpe/MainActivity$4;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/MainActivity;->nativeBackSpacePressed()V

    .line 351
    return-void
.end method
