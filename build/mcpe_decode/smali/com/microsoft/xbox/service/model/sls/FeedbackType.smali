.class public final enum Lcom/microsoft/xbox/service/model/sls/FeedbackType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/service/model/sls/FeedbackType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum Comms911:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum CommsAbusiveVoice:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum CommsInappropriateVideo:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum CommsMuted:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum CommsPhishing:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum CommsPictureMessage:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum CommsSpam:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum CommsTextMessage:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum CommsUnmuted:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum CommsVoiceMessage:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum FairPlayBlock:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum FairPlayCheater:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum FairPlayConsoleBanRequest:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum FairPlayKicked:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum FairPlayKillsTeammates:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum FairPlayQuitter:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum FairPlayTampering:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum FairPlayUnblock:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum FairPlayUserBanRequest:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum FairplayIdler:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum FairplayUnsporting:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum InternalAmbassadorScoreUpdated:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum InternalEnforcementDataUpdated:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum InternalReputationReset:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum InternalReputationUpdated:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum PositiveHelpfulPlayer:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum PositiveHighQualityUGC:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum PositiveSkilledPlayer:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum Unknown:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum UserContentActivityFeed:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum UserContentGameDVR:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum UserContentGamerpic:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum UserContentGamertag:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum UserContentInappropriateUGC:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum UserContentPersonalInfo:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum UserContentRealName:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum UserContentReviewRequest:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum UserContentScreenshot:Lcom/microsoft/xbox/service/model/sls/FeedbackType;


