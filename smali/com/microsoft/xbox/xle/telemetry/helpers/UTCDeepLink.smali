.class public Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CALLING_APP_KEY:Ljava/lang/String; = "deepLinkCaller"

.field public static final DEEPLINK_KEY_NAME:Ljava/lang/String; = "deepLinkId"

.field public static final INTENDED_ACTION_KEY:Ljava/lang/String; = "intendedAction"

.field public static final TARGET_TITLE_KEY:Ljava/lang/String; = "targetTitleId"

.field public static final TARGET_XUID_KEY:Ljava/lang/String; = "targetXUID"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Ljava/lang/String;)Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;
    .registers 1

    invoke-static {p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink;->getBaseModelInfo(Ljava/lang/String;)Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    move-result-object p0

    return-object p0
.end method

.method private static generateCorrelationId()Ljava/lang/String;
    .registers 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->getCommonData(I)Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->getAppSessionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getBaseModelInfo(Ljava/lang/String;)Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;
    .registers 4

    new-instance v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;-><init>()V

    invoke-static {}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink;->generateCorrelationId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deepLinkId"

    invoke-virtual {v0, v2, v1}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "deepLinkCaller"

    invoke-virtual {v0, v1, p0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static trackFriendSuggestionsLink(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink$6;

    invoke-direct {v0, p1, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink$6;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callStringTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCStringEventDelegate;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static trackGameHubAchievementsLink(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink$3;

    invoke-direct {v0, p1, p2, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink$3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callStringTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCStringEventDelegate;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static trackGameHubLink(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink$2;

    invoke-direct {v0, p1, p2, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callStringTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCStringEventDelegate;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static trackUserProfileLink(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink$1;

    invoke-direct {v0, p1, p2, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callStringTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCStringEventDelegate;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static trackUserSendToStore(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink$5;

    invoke-direct {v0, p1, p2, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink$5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    return-void
.end method

.method public static trackUserSettingsLink(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink$4;

    invoke-direct {v0, p1, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink$4;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callStringTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCStringEventDelegate;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
