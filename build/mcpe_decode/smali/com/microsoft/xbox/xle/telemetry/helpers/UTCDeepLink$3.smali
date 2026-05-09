.class final Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCStringEventDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink;->trackGameHubAchievementsLink(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic val$activityTitle:Ljava/lang/CharSequence;

.field public final synthetic val$packageName:Ljava/lang/String;

.field public final synthetic val$titleId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink$3;->val$packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink$3;->val$titleId:Ljava/lang/String;

    iput-object p3, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink$3;->val$activityTitle:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink$3;->val$packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink;->access$000(Ljava/lang/String;)Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink$3;->val$titleId:Ljava/lang/String;

    const-string v2, "targetTitleId"

    invoke-virtual {v0, v2, v1}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink$3;->val$activityTitle:Ljava/lang/CharSequence;

    const-string v2, "DeepLink - GameHub"

    invoke-static {v2, v1, v0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;)V

    invoke-virtual {v0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->getAdditionalInfo()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "deepLinkId"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
