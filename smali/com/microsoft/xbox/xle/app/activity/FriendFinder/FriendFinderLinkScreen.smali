.class public Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderLinkScreen;
.super Lcom/microsoft/xbox/xle/app/activity/ActivityBase;
.source "SourceFile"


# instance fields
.field private linkType:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;-><init>()V

    sget-object v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;->UNKNOWN:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderLinkScreen;->linkType:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p1, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;->UNKNOWN:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderLinkScreen;->linkType:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    return-void
.end method


# virtual methods
.method public getActivityName()Ljava/lang/String;
    .registers 2

    const-string v0, "Friend Finder Facebook Link"

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    invoke-super {p0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onCreate()V

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderLinkScreen;->onCreateContentView()V

    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getActivityParameters()Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->getFriendFinderType()Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderLinkScreen;->linkType:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    sget-object v1, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;->UNKNOWN:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Expected link type"

    invoke-static {v1, v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertFalse(Ljava/lang/String;Z)V

    :cond_1
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderLinkScreen;->linkType:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    sget-object v1, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;->UNKNOWN:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    if-ne v0, v1, :cond_2

    :try_start_0
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreen()V
    :try_end_0
    .catch Lcom/microsoft/xbox/toolkit/XLEException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    return-void

    :cond_2
    sget-object v1, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;->FACEBOOK:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    if-ne v0, v1, :cond_3

    new-instance v0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel;-><init>(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    :cond_3
    :goto_1
    return-void
.end method

.method public onCreateContentView()V
    .registers 2

    sget v0, Lcom/microsoft/xboxtcui/R$layout;->friendfinder_link_screen:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->setContentView(I)V

    return-void
.end method
