.class public Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;
.super Landroid/widget/EditText;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEInputConnection;,
        Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEKeyWatcher;
    }
.end annotation


# instance fields
.field private _mcpeKeyWatcher:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEKeyWatcher;

.field public final allowedLength:I

.field public final limitInput:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .registers 6

    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->_mcpeKeyWatcher:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEKeyWatcher;

    iput p2, p0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->allowedLength:I

    iput-boolean p3, p0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->limitInput:Z

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    const/4 p3, 0x2

    new-array p3, p3, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v1, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, p3, p1

    new-instance p1, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$1;

    invoke-direct {p1, p0}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$1;-><init>(Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;)V

    aput-object p1, p3, v0

    goto :goto_0

    :cond_0
    new-array p3, v0, [Landroid/text/InputFilter;

    new-instance v0, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v0, p3, p1

    :goto_0
    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->_mcpeKeyWatcher:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEKeyWatcher;

    const/16 p1, 0xa0

    iput p1, p0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->allowedLength:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->limitInput:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->_mcpeKeyWatcher:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEKeyWatcher;

    const/16 p1, 0xa0

    iput p1, p0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->allowedLength:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->limitInput:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;)Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEKeyWatcher;
    .registers 1

    iget-object p0, p0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->_mcpeKeyWatcher:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEKeyWatcher;

    return-object p0
.end method


# virtual methods
.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 4

    new-instance v0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEInputConnection;

    invoke-super {p0, p1}, Landroid/widget/TextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1, p0}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEInputConnection;-><init>(Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;Landroid/view/inputmethod/InputConnection;ZLcom/mojang/minecraftpe/TextInputProxyEditTextbox;)V

    return-object v0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 5

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object p1, p0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->_mcpeKeyWatcher:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEKeyWatcher;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEKeyWatcher;->onBackKeyPressed()V

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public setOnMCPEKeyWatcher(Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEKeyWatcher;)V
    .registers 2

    iput-object p1, p0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->_mcpeKeyWatcher:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEKeyWatcher;

    return-void
.end method
