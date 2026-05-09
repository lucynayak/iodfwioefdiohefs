.class public Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderSuggestionModel;",
        ">;"
    }
.end annotation


# instance fields
.field private containsHeader:Z

.field private facebookImageUri:Ljava/net/URI;


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-boolean p3, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter;->containsHeader:Z

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v0, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/microsoft/xboxtcui/R$layout;->friendfinder_suggestions_list_item:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;-><init>(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$1;)V

    sget v2, Lcom/microsoft/xboxtcui/R$id;->friendfinder_suggestions_item_image:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/microsoft/xbox/toolkit/ui/XLERoundedUniversalImageView;

    invoke-static {v1, v2}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;->access$102(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;Lcom/microsoft/xbox/toolkit/ui/XLERoundedUniversalImageView;)Lcom/microsoft/xbox/toolkit/ui/XLERoundedUniversalImageView;

    sget v2, Lcom/microsoft/xboxtcui/R$id;->friendfinder_suggestions_item_icon_image:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;

    invoke-static {v1, v2}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;->access$202(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;)Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;

    sget v2, Lcom/microsoft/xboxtcui/R$id;->friendfinder_suggestions_item_gamertag:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-static {v1, v2}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;->access$302(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;)Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    sget v2, Lcom/microsoft/xboxtcui/R$id;->friendfinder_suggestions_item_realname:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-static {v1, v2}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;->access$402(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;)Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    sget v2, Lcom/microsoft/xboxtcui/R$id;->friendfinder_suggestions_item_icon_text:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-static {v1, v2}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;->access$502(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;)Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    sget v2, Lcom/microsoft/xboxtcui/R$id;->friendfinder_suggestions_item_presence:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-static {v1, v2}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;->access$602(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;)Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    sget v2, Lcom/microsoft/xboxtcui/R$id;->friendfinder_suggestions_item_check:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-static {v1, v2}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;->access$702(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;)Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;

    :goto_0
    invoke-interface {p0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderSuggestionModel;

    check-cast p3, Landroid/widget/ListView;

    iget-boolean v3, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter;->containsHeader:Z

    add-int/2addr v3, p1

    invoke-virtual {p3, v3}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result p1

    const p3, 0x106000d

    if-eqz p1, :cond_1

    sget v3, Lcom/microsoft/xboxtcui/R$color;->white_15_percent:I

    goto :goto_1

    :cond_1
    const v3, 0x106000d

    :goto_1
    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-static {v1}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;->access$500(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;)Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    move-result-object v3

    if-nez p1, :cond_2

    sget p3, Lcom/microsoft/xboxtcui/R$color;->white_15_percent:I

    :cond_2
    invoke-virtual {v3, p3}, Landroid/view/View;->setBackgroundResource(I)V

    if-eqz v2, :cond_9

    invoke-static {v1}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;->access$100(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;)Lcom/microsoft/xbox/toolkit/ui/XLERoundedUniversalImageView;

    move-result-object p3

    iget-object v3, v2, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderSuggestionModel;->imageUri:Ljava/net/URI;

    sget v4, Lcom/microsoft/xboxtcui/R$drawable;->gamerpic_missing:I

    invoke-virtual {p3, v3, v4, v4}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->setImageURI2(Ljava/net/URI;II)V

    invoke-static {v1}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;->access$300(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;)Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    move-result-object p3

    iget-object v3, v2, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderSuggestionModel;->gamerTag:Ljava/lang/String;

    invoke-static {p3, v3, v0}, Lcom/microsoft/xbox/xle/app/XLEUtil;->updateTextAndVisibilityIfNotNull(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    invoke-static {v1}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;->access$400(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;)Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    move-result-object p3

    iget-object v3, v2, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderSuggestionModel;->realName:Ljava/lang/String;

    invoke-static {p3, v3, v0}, Lcom/microsoft/xbox/xle/app/XLEUtil;->updateTextAndVisibilityIfNotNull(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    invoke-static {v1}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;->access$600(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;)Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    move-result-object p3

    iget-object v3, v2, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderSuggestionModel;->presence:Ljava/lang/String;

    invoke-static {p3, v3, v0}, Lcom/microsoft/xbox/xle/app/XLEUtil;->updateTextAndVisibilityIfNotNull(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    iget-object p3, v2, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderSuggestionModel;->recommendationType:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    sget-object v2, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->FacebookFriend:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    if-ne p3, v2, :cond_3

    const/4 p3, 0x1

    goto :goto_2

    :cond_3
    const/4 p3, 0x0

    :goto_2
    invoke-static {v1}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;->access$200(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;)Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;

    move-result-object v3

    const/4 v4, 0x4

    if-eqz p3, :cond_4

    const/4 v5, 0x0

    goto :goto_3

    :cond_4
    const/4 v5, 0x4

    :goto_3
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v1}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;->access$500(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;)Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    move-result-object v3

    if-eqz p3, :cond_5

    const/4 v5, 0x4

    goto :goto_4

    :cond_5
    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    if-eqz p3, :cond_7

    iget-object p3, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter;->facebookImageUri:Ljava/net/URI;

    if-nez p3, :cond_6

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object v2, Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;->MEDIUM:Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;

    invoke-static {p3, v2}, Lcom/microsoft/xbox/xle/app/FriendFinderSettings;->getIconBySize(Ljava/lang/String;Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {p3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p3

    iput-object p3, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter;->facebookImageUri:Ljava/net/URI;

    :cond_6
    invoke-static {v1}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;->access$200(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;)Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;

    move-result-object p3

    iget-object v2, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter;->facebookImageUri:Ljava/net/URI;

    invoke-virtual {p3, v2}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->setImageURI2(Ljava/net/URI;)V

    :cond_7
    invoke-static {v1}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;->access$700(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;)Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    move-result-object p3

    if-eqz p1, :cond_8

    goto :goto_5

    :cond_8
    const/4 v0, 0x4

    :goto_5
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    return-object p2
.end method
