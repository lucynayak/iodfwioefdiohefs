.class public Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;
.super Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;
.implements Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel$LoadFailedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$FBManagerAndModelInitTask;,
        Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$FBSettingsAsyncTask;,
        Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$SearchGamertagRunner;
    }
.end annotation


# static fields
.field private static final MAX_SEARCH_LENGTH:I = 0x100

.field private static final MSA_TAG:Ljava/lang/String; = "FriendFinder.MSA"

.field private static final POLICY:Ljava/lang/String; = "mbi_ssl"

.field private static final SCOPE:Ljava/lang/String; = "ssl.live.com"


# instance fields
.field private fbSettingsAsyncTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$FBSettingsAsyncTask;

.field private initFBandModelTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$FBManagerAndModelInitTask;

.field private isLoadingFriendFinderState:Z

.field private isSearchGamertagTaskRunning:Z

.field private isUploadingContacts:Z

.field private searchGamertagLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

.field private searchGamertagTask:Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;

.field private shouldShowDone:Ljava/lang/Boolean;

.field private uploadContactsAsyncTask:Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;-><init>(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->isSearchGamertagTaskRunning:Z

    new-instance p1, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;

    invoke-direct {p1, p0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;-><init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;)V

    iput-object p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    new-instance p1, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    invoke-direct {p1}, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->searchGamertagLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    return-void
.end method

.method public static synthetic access$002(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->isUploadingContacts:Z

    return p1
.end method

.method public static synthetic access$100(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->navigateToSuggestions(Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;)V

    return-void
.end method

.method public static synthetic access$202(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->isLoadingFriendFinderState:Z

    return p1
.end method

.method public static synthetic access$300(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->onSearchGamertagCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;Ljava/lang/String;)V

    return-void
.end method

.method private cancelActiveTasks()V
    .locals 2

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->initFBandModelTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$FBManagerAndModelInitTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->cancel()V

    iput-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->initFBandModelTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$FBManagerAndModelInitTask;

    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->fbSettingsAsyncTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$FBSettingsAsyncTask;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->cancel()V

    iput-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->fbSettingsAsyncTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$FBSettingsAsyncTask;

    :cond_1
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->searchGamertagTask:Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->cancel()V

    iput-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->searchGamertagTask:Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;

    :cond_2
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->uploadContactsAsyncTask:Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->cancel()V

    iput-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->uploadContactsAsyncTask:Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;

    :cond_3
    return-void
.end method

.method private hasReadContactsPermission()Z
    .locals 2

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-static {v0, v1}, Lu/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private navigateToInfo(Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;)V
    .locals 2

    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;-><init>()V

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->putFriendFinderType(Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;)V

    :try_start_0
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object p1

    const-class v1, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;

    invoke-virtual {p1, v1, v0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PushScreen(Ljava/lang/Class;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V
    :try_end_0
    .catch Lcom/microsoft/xbox/toolkit/XLEException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private navigateToSuggestions(Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;)V
    .locals 2

    :try_start_0
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;-><init>()V

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->putFriendFinderType(Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;)V

    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object p1

    const-class v1, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreen;

    invoke-virtual {p1, v1, v0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PushScreen(Ljava/lang/Class;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V
    :try_end_0
    .catch Lcom/microsoft/xbox/toolkit/XLEException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private onSearchGamertagCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->isSearchGamertagTaskRunning:Z

    sget-object v0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$3;->$SwitchMap$com$microsoft$xbox$toolkit$AsyncActionStatus:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    sget p1, Lcom/microsoft/xboxtcui/R$string;->FriendsHub_CouldNotFindGamer:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->showError(I)V

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {p2}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    invoke-direct {p1}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;-><init>()V

    invoke-virtual {p1, p2}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->putSelectedProfile(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->getScreen()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackGamertagSearchSuccess(Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object p2

    const-class v0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreen;

    invoke-virtual {p2, v0, p1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PushScreen(Ljava/lang/Class;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V
    :try_end_0
    .catch Lcom/microsoft/xbox/toolkit/XLEException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateAdapter()V

    return-void
.end method

.method private showContactsPermissionDialog()V
    .locals 5

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/microsoft/xboxtcui/R$string;->Contacts_Permission_Denied_Android:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/microsoft/xboxtcui/R$string;->Contacts_Permission_Denied_Header:I

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private validSearchGamertag(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x100

    if-gt v0, v1, :cond_0

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/JavaUtil;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public facebookLinked()Z
    .locals 1

    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->getFacebookManagerReady()Lcom/microsoft/xbox/toolkit/Ready;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/Ready;->getIsReady()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->getInstance()Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->isFacebookFriendFinderOptedIn()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public finishFriendFinder()V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopAllScreens()V
    :try_end_0
    .catch Lcom/microsoft/xbox/toolkit/XLEException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public getFacebookIconUri()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->FacebookFriend:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;->MEDIUM:Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;

    invoke-static {v0, v1}, Lcom/microsoft/xbox/xle/app/FriendFinderSettings;->getIconBySize(Ljava/lang/String;Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isBusy()Z
    .locals 1

    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->isLoadingFriendFinderState:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->isUploadingContacts:Z

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
    .locals 8

    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->cancelActiveTasks()V

    invoke-static {}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getInstance()Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getSCDRpsTicket()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v1, Lcom/microsoft/xbox/idp/interop/LocalConfig;

    invoke-direct {v1}, Lcom/microsoft/xbox/idp/interop/LocalConfig;-><init>()V

    invoke-virtual {v1}, Lcom/microsoft/xbox/idp/interop/LocalConfig;->getCid()Ljava/lang/String;

    move-result-object v7

    const-string v3, "FriendFinderHome"

    const-string v5, "ssl.live.com"

    const-string v6, "mbi_ssl"

    move-object v1, v0

    move-object v4, p0

    invoke-direct/range {v1 .. v7}, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->start()Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;

    :cond_0
    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->getFacebookManagerReady()Lcom/microsoft/xbox/toolkit/Ready;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/Ready;->getIsReady()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;->getInstance()Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;->loadAsync(ZLcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel$LoadFailedCallback;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$FBManagerAndModelInitTask;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$FBManagerAndModelInitTask;-><init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;)V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->initFBandModelTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$FBManagerAndModelInitTask;

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;->load(Z)V

    :goto_0
    new-instance v0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$FBSettingsAsyncTask;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$FBSettingsAsyncTask;-><init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;)V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->fbSettingsAsyncTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$FBSettingsAsyncTask;

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;->load(Z)V

    return-void
.end method

.method public navigateToFacebookSuggestions()V
    .locals 1

    sget-object v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;->FACEBOOK:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    invoke-direct {p0, v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->navigateToSuggestions(Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;)V

    return-void
.end method

.method public navigateToLinkFacebook()V
    .locals 1

    sget-object v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;->FACEBOOK:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    invoke-direct {p0, v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->navigateToInfo(Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;)V

    return-void
.end method

.method public navigateToLinkPhone()V
    .locals 1

    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->hasReadContactsPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;->PHONE:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    invoke-direct {p0, v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->navigateToInfo(Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->showContactsPermissionDialog()V

    return-void
.end method

.method public navigateToPhoneSuggestions()V
    .locals 2

    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->hasReadContactsPermission()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->uploadContactsAsyncTask:Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->uploadContactsAsyncTask:Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;

    :cond_0
    new-instance v0, Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;

    new-instance v1, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$1;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$1;-><init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;)V

    invoke-direct {v0, v1}, Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;-><init>(Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask$UploadContactsCompleted;)V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->uploadContactsAsyncTask:Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->isUploadingContacts:Z

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateAdapter()V

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->uploadContactsAsyncTask:Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;

    invoke-virtual {v1, v0}, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;->load(Z)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->showContactsPermissionDialog()V

    return-void
.end method

.method public onAccountAcquired(Lcom/microsoft/xbox/idp/jobs/MSAJob;Lcom/microsoft/onlineid/UserAccount;)V
    .locals 0

    return-void
.end method

.method public onFacebookInitCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .locals 2

    sget-object v0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$3;->$SwitchMap$com$microsoft$xbox$toolkit$AsyncActionStatus:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

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
    invoke-static {}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;->getInstance()Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;

    move-result-object p1

    invoke-virtual {p1, v0, p0}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;->loadAsync(ZLcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel$LoadFailedCallback;)V

    return-void
.end method

.method public onFacebookSettingsCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .locals 0

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateAdapter()V

    return-void
.end method

.method public onFailure(Lcom/microsoft/xbox/idp/jobs/MSAJob;Ljava/lang/Exception;)V
    .locals 0

    const-string p1, "onFailure - ignoring and will fail phone finder if invoked. "

    .line 1
    invoke-static {p1}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FriendFinder.MSA"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onFriendFinderLoadFailed()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/microsoft/xboxtcui/R$string;->Service_ErrorText:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/microsoft/xboxtcui/R$string;->OK_Text:I

    new-instance v2, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$2;

    invoke-direct {v2, p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$2;-><init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public onRehydrate()V
    .locals 1

    new-instance v0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;-><init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;)V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    return-void
.end method

.method public onSignedOut(Lcom/microsoft/xbox/idp/jobs/MSAJob;)V
    .locals 0

    return-void
.end method

.method public onStartOverride()V
    .locals 1

    invoke-static {}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;->getInstance()Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/microsoft/xbox/toolkit/XLEObservable;->addUniqueObserver(Lcom/microsoft/xbox/toolkit/XLEObserver;)V

    return-void
.end method

.method public onStopOverride()V
    .locals 1

    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->cancelActiveTasks()V

    invoke-static {}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;->getInstance()Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/microsoft/xbox/toolkit/XLEObservable;->removeObserver(Lcom/microsoft/xbox/toolkit/XLEObserver;)V

    return-void
.end method

.method public onTicketAcquired(Lcom/microsoft/xbox/idp/jobs/MSAJob;Lcom/microsoft/onlineid/Ticket;)V
    .locals 1

    const-string p1, "onTicketAcquired - "

    .line 1
    invoke-static {p1}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2
    invoke-virtual {p2}, Lcom/microsoft/onlineid/Ticket;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FriendFinder.MSA"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getInstance()Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;

    move-result-object p1

    invoke-virtual {p2}, Lcom/microsoft/onlineid/Ticket;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->setSCDRpsTicket(Ljava/lang/String;)V

    return-void
.end method

.method public onUiNeeded(Lcom/microsoft/xbox/idp/jobs/MSAJob;)V
    .locals 1

    const-string p1, "FriendFinder.MSA"

    const-string v0, "onUiNeeded - ignoring and will fail phone finder if invoked."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUserCancel(Lcom/microsoft/xbox/idp/jobs/MSAJob;)V
    .locals 0

    return-void
.end method

.method public phoneLinked()Z
    .locals 2

    invoke-static {}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;->getInstance()Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;->getResult()Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;->getPhoneAccountOptInStatus()Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;->OptedIn:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public searchGamertag(Ljava/lang/String;)V
    .locals 7

    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->isSearchGamertagTaskRunning:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->searchGamertagTask:Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->searchGamertagTask:Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;

    :cond_0
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->validSearchGamertag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->isSearchGamertagTaskRunning:Z

    const/4 v1, 0x1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->searchGamertagLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    new-instance v6, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$SearchGamertagRunner;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v6, p0, p1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$SearchGamertagRunner;-><init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;Ljava/lang/String;)V

    invoke-static/range {v1 .. v6}, Lcom/microsoft/xbox/toolkit/DataLoadUtil;->StartLoadFromUI(ZJLjava/util/Date;Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->searchGamertagTask:Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;

    goto :goto_0

    :cond_1
    sget p1, Lcom/microsoft/xboxtcui/R$string;->FriendsHub_CouldNotFindGamer:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->showError(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public shouldShowDone()Z
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->shouldShowDone:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getActivityParameters()Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->getFriendFinderDone()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->shouldShowDone:Ljava/lang/Boolean;

    :cond_1
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->shouldShowDone:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public updateOverride(Lcom/microsoft/xbox/toolkit/AsyncResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult<",
            "Lcom/microsoft/xbox/service/model/UpdateData;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/service/model/UpdateData;

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/UpdateData;->getUpdateType()Lcom/microsoft/xbox/service/model/UpdateType;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/service/model/UpdateType;->FriendFinderFacebook:Lcom/microsoft/xbox/service/model/UpdateType;

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/service/model/UpdateData;

    invoke-virtual {p1}, Lcom/microsoft/xbox/service/model/UpdateData;->getIsFinal()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;->getInstance()Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;->getResult()Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;

    move-result-object p1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->isLoadingFriendFinderState:Z

    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->getInstance()Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->getFacebookFriendFinderState()Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->getInstance()Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->getFacebookFriendFinderState()Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;->isFacebookStateChanged(Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->getInstance()Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->setFacebookFriendFinderState(Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;)V

    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateAdapter()V

    :cond_2
    return-void
.end method
