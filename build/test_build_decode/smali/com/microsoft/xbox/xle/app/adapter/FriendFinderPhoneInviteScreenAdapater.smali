.class public Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater;
.super Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;
.source "SourceFile"


# instance fields
.field private contactsListAdapter:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter;

.field private contactsListView:Landroid/widget/ListView;

.field private loadingLayout:Landroid/widget/FrameLayout;

.field private subtitleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

.field private titleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

.field private viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;-><init>(Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;)V

    const-string v0, "This isn\'t supported yet."

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->fail(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel;

    sget p1, Lcom/microsoft/xboxtcui/R$id;->friendfinder_suggestions_title:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater;->titleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    sget p1, Lcom/microsoft/xboxtcui/R$id;->friendfinder_suggestions_subtitle:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater;->subtitleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    sget p1, Lcom/microsoft/xboxtcui/R$id;->friendfinder_suggestions_list:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater;->contactsListView:Landroid/widget/ListView;

    sget p1, Lcom/microsoft/xboxtcui/R$id;->friendfinder_suggestions_loading:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater;->loadingLayout:Landroid/widget/FrameLayout;

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater;->titleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater;->subtitleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater;->contactsListView:Landroid/widget/ListView;

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater;->loadingLayout:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater;->titleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    sget v0, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_PhoneInviteFriends_Dialog_Title:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_PhoneInviteFriends_Dialog_Text:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater;->subtitleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    const-string v1, "-"

    const-string v2, "\n\n"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater;->contactsListView:Landroid/widget/ListView;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 3

    invoke-super {p0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->onStart()V

    new-instance v0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter;

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/microsoft/xboxtcui/R$layout;->friendfinder_phone_invite_list_item:I

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater;->contactsListAdapter:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater;->contactsListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater;->contactsListView:Landroid/widget/ListView;

    new-instance v1, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater$1;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater$1;-><init>(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public updateViewOverride()V
    .locals 2

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater;->loadingLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel;->isBusy()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater;->contactsListAdapter:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater;->contactsListAdapter:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel;->getContacts()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater;->contactsListAdapter:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
