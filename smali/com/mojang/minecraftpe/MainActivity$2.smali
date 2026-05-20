.class Lcom/mojang/minecraftpe/MainActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/MainActivity;->setupKeyboardViews(Ljava/lang/String;IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/mojang/minecraftpe/MainActivity;


# direct methods
.method public constructor <init>(Lcom/mojang/minecraftpe/MainActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$2;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onEditorAction: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "mcpe - keyboard"

    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    const/4 p3, 0x1

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/mojang/minecraftpe/MainActivity$2;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {p2}, Lcom/mojang/minecraftpe/MainActivity;->nativeReturnKeyPressed()V

    iget-object p2, p0, Lcom/mojang/minecraftpe/MainActivity$2;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iget-object p2, p2, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$2;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iget-object v0, v0, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/mojang/minecraftpe/MainActivity$2;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iget-object p2, p2, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$2;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iget-object p1, p1, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    add-int/2addr v0, p3

    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    move v0, v1

    :cond_0
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x7

    if-ne p2, v0, :cond_2

    iget-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$2;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {p1}, Lcom/mojang/minecraftpe/MainActivity;->nativeBackPressed()V

    return p3

    :cond_2
    :goto_1
    return p1
.end method
