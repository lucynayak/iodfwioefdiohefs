.class public final enum Lcom/microsoft/xbox/idp/model/Privacy$Key;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/model/Privacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/idp/model/Privacy$Key;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/idp/model/Privacy$Key;

.field public static final enum CanShareIdentity:Lcom/microsoft/xbox/idp/model/Privacy$Key;

.field public static final enum CollectVoiceData:Lcom/microsoft/xbox/idp/model/Privacy$Key;

.field public static final enum CommunicateUsingTextAndVoice:Lcom/microsoft/xbox/idp/model/Privacy$Key;

.field public static final enum CommunicateUsingVideo:Lcom/microsoft/xbox/idp/model/Privacy$Key;

.field public static final enum None:Lcom/microsoft/xbox/idp/model/Privacy$Key;

.field public static final enum ShareExerciseInfo:Lcom/microsoft/xbox/idp/model/Privacy$Key;

.field public static final enum ShareFriendList:Lcom/microsoft/xbox/idp/model/Privacy$Key;

.field public static final enum ShareGameHistory:Lcom/microsoft/xbox/idp/model/Privacy$Key;

.field public static final enum ShareIdentity:Lcom/microsoft/xbox/idp/model/Privacy$Key;

.field public static final enum ShareIdentityTransitively:Lcom/microsoft/xbox/idp/model/Privacy$Key;

.field public static final enum SharePresence:Lcom/microsoft/xbox/idp/model/Privacy$Key;

.field public static final enum ShareProfile:Lcom/microsoft/xbox/idp/model/Privacy$Key;

.field public static final enum ShareRecordedGameSessions:Lcom/microsoft/xbox/idp/model/Privacy$Key;

.field public static final enum ShareVideoAndMusicStatus:Lcom/microsoft/xbox/idp/model/Privacy$Key;

.field public static final enum ShareXboxMusicActivity:Lcom/microsoft/xbox/idp/model/Privacy$Key;


# direct methods
.method public static constructor <clinit>()V
    .registers 18

    new-instance v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/model/Privacy$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;->None:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    new-instance v1, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    const-string v3, "ShareFriendList"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/microsoft/xbox/idp/model/Privacy$Key;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/microsoft/xbox/idp/model/Privacy$Key;->ShareFriendList:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    new-instance v3, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    const-string v5, "ShareGameHistory"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/microsoft/xbox/idp/model/Privacy$Key;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/microsoft/xbox/idp/model/Privacy$Key;->ShareGameHistory:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    new-instance v5, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    const-string v7, "CommunicateUsingTextAndVoice"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/microsoft/xbox/idp/model/Privacy$Key;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/microsoft/xbox/idp/model/Privacy$Key;->CommunicateUsingTextAndVoice:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    new-instance v7, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    const-string v9, "SharePresence"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/microsoft/xbox/idp/model/Privacy$Key;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/microsoft/xbox/idp/model/Privacy$Key;->SharePresence:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    new-instance v9, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    const-string v11, "ShareProfile"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/microsoft/xbox/idp/model/Privacy$Key;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/microsoft/xbox/idp/model/Privacy$Key;->ShareProfile:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    new-instance v11, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    const-string v13, "ShareVideoAndMusicStatus"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/microsoft/xbox/idp/model/Privacy$Key;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/microsoft/xbox/idp/model/Privacy$Key;->ShareVideoAndMusicStatus:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    new-instance v13, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    const-string v15, "CommunicateUsingVideo"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/microsoft/xbox/idp/model/Privacy$Key;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/microsoft/xbox/idp/model/Privacy$Key;->CommunicateUsingVideo:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    new-instance v15, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    const-string v14, "CollectVoiceData"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/microsoft/xbox/idp/model/Privacy$Key;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/microsoft/xbox/idp/model/Privacy$Key;->CollectVoiceData:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    new-instance v14, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    const-string v12, "ShareXboxMusicActivity"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/microsoft/xbox/idp/model/Privacy$Key;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/microsoft/xbox/idp/model/Privacy$Key;->ShareXboxMusicActivity:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    new-instance v12, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    const-string v10, "ShareExerciseInfo"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/microsoft/xbox/idp/model/Privacy$Key;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/microsoft/xbox/idp/model/Privacy$Key;->ShareExerciseInfo:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    new-instance v10, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    const-string v8, "ShareIdentity"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/microsoft/xbox/idp/model/Privacy$Key;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/microsoft/xbox/idp/model/Privacy$Key;->ShareIdentity:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    new-instance v8, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    const-string v6, "ShareRecordedGameSessions"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/microsoft/xbox/idp/model/Privacy$Key;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/microsoft/xbox/idp/model/Privacy$Key;->ShareRecordedGameSessions:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    new-instance v6, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    const-string v4, "ShareIdentityTransitively"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/microsoft/xbox/idp/model/Privacy$Key;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/microsoft/xbox/idp/model/Privacy$Key;->ShareIdentityTransitively:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    new-instance v4, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    const-string v2, "CanShareIdentity"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/microsoft/xbox/idp/model/Privacy$Key;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/microsoft/xbox/idp/model/Privacy$Key;->CanShareIdentity:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    const/16 v2, 0xf

    new-array v2, v2, [Lcom/microsoft/xbox/idp/model/Privacy$Key;

    const/16 v16, 0x0

    aput-object v0, v2, v16

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    aput-object v4, v2, v6

    sput-object v2, Lcom/microsoft/xbox/idp/model/Privacy$Key;->$VALUES:[Lcom/microsoft/xbox/idp/model/Privacy$Key;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/idp/model/Privacy$Key;
    .registers 2

    const-class v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/idp/model/Privacy$Key;
    .registers 1

    sget-object v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;->$VALUES:[Lcom/microsoft/xbox/idp/model/Privacy$Key;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/idp/model/Privacy$Key;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/idp/model/Privacy$Key;

    return-object v0
.end method
