.class final Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship;->trackChangeRelationshipDone(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic val$activityTitle:Ljava/lang/CharSequence;

.field public final synthetic val$favoriteStatus:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;

.field public final synthetic val$gamerType:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;

.field public final synthetic val$realNameStatus:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

.field public final synthetic val$relationship:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;

.field public final synthetic val$targetXUID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;Ljava/lang/CharSequence;)V
    .registers 7

    iput-object p1, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$4;->val$targetXUID:Ljava/lang/String;

    iput-object p2, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$4;->val$relationship:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;

    iput-object p3, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$4;->val$favoriteStatus:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;

    iput-object p4, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$4;->val$realNameStatus:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    iput-object p5, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$4;->val$gamerType:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;

    iput-object p6, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$4;->val$activityTitle:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 4

    iget-object v0, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$4;->val$targetXUID:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship;->access$200(Ljava/lang/String;)Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$4;->val$relationship:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "relationship"

    invoke-virtual {v0, v2, v1}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$4;->val$favoriteStatus:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "favorite"

    invoke-virtual {v0, v2, v1}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$4;->val$realNameStatus:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "realname"

    invoke-virtual {v0, v2, v1}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$4;->val$gamerType:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "gamertype"

    invoke-virtual {v0, v2, v1}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$4;->val$activityTitle:Ljava/lang/CharSequence;

    const-string v2, "Change Relationship - Done"

    invoke-static {v2, v1, v0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;)V

    return-void
.end method
