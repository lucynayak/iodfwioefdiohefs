.class public Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;
.super Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel$AddShortCircuitProfileAsyncTask;,
        Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel$LoadInfoAsyncTask;,
        Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel$LoadMyProfileAsyncTask;,
        Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel$OptInAsyncTask;
    }
.end annotation


# instance fields
.field private addShortCircuitProfileAsyncTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel$AddShortCircuitProfileAsyncTask;

.field private currentCountryCode:Ljava/lang/String;

.field private isAddingProfile:Z

.field private isLoadingInfo:Z

.field private isLoadingMyProfileTask:Z

.field private isUploadingContactsAndOptingIn:Z

.field private loadInfoAsyncTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel$LoadInfoAsyncTask;

.field private loadMyProfileAsyncTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel$LoadMyProfileAsyncTask;

.field private myPhoneState:Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneState;

.field private myProfile:Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileResponse;

.field private optInAsyncTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel$OptInAsyncTask;

.field private simPhoneNumber:Ljava/lang/String;

.field private uploadContactsAsyncTask:Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;-><init>(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V

    new-instance p1, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter;

    invoke-direct {p1, p0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter;-><init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;)V

    iput-object p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    return-void
.end method

.method public static synthetic access$1002(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;->isLoadingMyProfileTask:Z

    return p1
.end method

.method public static synthetic access$1100(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;)Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneState;
    .registers 1

    iget-object p0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;->myPhoneState:Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneState;

    return-object p0
.end method

.method public static synthetic access$1202(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;->isAddingProfile:Z

    return p1
.end method

.method public static synthetic access$1300(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;->onAddShortCircuitProfileCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    return-void
.end method

.method public static synthetic access$1402(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;->isUploadingContactsAndOptingIn:Z

    return p1
.end method

.method public static synthetic access$1500(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;->onOptInCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    return-void
.end method

.method public static synthetic access$402(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;->isLoadingInfo:Z

    return p1
.end method

.method public static synthetic access$502(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;->currentCountryCode:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$602(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;->simPhoneNumber:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$700(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;)V
    .registers 1

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateAdapter()V

    return-void
.end method

.method public static synthetic access$800(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;)Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileResponse;
    .registers 1

    iget-object p0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;->myProfile:Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileResponse;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileResponse;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;->onLoadMyProfileCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileResponse;)V

    return-void
.end method

.method private cancelActiveTasks()V
    .registers 4

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;->addShortCircuitProfileAsyncTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel$AddShortCircuitProfileAsyncTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->cancel()V

    iput-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;->addShortCircuitProfileAsyncTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel$AddShortCircuitProfileAsyncTask;

    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;->loadInfoAsyncTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel$LoadInfoAsyncTask;

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;->loadInfoAsyncTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel$LoadInfoAsyncTask;

    :cond_1
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;->loadMyProfileAsyncTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel$LoadMyProfileAsyncTask;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->cancel()V

    iput-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;->loadMyProfileAsyncTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel$LoadMyProfileAsyncTask;

    :cond_2
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;->uploadContactsAsyncTask:Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->cancel()V

    iput-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;->uploadContactsAsyncTask:Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;

    :cond_3
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;->optInAsyncTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel$OptInAsyncTask;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->cancel()V

    iput-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;->optInAsyncTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel$OptInAsyncTask;

    :cond_4
    return-void
.end method

.method private needToAddPhoneNumber(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;->myProfile:Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileResponse;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileResponse;->isVerified(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneState;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;->myPhoneState:Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneState;

    if-eqz p1, :cond_1

    iget-boolean v0, p1, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneState;->isVerified:Z

    if-eqz v0, :cond_1

    iget-boolean p1, p1, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneState;->hasXboxApplication:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private onAddShortCircuitProfileCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;->isAddingProfile:Z

    sget-object v0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel$1;->$SwitchMap$com$microsoft$xbox$toolkit$AsyncActionStatus:[I

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

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateAdapter()V

    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object p1

    const-class v0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreen;

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PushScreen(Ljava/lang/Class;)V
    :try_end_0
    .catch Lcom/microsoft/xbox/toolkit/XLEException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private onLoadMyProfileCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileResponse;)V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;->isLoadingMyProfileTask:Z

    sget-object v0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel$1;->$SwitchMap$com$microsoft$xbox$toolkit$AsyncActionStatus:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;->myProfile:Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileResponse;

    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateAdapter()V

    return-void
.end method

.method private onOptInCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;->isUploadingContactsAndOptingIn:Z

    sget-object v0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel$1;->$SwitchMap$com$microsoft$xbox$toolkit$AsyncActionStatus:[I

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

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateAdapter()V

    return-void

    :cond_1
    :try_start_0
    new-instance p1, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    invoke-direct {p1}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;-><init>()V

    sget-object v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;->PHONE:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->putFriendFinderType(Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;)V

    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object v0

    const-class v1, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreen;

    invoke-virtual {v0, v1, p1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PushScreen(Ljava/lang/Class;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V
    :try_end_0
    .catch Lcom/microsoft/xbox/toolkit/XLEException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public addPhoneNumber(Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget p1, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_PhoneNumberHint:I

    :goto_0
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->showError(I)V

    return-void

    :cond_0
    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->getInstance()Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->setUserEnteredNumber(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;->needToAddPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->normalizePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    xor-int/2addr p1, v1

    if-nez p1, :cond_1

    sget p1, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_PhoneVerifyEnterRegionAndPhoneNubmer:I

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;->cancelActiveTasks()V

    new-instance p1, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel$AddShortCircuitProfileAsyncTask;

    invoke-direct {p1, p0, v2}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel$AddShortCircuitProfileAsyncTask;-><init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel$1;)V

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;->addShortCircuitProfileAsyncTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel$AddShortCircuitProfileAsyncTask;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;->uploadContactsAsyncTask:Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->cancel()V

    iput-object v2, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;->uploadContactsAsyncTask:Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;

    :cond_3
    new-instance p1, Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;

    invoke-direct {p1, v2}, Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;-><init>(Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask$UploadContactsCompleted;)V

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;->uploadContactsAsyncTask:Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;

    invoke-virtual {p1, v1}, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;->load(Z)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;->optInAsyncTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel$OptInAsyncTask;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->cancel()V

    iput-object v2, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;->optInAsyncTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel$OptInAsyncTask;

    :cond_4
    new-instance p1, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel$OptInAsyncTask;

    invoke-direct {p1, p0, v2}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel$OptInAsyncTask;-><init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel$1;)V

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;->optInAsyncTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel$OptInAsyncTask;

    :goto_1
    invoke-virtual {p1, v1}, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;->load(Z)V

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateAdapter()V

    return-void
.end method

.method public getCurrentCountryCode()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;->currentCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getSimPhoneNumber()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;->simPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public isBusy()Z
    .registers 2

    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;->isAddingProfile:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;->isLoadingInfo:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;->isLoadingMyProfileTask:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;->isUploadingContactsAndOptingIn:Z

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
    .registers 4

    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;->cancelActiveTasks()V

    new-instance p1, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel$LoadInfoAsyncTask;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel$LoadInfoAsyncTask;-><init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel$1;)V

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;->loadInfoAsyncTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel$LoadInfoAsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    new-instance p1, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel$LoadMyProfileAsyncTask;

    invoke-direct {p1, p0, v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel$LoadMyProfileAsyncTask;-><init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel$1;)V

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;->loadMyProfileAsyncTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel$LoadMyProfileAsyncTask;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;->load(Z)V

    return-void
.end method

.method public onBackButtonPressed()Z
    .registers 3

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->getScreen()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;->PHONE:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    invoke-static {v0, v1}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackBackButtonPressed(Ljava/lang/CharSequence;Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;)V

    invoke-super {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onBackButtonPressed()Z

    move-result v0

    return v0
.end method

.method public onRehydrate()V
    .registers 2

    new-instance v0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter;-><init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;)V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    return-void
.end method

.method public onStartOverride()V
    .registers 1

    return-void
.end method

.method public onStopOverride()V
    .registers 1

    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;->cancelActiveTasks()V

    return-void
.end method
