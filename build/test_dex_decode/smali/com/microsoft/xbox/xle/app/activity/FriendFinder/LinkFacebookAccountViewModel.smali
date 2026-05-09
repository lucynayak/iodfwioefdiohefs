.class public Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel;
.super Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel$LinkFacebookAccountAsyncTask;
    }
.end annotation


# instance fields
.field private linkAccountAsyncTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel$LinkFacebookAccountAsyncTask;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;-><init>(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel;->onLinkAccountAsyncTaskCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    return-void
.end method

.method private cancelActiveTasks()V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel;->linkAccountAsyncTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel$LinkFacebookAccountAsyncTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->cancel()V

    :cond_0
    return-void
.end method

.method private onLinkAccountAsyncTaskCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .locals 8

    sget-object v0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel$1;->$SwitchMap$com$microsoft$xbox$toolkit$AsyncActionStatus:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->getInstance()Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->resetFacebookToken(Z)V

    sget p1, Lcom/microsoft/xboxtcui/R$string;->Service_ErrorText:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->showError(I)V

    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->OnBackButtonPressed()Z

    return-void

    :cond_1
    invoke-static {}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;->getInstance()Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;->loadAsync(Z)V

    :try_start_0
    new-instance v7, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    invoke-direct {v7}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;-><init>()V

    sget-object p1, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;->FACEBOOK:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    invoke-virtual {v7, p1}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->putFriendFinderType(Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;)V

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->getScreen()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderLinkScreen;

    invoke-virtual {p1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderLinkScreen;->getActivityName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackFacebookLoginSuccessful(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object v1

    const/4 v2, 0x1

    const-class v3, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreen;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;ZZZLcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V
    :try_end_0
    .catch Lcom/microsoft/xbox/toolkit/XLEException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public isBusy()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public load(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel;->cancelActiveTasks()V

    new-instance p1, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel$LinkFacebookAccountAsyncTask;

    invoke-direct {p1, p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel$LinkFacebookAccountAsyncTask;-><init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel;)V

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel;->linkAccountAsyncTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel$LinkFacebookAccountAsyncTask;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;->load(Z)V

    return-void
.end method

.method public onBackButtonPressed()Z
    .locals 2

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->getScreen()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;->FACEBOOK:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    invoke-static {v0, v1}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackBackButtonPressed(Ljava/lang/CharSequence;Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;)V

    invoke-super {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onBackButtonPressed()Z

    move-result v0

    return v0
.end method

.method public onRehydrate()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onStart()V

    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->getFacebookManagerReady()Lcom/microsoft/xbox/toolkit/Ready;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/Ready;->getIsReady()Z

    move-result v0

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    return-void
.end method

.method public onStartOverride()V
    .locals 0

    return-void
.end method

.method public onStopOverride()V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel;->cancelActiveTasks()V

    return-void
.end method
