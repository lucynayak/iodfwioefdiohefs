.class final Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub;->trackMute(Ljava/lang/CharSequence;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic val$activityTitle:Ljava/lang/CharSequence;

.field public final synthetic val$targetXUID:Ljava/lang/String;

.field public final synthetic val$toBeMuted:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub$2;->val$targetXUID:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub$2;->val$toBeMuted:Z

    iput-object p3, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub$2;->val$activityTitle:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    iget-object v0, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub$2;->val$targetXUID:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub;->access$200(Ljava/lang/String;)Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    move-result-object v0

    iget-boolean v1, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub$2;->val$toBeMuted:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isMuted"

    invoke-virtual {v0, v2, v1}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub$2;->val$activityTitle:Ljava/lang/CharSequence;

    const-string v2, "People Hub - Mute"

    invoke-static {v2, v1, v0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;)V

    return-void
.end method
