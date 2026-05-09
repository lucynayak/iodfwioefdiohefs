.class public Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;
.super Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel$AddShortCircuitProfileAsyncTask;,
        Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel$UpdateShortCircuitProfileAsyncTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FriendFinder"


# instance fields
.field private addShortCircuitProfileAsyncTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel$AddShortCircuitProfileAsyncTask;

.field private isSendingCode:Z

.field private isUpdatingProfile:Z

.field private updateShortCircuitProfileAsyncTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel$UpdateShortCircuitProfileAsyncTask;

.field private uploadContactsAsyncTask:Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;-><init>(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V

    new-instance p1, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;

    invoke-direct {p1, p0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;-><init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;)V

    iput-object p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;->onUploadContactsCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;->onAddShortCircuitProfileCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    return-void
.end method

.method public static synthetic access$202(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;->isUpdatingProfile:Z

    return p1
.end method

.method public static synthetic access$300(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;->onUpdateShortCircuitProfileCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    return-void
.end method

.method private addProfile(Z)V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;->addShortCircuitProfileAsyncTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel$AddShortCircuitProfileAsyncTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->cancel()V

    :cond_0
    new-instance v0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel$AddShortCircuitProfileAsyncTask;

    invoke-direct {v0, p0, p1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel$AddShortCircuitProfileAsyncTask;-><init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;Z)V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;->addShortCircuitProfileAsyncTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel$AddShortCircuitProfileAsyncTask;

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;->load(Z)V

    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;->isSendingCode:Z

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateAdapter()V

    return-void
.end method

.method private cancelActiveTasks()V
    .locals 2

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;->addShortCircuitProfileAsyncTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel$AddShortCircuitProfileAsyncTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->cancel()V

    iput-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;->addShortCircuitProfileAsyncTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel$AddShortCircuitProfileAsyncTask;

    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;->updateShortCircuitProfileAsyncTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel$UpdateShortCircuitProfileAsyncTask;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->cancel()V

    iput-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;->updateShortCircuitProfileAsyncTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel$UpdateShortCircuitProfileAsyncTask;

    :cond_1
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;->uploadContactsAsyncTask:Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->cancel()V

    iput-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;->uploadContactsAsyncTask:Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;

    :cond_2
    return-void
.end method

.method private onAddShortCircuitProfileCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;->isSendingCode:Z

    sget-object v0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel$2;->$SwitchMap$com$microsoft$xbox$toolkit$AsyncActionStatus:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget p1, Lcom/microsoft/xboxtcui/R$string;->Service_ErrorText:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->showError(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateAdapter()V

    return-void
.end method

.method private onUpdateShortCircuitProfileCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .locals 2

    sget-object v0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel$2;->$SwitchMap$com$microsoft$xbox$toolkit$AsyncActionStatus:[I

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
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;->isUpdatingProfile:Z

    sget p1, Lcom/microsoft/xboxtcui/R$string;->Service_ErrorText:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->showError(I)V

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateAdapter()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;->uploadContactsAsyncTask:Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->cancel()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;->uploadContactsAsyncTask:Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;

    :cond_2
    new-instance p1, Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;

    new-instance v1, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel$1;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel$1;-><init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;)V

    invoke-direct {p1, v1}, Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;-><init>(Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask$UploadContactsCompleted;)V

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;->uploadContactsAsyncTask:Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;->load(Z)V

    return-void
.end method

.method private onUploadContactsCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .locals 2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;->isUpdatingProfile:Z

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateAdapter()V

    new-instance p1, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    invoke-direct {p1}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;-><init>()V

    sget-object v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;->PHONE:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->putFriendFinderType(Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;)V

    :try_start_0
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
.method public callMe()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;->addProfile(Z)V

    return-void
.end method

.method public isBusy()Z
    .locals 1

    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;->isUpdatingProfile:Z

    return v0
.end method

.method public isSendingCode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;->isSendingCode:Z

    return v0
.end method

.method public load(Z)V
    .locals 0

    return-void
.end method

.method public onBackButtonPressed()Z
    .locals 2

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
    .locals 1

    new-instance v0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;-><init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;)V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    return-void
.end method

.method public onStartOverride()V
    .locals 0

    return-void
.end method

.method public onStopOverride()V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;->cancelActiveTasks()V

    return-void
.end method

.method public resendCode()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;->addProfile(Z)V

    return-void
.end method

.method public verifyCode(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;->updateShortCircuitProfileAsyncTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel$UpdateShortCircuitProfileAsyncTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->cancel()V

    :cond_0
    new-instance v0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel$UpdateShortCircuitProfileAsyncTask;

    invoke-direct {v0, p0, p1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel$UpdateShortCircuitProfileAsyncTask;-><init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;->updateShortCircuitProfileAsyncTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel$UpdateShortCircuitProfileAsyncTask;

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;->load(Z)V

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateAdapter()V

    return-void
.end method
