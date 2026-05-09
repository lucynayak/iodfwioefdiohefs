.class synthetic Lcom/microsoft/onlineid/sts/DeviceIdentityManager$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/sts/DeviceIdentityManager;
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

    sput-object v0, Lcom/microsoft/onlineid/sts/DeviceIdentityManager$1;->$SwitchMap$com$microsoft$onlineid$sts$StsErrorCode:[I

    :try_start_0
    sget-object v1, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_K_ERROR_DB_MEMBER_DOES_NOT_EXIST:Lcom/microsoft/onlineid/sts/StsErrorCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/microsoft/onlineid/sts/DeviceIdentityManager$1;->$SwitchMap$com$microsoft$onlineid$sts$StsErrorCode:[I

    sget-object v1, Lcom/microsoft/onlineid/sts/StsErrorCode;->PPCRL_REQUEST_E_BAD_MEMBER_NAME_OR_PASSWORD:Lcom/microsoft/onlineid/sts/StsErrorCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/microsoft/onlineid/sts/DeviceIdentityManager$1;->$SwitchMap$com$microsoft$onlineid$sts$StsErrorCode:[I

    sget-object v1, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_K_ERROR_DB_MEMBER_EXISTS:Lcom/microsoft/onlineid/sts/StsErrorCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
