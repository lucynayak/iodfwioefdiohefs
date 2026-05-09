.class synthetic Lcom/microsoft/onlineid/sts/StsError$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/sts/StsError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$microsoft$onlineid$sts$StsErrorCode:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/microsoft/onlineid/sts/StsErrorCode;->values()[Lcom/microsoft/onlineid/sts/StsErrorCode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/microsoft/onlineid/sts/StsError$1;->$SwitchMap$com$microsoft$onlineid$sts$StsErrorCode:[I

    :try_start_0
    sget-object v1, Lcom/microsoft/onlineid/sts/StsErrorCode;->PPCRL_REQUEST_E_DEVICE_DA_INVALID:Lcom/microsoft/onlineid/sts/StsErrorCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/microsoft/onlineid/sts/StsError$1;->$SwitchMap$com$microsoft$onlineid$sts$StsErrorCode:[I

    sget-object v1, Lcom/microsoft/onlineid/sts/StsErrorCode;->PPCRL_E_DEVICE_DA_TOKEN_EXPIRED:Lcom/microsoft/onlineid/sts/StsErrorCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/microsoft/onlineid/sts/StsError$1;->$SwitchMap$com$microsoft$onlineid$sts$StsErrorCode:[I

    sget-object v1, Lcom/microsoft/onlineid/sts/StsErrorCode;->PPCRL_REQUEST_E_FORCE_SIGNIN:Lcom/microsoft/onlineid/sts/StsErrorCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/microsoft/onlineid/sts/StsError$1;->$SwitchMap$com$microsoft$onlineid$sts$StsErrorCode:[I

    sget-object v1, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_FORCESIGNIN:Lcom/microsoft/onlineid/sts/StsErrorCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/microsoft/onlineid/sts/StsError$1;->$SwitchMap$com$microsoft$onlineid$sts$StsErrorCode:[I

    sget-object v1, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_SA_CANT_DENY_APPROVED_SESSION:Lcom/microsoft/onlineid/sts/StsErrorCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/microsoft/onlineid/sts/StsError$1;->$SwitchMap$com$microsoft$onlineid$sts$StsErrorCode:[I

    sget-object v1, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_SA_CANT_APPROVE_DENIED_SESSION:Lcom/microsoft/onlineid/sts/StsErrorCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/microsoft/onlineid/sts/StsError$1;->$SwitchMap$com$microsoft$onlineid$sts$StsErrorCode:[I

    sget-object v1, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_SA_INVALID_STATE_TRANSITION:Lcom/microsoft/onlineid/sts/StsErrorCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/microsoft/onlineid/sts/StsError$1;->$SwitchMap$com$microsoft$onlineid$sts$StsErrorCode:[I

    sget-object v1, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_SA_INVALID_OPERATION:Lcom/microsoft/onlineid/sts/StsErrorCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lcom/microsoft/onlineid/sts/StsError$1;->$SwitchMap$com$microsoft$onlineid$sts$StsErrorCode:[I

    sget-object v1, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_TOTP_AUTHENTICATOR_ID_INVALID:Lcom/microsoft/onlineid/sts/StsErrorCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    return-void
.end method
