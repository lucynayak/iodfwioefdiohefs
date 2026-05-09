.class public Lcom/microsoft/onlineid/sts/StsError;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final _code:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field private final _logMessage:Ljava/lang/String;

.field private final _originalErrorMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/microsoft/onlineid/sts/IntegerCodeServerError;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "error"

    invoke-static {p1, v0}, Lcom/microsoft/onlineid/internal/Objects;->verifyArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/microsoft/onlineid/sts/StsErrorCode;->convertServerError(Lcom/microsoft/onlineid/sts/IntegerCodeServerError;)Lcom/microsoft/onlineid/sts/StsErrorCode;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/StsError;->_code:Lcom/microsoft/onlineid/sts/StsErrorCode;

    invoke-virtual {p1}, Lcom/microsoft/onlineid/sts/IntegerCodeServerError;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/StsError;->_originalErrorMessage:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    const-string p1, "%s error caused by server error:\n%s"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/StsError;->_logMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/onlineid/sts/StringCodeServerError;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "error"

    invoke-static {p1, v0}, Lcom/microsoft/onlineid/internal/Objects;->verifyArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/microsoft/onlineid/sts/StsErrorCode;->convertServerError(Lcom/microsoft/onlineid/sts/StringCodeServerError;)Lcom/microsoft/onlineid/sts/StsErrorCode;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/StsError;->_code:Lcom/microsoft/onlineid/sts/StsErrorCode;

    invoke-virtual {p1}, Lcom/microsoft/onlineid/sts/StringCodeServerError;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/StsError;->_originalErrorMessage:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    const-string p1, "%s error caused by server error:\n%s"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/StsError;->_logMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/onlineid/sts/StsErrorCode;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "code"

    invoke-static {p1, v0}, Lcom/microsoft/onlineid/internal/Objects;->verifyArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/StsError;->_code:Lcom/microsoft/onlineid/sts/StsErrorCode;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/StsError;->_originalErrorMessage:Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "%s error."

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/StsError;->_logMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/microsoft/onlineid/sts/StsError;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    check-cast p1, Lcom/microsoft/onlineid/sts/StsError;

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/StsError;->_code:Lcom/microsoft/onlineid/sts/StsErrorCode;

    iget-object p1, p1, Lcom/microsoft/onlineid/sts/StsError;->_code:Lcom/microsoft/onlineid/sts/StsErrorCode;

    :goto_0
    invoke-static {v0, p1}, Lcom/microsoft/onlineid/internal/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    instance-of v0, p1, Lcom/microsoft/onlineid/sts/StsErrorCode;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    check-cast p1, Lcom/microsoft/onlineid/sts/StsErrorCode;

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/StsError;->_code:Lcom/microsoft/onlineid/sts/StsErrorCode;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public getCode()Lcom/microsoft/onlineid/sts/StsErrorCode;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/StsError;->_code:Lcom/microsoft/onlineid/sts/StsErrorCode;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/StsError;->_logMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalErrorMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/StsError;->_originalErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/StsError;->_code:Lcom/microsoft/onlineid/sts/StsErrorCode;

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isInvalidSessionError()Z
    .locals 2

    sget-object v0, Lcom/microsoft/onlineid/sts/StsError$1;->$SwitchMap$com$microsoft$onlineid$sts$StsErrorCode:[I

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/StsError;->_code:Lcom/microsoft/onlineid/sts/StsErrorCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isNgcKeyNotFoundError()Z
    .locals 2

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/StsError;->_code:Lcom/microsoft/onlineid/sts/StsErrorCode;

    sget-object v1, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_NGC_LOGIN_KEY_NOT_FOUND:Lcom/microsoft/onlineid/sts/StsErrorCode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isRetryableDeviceDAErrorForDeviceAuth()Z
    .locals 3

    sget-object v0, Lcom/microsoft/onlineid/sts/StsError$1;->$SwitchMap$com$microsoft$onlineid$sts$StsErrorCode:[I

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/StsError;->_code:Lcom/microsoft/onlineid/sts/StsErrorCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method

.method public isRetryableDeviceDAErrorForUserAuth()Z
    .locals 3

    sget-object v0, Lcom/microsoft/onlineid/sts/StsError$1;->$SwitchMap$com$microsoft$onlineid$sts$StsErrorCode:[I

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/StsError;->_code:Lcom/microsoft/onlineid/sts/StsErrorCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method
