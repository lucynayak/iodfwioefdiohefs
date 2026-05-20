.class Lcom/mojang/minecraftpe/MainActivity$11;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/MainActivity;->updateTextboxText(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mojang/minecraftpe/MainActivity;

.field final synthetic val$setText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mojang/minecraftpe/MainActivity;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/mojang/minecraftpe/MainActivity;

    .prologue
    .line 478
    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$11;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iput-object p2, p0, Lcom/mojang/minecraftpe/MainActivity$11;->val$setText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 484
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$11;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iget-object v0, v0, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    if-nez v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$11;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity$11;->val$setText:Ljava/lang/String;

    iget-object v2, p0, Lcom/mojang/minecraftpe/MainActivity$11;->val$setText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/mojang/minecraftpe/MainActivity;->setupKeyboardViews(Ljava/lang/String;IZZ)V

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$11;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iget-object v0, v0, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity$11;->val$setText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->setText(Ljava/lang/CharSequence;)V

    .line 488
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$11;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iget-object v0, v0, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity$11;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iget-object v1, v1, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    invoke-virtual {v1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->setSelection(I)V

    .line 489
    return-void
.end method
