.class public final enum Lcom/microsoft/onlineid/sts/StsErrorCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/onlineid/sts/StsErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum PPCRL_E_DEVICE_DA_TOKEN_EXPIRED:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum PPCRL_REQUEST_E_BAD_MEMBER_NAME_OR_PASSWORD:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum PPCRL_REQUEST_E_DEVICE_DA_INVALID:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum PPCRL_REQUEST_E_FORCE_SIGNIN:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum PPCRL_REQUEST_E_INVALID_POLICY:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum PPCRL_REQUEST_E_PARTNER_HAS_NO_ASYMMETRIC_KEY:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum PPCRL_REQUEST_E_PARTNER_NEED_PIN:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum PPCRL_REQUEST_E_PARTNER_NOT_FOUND:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum PP_E_BAD_PASSWORD:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum PP_E_FLOWDISABLED:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum PP_E_FORCESIGNIN:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum PP_E_INTERFACE_INVALIDPUID:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum PP_E_INTERFACE_INVALIDREQUESTFORMAT:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum PP_E_INTERFACE_INVALID_PASSWORD:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum PP_E_INTERFACE_NOT_POST:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum PP_E_INVALIDREQUEST:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum PP_E_K_ERROR_DB_MEMBER_DOES_NOT_EXIST:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum PP_E_K_ERROR_DB_MEMBER_EXISTS:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum PP_E_MISSING_CERT:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum PP_E_NGC_ACCOUNT_LOCKED:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum PP_E_NGC_INVALID_CLOUD_PIN:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum PP_E_NGC_LOGIN_KEY_NOT_FOUND:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum PP_E_NOT_OVER_SSL:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum PP_E_SA_CANT_APPROVE_DENIED_SESSION:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum PP_E_SA_CANT_DENY_APPROVED_SESSION:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum PP_E_SA_DEVICE_NOT_FOUND:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum PP_E_SA_INVALID_DEVICE_ID:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum PP_E_SA_INVALID_OPERATION:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum PP_E_SA_INVALID_REGISTRATION_ID:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum PP_E_SA_INVALID_STATE_TRANSITION:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum PP_E_SA_SID_ALREADY_APPROVED:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum PP_E_STS_NONCE_REQUIRED:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum PP_E_TOTP_AUTHENTICATOR_ID_INVALID:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum Unrecognized:Lcom/microsoft/onlineid/sts/StsErrorCode;


# instance fields
.field private final _code:Ljava/lang/Integer;

