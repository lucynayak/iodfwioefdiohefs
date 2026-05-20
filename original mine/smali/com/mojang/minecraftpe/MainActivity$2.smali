.class Lcom/mojang/minecraftpe/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/MainActivity;->setupKeyboardViews(Ljava/lang/String;IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mojang/minecraftpe/MainActivity;


# direct methods
.method constructor <init>(Lcom/mojang/minecraftpe/MainActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mojang/minecraftpe/MainActivity;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$2;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 12
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 305
    const-string v5, "mcpe - keyboard"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onEditorAction: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const/4 v2, 0x0

    .line 307
    .local v2, "handled":Z
    const/4 v5, 0x5

    if-ne p2, v5, :cond_3

    .line 308
    iget-object v5, p0, Lcom/mojang/minecraftpe/MainActivity$2;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v5}, Lcom/mojang/minecraftpe/MainActivity;->nativeReturnKeyPressed()V

    .line 309
    iget-object v5, p0, Lcom/mojang/minecraftpe/MainActivity$2;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iget-object v5, v5, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    invoke-virtual {v5}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, "curText":Ljava/lang/String;
    iget-object v5, p0, Lcom/mojang/minecraftpe/MainActivity$2;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iget-object v5, v5, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    invoke-virtual {v5}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->getSelectionEnd()I

    move-result v0

    .line 312
    .local v0, "curSelect":I
    if-ltz v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v0, v5, :cond_1

    .line 313
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 316
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v1, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 317
    .local v4, "newText":Ljava/lang/String;
    iget-object v5, p0, Lcom/mojang/minecraftpe/MainActivity$2;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iget-object v5, v5, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    invoke-virtual {v5, v4}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->setText(Ljava/lang/CharSequence;)V

    .line 318
    add-int/lit8 v5, v0, 0x1

    iget-object v6, p0, Lcom/mojang/minecraftpe/MainActivity$2;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iget-object v6, v6, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    invoke-virtual {v6}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 319
    .local v3, "newSelection":I
    iget-object v5, p0, Lcom/mojang/minecraftpe/MainActivity$2;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iget-object v5, v5, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    invoke-virtual {v5, v3}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->setSelection(I)V

    .line 321
    const/4 v2, 0x1

    .line 326
    .end local v0    # "curSelect":I
    .end local v1    # "curText":Ljava/lang/String;
    .end local v3    # "newSelection":I
    .end local v4    # "newText":Ljava/lang/String;
    :cond_2
    :goto_0
    return v2

    .line 322
    :cond_3
    const/4 v5, 0x7

    if-ne p2, v5, :cond_2

    .line 323
    iget-object v5, p0, Lcom/mojang/minecraftpe/MainActivity$2;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v5}, Lcom/mojang/minecraftpe/MainActivity;->nativeBackPressed()V

    .line 324
    const/4 v2, 0x1

    goto :goto_0
.end method
