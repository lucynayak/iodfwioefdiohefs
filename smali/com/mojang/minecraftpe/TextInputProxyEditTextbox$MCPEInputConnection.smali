.class Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEInputConnection;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MCPEInputConnection"
.end annotation


# instance fields
.field public textbox:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

.field public final synthetic this$0:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;


# direct methods
.method public constructor <init>(Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;Landroid/view/inputmethod/InputConnection;ZLcom/mojang/minecraftpe/TextInputProxyEditTextbox;)V
    .registers 5

    iput-object p1, p0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEInputConnection;->this$0:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    invoke-direct {p0, p2, p3}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    iput-object p4, p0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEInputConnection;->textbox:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    return-void
.end method


# virtual methods
.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4

    iget-object v0, p0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEInputConnection;->textbox:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x43

    if-ne v0, v1, :cond_1

    iget-object p1, p0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEInputConnection;->this$0:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    invoke-static {p1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->access$000(Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;)Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEKeyWatcher;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEInputConnection;->this$0:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    invoke-static {p1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->access$000(Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;)Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEKeyWatcher;

    move-result-object p1

    invoke-interface {p1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEKeyWatcher;->onDeleteKeyPressed()V

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-super {p0, p1}, Landroid/view/inputmethod/InputConnectionWrapper;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
