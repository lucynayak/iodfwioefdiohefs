.class public Lcom/microsoft/onlineid/sts/DeviceIdentityManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MaxProvisionAttemptsPerCall:I = 0x3


# instance fields
.field private final _applicationContext:Landroid/content/Context;

.field private _credentialGenerator:Lcom/microsoft/onlineid/sts/DeviceCredentialGenerator;

.field private _requestFactory:Lcom/microsoft/onlineid/sts/request/StsRequestFactory;

.field private final _storage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/DeviceIdentityManager;->_applicationContext:Landroid/content/Context;

    new-instance v0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/DeviceIdentityManager;->_storage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/DeviceIdentityManager;->_requestFactory:Lcom/microsoft/onlineid/sts/request/StsRequestFactory;

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/DeviceIdentityManager;->_credentialGenerator:Lcom/microsoft/onlineid/sts/DeviceCredentialGenerator;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/onlineid/internal/storage/TypedStorage;Lcom/microsoft/onlineid/sts/DeviceCredentialGenerator;Lcom/microsoft/onlineid/sts/request/StsRequestFactory;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/DeviceIdentityManager;->_applicationContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/DeviceIdentityManager;->_storage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    iput-object p2, p0, Lcom/microsoft/onlineid/sts/DeviceIdentityManager;->_credentialGenerator:Lcom/microsoft/onlineid/sts/DeviceCredentialGenerator;

    iput-object p3, p0, Lcom/microsoft/onlineid/sts/DeviceIdentityManager;->_requestFactory:Lcom/microsoft/onlineid/sts/request/StsRequestFactory;

    return-void
.end method

.method private checkProvisionResponse(ILcom/microsoft/onlineid/sts/response/DeviceProvisionResponse;)Z
    .registers 6

    invoke-virtual {p2}, Lcom/microsoft/onlineid/sts/response/AbstractStsResponse;->succeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p2}, Lcom/microsoft/onlineid/sts/response/DeviceProvisionResponse;->getError()Lcom/microsoft/onlineid/sts/StsError;

    move-result-object p2

    sget-object v0, Lcom/microsoft/onlineid/sts/DeviceIdentityManager$1;->$SwitchMap$com$microsoft$onlineid$sts$StsErrorCode:[I

    invoke-virtual {p2}, Lcom/microsoft/onlineid/sts/StsError;->getCode()Lcom/microsoft/onlineid/sts/StsErrorCode;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eq v0, v1, :cond_2

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/microsoft/onlineid/sts/exception/StsException;

    const-string v0, "Unable to provision device"

    invoke-direct {p1, v0, p2}, Lcom/microsoft/onlineid/sts/exception/StsException;-><init>(Ljava/lang/String;Lcom/microsoft/onlineid/sts/StsError;)V

    throw p1

    :cond_2
    :goto_0
    if-eq p1, v2, :cond_3

    const-string p1, "Device provision request failed due to invalid credentials. Trying again."

    invoke-static {p1}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_3
    const-string p1, "provisionNewDevice() exceeded allowable number of retry attempts."

    invoke-static {p1}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;)V

    new-instance p2, Lcom/microsoft/onlineid/sts/exception/RequestThrottledException;

    invoke-direct {p2, p1}, Lcom/microsoft/onlineid/sts/exception/RequestThrottledException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private getCredentialGenerator()Lcom/microsoft/onlineid/sts/DeviceCredentialGenerator;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/DeviceIdentityManager;->_credentialGenerator:Lcom/microsoft/onlineid/sts/DeviceCredentialGenerator;

    if-nez v0, :cond_0

    new-instance v0, Lcom/microsoft/onlineid/sts/DeviceCredentialGenerator;

    invoke-direct {v0}, Lcom/microsoft/onlineid/sts/DeviceCredentialGenerator;-><init>()V

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/DeviceIdentityManager;->_credentialGenerator:Lcom/microsoft/onlineid/sts/DeviceCredentialGenerator;

    :cond_0
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/DeviceIdentityManager;->_credentialGenerator:Lcom/microsoft/onlineid/sts/DeviceCredentialGenerator;

    return-object v0
.end method

.method private getRequestFactory()Lcom/microsoft/onlineid/sts/request/StsRequestFactory;
    .registers 3

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/DeviceIdentityManager;->_requestFactory:Lcom/microsoft/onlineid/sts/request/StsRequestFactory;

    if-nez v0, :cond_0

    new-instance v0, Lcom/microsoft/onlineid/sts/request/StsRequestFactory;

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/DeviceIdentityManager;->_applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/sts/request/StsRequestFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/DeviceIdentityManager;->_requestFactory:Lcom/microsoft/onlineid/sts/request/StsRequestFactory;

    :cond_0
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/DeviceIdentityManager;->_requestFactory:Lcom/microsoft/onlineid/sts/request/StsRequestFactory;

    return-object v0
.end method

