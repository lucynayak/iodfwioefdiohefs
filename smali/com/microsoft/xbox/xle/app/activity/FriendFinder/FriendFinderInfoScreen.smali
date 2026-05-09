.class public Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;
.super Lcom/microsoft/xbox/xle/app/activity/ActivityBase;
.source "SourceFile"


# instance fields
.field private infoType:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

.field private nextButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

.field private subtitleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

.field private titleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;-><init>()V

    sget-object v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;->UNKNOWN:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;->infoType:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p1, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;->UNKNOWN:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;->infoType:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    return-void
.end method

.method private getFacebookText()Ljava/lang/String;
    .registers 6

    invoke-static {}, Lcom/microsoft/xbox/service/model/ProfileModel;->getMeProfileModel()Lcom/microsoft/xbox/service/model/ProfileModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getShareRealNameStatus()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;->getPrivacySettingValue(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen$3;->$SwitchMap$com$microsoft$xbox$service$model$privacy$PrivacySettings$PrivacySettingValue:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_0

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_LinkFacebook_Dialog_Text_Default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-array v0, v3, [I

    sget v2, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_LinkFacebook_Dialog_Text_Default:I

    aput v2, v0, v1

    sget v1, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_LinkFacebook_Dialog_Text_PeopleIChoose_LineTwo:I

    aput v1, v0, v4

    invoke-direct {p0, v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;->multiLineText([I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-array v0, v2, [I

    sget v2, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_LinkFacebook_Dialog_Text_Default:I

    aput v2, v0, v1

    sget v1, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_LinkFacebook_Dialog_Text_Blocked_LineTwo:I

    aput v1, v0, v4

    sget v1, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_LinkFacebook_Dialog_Text_Blocked_LineThree:I

    aput v1, v0, v3

    invoke-direct {p0, v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;->multiLineText([I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    new-array v0, v2, [I

    sget v2, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_LinkFacebook_Dialog_Text_Default:I

    aput v2, v0, v1

    sget v1, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_LinkFacebook_Dialog_Text_NotSet_LineTwo:I

    aput v1, v0, v4

    sget v1, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_LinkFacebook_Dialog_Text_NotSet_LineThree:I

    aput v1, v0, v3

    invoke-direct {p0, v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;->multiLineText([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPhoneText()Ljava/lang/String;
    .registers 8

    invoke-static {}, Lcom/microsoft/xbox/service/model/ProfileModel;->getMeProfileModel()Lcom/microsoft/xbox/service/model/ProfileModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getShareRealNameStatus()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;->getPrivacySettingValue(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen$3;->$SwitchMap$com$microsoft$xbox$service$model$privacy$PrivacySettings$PrivacySettingValue:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v0, v5, :cond_2

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    if-eq v0, v1, :cond_1

    const/4 v6, 0x5

    if-eq v0, v6, :cond_0

    new-array v0, v4, [I

    sget v1, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_LinkPhone_Dialog_Text_LineOne:I

    aput v1, v0, v2

    sget v1, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_LinkPhone_Dialog_Text_LineTwo:I

    aput v1, v0, v5

    invoke-direct {p0, v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;->multiLineText([I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-array v0, v6, [I

    sget v6, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_LinkPhone_Dialog_Text_LineOne:I

    aput v6, v0, v2

    sget v2, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_LinkPhone_Dialog_Text_LineTwo:I

    aput v2, v0, v5

    sget v2, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_LinkPhone_Dialog_Text_RealNameSharedWithContacts:I

    aput v2, v0, v4

    sget v2, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_LinkPhone_Dialog_Text_ACoupleNotes:I

    aput v2, v0, v3

    sget v2, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_LinkPhone_Dialog_Text_LineThree:I

    aput v2, v0, v1

    invoke-direct {p0, v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;->multiLineText([I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-array v0, v3, [I

    sget v1, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_LinkPhone_Dialog_Text_LineOne:I

    aput v1, v0, v2

    sget v1, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_LinkPhone_Dialog_Text_LineTwo:I

    aput v1, v0, v5

    sget v1, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_LinkPhone_Dialog_Text_LineThree:I

    aput v1, v0, v4

    invoke-direct {p0, v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;->multiLineText([I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    new-array v0, v1, [I

    sget v1, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_LinkPhone_Dialog_Text_LineOne:I

    aput v1, v0, v2

    sget v1, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_LinkPhone_Dialog_Text_LineTwo:I

    aput v1, v0, v5

    sget v1, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_LinkPhone_Dialog_Text_RealNameSharedWithContacts:I

    aput v1, v0, v4

    sget v1, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_LinkPhone_Dialog_Text_LineThree:I

    aput v1, v0, v3

    invoke-direct {p0, v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;->multiLineText([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private varargs multiLineText([I)Ljava/lang/String;
    .registers 6

    array-length v0, p1

    if-nez v0, :cond_0

    const-string p1, ""

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    const-string v2, "\n\n"

    .line 1
    invoke-static {v0, v2}, La/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    aget v3, p1, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_1
    return-object p1
.end method


# virtual methods
.method public getActivityName()Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen$3;->$SwitchMap$com$microsoft$xbox$service$model$friendfinder$FriendFinderType:[I

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;->infoType:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string v0, "Friend finder info"

    return-object v0

    :cond_0
    const-string v0, "Friend finder phone info"

    return-object v0

    :cond_1
    const-string v0, "Friend finder facebook info"

    return-object v0
.end method

.method public onBackButtonPressed()Z
    .registers 3

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;->infoType:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    invoke-static {v0, v1}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackBackButtonPressed(Ljava/lang/CharSequence;Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;)V

    invoke-super {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->onBackButtonPressed()Z

    move-result v0

    return v0
.end method

.method public onCreate()V
    .registers 3

    invoke-super {p0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onCreate()V

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;->onCreateContentView()V

    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getActivityParameters()Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->getFriendFinderType()Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;->infoType:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    sget-object v1, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;->UNKNOWN:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Expected info type"

    invoke-static {v1, v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertFalse(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public onCreateContentView()V
    .registers 2

    sget v0, Lcom/microsoft/xboxtcui/R$layout;->friend_finder_info_screen:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->setContentView(I)V

    sget v0, Lcom/microsoft/xboxtcui/R$id;->friendfinder_info_title:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;->titleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    sget v0, Lcom/microsoft/xboxtcui/R$id;->friendfinder_info_subtitle:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;->subtitleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    sget v0, Lcom/microsoft/xboxtcui/R$id;->friendfinder_info_next:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;->nextButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;->titleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;->subtitleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;->nextButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    return-void
.end method

.method public onStart()V
    .registers 3

    invoke-super {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->onStart()V

    sget-object v0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen$3;->$SwitchMap$com$microsoft$xbox$service$model$friendfinder$FriendFinderType:[I

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;->infoType:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;->titleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    sget v1, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_LinkPhone_Dialog_Title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;->subtitleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;->getPhoneText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;->nextButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    new-instance v1, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen$2;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen$2;-><init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackContactsOptInView(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;->titleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    sget v1, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_LinkFacebook_Dialog_Title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;->subtitleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;->getFacebookText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;->nextButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    new-instance v1, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen$1;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen$1;-><init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackFacebookOptInView(Ljava/lang/CharSequence;)V

    return-void
.end method