.field private final _dcClass:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 36

    new-instance v0, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v1, "PP_E_FORCESIGNIN"

    const/4 v2, 0x0

    const v3, -0x7ffbeff4

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_FORCESIGNIN:Lcom/microsoft/onlineid/sts/StsErrorCode;

    new-instance v1, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v3, "PPCRL_REQUEST_E_FORCE_SIGNIN"

    const/4 v4, 0x1

    const v5, -0x7ffb771b

    invoke-direct {v1, v3, v4, v5}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/microsoft/onlineid/sts/StsErrorCode;->PPCRL_REQUEST_E_FORCE_SIGNIN:Lcom/microsoft/onlineid/sts/StsErrorCode;

    new-instance v3, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v5, "PP_E_INVALIDREQUEST"

    const/4 v6, 0x2

    const v7, -0x7ffbefe4

    invoke-direct {v3, v5, v6, v7}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_INVALIDREQUEST:Lcom/microsoft/onlineid/sts/StsErrorCode;

    new-instance v5, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v7, "PP_E_SA_INVALID_REGISTRATION_ID"

    const/4 v8, 0x3

    const v9, -0x7ffb5ff8

    invoke-direct {v5, v7, v8, v9}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_SA_INVALID_REGISTRATION_ID:Lcom/microsoft/onlineid/sts/StsErrorCode;

    new-instance v7, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v9, "PP_E_SA_INVALID_DEVICE_ID"

    const/4 v10, 0x4

    const v11, -0x7ffb5ff9

    invoke-direct {v7, v9, v10, v11}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_SA_INVALID_DEVICE_ID:Lcom/microsoft/onlineid/sts/StsErrorCode;

    new-instance v9, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v11, "PP_E_INTERFACE_INVALIDPUID"

    const/4 v12, 0x5

    const v13, -0x7ffbcba9

    invoke-direct {v9, v11, v12, v13}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_INTERFACE_INVALIDPUID:Lcom/microsoft/onlineid/sts/StsErrorCode;

    new-instance v11, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v13, "PP_E_SA_DEVICE_NOT_FOUND"

    const/4 v14, 0x6

    const v15, -0x7ffb5ffa

    invoke-direct {v11, v13, v14, v15}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_SA_DEVICE_NOT_FOUND:Lcom/microsoft/onlineid/sts/StsErrorCode;

    new-instance v13, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v15, "PP_E_TOTP_AUTHENTICATOR_ID_INVALID"

    const/4 v14, 0x7

    const v12, -0x7ffb63cb

    invoke-direct {v13, v15, v14, v12}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_TOTP_AUTHENTICATOR_ID_INVALID:Lcom/microsoft/onlineid/sts/StsErrorCode;

    new-instance v12, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v15, "PP_E_FLOWDISABLED"

    const/16 v14, 0x8

    const v10, -0x7ffbcbde

    invoke-direct {v12, v15, v14, v10}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_FLOWDISABLED:Lcom/microsoft/onlineid/sts/StsErrorCode;

    new-instance v10, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v15, "PP_E_NOT_OVER_SSL"

    const/16 v14, 0x9

    const v8, -0x7ffbefea

    invoke-direct {v10, v15, v14, v8}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_NOT_OVER_SSL:Lcom/microsoft/onlineid/sts/StsErrorCode;

    new-instance v8, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v15, "PP_E_INTERFACE_NOT_POST"

    const/16 v14, 0xa

    const v6, -0x7ffbcbb7

    invoke-direct {v8, v15, v14, v6}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_INTERFACE_NOT_POST:Lcom/microsoft/onlineid/sts/StsErrorCode;

    new-instance v6, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v15, "PP_E_INTERFACE_INVALIDREQUESTFORMAT"

    const/16 v14, 0xb

    const v4, -0x7ffbcbb0

    invoke-direct {v6, v15, v14, v4}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_INTERFACE_INVALIDREQUESTFORMAT:Lcom/microsoft/onlineid/sts/StsErrorCode;

    new-instance v4, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v15, "PP_E_SA_CANT_APPROVE_DENIED_SESSION"

    const/16 v14, 0xc

    const v2, -0x7ffb5ff5

    invoke-direct {v4, v15, v14, v2}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_SA_CANT_APPROVE_DENIED_SESSION:Lcom/microsoft/onlineid/sts/StsErrorCode;

    new-instance v2, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v15, "PP_E_SA_CANT_DENY_APPROVED_SESSION"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const v4, -0x7ffb5ff3

    invoke-direct {v2, v15, v14, v4}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_SA_CANT_DENY_APPROVED_SESSION:Lcom/microsoft/onlineid/sts/StsErrorCode;

    new-instance v4, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v15, "PP_E_SA_SID_ALREADY_APPROVED"

    const/16 v14, 0xe

    move-object/from16 v17, v2

    const v2, -0x7ffb5ff2

    invoke-direct {v4, v15, v14, v2}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_SA_SID_ALREADY_APPROVED:Lcom/microsoft/onlineid/sts/StsErrorCode;

    new-instance v2, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v15, "PP_E_SA_INVALID_STATE_TRANSITION"

    const/16 v14, 0xf

    move-object/from16 v18, v4

    const v4, -0x7ffb5fff

    invoke-direct {v2, v15, v14, v4}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_SA_INVALID_STATE_TRANSITION:Lcom/microsoft/onlineid/sts/StsErrorCode;

    new-instance v4, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v15, "PP_E_SA_INVALID_OPERATION"

    const/16 v14, 0x10

    move-object/from16 v19, v2

    const v2, -0x7ffb5ffc

    invoke-direct {v4, v15, v14, v2}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_SA_INVALID_OPERATION:Lcom/microsoft/onlineid/sts/StsErrorCode;

    new-instance v2, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v15, "PP_E_BAD_PASSWORD"

    const/16 v14, 0x11

    move-object/from16 v20, v4

    const v4, -0x7ffbefee

    invoke-direct {v2, v15, v14, v4}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_BAD_PASSWORD:Lcom/microsoft/onlineid/sts/StsErrorCode;

    new-instance v4, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v15, "PP_E_INTERFACE_INVALID_PASSWORD"

    const/16 v14, 0x12

    move-object/from16 v21, v2

    const v2, -0x7ffbcbab

    invoke-direct {v4, v15, v14, v2}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_INTERFACE_INVALID_PASSWORD:Lcom/microsoft/onlineid/sts/StsErrorCode;

    new-instance v2, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v15, "PP_E_MISSING_CERT"

    const/16 v14, 0x13

    move-object/from16 v22, v4

    const v4, -0x7ffba3d8

    invoke-direct {v2, v15, v14, v4}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_MISSING_CERT:Lcom/microsoft/onlineid/sts/StsErrorCode;

    new-instance v4, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v15, "PPCRL_REQUEST_E_PARTNER_NOT_FOUND"

    const/16 v14, 0x14

    move-object/from16 v23, v2

    const v2, -0x7ffb77d6

    invoke-direct {v4, v15, v14, v2}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/microsoft/onlineid/sts/StsErrorCode;->PPCRL_REQUEST_E_PARTNER_NOT_FOUND:Lcom/microsoft/onlineid/sts/StsErrorCode;

    new-instance v2, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v15, "PPCRL_REQUEST_E_INVALID_POLICY"

    const/16 v14, 0x15

    move-object/from16 v24, v4

    const v4, -0x7ffb77d4

    invoke-direct {v2, v15, v14, v4}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/microsoft/onlineid/sts/StsErrorCode;->PPCRL_REQUEST_E_INVALID_POLICY:Lcom/microsoft/onlineid/sts/StsErrorCode;

    new-instance v4, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v15, "PP_E_STS_NONCE_REQUIRED"

    const/16 v14, 0x16

    move-object/from16 v25, v2

    const v2, -0x7ffba3c7

    invoke-direct {v4, v15, v14, v2}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_STS_NONCE_REQUIRED:Lcom/microsoft/onlineid/sts/StsErrorCode;

    new-instance v2, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v14, "PPCRL_REQUEST_E_PARTNER_HAS_NO_ASYMMETRIC_KEY"

    const/16 v15, 0x17

    move-object/from16 v26, v4

    const v4, -0x7ffb77d5

    invoke-direct {v2, v14, v15, v4}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/microsoft/onlineid/sts/StsErrorCode;->PPCRL_REQUEST_E_PARTNER_HAS_NO_ASYMMETRIC_KEY:Lcom/microsoft/onlineid/sts/StsErrorCode;

    new-instance v4, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v14, "PPCRL_REQUEST_E_PARTNER_NEED_PIN"

    const/16 v15, 0x18

    move-object/from16 v27, v2

    const v2, -0x7ffb7719

    invoke-direct {v4, v14, v15, v2}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/microsoft/onlineid/sts/StsErrorCode;->PPCRL_REQUEST_E_PARTNER_NEED_PIN:Lcom/microsoft/onlineid/sts/StsErrorCode;

    new-instance v2, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v14, "PPCRL_REQUEST_E_DEVICE_DA_INVALID"

    const/16 v15, 0x19

    move-object/from16 v28, v4

    const v4, -0x7ffb77c3

    invoke-direct {v2, v14, v15, v4}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/microsoft/onlineid/sts/StsErrorCode;->PPCRL_REQUEST_E_DEVICE_DA_INVALID:Lcom/microsoft/onlineid/sts/StsErrorCode;

    new-instance v4, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v14, "PPCRL_E_DEVICE_DA_TOKEN_EXPIRED"

    const/16 v15, 0x1a

    move-object/from16 v29, v2

    const v2, -0x7ffb7f97

    invoke-direct {v4, v14, v15, v2}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/microsoft/onlineid/sts/StsErrorCode;->PPCRL_E_DEVICE_DA_TOKEN_EXPIRED:Lcom/microsoft/onlineid/sts/StsErrorCode;

    new-instance v2, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v14, "PP_E_K_ERROR_DB_MEMBER_DOES_NOT_EXIST"

    const/16 v15, 0x1b

    move-object/from16 v30, v4

    const v4, -0x300003eb

    invoke-direct {v2, v14, v15, v4}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_K_ERROR_DB_MEMBER_DOES_NOT_EXIST:Lcom/microsoft/onlineid/sts/StsErrorCode;

    new-instance v4, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v14, "PP_E_K_ERROR_DB_MEMBER_EXISTS"

    const/16 v15, 0x1c

    move-object/from16 v31, v2

    const v2, -0x300003ea

    invoke-direct {v4, v14, v15, v2}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_K_ERROR_DB_MEMBER_EXISTS:Lcom/microsoft/onlineid/sts/StsErrorCode;

    new-instance v2, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v14, "PPCRL_REQUEST_E_BAD_MEMBER_NAME_OR_PASSWORD"

    const/16 v15, 0x1d

    move-object/from16 v32, v4

    const v4, -0x7ffb77df

    invoke-direct {v2, v14, v15, v4}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/microsoft/onlineid/sts/StsErrorCode;->PPCRL_REQUEST_E_BAD_MEMBER_NAME_OR_PASSWORD:Lcom/microsoft/onlineid/sts/StsErrorCode;

    new-instance v4, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v14, "PP_E_NGC_INVALID_CLOUD_PIN"

    const/16 v15, 0x1e

    move-object/from16 v33, v2

    const v2, -0x7ffb5f71

    invoke-direct {v4, v14, v15, v2}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_NGC_INVALID_CLOUD_PIN:Lcom/microsoft/onlineid/sts/StsErrorCode;

    new-instance v2, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v14, "PP_E_NGC_ACCOUNT_LOCKED"

    const/16 v15, 0x1f

    move-object/from16 v34, v4

    const v4, -0x7ffb5f70

    invoke-direct {v2, v14, v15, v4}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_NGC_ACCOUNT_LOCKED:Lcom/microsoft/onlineid/sts/StsErrorCode;

    new-instance v4, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v14, "PP_E_NGC_LOGIN_KEY_NOT_FOUND"

    const/16 v15, 0x20

    move-object/from16 v35, v2

    const v2, -0x7ffb5f78

    invoke-direct {v4, v14, v15, v2}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_NGC_LOGIN_KEY_NOT_FOUND:Lcom/microsoft/onlineid/sts/StsErrorCode;

    new-instance v2, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v14, "Unrecognized"

    const/16 v15, 0x21

    invoke-direct {v2, v14, v15}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/microsoft/onlineid/sts/StsErrorCode;->Unrecognized:Lcom/microsoft/onlineid/sts/StsErrorCode;

    const/16 v14, 0x22

    new-array v14, v14, [Lcom/microsoft/onlineid/sts/StsErrorCode;

    const/4 v15, 0x0

    aput-object v0, v14, v15

    const/4 v0, 0x1

    aput-object v1, v14, v0

    const/4 v0, 0x2

    aput-object v3, v14, v0

    const/4 v0, 0x3

    aput-object v5, v14, v0

    const/4 v0, 0x4

    aput-object v7, v14, v0

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    const/16 v0, 0x8

    aput-object v12, v14, v0

    const/16 v0, 0x9

    aput-object v10, v14, v0

    const/16 v0, 0xa

    aput-object v8, v14, v0

    const/16 v0, 0xb

    aput-object v6, v14, v0

    const/16 v0, 0xc

    aput-object v16, v14, v0

    const/16 v0, 0xd

    aput-object v17, v14, v0

    const/16 v0, 0xe

    aput-object v18, v14, v0

    const/16 v0, 0xf

    aput-object v19, v14, v0

    const/16 v0, 0x10

    aput-object v20, v14, v0

    const/16 v0, 0x11

    aput-object v21, v14, v0

    const/16 v0, 0x12

    aput-object v22, v14, v0

    const/16 v0, 0x13

    aput-object v23, v14, v0

    const/16 v0, 0x14

    aput-object v24, v14, v0

    const/16 v0, 0x15

    aput-object v25, v14, v0

    const/16 v0, 0x16

    aput-object v26, v14, v0

    const/16 v0, 0x17

    aput-object v27, v14, v0

    const/16 v0, 0x18

    aput-object v28, v14, v0

    const/16 v0, 0x19

    aput-object v29, v14, v0

    const/16 v0, 0x1a

    aput-object v30, v14, v0

    const/16 v0, 0x1b

    aput-object v31, v14, v0

    const/16 v0, 0x1c

    aput-object v32, v14, v0

    const/16 v0, 0x1d

    aput-object v33, v14, v0

    const/16 v0, 0x1e

    aput-object v34, v14, v0

    const/16 v0, 0x1f

    aput-object v35, v14, v0

    const/16 v0, 0x20

    aput-object v4, v14, v0

    const/16 v0, 0x21

    aput-object v2, v14, v0

    sput-object v14, Lcom/microsoft/onlineid/sts/StsErrorCode;->$VALUES:[Lcom/microsoft/onlineid/sts/StsErrorCode;

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

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/StsErrorCode;->_code:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/StsErrorCode;->_dcClass:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/StsErrorCode;->_code:Ljava/lang/Integer;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/StsErrorCode;->_dcClass:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/StsErrorCode;->_code:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/microsoft/onlineid/sts/StsErrorCode;->_dcClass:Ljava/lang/String;

    return-void
.end method

.method private static convertDCCode(Ljava/lang/String;)Lcom/microsoft/onlineid/sts/StsErrorCode;
    .registers 6

    const-string v0, "subCode"

    invoke-static {p0, v0}, Lcom/microsoft/onlineid/internal/Strings;->verifyArgumentNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/microsoft/onlineid/sts/StsErrorCode;->values()[Lcom/microsoft/onlineid/sts/StsErrorCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/microsoft/onlineid/sts/StsErrorCode;->_dcClass:Ljava/lang/String;

    if-eqz v4, :cond_0

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static convertHR(I)Lcom/microsoft/onlineid/sts/StsErrorCode;
    .registers 7

    invoke-static {}, Lcom/microsoft/onlineid/sts/StsErrorCode;->values()[Lcom/microsoft/onlineid/sts/StsErrorCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/microsoft/onlineid/sts/StsErrorCode;->_code:Ljava/lang/Integer;

    if-eqz v4, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static convertServerError(Lcom/microsoft/onlineid/sts/IntegerCodeServerError;)Lcom/microsoft/onlineid/sts/StsErrorCode;
    .registers 2

    const-string v0, "error"

    invoke-static {p0, v0}, Lcom/microsoft/onlineid/internal/Objects;->verifyArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/IntegerCodeServerError;->getSubError()I

    move-result v0

    invoke-static {v0}, Lcom/microsoft/onlineid/sts/StsErrorCode;->convertHR(I)Lcom/microsoft/onlineid/sts/StsErrorCode;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/IntegerCodeServerError;->getError()I

    move-result p0

    invoke-static {p0}, Lcom/microsoft/onlineid/sts/StsErrorCode;->convertHR(I)Lcom/microsoft/onlineid/sts/StsErrorCode;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    sget-object v0, Lcom/microsoft/onlineid/sts/StsErrorCode;->Unrecognized:Lcom/microsoft/onlineid/sts/StsErrorCode;

    :cond_1
    return-object v0
.end method

.method public static convertServerError(Lcom/microsoft/onlineid/sts/StringCodeServerError;)Lcom/microsoft/onlineid/sts/StsErrorCode;
    .registers 2

    const-string v0, "error"

    invoke-static {p0, v0}, Lcom/microsoft/onlineid/internal/Objects;->verifyArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/StringCodeServerError;->getSubError()I

    move-result v0

    invoke-static {v0}, Lcom/microsoft/onlineid/sts/StsErrorCode;->convertHR(I)Lcom/microsoft/onlineid/sts/StsErrorCode;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/StringCodeServerError;->getError()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/microsoft/onlineid/sts/StsErrorCode;->convertDCCode(Ljava/lang/String;)Lcom/microsoft/onlineid/sts/StsErrorCode;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    sget-object v0, Lcom/microsoft/onlineid/sts/StsErrorCode;->Unrecognized:Lcom/microsoft/onlineid/sts/StsErrorCode;

    :cond_1
    return-object v0
.end method

.method public static getFriendlyHRDescription(I)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lcom/microsoft/onlineid/sts/StsErrorCode;->convertHR(I)Lcom/microsoft/onlineid/sts/StsErrorCode;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (0x"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "0x"

    .line 1
    invoke-static {v0}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/onlineid/sts/StsErrorCode;
    .registers 2

    const-class v0, Lcom/microsoft/onlineid/sts/StsErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/onlineid/sts/StsErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/onlineid/sts/StsErrorCode;
    .registers 1

    sget-object v0, Lcom/microsoft/onlineid/sts/StsErrorCode;->$VALUES:[Lcom/microsoft/onlineid/sts/StsErrorCode;

    invoke-virtual {v0}, [Lcom/microsoft/onlineid/sts/StsErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/onlineid/sts/StsErrorCode;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/Integer;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/StsErrorCode;->_code:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDCClass()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/StsErrorCode;->_dcClass:Ljava/lang/String;

    return-object v0
.end method