.method private provisionNewDevice()Lcom/microsoft/onlineid/sts/DeviceIdentity;
    .registers 7

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/DeviceIdentityManager;->_storage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->deleteDeviceIdentity()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    const/4 v3, 0x3

    if-gt v0, v3, :cond_2

    invoke-direct {p0}, Lcom/microsoft/onlineid/sts/DeviceIdentityManager;->getCredentialGenerator()Lcom/microsoft/onlineid/sts/DeviceCredentialGenerator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/onlineid/sts/DeviceCredentialGenerator;->generate()Lcom/microsoft/onlineid/sts/DeviceCredentials;

    move-result-object v3

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/microsoft/onlineid/sts/DeviceIdentityManager;->getRequestFactory()Lcom/microsoft/onlineid/sts/request/StsRequestFactory;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/microsoft/onlineid/sts/request/StsRequestFactory;->createDeviceProvisionRequest(Lcom/microsoft/onlineid/sts/DeviceCredentials;)Lcom/microsoft/onlineid/sts/request/DeviceProvisionRequest;

    move-result-object v2

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v3}, Lcom/microsoft/onlineid/sts/request/DeviceProvisionRequest;->setDeviceCredentials(Lcom/microsoft/onlineid/sts/DeviceCredentials;)V

    :goto_1
    invoke-virtual {v2}, Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;->send()Lcom/microsoft/onlineid/sts/response/AbstractStsResponse;

    move-result-object v4

    check-cast v4, Lcom/microsoft/onlineid/sts/response/DeviceProvisionResponse;

    invoke-direct {p0, v0, v4}, Lcom/microsoft/onlineid/sts/DeviceIdentityManager;->checkProvisionResponse(ILcom/microsoft/onlineid/sts/response/DeviceProvisionResponse;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v0, Lcom/microsoft/onlineid/sts/DeviceIdentity;

    invoke-virtual {v4}, Lcom/microsoft/onlineid/sts/response/DeviceProvisionResponse;->getPuid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v3, v2, v1}, Lcom/microsoft/onlineid/sts/DeviceIdentity;-><init>(Lcom/microsoft/onlineid/sts/DeviceCredentials;Ljava/lang/String;Lcom/microsoft/onlineid/sts/DAToken;)V

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/DeviceIdentityManager;->_storage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v1, v0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->writeDeviceIdentity(Lcom/microsoft/onlineid/sts/DeviceIdentity;)V

    move-object v1, v0

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-object v1
.end method


# virtual methods
.method public getDeviceIdentity(Z)Lcom/microsoft/onlineid/sts/DeviceIdentity;
    .registers 5

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/DeviceIdentityManager;->_storage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->readDeviceIdentity()Lcom/microsoft/onlineid/sts/DeviceIdentity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/DeviceIdentity;->getDAToken()Lcom/microsoft/onlineid/sts/DAToken;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string p1, "Failed to authenticate device"

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/microsoft/onlineid/sts/DeviceIdentityManager;->getRequestFactory()Lcom/microsoft/onlineid/sts/request/StsRequestFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/microsoft/onlineid/sts/request/StsRequestFactory;->createDeviceAuthRequest(Lcom/microsoft/onlineid/sts/DeviceIdentity;)Lcom/microsoft/onlineid/sts/request/DeviceAuthRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;->send()Lcom/microsoft/onlineid/sts/response/AbstractStsResponse;

    move-result-object v1

    check-cast v1, Lcom/microsoft/onlineid/sts/response/DeviceAuthResponse;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/response/AbstractStsResponse;->succeeded()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/response/DeviceAuthResponse;->getDAToken()Lcom/microsoft/onlineid/sts/DAToken;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/sts/DeviceIdentity;->setDAToken(Lcom/microsoft/onlineid/sts/DAToken;)V

    iget-object p1, p0, Lcom/microsoft/onlineid/sts/DeviceIdentityManager;->_storage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {p1, v0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->writeDeviceIdentity(Lcom/microsoft/onlineid/sts/DeviceIdentity;)V

    return-object v0

    :cond_1
    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/response/DeviceAuthResponse;->getError()Lcom/microsoft/onlineid/sts/StsError;

    move-result-object v0

    sget-object v1, Lcom/microsoft/onlineid/sts/DeviceIdentityManager$1;->$SwitchMap$com$microsoft$onlineid$sts$StsErrorCode:[I

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/StsError;->getCode()Lcom/microsoft/onlineid/sts/StsErrorCode;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/microsoft/onlineid/sts/exception/StsException;

    invoke-direct {v1, p1, v0}, Lcom/microsoft/onlineid/sts/exception/StsException;-><init>(Ljava/lang/String;Lcom/microsoft/onlineid/sts/StsError;)V

    throw v1

    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/microsoft/onlineid/sts/DeviceIdentityManager;->provisionNewDevice()Lcom/microsoft/onlineid/sts/DeviceIdentity;

    move-result-object v0

    invoke-direct {p0}, Lcom/microsoft/onlineid/sts/DeviceIdentityManager;->getRequestFactory()Lcom/microsoft/onlineid/sts/request/StsRequestFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/microsoft/onlineid/sts/request/StsRequestFactory;->createDeviceAuthRequest(Lcom/microsoft/onlineid/sts/DeviceIdentity;)Lcom/microsoft/onlineid/sts/request/DeviceAuthRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;->send()Lcom/microsoft/onlineid/sts/response/AbstractStsResponse;

    move-result-object v1

    check-cast v1, Lcom/microsoft/onlineid/sts/response/DeviceAuthResponse;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/response/AbstractStsResponse;->succeeded()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/microsoft/onlineid/sts/exception/StsException;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/response/DeviceAuthResponse;->getError()Lcom/microsoft/onlineid/sts/StsError;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/microsoft/onlineid/sts/exception/StsException;-><init>(Ljava/lang/String;Lcom/microsoft/onlineid/sts/StsError;)V

    throw v0
.end method
