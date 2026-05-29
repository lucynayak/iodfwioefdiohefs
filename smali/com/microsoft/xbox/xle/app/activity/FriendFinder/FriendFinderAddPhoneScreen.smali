.class public Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreen;
.super Lcom/microsoft/xbox/xle/app/activity/ActivityBase;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivityName()Ljava/lang/String;
    .registers 2

    const-string v0, "Friend Finder Add Phone"

    return-object v0
.end method

.method public onCreate()V
    .registers 2

    invoke-super {p0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onCreate()V

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreen;->onCreateContentView()V

    new-instance v0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;-><init>(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    return-void
.end method

.method public onCreateContentView()V
    .registers 2

    sget v0, Lcom/microsoft/xboxtcui/R$layout;->friendfinder_add_phone_screen:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->setContentView(I)V

    return-void
.end method

.method public onStart()V
    .registers 2

    invoke-super {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->onStart()V

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackContactsAddPhoneView(Ljava/lang/CharSequence;)V

    return-void
.end method
