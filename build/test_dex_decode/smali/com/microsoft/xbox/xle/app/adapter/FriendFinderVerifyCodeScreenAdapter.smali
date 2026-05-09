.class public Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;
.super Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;
.source "SourceFile"


# instance fields
.field private callMeButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

.field private codeEditText:Landroid/widget/EditText;

.field private loadingLayout:Landroid/widget/FrameLayout;

.field private resendCodeButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

.field private verifyButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

.field private viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;-><init>(Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;)V

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;

    sget p1, Lcom/microsoft/xboxtcui/R$id;->friendfinder_verify_code_edit_text:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->codeEditText:Landroid/widget/EditText;

    sget p1, Lcom/microsoft/xboxtcui/R$id;->friendfinder_verify_resend:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->resendCodeButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    sget p1, Lcom/microsoft/xboxtcui/R$id;->friendfinder_verify_call_me:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->callMeButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    sget p1, Lcom/microsoft/xboxtcui/R$id;->friendfinder_verify_verify_code:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->verifyButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    sget p1, Lcom/microsoft/xboxtcui/R$id;->friendfinder_verify_loading:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->loadingLayout:Landroid/widget/FrameLayout;

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->codeEditText:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->resendCodeButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->callMeButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->verifyButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->loadingLayout:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->resendCodeButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->resendCodeButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->callMeButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->callMeButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->verifyButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setEnabled(Z)V

    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;)Lcom/microsoft/xbox/toolkit/ui/XLEButton;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->verifyButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;)Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->codeEditText:Landroid/widget/EditText;

    return-object p0
.end method


# virtual methods
.method public onStart()V
    .locals 2

    invoke-super {p0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->onStart()V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->codeEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter$1;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter$1;-><init>(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->resendCodeButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    new-instance v1, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter$2;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter$2;-><init>(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->callMeButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    new-instance v1, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter$3;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter$3;-><init>(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->verifyButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    new-instance v1, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter$4;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter$4;-><init>(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public updateViewOverride()V
    .locals 2

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->loadingLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;->isBusy()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->resendCodeButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;->isSendingCode()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->callMeButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;->isSendingCode()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method
