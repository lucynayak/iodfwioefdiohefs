.class public Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;
.super Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private doneButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

.field private inviteFacebookButton:Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;

.field private inviteFriendsTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

.field private invitePhoneButton:Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;

.field private linkFacebookButton:Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;

.field private linkPhoneButton:Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;

.field private loadingFrameLayout:Landroid/widget/FrameLayout;

.field private searchButton:Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;

.field private searchEditText:Landroid/widget/EditText;

.field private searchIconButton:Landroid/widget/FrameLayout;

.field private final searchImeActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private searchLayout:Landroid/widget/RelativeLayout;

.field private viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;-><init>(Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;)V

    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/Integer;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->searchImeActions:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;

    sget p1, Lcom/microsoft/xboxtcui/R$id;->friendfinder_link_facebook:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->linkFacebookButton:Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;

    sget p1, Lcom/microsoft/xboxtcui/R$id;->friendfinder_link_phone:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->linkPhoneButton:Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;

    sget p1, Lcom/microsoft/xboxtcui/R$id;->friendfinder_link_search:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->searchButton:Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;

    sget p1, Lcom/microsoft/xboxtcui/R$id;->friendfinder_search_icon:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->searchIconButton:Landroid/widget/FrameLayout;

    sget p1, Lcom/microsoft/xboxtcui/R$id;->friendfinder_search_layout:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->searchLayout:Landroid/widget/RelativeLayout;

    sget p1, Lcom/microsoft/xboxtcui/R$id;->friendfinder_search_edittext:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->searchEditText:Landroid/widget/EditText;

    sget p1, Lcom/microsoft/xboxtcui/R$id;->friendfinder_home_invite_facebook:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->inviteFacebookButton:Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;

    sget p1, Lcom/microsoft/xboxtcui/R$id;->friendfinder_home_invite_phone:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->invitePhoneButton:Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;

    sget p1, Lcom/microsoft/xboxtcui/R$id;->friendfinder_home_invite_friends_text:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->inviteFriendsTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    sget p1, Lcom/microsoft/xboxtcui/R$id;->friendfinder_home_loading:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->loadingFrameLayout:Landroid/widget/FrameLayout;

    sget p1, Lcom/microsoft/xboxtcui/R$id;->friendfinder_home_done:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->doneButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->linkFacebookButton:Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->linkPhoneButton:Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->searchButton:Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->searchIconButton:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->searchLayout:Landroid/widget/RelativeLayout;

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->searchEditText:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->inviteFacebookButton:Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->invitePhoneButton:Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->inviteFriendsTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->loadingFrameLayout:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->doneButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->searchEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;)Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->searchImeActions:Ljava/util/ArrayList;

    return-object p0
.end method

.method private setViewVisibilities()V
    .locals 4

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->linkFacebookButton:Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->facebookLinked()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->linkPhoneButton:Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->phoneLinked()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->inviteFacebookButton:Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->facebookLinked()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->invitePhoneButton:Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->phoneLinked()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    const/16 v1, 0x8

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->loadingFrameLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->isBusy()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    const/16 v1, 0x8

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->doneButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->shouldShowDone()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    goto :goto_5

    :cond_5
    const/16 v1, 0x8

    :goto_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->inviteFriendsTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->facebookLinked()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->phoneLinked()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_6

    :cond_6
    const/16 v2, 0x8

    :cond_7
    :goto_6
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->getScreen()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->getName()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/microsoft/xboxtcui/R$id;->friendfinder_link_facebook:I

    if-ne p1, v1, :cond_0

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackFacebookSignup(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;

    invoke-virtual {p1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->navigateToLinkFacebook()V

    goto :goto_0

    :cond_0
    sget v1, Lcom/microsoft/xboxtcui/R$id;->friendfinder_link_phone:I

    if-ne p1, v1, :cond_1

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackContactsSignUp(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;

    invoke-virtual {p1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->navigateToLinkPhone()V

    return-void

    :cond_1
    sget v1, Lcom/microsoft/xboxtcui/R$id;->friendfinder_link_search:I

    if-ne p1, v1, :cond_2

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackGamertagSearch(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->searchLayout:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->searchButton:Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->searchEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void

    :cond_2
    sget v1, Lcom/microsoft/xboxtcui/R$id;->friendfinder_home_invite_facebook:I

    if-ne p1, v1, :cond_3

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackFacebookSuggestions(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;

    invoke-virtual {p1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->navigateToFacebookSuggestions()V

    return-void

    :cond_3
    sget v1, Lcom/microsoft/xboxtcui/R$id;->friendfinder_home_invite_phone:I

    if-ne p1, v1, :cond_4

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackContactsSuggestions(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;

    invoke-virtual {p1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->navigateToPhoneSuggestions()V

    return-void

    :cond_4
    sget v1, Lcom/microsoft/xboxtcui/R$id;->friendfinder_home_done:I

    if-ne p1, v1, :cond_5

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackDone(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;

    invoke-virtual {p1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->finishFriendFinder()V

    :cond_5
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 3

    invoke-super {p0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->onStart()V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->linkFacebookButton:Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->linkPhoneButton:Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->searchButton:Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->inviteFacebookButton:Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->invitePhoneButton:Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->doneButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    invoke-virtual {v0, p0}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->linkFacebookButton:Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;->setImageUri(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->inviteFacebookButton:Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;->setImageUri(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->searchLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->getScreen()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->searchIconButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter$1;

    invoke-direct {v2, p0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter$1;-><init>(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->searchEditText:Landroid/widget/EditText;

    new-instance v2, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter$2;

    invoke-direct {v2, p0, v0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter$2;-><init>(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->searchEditText:Landroid/widget/EditText;

    new-instance v2, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter$3;

    invoke-direct {v2, p0, v0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter$3;-><init>(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->searchEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter$4;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter$4;-><init>(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public updateViewOverride()V
    .locals 2

    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->setViewVisibilities()V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->getFacebookIconUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->linkFacebookButton:Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;

    invoke-virtual {v1, v0}, Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;->setImageUri(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->inviteFacebookButton:Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;

    invoke-virtual {v1, v0}, Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;->setImageUri(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
