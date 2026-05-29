.class public Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;
.super Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel$AddSuggestionsAsyncTask;,
        Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel$GetPeopleHubRecommendationsAsyncTask;
    }
.end annotation


# instance fields
.field private addSuggestionsAsyncTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel$AddSuggestionsAsyncTask;

.field private foundPeople:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;",
            ">;"
        }
    .end annotation
.end field

.field private friendFinderType:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

.field private getPeopleHubRecommendationsAsyncTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel$GetPeopleHubRecommendationsAsyncTask;

.field private isAddingSuggestions:Z

.field private isLoadingRecommendations:Z

.field private meProfileModel:Lcom/microsoft/xbox/service/model/ProfileModel;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;-><init>(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->foundPeople:Ljava/util/ArrayList;

    new-instance p1, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;

    invoke-direct {p1, p0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;-><init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;)V

    iput-object p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    return-void
.end method

.method public static synthetic access$100(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;)Lcom/microsoft/xbox/service/model/ProfileModel;
    .registers 1

    iget-object p0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->meProfileModel:Lcom/microsoft/xbox/service/model/ProfileModel;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->isLoadingRecommendations:Z

    return p1
.end method

.method public static synthetic access$300(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->onGetPeopleHubRecommendationsAsyncTaskCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->onAddSuggestionsCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    return-void
.end method

.method public static synthetic access$502(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->isAddingSuggestions:Z

    return p1
.end method

.method public static synthetic access$600(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;)V
    .registers 1

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateAdapter()V

    return-void
.end method

.method private cancelActiveTasks()V
    .registers 2

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->getPeopleHubRecommendationsAsyncTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel$GetPeopleHubRecommendationsAsyncTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->addSuggestionsAsyncTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel$AddSuggestionsAsyncTask;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->cancel()V

    :cond_1
    return-void
.end method

.method private getNameOrGamertagAtIndex(I)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->foundPeople:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, ""

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->foundPeople:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;

    iget-object v0, p1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;->recommendation:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubRecommendation;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubRecommendation;->Reasons:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;->recommendation:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubRecommendation;

    iget-object v0, v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubRecommendation;->Reasons:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    :cond_0
    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;->gamertag:Ljava/lang/String;

    :cond_1
    return-object v1
.end method

.method private navigateToFacebookInvite()V
    .registers 4

    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;-><init>()V

    sget-object v1, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;->FACEBOOK:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->putFriendFinderType(Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;)V

    :try_start_0
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object v1

    const-class v2, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen;

    invoke-virtual {v1, v2, v0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PushScreen(Ljava/lang/Class;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V
    :try_end_0
    .catch Lcom/microsoft/xbox/toolkit/XLEException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private navigateToInvite()V
    .registers 3

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->friendFinderType:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    sget-object v1, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;->FACEBOOK:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->navigateToFacebookInvite()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->navigateToPhoneInvite()V

    return-void
.end method

.method private navigateToPhoneInvite()V
    .registers 4

    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->putFriendFinderDone(Z)V

    :try_start_0
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object v1

    const-class v2, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreen;

    invoke-virtual {v1, v2, v0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PushScreen(Ljava/lang/Class;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V
    :try_end_0
    .catch Lcom/microsoft/xbox/toolkit/XLEException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private onAddSuggestionsCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .registers 3

    sget-object v0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel$1;->$SwitchMap$com$microsoft$xbox$toolkit$AsyncActionStatus:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    sget p1, Lcom/microsoft/xboxtcui/R$string;->Service_ErrorText:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->showError(I)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->navigateToInvite()V

    return-void
.end method

.method private onGetPeopleHubRecommendationsAsyncTaskCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->isLoadingRecommendations:Z

    sget-object v0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel$1;->$SwitchMap$com$microsoft$xbox$toolkit$AsyncActionStatus:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget p1, Lcom/microsoft/xboxtcui/R$string;->Service_ErrorText:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->showError(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->updateFoundPeople()V

    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateAdapter()V

    return-void
.end method

.method private updateFoundPeople()V
    .registers 5

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->friendFinderType:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    sget-object v1, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;->FACEBOOK:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->FacebookFriend:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->PhoneContact:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    :goto_0
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->meProfileModel:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/ProfileModel;->getPeopleHubRecommendationsRawData()Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPeopleSummary;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->foundPeople:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPeopleSummary;->people:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;

    iget-object v3, v2, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;->recommendation:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubRecommendation;

    invoke-virtual {v3}, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubRecommendation;->getRecommendationType()Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    move-result-object v3

    if-ne v3, v0, :cond_1

    iget-object v3, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->foundPeople:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public addSuggestions(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->cancelActiveTasks()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->foundPeople:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->foundPeople:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->foundPeople:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;

    iget-object v1, v1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;->xuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel$1;->$SwitchMap$com$microsoft$xbox$service$model$friendfinder$FriendFinderType:[I

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->friendFinderType:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p1, p1, v1

    if-eq p1, v2, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->getScreen()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackAddFacebookFriend(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->getScreen()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackPhoneContactsAddFriends(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    :goto_2
    new-instance p1, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel$AddSuggestionsAsyncTask;

    invoke-direct {p1, p0, v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel$AddSuggestionsAsyncTask;-><init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;Ljava/util/ArrayList;)V

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->addSuggestionsAsyncTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel$AddSuggestionsAsyncTask;

    invoke-virtual {p1, v2}, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;->load(Z)V

    return-void
.end method

.method public getSubtitle()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->foundPeople:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_Facebook_Upsell_Description_NoFriends_LineOne:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->friendFinderType:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    sget-object v2, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;->FACEBOOK:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    if-ne v1, v2, :cond_0

    const-string v1, "\n\n"

    .line 1
    invoke-static {v0, v1}, La/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_Facebook_Upsell_Description_Default_LineTwo:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_Found_Subtitle:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestions()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderSuggestionModel;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->foundPeople:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->foundPeople:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;

    invoke-static {v2}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderSuggestionModel;->fromPeopleHubSummary(Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;)Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderSuggestionModel;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->foundPeople:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_0

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_Facebook_Upsell_Title_ManyFriends_Android:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->getNameOrGamertagAtIndex(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-direct {p0, v2}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->getNameOrGamertagAtIndex(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->foundPeople:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v3

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_Facebook_Upsell_Title_ThreeFriends_Android:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->getNameOrGamertagAtIndex(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-direct {p0, v2}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->getNameOrGamertagAtIndex(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-direct {p0, v3}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->getNameOrGamertagAtIndex(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_Facebook_Upsell_Title_TwoFriends_Android:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->getNameOrGamertagAtIndex(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-direct {p0, v2}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->getNameOrGamertagAtIndex(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_Facebook_Upsell_Title_OneFriend_Android:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->getNameOrGamertagAtIndex(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_Facebook_Upsell_Title_NoFriends:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isBusy()Z
    .registers 2

    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->isLoadingRecommendations:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->isAddingSuggestions:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public load(Z)V
    .registers 3

    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->cancelActiveTasks()V

    new-instance p1, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel$GetPeopleHubRecommendationsAsyncTask;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel$GetPeopleHubRecommendationsAsyncTask;-><init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel$1;)V

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->getPeopleHubRecommendationsAsyncTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel$GetPeopleHubRecommendationsAsyncTask;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;->load(Z)V

    return-void
.end method

.method public navigateToSkip()V
    .registers 3

    sget-object v0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel$1;->$SwitchMap$com$microsoft$xbox$service$model$friendfinder$FriendFinderType:[I

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->friendFinderType:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->getScreen()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackAddFacebookFriendCancel(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->getScreen()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackPhoneContactsSkipAddFriends(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->navigateToInvite()V

    return-void
.end method

.method public onBackButtonPressed()Z
    .registers 3

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->getScreen()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->friendFinderType:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    invoke-static {v0, v1}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackBackButtonPressed(Ljava/lang/CharSequence;Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;)V

    invoke-super {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onBackButtonPressed()Z

    move-result v0

    return v0
.end method

.method public onRehydrate()V
    .registers 2

    new-instance v0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;-><init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;)V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    return-void
.end method

.method public onStartOverride()V
    .registers 3

    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getActivityParameters()Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->getFriendFinderType()Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->friendFinderType:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    sget-object v1, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;->UNKNOWN:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    invoke-static {}, Lcom/microsoft/xbox/service/model/ProfileModel;->getMeProfileModel()Lcom/microsoft/xbox/service/model/ProfileModel;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->meProfileModel:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    return-void
.end method

.method public onStopOverride()V
    .registers 1

    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->cancelActiveTasks()V

    return-void
.end method
