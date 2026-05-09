.class public Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreen;
.super Lcom/microsoft/xbox/xle/app/activity/ActivityBase;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getActivityName()Ljava/lang/String;
    .registers 2

    const-string v0, "Friend Finder Suggestions"

    return-object v0
.end method

.method public onCreate()V
    .registers 2

    invoke-super {p0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onCreate()V

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreen;->onCreateContentView()V

    new-instance v0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;-><init>(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    return-void
.end method

.method public onCreateContentView()V
    .registers 2

    sget v0, Lcom/microsoft/xboxtcui/R$layout;->friendfinder_suggestions_screen:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->setContentView(I)V

    return-void
.end method

.method public onStart()V
    .registers 3

    invoke-super {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->onStart()V

    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getActivityParameters()Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->getFriendFinderType()Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreen$1;->$SwitchMap$com$microsoft$xbox$service$model$friendfinder$FriendFinderType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreen;->getActivityName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackContactsFindFriendsView(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreen;->getActivityName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackFacebookAddFriendView(Ljava/lang/CharSequence;)V

    return-void
.end method
