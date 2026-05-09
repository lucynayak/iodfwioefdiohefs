.class public Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter;
.super Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;
.source "SourceFile"


# instance fields
.field private loadingLayout:Landroid/widget/FrameLayout;

.field private nextButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

.field private phoneNumberEditText:Landroid/widget/EditText;

.field private subtitleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

.field private viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;-><init>(Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;)V

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;

    sget p1, Lcom/microsoft/xboxtcui/R$id;->friendfinder_add_phone_subtitle:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter;->subtitleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    sget p1, Lcom/microsoft/xboxtcui/R$id;->friendfinder_add_phone_edit_text:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter;->phoneNumberEditText:Landroid/widget/EditText;

    sget p1, Lcom/microsoft/xboxtcui/R$id;->friendfinder_info_next:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter;->nextButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    sget p1, Lcom/microsoft/xboxtcui/R$id;->friendfinder_add_phone_loading:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter;->loadingLayout:Landroid/widget/FrameLayout;

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter;->subtitleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter;->phoneNumberEditText:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter;->nextButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter;->loadingLayout:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter;)Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;
    .registers 1

    iget-object p0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter;)Landroid/widget/EditText;
    .registers 1

    iget-object p0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter;->phoneNumberEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter;)Lcom/microsoft/xbox/toolkit/ui/XLEButton;
    .registers 1

    iget-object p0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter;->nextButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    return-object p0
.end method


# virtual methods
.method public onStart()V
    .registers 5

    invoke-super {p0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->onStart()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_AddPhoneNumber_Dialog_Text_LineOne:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_AddPhoneNumber_Dialog_Text_LineTwo:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_AddPhoneNumber_Dialog_Text_LineThree:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter;->subtitleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter;->nextButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter;->nextButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    new-instance v1, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter$1;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter$1;-><init>(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter;->phoneNumberEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter$2;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter$2;-><init>(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public updateViewOverride()V
    .registers 4

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter;->loadingLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;->isBusy()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;->getSimPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;->getCurrentCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;->getSimPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter;->phoneNumberEditText:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "+"

    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method
