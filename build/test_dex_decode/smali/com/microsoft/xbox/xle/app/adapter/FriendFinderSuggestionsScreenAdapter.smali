.class public Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;
.super Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;
.source "SourceFile"


# instance fields
.field private advanceButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

.field private emptyListHeaderContainer:Landroid/view/ViewGroup;

.field private listHeaderContainer:Landroid/widget/FrameLayout;

.field private listHeaderGroup:Landroid/view/ViewGroup;

.field private loadingOverlay:Landroid/widget/FrameLayout;

.field private subtitleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

.field private suggestionsListAdapter:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter;

.field private suggestionsListView:Lcom/microsoft/xbox/toolkit/ui/XLEListView;

.field private titleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

.field private viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;-><init>(Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;)V

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;

    sget p1, Lcom/microsoft/xboxtcui/R$id;->friendfinder_suggestions_title:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->titleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    sget p1, Lcom/microsoft/xboxtcui/R$id;->friendfinder_suggestions_subtitle:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->subtitleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    sget p1, Lcom/microsoft/xboxtcui/R$id;->friendfinder_suggestions_empty_header_container:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->emptyListHeaderContainer:Landroid/view/ViewGroup;

    sget p1, Lcom/microsoft/xboxtcui/R$id;->friendfinder_suggestions_header:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->listHeaderGroup:Landroid/view/ViewGroup;

    sget p1, Lcom/microsoft/xboxtcui/R$id;->friendfinder_suggestions_list:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/toolkit/ui/XLEListView;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->suggestionsListView:Lcom/microsoft/xbox/toolkit/ui/XLEListView;

    sget p1, Lcom/microsoft/xboxtcui/R$id;->friendfinder_suggestions_button:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->advanceButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    sget p1, Lcom/microsoft/xboxtcui/R$id;->friendfinder_suggestions_loading:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->loadingOverlay:Landroid/widget/FrameLayout;

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->titleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->subtitleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->suggestionsListView:Lcom/microsoft/xbox/toolkit/ui/XLEListView;

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->emptyListHeaderContainer:Landroid/view/ViewGroup;

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->listHeaderGroup:Landroid/view/ViewGroup;

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->advanceButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->loadingOverlay:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    new-instance p1, Landroid/widget/FrameLayout;

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->listHeaderContainer:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->suggestionsListView:Lcom/microsoft/xbox/toolkit/ui/XLEListView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->suggestionsListView:Lcom/microsoft/xbox/toolkit/ui/XLEListView;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;)Lcom/microsoft/xbox/toolkit/ui/XLEListView;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->suggestionsListView:Lcom/microsoft/xbox/toolkit/ui/XLEListView;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;)Lcom/microsoft/xbox/toolkit/ui/XLEButton;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->advanceButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;)Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->suggestionsListAdapter:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;)Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;

    return-object p0
.end method


# virtual methods
.method public onStart()V
    .locals 4

    invoke-super {p0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->onStart()V

    new-instance v0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter;

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/microsoft/xboxtcui/R$layout;->friendfinder_suggestions_list_item:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->suggestionsListAdapter:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->suggestionsListView:Lcom/microsoft/xbox/toolkit/ui/XLEListView;

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->suggestionsListView:Lcom/microsoft/xbox/toolkit/ui/XLEListView;

    new-instance v1, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter$1;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter$1;-><init>(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->advanceButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    new-instance v1, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter$2;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter$2;-><init>(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public updateViewOverride()V
    .locals 2

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->loadingOverlay:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->isBusy()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->titleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->subtitleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->getSubtitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->suggestionsListAdapter:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->suggestionsListAdapter:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->getSuggestions()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->suggestionsListAdapter:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->emptyListHeaderContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->listHeaderContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->suggestionsListAdapter:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->listHeaderContainer:Landroid/widget/FrameLayout;

    :goto_1
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->listHeaderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->emptyListHeaderContainer:Landroid/view/ViewGroup;

    goto :goto_1
.end method
