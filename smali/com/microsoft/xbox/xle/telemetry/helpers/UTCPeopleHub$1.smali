.class final Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub;->trackPeopleHubView(Ljava/lang/CharSequence;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic val$activityTitle:Ljava/lang/CharSequence;

.field public final synthetic val$isMeView:Z

.field public final synthetic val$targetXUID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;Z)V
    .registers 4

    iput-object p1, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub$1;->val$targetXUID:Ljava/lang/String;

    iput-object p2, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub$1;->val$activityTitle:Ljava/lang/CharSequence;

    iput-boolean p3, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub$1;->val$isMeView:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 4

    iget-object v0, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub$1;->val$targetXUID:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub;->access$002(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub$1;->val$activityTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub;->access$102(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub$1;->val$isMeView:Z

    if-eqz v0, :cond_0

    const-string v0, "People Hub - ME View"

    goto :goto_0

    :cond_0
    const-string v0, "People Hub - You View"

    :goto_0
    invoke-static {}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub;->access$100()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub$1;->val$targetXUID:Ljava/lang/String;

    invoke-static {v2}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub;->access$200(Ljava/lang/String;)Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageView;->track(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;)V

    return-void
.end method
