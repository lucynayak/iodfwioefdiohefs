.class public Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen;
.super Lcom/microsoft/xbox/xle/app/activity/ActivityBase;
.source "SourceFile"


# instance fields
.field private inviteType:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;-><init>()V

    sget-object v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;->UNKNOWN:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen;->inviteType:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p1, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;->UNKNOWN:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen;->inviteType:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen;)Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen;->inviteType:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    return-object p0
.end method

.method private getFacebookIconUri()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->FacebookFriend:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;->MEDIUM:Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;

    invoke-static {v0, v1}, Lcom/microsoft/xbox/xle/app/FriendFinderSettings;->getIconBySize(Ljava/lang/String;Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getActivityName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onBackButtonPressed()Z
    .locals 2

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen;->inviteType:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    invoke-static {v0, v1}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackBackButtonPressed(Ljava/lang/CharSequence;Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;)V

    invoke-super {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->onBackButtonPressed()Z

    move-result v0

    return v0
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onCreate()V

    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->getFacebookManagerReady()Lcom/microsoft/xbox/toolkit/Ready;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/Ready;->getIsReady()Z

    move-result v0

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen;->onCreateContentView()V

    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getActivityParameters()Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->getFriendFinderType()Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen;->inviteType:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    sget-object v1, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;->UNKNOWN:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Expected invite type"

    invoke-static {v1, v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertFalse(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public onCreateContentView()V
    .locals 1

    sget v0, Lcom/microsoft/xboxtcui/R$layout;->friendfinder_invite_screen:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->setContentView(I)V

    return-void
.end method

.method public onStart()V
    .locals 5

    invoke-super {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->onStart()V

    sget v0, Lcom/microsoft/xboxtcui/R$id;->friendfinder_invite_title:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    sget v1, Lcom/microsoft/xboxtcui/R$id;->friendfinder_invite_subtitle:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iget-object v2, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen;->inviteType:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    sget-object v3, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;->FACEBOOK:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    sget v2, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_Invite_Facebook_Title:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    sget v0, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_Facebook_Upsell_Description_Default_LineTwo:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    sget v0, Lcom/microsoft/xboxtcui/R$id;->friendfinder_invite_facebook:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen;->getFacebookIconUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;->setImageUri(Ljava/lang/String;)V

    new-instance v1, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen$1;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen$1;-><init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen;->getActivityName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackFacebookShareView(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;->PHONE:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    if-ne v2, v3, :cond_3

    sget v2, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_PhoneInviteFriends_Dialog_Title:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_PhoneInviteFriends_Dialog_Text:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "-"

    const-string v3, "\n\n"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/microsoft/xboxtcui/R$id;->friendfinder_invite_phone:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen$2;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen$2;-><init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen;->getActivityName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackContactsInviteFriendsView(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    sget v0, Lcom/microsoft/xboxtcui/R$id;->friendfinder_invite_next:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    if-eqz v0, :cond_4

    new-instance v1, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen$3;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen$3;-><init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void
.end method
