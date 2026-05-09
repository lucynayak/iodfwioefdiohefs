.class public Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static currentUserXuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->setCurrentUserXuid(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$100()V
    .locals 0

    invoke-static {}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->setUserIdForCommonData()V

    return-void
.end method

.method public static synthetic access$200([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->formatXuids([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static formatXuids([Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-object v1, p0, v0

    const-string v2, "x:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1
    invoke-static {v2, v1}, La/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    aput-object v1, p0, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private static setCurrentUserXuid(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->currentUserXuid:Ljava/lang/String;

    invoke-static {}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->setUserIdForCommonData()V

    return-void
.end method

.method private static setUserIdForCommonData()V
    .locals 1

    sget-object v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->currentUserXuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->currentUserXuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->setUserId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static trackAddFacebookFriend(Ljava/lang/CharSequence;[Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$23;

    invoke-direct {v0, p1, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$23;-><init>([Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    return-void
.end method

.method public static trackAddFacebookFriendCancel(Ljava/lang/CharSequence;)V
    .locals 1

    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$26;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$26;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    return-void
.end method

.method public static trackBackButtonPressed(Ljava/lang/CharSequence;Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;)V
    .locals 1

    sget-object v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$36;->$SwitchMap$com$microsoft$xbox$service$model$friendfinder$FriendFinderType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackPhoneContactsBack(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    invoke-static {p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackFacebookFriendFinderBack(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static trackContactsAddPhoneView(Ljava/lang/CharSequence;)V
    .locals 1

    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$8;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$8;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    return-void
.end method

.method public static trackContactsFindFriendsView(Ljava/lang/CharSequence;)V
    .locals 1

    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$6;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$6;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    return-void
.end method

.method public static trackContactsInviteFriendsView(Ljava/lang/CharSequence;)V
    .locals 1

    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$9;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$9;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    return-void
.end method

.method public static trackContactsOptInView(Ljava/lang/CharSequence;)V
    .locals 1

    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$10;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$10;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    return-void
.end method

.method public static trackContactsSignUp(Ljava/lang/CharSequence;)V
    .locals 1

    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$13;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$13;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    return-void
.end method

.method public static trackContactsSuggestions(Ljava/lang/CharSequence;)V
    .locals 1

    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$14;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$14;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    return-void
.end method

.method public static trackContactsVerifyPhoneView(Ljava/lang/CharSequence;)V
    .locals 1

    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$7;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$7;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    return-void
.end method

.method public static trackDone(Ljava/lang/CharSequence;)V
    .locals 1

    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$18;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$18;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    return-void
.end method

.method public static trackFacebookAddFriendView(Ljava/lang/CharSequence;)V
    .locals 1

    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$4;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$4;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    return-void
.end method

.method private static trackFacebookFriendFinderBack(Ljava/lang/CharSequence;)V
    .locals 1

    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$21;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$21;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    return-void
.end method

.method public static trackFacebookLinkAccountView(Ljava/lang/CharSequence;)V
    .locals 1

    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$3;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$3;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    return-void
.end method

.method public static trackFacebookLoginCancel(Ljava/lang/CharSequence;)V
    .locals 1

    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$20;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$20;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    return-void
.end method

.method public static trackFacebookLoginSuccessful(Ljava/lang/CharSequence;)V
    .locals 1

    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$22;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$22;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    return-void
.end method

.method public static trackFacebookOptInNext(Ljava/lang/CharSequence;)V
    .locals 1

    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$19;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$19;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    return-void
.end method

.method public static trackFacebookOptInView(Ljava/lang/CharSequence;)V
    .locals 1

    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$2;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$2;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    return-void
.end method

.method public static trackFacebookShareView(Ljava/lang/CharSequence;)V
    .locals 1

    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$5;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$5;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    return-void
.end method

.method public static trackFacebookSignup(Ljava/lang/CharSequence;)V
    .locals 1

    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$11;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$11;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    return-void
.end method

.method public static trackFacebookSuggestions(Ljava/lang/CharSequence;)V
    .locals 1

    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$12;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$12;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    return-void
.end method

.method public static trackFriendFinderView(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$1;

    invoke-direct {v0, p1, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$1;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    return-void
.end method

.method public static trackGamertagSearch(Ljava/lang/CharSequence;)V
    .locals 1

    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$15;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$15;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    return-void
.end method

.method public static trackGamertagSearchSubmit(Ljava/lang/CharSequence;)V
    .locals 1

    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$16;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$16;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    return-void
.end method

.method public static trackGamertagSearchSuccess(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$17;

    invoke-direct {v0, p1, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$17;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    return-void
.end method

.method public static trackPhoneContactsAddFriends(Ljava/lang/CharSequence;[Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$34;

    invoke-direct {v0, p1, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$34;-><init>([Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    return-void
.end method

.method private static trackPhoneContactsBack(Ljava/lang/CharSequence;)V
    .locals 1

    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$28;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$28;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    return-void
.end method

.method public static trackPhoneContactsCallMe(Ljava/lang/CharSequence;)V
    .locals 1

    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$32;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$32;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    return-void
.end method

.method public static trackPhoneContactsChangeRegion(Ljava/lang/CharSequence;)V
    .locals 1

    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$30;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$30;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    return-void
.end method

.method public static trackPhoneContactsLinkSuccess(Ljava/lang/CharSequence;)V
    .locals 1

    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$35;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$35;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    return-void
.end method

.method public static trackPhoneContactsNext(Ljava/lang/CharSequence;)V
    .locals 1

    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$27;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$27;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    return-void
.end method

.method public static trackPhoneContactsResendCode(Ljava/lang/CharSequence;)V
    .locals 1

    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$31;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$31;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    return-void
.end method

.method public static trackPhoneContactsSendInvite(Ljava/lang/CharSequence;)V
    .locals 1

    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$33;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$33;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    return-void
.end method

.method public static trackPhoneContactsSkipAddFriends(Ljava/lang/CharSequence;)V
    .locals 1

    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$29;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$29;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    return-void
.end method

.method public static trackShareFacebookLinkToFeed(Ljava/lang/CharSequence;)V
    .locals 1

    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$24;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$24;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    return-void
.end method

.method public static trackSkipFacebookSharing(Ljava/lang/CharSequence;)V
    .locals 1

    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$25;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$25;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    return-void
.end method
