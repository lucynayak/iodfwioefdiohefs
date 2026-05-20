.class final Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship;->trackChangeRelationshipAction(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic val$activityTitle:Ljava/lang/CharSequence;

.field public final synthetic val$isFollowing:Z

.field public final synthetic val$isFromFacebook:Z

.field public final synthetic val$targetXUID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/CharSequence;Z)V
    .registers 5

    iput-object p1, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$2;->val$targetXUID:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$2;->val$isFollowing:Z

    iput-object p3, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$2;->val$activityTitle:Ljava/lang/CharSequence;

    iput-boolean p4, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$2;->val$isFromFacebook:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 8

    iget-object v0, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$2;->val$targetXUID:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship;->access$200(Ljava/lang/String;)Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    move-result-object v0

    iget-boolean v1, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$2;->val$isFollowing:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;->EXISTINGFRIEND:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;->ADDFRIEND:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;

    :goto_0
    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "relationship"

    invoke-virtual {v0, v2, v1}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$2;->val$activityTitle:Ljava/lang/CharSequence;

    const-string v2, "Change Relationship - Action"

    invoke-static {v2, v1, v0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;)V

    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$2;->val$isFromFacebook:Z

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$2;->val$activityTitle:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$2;->val$targetXUID:Ljava/lang/String;

    sget-object v3, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;->ADDFRIEND:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;

    sget-object v4, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;->SHARINGON:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    sget-object v5, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;->NOTFAVORITED:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;

    sget-object v6, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;->FACEBOOK:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;

    invoke-static/range {v1 .. v6}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship;->trackChangeRelationshipDone(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;)V

    :cond_1
    return-void
.end method
