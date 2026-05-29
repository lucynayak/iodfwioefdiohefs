.class public final enum Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

.field public static final enum AccountTier:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

.field public static final enum AppDisplayName:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

.field public static final enum AppDisplayPicRaw:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

.field public static final enum Bio:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

.field public static final enum GameDisplayName:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

.field public static final enum GameDisplayPicRaw:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

.field public static final enum Gamerscore:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

.field public static final enum Gamertag:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

.field public static final enum Location:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

.field public static final enum PreferredColor:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

.field public static final enum RealName:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

.field public static final enum TenureLevel:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

.field public static final enum Watermarks:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

.field public static final enum XboxOneRep:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;


# direct methods
.method public static constructor <clinit>()V
    .registers 17

    new-instance v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    const-string v1, "RealName"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->RealName:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    new-instance v1, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    const-string v3, "GameDisplayName"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->GameDisplayName:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    new-instance v3, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    const-string v5, "AppDisplayName"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->AppDisplayName:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    new-instance v5, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    const-string v7, "AppDisplayPicRaw"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->AppDisplayPicRaw:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    new-instance v7, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    const-string v9, "Gamerscore"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->Gamerscore:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    new-instance v9, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    const-string v11, "Gamertag"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->Gamertag:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    new-instance v11, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    const-string v13, "GameDisplayPicRaw"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->GameDisplayPicRaw:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    new-instance v13, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    const-string v15, "AccountTier"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->AccountTier:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    new-instance v15, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    const-string v14, "TenureLevel"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->TenureLevel:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    new-instance v14, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    const-string v12, "XboxOneRep"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->XboxOneRep:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    new-instance v12, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    const-string v10, "PreferredColor"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->PreferredColor:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    new-instance v10, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    const-string v8, "Location"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->Location:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    new-instance v8, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    const-string v6, "Bio"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->Bio:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    new-instance v6, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    const-string v4, "Watermarks"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->Watermarks:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    const/16 v4, 0xe

    new-array v4, v4, [Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    const/16 v16, 0x0

    aput-object v0, v4, v16

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

    aput-object v6, v4, v2

    sput-object v4, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->$VALUES:[Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

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

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;
    .registers 2

    const-class v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;
    .registers 1

    sget-object v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->$VALUES:[Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    return-object v0
.end method