# direct methods
.method public static constructor <clinit>()V
    .locals 40

    new-instance v0, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->Unknown:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    new-instance v1, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    const-string v3, "FairPlayKillsTeammates"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->FairPlayKillsTeammates:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    new-instance v3, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    const-string v5, "FairPlayCheater"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->FairPlayCheater:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    new-instance v5, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    const-string v7, "FairPlayTampering"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->FairPlayTampering:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    new-instance v7, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    const-string v9, "FairPlayQuitter"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->FairPlayQuitter:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    new-instance v9, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    const-string v11, "FairPlayKicked"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->FairPlayKicked:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    new-instance v11, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    const-string v13, "FairPlayBlock"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->FairPlayBlock:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    new-instance v13, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    const-string v15, "FairPlayUnblock"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->FairPlayUnblock:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    new-instance v15, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    const-string v14, "FairPlayUserBanRequest"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->FairPlayUserBanRequest:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    new-instance v14, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    const-string v12, "FairPlayConsoleBanRequest"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->FairPlayConsoleBanRequest:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    new-instance v12, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    const-string v10, "FairplayUnsporting"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->FairplayUnsporting:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    new-instance v10, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    const-string v8, "FairplayIdler"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->FairplayIdler:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    new-instance v8, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    const-string v6, "CommsTextMessage"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->CommsTextMessage:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    new-instance v6, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    const-string v4, "CommsVoiceMessage"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->CommsVoiceMessage:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    new-instance v4, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    const-string v2, "CommsPictureMessage"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->CommsPictureMessage:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    new-instance v2, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    const-string v6, "CommsInappropriateVideo"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->CommsInappropriateVideo:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    new-instance v6, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    const-string v4, "CommsAbusiveVoice"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->CommsAbusiveVoice:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    new-instance v4, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    const-string v2, "CommsSpam"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->CommsSpam:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    new-instance v2, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    const-string v6, "CommsPhishing"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->CommsPhishing:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    new-instance v6, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    const-string v4, "CommsMuted"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->CommsMuted:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    new-instance v4, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    const-string v2, "CommsUnmuted"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->CommsUnmuted:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    new-instance v2, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    const-string v6, "Comms911"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->Comms911:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    new-instance v6, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    const-string v4, "UserContentActivityFeed"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    invoke-direct {v6, v4, v2}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->UserContentActivityFeed:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    new-instance v2, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    const-string v4, "UserContentGameDVR"

    move-object/from16 v25, v6

    const/16 v6, 0x17

    invoke-direct {v2, v4, v6}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->UserContentGameDVR:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    new-instance v4, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    const-string v6, "UserContentGamertag"

    move-object/from16 v26, v2

    const/16 v2, 0x18

    invoke-direct {v4, v6, v2}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->UserContentGamertag:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    new-instance v2, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    const-string v6, "UserContentRealName"

    move-object/from16 v27, v4

    const/16 v4, 0x19

    invoke-direct {v2, v6, v4}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->UserContentRealName:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    new-instance v4, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    const-string v6, "UserContentGamerpic"

    move-object/from16 v28, v2

    const/16 v2, 0x1a

    invoke-direct {v4, v6, v2}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->UserContentGamerpic:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    new-instance v2, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    const-string v6, "UserContentPersonalInfo"

    move-object/from16 v29, v4

    const/16 v4, 0x1b

    invoke-direct {v2, v6, v4}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->UserContentPersonalInfo:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    new-instance v4, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    const-string v6, "UserContentInappropriateUGC"

    move-object/from16 v30, v2

    const/16 v2, 0x1c

    invoke-direct {v4, v6, v2}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->UserContentInappropriateUGC:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    new-instance v2, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    const-string v6, "UserContentReviewRequest"

    move-object/from16 v31, v4

    const/16 v4, 0x1d

    invoke-direct {v2, v6, v4}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->UserContentReviewRequest:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    new-instance v4, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    const-string v6, "UserContentScreenshot"

    move-object/from16 v32, v2

    const/16 v2, 0x1e

    invoke-direct {v4, v6, v2}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->UserContentScreenshot:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    new-instance v2, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    const-string v6, "PositiveSkilledPlayer"

    move-object/from16 v33, v4

    const/16 v4, 0x1f

    invoke-direct {v2, v6, v4}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->PositiveSkilledPlayer:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    new-instance v4, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    const-string v6, "PositiveHelpfulPlayer"

    move-object/from16 v34, v2

    const/16 v2, 0x20

    invoke-direct {v4, v6, v2}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->PositiveHelpfulPlayer:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    new-instance v2, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    const-string v6, "PositiveHighQualityUGC"

    move-object/from16 v35, v4

    const/16 v4, 0x21

    invoke-direct {v2, v6, v4}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->PositiveHighQualityUGC:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    new-instance v4, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    const-string v6, "InternalReputationUpdated"

    move-object/from16 v36, v2

    const/16 v2, 0x22

    invoke-direct {v4, v6, v2}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->InternalReputationUpdated:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    new-instance v2, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    const-string v6, "InternalAmbassadorScoreUpdated"

    move-object/from16 v37, v4

    const/16 v4, 0x23

    invoke-direct {v2, v6, v4}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->InternalAmbassadorScoreUpdated:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    new-instance v4, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    const-string v6, "InternalReputationReset"

    move-object/from16 v38, v2

    const/16 v2, 0x24

    invoke-direct {v4, v6, v2}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->InternalReputationReset:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    new-instance v2, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    const-string v6, "InternalEnforcementDataUpdated"

    move-object/from16 v39, v4

    const/16 v4, 0x25

    invoke-direct {v2, v6, v4}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->InternalEnforcementDataUpdated:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    const/16 v4, 0x26

    new-array v4, v4, [Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    const/4 v6, 0x0

    aput-object v0, v4, v6

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v8, v4, v0

    const/16 v0, 0xd

    aput-object v16, v4, v0

    const/16 v0, 0xe

    aput-object v17, v4, v0

    const/16 v0, 0xf

    aput-object v18, v4, v0

    const/16 v0, 0x10

    aput-object v19, v4, v0

    const/16 v0, 0x11

    aput-object v20, v4, v0

    const/16 v0, 0x12

    aput-object v21, v4, v0

    const/16 v0, 0x13

    aput-object v22, v4, v0

    const/16 v0, 0x14

    aput-object v23, v4, v0

    const/16 v0, 0x15

    aput-object v24, v4, v0

    const/16 v0, 0x16

    aput-object v25, v4, v0

    const/16 v0, 0x17

    aput-object v26, v4, v0

    const/16 v0, 0x18

    aput-object v27, v4, v0

    const/16 v0, 0x19

    aput-object v28, v4, v0

    const/16 v0, 0x1a

    aput-object v29, v4, v0

    const/16 v0, 0x1b

    aput-object v30, v4, v0

    const/16 v0, 0x1c

    aput-object v31, v4, v0

    const/16 v0, 0x1d

    aput-object v32, v4, v0

    const/16 v0, 0x1e

    aput-object v33, v4, v0

    const/16 v0, 0x1f

    aput-object v34, v4, v0

    const/16 v0, 0x20

    aput-object v35, v4, v0

    const/16 v0, 0x21

    aput-object v36, v4, v0

    const/16 v0, 0x22

    aput-object v37, v4, v0

    const/16 v0, 0x23

    aput-object v38, v4, v0

    const/16 v0, 0x24

    aput-object v39, v4, v0

    const/16 v0, 0x25

    aput-object v2, v4, v0

    sput-object v4, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->$VALUES:[Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/sls/FeedbackType;
    .locals 1

    const-class v0, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/service/model/sls/FeedbackType;
    .locals 1

    sget-object v0, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->$VALUES:[Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/service/model/sls/FeedbackType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    return-object v0
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/microsoft/xbox/service/model/sls/FeedbackType$1;->$SwitchMap$com$microsoft$xbox$service$model$sls$FeedbackType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "No title implementation."

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->fail(Ljava/lang/String;)V

    const-string v0, ""

    return-object v0

    :pswitch_0
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/microsoft/xboxtcui/R$string;->ProfileCard_Report_VoiceComm:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/microsoft/xboxtcui/R$string;->ProfileCard_Report_Unsporting:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/microsoft/xboxtcui/R$string;->ProfileCard_Report_QuitEarly:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/microsoft/xboxtcui/R$string;->ProfileCard_Report_PlayerPic:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_4
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/microsoft/xboxtcui/R$string;->ProfileCard_Report_PlayerName:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_5
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/microsoft/xboxtcui/R$string;->ProfileCard_Report_PlayerName:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_6
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/microsoft/xboxtcui/R$string;->ProfileCard_Report_Cheating:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_7
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/microsoft/xboxtcui/R$string;->ProfileCard_Report_BioLoc:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
