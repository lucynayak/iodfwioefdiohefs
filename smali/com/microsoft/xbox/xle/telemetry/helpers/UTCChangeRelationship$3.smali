.class final Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship;->trackChangeRelationshipRemoveFriend(Ljava/lang/CharSequence;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic val$activityTitle:Ljava/lang/CharSequence;

.field public final synthetic val$targetXUID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .registers 3

    iput-object p1, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$3;->val$targetXUID:Ljava/lang/String;

    iput-object p2, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$3;->val$activityTitle:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 4

    iget-object v0, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$3;->val$targetXUID:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship;->access$200(Ljava/lang/String;)Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;->REMOVEFRIEND:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;

    const-string v2, "relationship"

    invoke-virtual {v0, v2, v1}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$3;->val$activityTitle:Ljava/lang/CharSequence;

    const-string v2, "Change Relationship - Action"

    invoke-static {v2, v1, v0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;)V

    return-void
.end method
