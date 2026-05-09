.class public Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;
.super Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;
.source "FriendFinderSuggestionsScreenViewModel.java"


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
            "Ljava/util/ArrayList",
            "<",
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
    .registers 4
    .param p1, "screenLayout"    # Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;-><init>(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->foundPeople:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;-><init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;)V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    .line 41
    return-void
.end method

.method static synthetic access$100(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;)Lcom/microsoft/xbox/service/model/ProfileModel;
    .registers 2
    .param p0, "x0"    # Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->meProfileModel:Lcom/microsoft/xbox/service/model/ProfileModel;

    return-object v0
.end method

.method static synthetic access$202(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->isLoadingRecommendations:Z

    return p1
.end method

.method static synthetic access$300(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .registers 2
    .param p0, "x0"    # Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;
    .param p1, "x1"    # Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->onGetPeopleHubRecommendationsAsyncTaskCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    return-void
.end method

.method static synthetic access$400(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .registers 2
    .param p0, "x0"    # Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;
    .param p1, "x1"    # Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->onAddSuggestionsCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    return-void
.end method

.method static synthetic access$502(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->isAddingSuggestions:Z

    return p1
.end method

.method static synthetic access$600(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;)V
    .registers 1
    .param p0, "x0"    # Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->updateAdapter()V

    return-void
.end method

.method private cancelActiveTasks()V
    .registers 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->getPeopleHubRecommendationsAsyncTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel$GetPeopleHubRecommendationsAsyncTask;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->getPeopleHubRecommendationsAsyncTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel$GetPeopleHubRecommendationsAsyncTask;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel$GetPeopleHubRecommendationsAsyncTask;->cancel()V

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->addSuggestionsAsyncTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel$AddSuggestionsAsyncTask;

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->addSuggestionsAsyncTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel$AddSuggestionsAsyncTask;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel$AddSuggestionsAsyncTask;->cancel()V

    .line 206
    :cond_1
    return-void
.end method

.method private getNameOrGamertagAtIndex(I)Ljava/lang/String;
    .registers 6
    .param p1, "index"    # I

    .prologue
    .line 68
    const-string v1, ""

    .line 70
    .local v1, "result":Ljava/lang/String;
    iget-object v2, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->foundPeople:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 71
    iget-object v2, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->foundPeople:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;

    .line 73
    .local v0, "person":Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;
    iget-object v2, v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;->recommendation:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubRecommendation;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;->recommendation:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubRecommendation;

    iget-object v2, v2, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubRecommendation;->Reasons:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;->recommendation:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubRecommendation;

    iget-object v2, v2, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubRecommendation;->Reasons:Ljava/util/ArrayList;

    .line 75
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 77
    iget-object v2, v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;->recommendation:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubRecommendation;

    iget-object v2, v2, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubRecommendation;->Reasons:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "result":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 80
    .restart local v1    # "result":Ljava/lang/String;
    :cond_0
    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    iget-object v1, v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;->gamertag:Ljava/lang/String;

    .line 85
    .end local v0    # "person":Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;
    :cond_1
    return-object v1
.end method

.method private navigateToFacebookInvite()V
    .registers 4

    .prologue
    .line 161
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;-><init>()V

    .line 162
    .local v0, "params":Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;
    sget-object v1, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;->FACEBOOK:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->putFriendFinderType(Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;)V

    .line 164
    :try_start_0
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object v1

    const-class v2, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen;

    invoke-virtual {v1, v2, v0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PushScreen(Ljava/lang/Class;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V
    :try_end_0
    .catch Lcom/microsoft/xbox/toolkit/XLEException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_0
    return-void

    .line 165
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private navigateToInvite()V
    .registers 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->friendFinderType:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    sget-object v1, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;->FACEBOOK:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    if-ne v0, v1, :cond_0

    .line 154
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->navigateToFacebookInvite()V

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->navigateToPhoneInvite()V

    goto :goto_0
.end method

.method private navigateToPhoneInvite()V
    .registers 4

    .prologue
    .line 171
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;-><init>()V

    .line 172
    .local v0, "params":Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->putFriendFinderDone(Z)V

    .line 174
    :try_start_0
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object v1

    const-class v2, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreen;

    invoke-virtual {v1, v2, v0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PushScreen(Ljava/lang/Class;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V
    :try_end_0
    .catch Lcom/microsoft/xbox/toolkit/XLEException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_0
    return-void

    .line 175
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private onAddSuggestionsCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .registers 4
    .param p1, "status"    # Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    .prologue
    .line 264
    sget-object v0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel$1;->$SwitchMap$com$microsoft$xbox$toolkit$AsyncActionStatus:[I

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 276
    :goto_0
    return-void

    .line 268
    :pswitch_0
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->navigateToInvite()V

    goto :goto_0

    .line 273
    :pswitch_1
    sget v0, Lcom/microsoft/xboxtcui/R$string;->Service_ErrorText:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->showError(I)V

    goto :goto_0

    .line 264
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private onGetPeopleHubRecommendationsAsyncTaskCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .registers 4
    .param p1, "status"    # Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    .prologue
    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->isLoadingRecommendations:Z

    .line 230
    sget-object v0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel$1;->$SwitchMap$com$microsoft$xbox$toolkit$AsyncActionStatus:[I

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 242
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->updateAdapter()V

    .line 243
    return-void

    .line 234
    :pswitch_0
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->updateFoundPeople()V

    goto :goto_0

    .line 238
    :pswitch_1
    sget v0, Lcom/microsoft/xboxtcui/R$string;->Service_ErrorText:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->showError(I)V

    goto :goto_0

    .line 230
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private updateFoundPeople()V
    .registers 6

    .prologue
    .line 246
    iget-object v3, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->friendFinderType:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    sget-object v4, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;->FACEBOOK:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    if-ne v3, v4, :cond_1

    sget-object v1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->FacebookFriend:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    .line 250
    .local v1, "recommendationType":Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;
    :goto_0
    iget-object v3, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->meProfileModel:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v3}, Lcom/microsoft/xbox/service/model/ProfileModel;->getPeopleHubRecommendationsRawData()Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPeopleSummary;

    move-result-object v2

    .line 252
    .local v2, "recommendations":Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPeopleSummary;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->foundPeople:Ljava/util/ArrayList;

    .line 254
    if-eqz v2, :cond_2

    .line 255
    iget-object v3, v2, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPeopleSummary;->people:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;

    .line 256
    .local v0, "person":Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;
    iget-object v4, v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;->recommendation:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubRecommendation;

    invoke-virtual {v4}, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubRecommendation;->getRecommendationType()Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    move-result-object v4

    if-ne v4, v1, :cond_0

    .line 257
    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->foundPeople:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 246
    .end local v0    # "person":Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;
    .end local v1    # "recommendationType":Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;
    .end local v2    # "recommendations":Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPeopleSummary;
    :cond_1
    sget-object v1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->PhoneContact:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    goto :goto_0

    .line 261
    .restart local v1    # "recommendationType":Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;
    .restart local v2    # "recommendations":Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPeopleSummary;
    :cond_2
    return-void
.end method


# virtual methods
.method public addSuggestions(Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "suggestionsToAdd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x1

    .line 115
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->cancelActiveTasks()V

    .line 117
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 119
    .local v1, "xuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 120
    .local v0, "i":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v5, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->foundPeople:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    move v2, v3

    :goto_1
    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 122
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v5, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->foundPeople:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 123
    iget-object v2, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->foundPeople:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;

    iget-object v2, v2, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;->xuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 120
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 127
    .end local v0    # "i":Ljava/lang/Integer;
    :cond_2
    sget-object v2, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel$1;->$SwitchMap$com$microsoft$xbox$service$model$friendfinder$FriendFinderType:[I

    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->friendFinderType:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    invoke-virtual {v4}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    .line 135
    :goto_2
    new-instance v2, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel$AddSuggestionsAsyncTask;

    invoke-direct {v2, p0, v1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel$AddSuggestionsAsyncTask;-><init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->addSuggestionsAsyncTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel$AddSuggestionsAsyncTask;

    .line 136
    iget-object v2, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->addSuggestionsAsyncTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel$AddSuggestionsAsyncTask;

    invoke-virtual {v2, v3}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel$AddSuggestionsAsyncTask;->load(Z)V

    .line 137
    return-void

    .line 129
    :pswitch_0
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->getScreen()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-static {v4, v2}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackPhoneContactsAddFriends(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    goto :goto_2

    .line 132
    :pswitch_1
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->getScreen()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-static {v4, v2}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackAddFacebookFriend(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    goto :goto_2

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getSubtitle()Ljava/lang/String;
    .registers 5

    .prologue
    .line 89
    const-string v0, ""

    .line 91
    .local v0, "subtitle":Ljava/lang/String;
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->foundPeople:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 92
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_Facebook_Upsell_Description_NoFriends_LineOne:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->friendFinderType:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    sget-object v2, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;->FACEBOOK:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    if-ne v1, v2, :cond_0

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_Facebook_Upsell_Description_Default_LineTwo:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    :cond_0
    :goto_0
    return-object v0

    .line 98
    :cond_1
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_Found_Subtitle:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSuggestions()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderSuggestionModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->foundPeople:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 107
    .local v1, "suggestions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderSuggestionModel;>;"
    iget-object v2, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->foundPeople:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;

    .line 108
    .local v0, "person":Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;
    invoke-static {v0}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderSuggestionModel;->fromPeopleHubSummary(Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;)Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderSuggestionModel;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 111
    .end local v0    # "person":Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;
    :cond_0
    return-object v1
.end method

.method public getTitle()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 44
    const-string v0, ""

    .line 46
    .local v0, "titleText":Ljava/lang/String;
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->foundPeople:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 60
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_Facebook_Upsell_Title_ManyFriends_Android:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-direct {p0, v4}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->getNameOrGamertagAtIndex(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-direct {p0, v5}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->getNameOrGamertagAtIndex(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->foundPeople:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    .line 48
    :pswitch_0
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_Facebook_Upsell_Title_NoFriends:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    goto :goto_0

    .line 51
    :pswitch_1
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_Facebook_Upsell_Title_OneFriend_Android:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-direct {p0, v4}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->getNameOrGamertagAtIndex(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 52
    goto :goto_0

    .line 54
    :pswitch_2
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_Facebook_Upsell_Title_TwoFriends_Android:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-direct {p0, v4}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->getNameOrGamertagAtIndex(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-direct {p0, v5}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->getNameOrGamertagAtIndex(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 55
    goto :goto_0

    .line 57
    :pswitch_3
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_Facebook_Upsell_Title_ThreeFriends_Android:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-direct {p0, v4}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->getNameOrGamertagAtIndex(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-direct {p0, v5}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->getNameOrGamertagAtIndex(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-direct {p0, v6}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->getNameOrGamertagAtIndex(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 58
    goto :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isBusy()Z
    .registers 2

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->isLoadingRecommendations:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->isAddingSuggestions:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load(Z)V
    .registers 4
    .param p1, "forceRefresh"    # Z

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->cancelActiveTasks()V

    .line 217
    new-instance v0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel$GetPeopleHubRecommendationsAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel$GetPeopleHubRecommendationsAsyncTask;-><init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel$1;)V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->getPeopleHubRecommendationsAsyncTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel$GetPeopleHubRecommendationsAsyncTask;

    .line 218
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->getPeopleHubRecommendationsAsyncTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel$GetPeopleHubRecommendationsAsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel$GetPeopleHubRecommendationsAsyncTask;->load(Z)V

    .line 219
    return-void
.end method

.method public navigateToSkip()V
    .registers 3

    .prologue
    .line 141
    sget-object v0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel$1;->$SwitchMap$com$microsoft$xbox$service$model$friendfinder$FriendFinderType:[I

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->friendFinderType:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 149
    :goto_0
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->navigateToInvite()V

    .line 150
    return-void

    .line 143
    :pswitch_0
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->getScreen()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackPhoneContactsSkipAddFriends(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 146
    :pswitch_1
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->getScreen()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackAddFacebookFriendCancel(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onBackButtonPressed()Z
    .registers 3

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->getScreen()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->friendFinderType:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    invoke-static {v0, v1}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackBackButtonPressed(Ljava/lang/CharSequence;Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;)V

    .line 224
    invoke-super {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onBackButtonPressed()Z

    move-result v0

    return v0
.end method

.method public onRehydrate()V
    .registers 2

    .prologue
    .line 190
    new-instance v0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;-><init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;)V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    .line 191
    return-void
.end method

.method protected onStartOverride()V
    .registers 3

    .prologue
    .line 181
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getActivityParameters()Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->getFriendFinderType()Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->friendFinderType:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    .line 182
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->friendFinderType:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    sget-object v1, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;->UNKNOWN:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 184
    invoke-static {}, Lcom/microsoft/xbox/service/model/ProfileModel;->getMeProfileModel()Lcom/microsoft/xbox/service/model/ProfileModel;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->meProfileModel:Lcom/microsoft/xbox/service/model/ProfileModel;

    .line 185
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->meProfileModel:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 186
    return-void

    .line 182
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onStopOverride()V
    .registers 1

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->cancelActiveTasks()V

    .line 196
    return-void
.end method
