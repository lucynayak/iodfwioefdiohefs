.class public final enum Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/internal/ui/PropertyBag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

.field public static final enum CID:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

.field public static final enum DASessionKey:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

.field public static final enum DAToken:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

.field public static final enum ErrorCode:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

.field public static final enum ErrorString:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

.field public static final enum ErrorURL:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

.field public static final enum ExtendedErrorString:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

.field public static final enum IsSignUp:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

.field public static final enum PUID:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

.field public static final enum Password:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

.field public static final enum PfCountryCode:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

.field public static final enum PfDeviceEmail:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

.field public static final enum PfFirstName:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

.field public static final enum PfLastName:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

.field public static final enum PfPhone:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

.field public static final enum PfUsernames:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

.field public static final enum STSInlineFlowToken:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

.field public static final enum SigninName:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

.field public static final enum SmsCode:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

.field public static final enum TelemetryAppVersion:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

.field public static final enum TelemetryDeviceYearClass:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

.field public static final enum TelemetryIsRequestorMaster:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

.field public static final enum TelemetryNetworkType:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

.field public static final enum TelemetryPrecaching:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

.field public static final enum TelemetryResourceBundleHits:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

.field public static final enum TelemetryResourceBundleMisses:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

.field public static final enum TelemetryResourceBundleVersion:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

.field public static final enum Username:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;


# direct methods
.method public static constructor <clinit>()V
    .locals 30

    new-instance v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    const-string v1, "CID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->CID:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    new-instance v1, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    const-string v3, "DAToken"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->DAToken:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    new-instance v3, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    const-string v5, "DASessionKey"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->DASessionKey:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    new-instance v5, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    const-string v7, "ErrorCode"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->ErrorCode:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    new-instance v7, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    const-string v9, "ErrorString"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->ErrorString:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    new-instance v9, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    const-string v11, "ExtendedErrorString"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->ExtendedErrorString:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    new-instance v11, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    const-string v13, "ErrorURL"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->ErrorURL:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    new-instance v13, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    const-string v15, "Password"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->Password:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    new-instance v15, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    const-string v14, "PUID"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->PUID:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    new-instance v14, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    const-string v12, "STSInlineFlowToken"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->STSInlineFlowToken:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    new-instance v12, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    const-string v10, "Username"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->Username:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    new-instance v10, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    const-string v8, "PfUsernames"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->PfUsernames:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    new-instance v8, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    const-string v6, "PfFirstName"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->PfFirstName:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    new-instance v6, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    const-string v4, "PfLastName"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->PfLastName:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    new-instance v4, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    const-string v2, "PfDeviceEmail"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->PfDeviceEmail:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    new-instance v2, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    const-string v6, "PfPhone"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->PfPhone:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    new-instance v6, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    const-string v4, "PfCountryCode"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->PfCountryCode:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    new-instance v4, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    const-string v2, "SmsCode"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->SmsCode:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    new-instance v2, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    const-string v6, "IsSignUp"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->IsSignUp:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    new-instance v6, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    const-string v4, "SigninName"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->SigninName:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    new-instance v4, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    const-string v2, "TelemetryAppVersion"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->TelemetryAppVersion:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    new-instance v2, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    const-string v6, "TelemetryDeviceYearClass"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4}, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->TelemetryDeviceYearClass:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    new-instance v6, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    const-string v4, "TelemetryIsRequestorMaster"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    invoke-direct {v6, v4, v2}, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->TelemetryIsRequestorMaster:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    new-instance v2, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    const-string v4, "TelemetryNetworkType"

    move-object/from16 v25, v6

    const/16 v6, 0x17

    invoke-direct {v2, v4, v6}, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->TelemetryNetworkType:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    new-instance v4, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    const-string v6, "TelemetryPrecaching"

    move-object/from16 v26, v2

    const/16 v2, 0x18

    invoke-direct {v4, v6, v2}, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->TelemetryPrecaching:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    new-instance v2, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    const-string v6, "TelemetryResourceBundleHits"

    move-object/from16 v27, v4

    const/16 v4, 0x19

    invoke-direct {v2, v6, v4}, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->TelemetryResourceBundleHits:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    new-instance v4, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    const-string v6, "TelemetryResourceBundleMisses"

    move-object/from16 v28, v2

    const/16 v2, 0x1a

    invoke-direct {v4, v6, v2}, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->TelemetryResourceBundleMisses:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    new-instance v2, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    const-string v6, "TelemetryResourceBundleVersion"

    move-object/from16 v29, v4

    const/16 v4, 0x1b

    invoke-direct {v2, v6, v4}, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->TelemetryResourceBundleVersion:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    const/16 v4, 0x1c

    new-array v4, v4, [Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

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

    aput-object v2, v4, v0

    sput-object v4, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->$VALUES:[Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

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

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;
    .locals 1

    const-class v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;
    .locals 1

    sget-object v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->$VALUES:[Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    invoke-virtual {v0}, [Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    return-object v0
.end method
