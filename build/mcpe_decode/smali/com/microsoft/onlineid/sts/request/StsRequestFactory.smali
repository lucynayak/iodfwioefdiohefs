.class public Lcom/microsoft/onlineid/sts/request/StsRequestFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final _applicationContext:Landroid/content/Context;

.field private final _clockSkewManager:Lcom/microsoft/onlineid/sts/ClockSkewManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/request/StsRequestFactory;->_applicationContext:Landroid/content/Context;

    new-instance v0, Lcom/microsoft/onlineid/sts/ClockSkewManager;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/sts/ClockSkewManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/request/StsRequestFactory;->_clockSkewManager:Lcom/microsoft/onlineid/sts/ClockSkewManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/microsoft/onlineid/sts/ClockSkewManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/request/StsRequestFactory;->_applicationContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/microsoft/onlineid/sts/request/StsRequestFactory;->_clockSkewManager:Lcom/microsoft/onlineid/sts/ClockSkewManager;

    return-void
.end method

.method private buildTelemetry()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/request/StsRequestFactory;->_applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/request/StsRequestFactory;->_applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const-string v1, "PackageMarket="

    .line 1
    invoke-static {v1, v0}, La/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createDeviceAuthRequest(Lcom/microsoft/onlineid/sts/DeviceIdentity;)Lcom/microsoft/onlineid/sts/request/DeviceAuthRequest;
    .locals 1

    new-instance v0, Lcom/microsoft/onlineid/sts/request/DeviceAuthRequest;

    invoke-direct {v0}, Lcom/microsoft/onlineid/sts/request/DeviceAuthRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/sts/request/StsRequestFactory;->initializeRequest(Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;)V

    invoke-virtual {p1}, Lcom/microsoft/onlineid/sts/DeviceIdentity;->getCredentials()Lcom/microsoft/onlineid/sts/DeviceCredentials;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/sts/request/DeviceAuthRequest;->setDeviceCredentials(Lcom/microsoft/onlineid/sts/DeviceCredentials;)V

    return-object v0
.end method

.method public createDeviceProvisionRequest(Lcom/microsoft/onlineid/sts/DeviceCredentials;)Lcom/microsoft/onlineid/sts/request/DeviceProvisionRequest;
    .locals 1

    new-instance v0, Lcom/microsoft/onlineid/sts/request/DeviceProvisionRequest;

    invoke-direct {v0}, Lcom/microsoft/onlineid/sts/request/DeviceProvisionRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/sts/request/StsRequestFactory;->initializeRequest(Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;)V

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/sts/request/DeviceProvisionRequest;->setDeviceCredentials(Lcom/microsoft/onlineid/sts/DeviceCredentials;)V

    return-object v0
.end method

.method public createServiceRequest(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;Lcom/microsoft/onlineid/sts/DeviceIdentity;Lcom/microsoft/onlineid/ISecurityScope;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/sts/request/ServiceRequest;
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/onlineid/sts/request/StsRequestFactory;->createServiceRequest(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;Lcom/microsoft/onlineid/sts/DeviceIdentity;Lcom/microsoft/onlineid/ISecurityScope;Ljava/lang/String;Ljava/lang/String;Z)Lcom/microsoft/onlineid/sts/request/ServiceRequest;

    move-result-object p1

    return-object p1
.end method

.method public createServiceRequest(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;Lcom/microsoft/onlineid/sts/DeviceIdentity;Lcom/microsoft/onlineid/ISecurityScope;Ljava/lang/String;Ljava/lang/String;Z)Lcom/microsoft/onlineid/sts/request/ServiceRequest;
    .locals 1

    const-string v0, "userAccount"

    invoke-static {p1, v0}, Lcom/microsoft/onlineid/internal/Objects;->verifyArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceIdentity"

    invoke-static {p2, v0}, Lcom/microsoft/onlineid/internal/Objects;->verifyArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p3, v0}, Lcom/microsoft/onlineid/internal/Objects;->verifyArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/microsoft/onlineid/sts/request/ServiceRequest;

    invoke-direct {v0}, Lcom/microsoft/onlineid/sts/request/ServiceRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/sts/request/StsRequestFactory;->initializeRequest(Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;)V

    invoke-virtual {v0, p6}, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->setRequestFlights(Z)V

    invoke-virtual {p1}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->getDAToken()Lcom/microsoft/onlineid/sts/DAToken;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->setUserDA(Lcom/microsoft/onlineid/sts/DAToken;)V

    invoke-virtual {p2}, Lcom/microsoft/onlineid/sts/DeviceIdentity;->getDAToken()Lcom/microsoft/onlineid/sts/DAToken;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->setDeviceDA(Lcom/microsoft/onlineid/sts/DAToken;)V

    invoke-virtual {v0, p3}, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->addRequest(Lcom/microsoft/onlineid/ISecurityScope;)V

    invoke-virtual {v0, p5}, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->setFlowToken(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/microsoft/onlineid/sts/request/StsRequestFactory;->_applicationContext:Landroid/content/Context;

    invoke-static {p1, p4}, Lcom/microsoft/onlineid/internal/Applications;->buildClientAppUri(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->setClientAppUri(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/microsoft/onlineid/sts/request/StsRequestFactory;->buildTelemetry()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->setTelemetry(Ljava/lang/String;)V

    return-object v0
.end method

.method public createServiceRequest(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;Lcom/microsoft/onlineid/sts/DeviceIdentity;Ljava/lang/String;Lcom/microsoft/onlineid/ISecurityScope;)Lcom/microsoft/onlineid/sts/request/ServiceRequest;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/onlineid/sts/request/StsRequestFactory;->createServiceRequest(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;Lcom/microsoft/onlineid/sts/DeviceIdentity;Lcom/microsoft/onlineid/ISecurityScope;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/sts/request/ServiceRequest;

    move-result-object p1

    return-object p1
.end method

.method public getConfig()Lcom/microsoft/onlineid/sts/ServerConfig;
    .locals 2

    new-instance v0, Lcom/microsoft/onlineid/sts/ServerConfig;

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/request/StsRequestFactory;->_applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/sts/ServerConfig;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public initializeRequest(Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/onlineid/sts/request/AbstractStsRequest<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/request/StsRequestFactory;->getConfig()Lcom/microsoft/onlineid/sts/ServerConfig;

    move-result-object v0

    invoke-virtual {p1}, Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;->getEndpoint()Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/microsoft/onlineid/internal/Assertion;->check(Z)V

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/sts/ServerConfig;->getUrl(Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;->setDestination(Ljava/net/URL;)V

    new-instance v0, Lcom/microsoft/onlineid/internal/transport/TransportFactory;

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/request/StsRequestFactory;->_applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/internal/transport/TransportFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;->setTransportFactory(Lcom/microsoft/onlineid/internal/transport/TransportFactory;)V

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/request/StsRequestFactory;->_clockSkewManager:Lcom/microsoft/onlineid/sts/ClockSkewManager;

    invoke-virtual {p1, v0}, Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;->setClockSkewManager(Lcom/microsoft/onlineid/sts/ClockSkewManager;)V

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/request/StsRequestFactory;->_applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/PackageInfoHelper;->getCurrentAppVersionCode(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;->setMsaAppVersionCode(I)V

    instance-of v0, p1, Lcom/microsoft/onlineid/sts/request/ISignableRequest;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/microsoft/onlineid/sts/request/ISignableRequest;

    new-instance v0, Lcom/microsoft/onlineid/sts/XmlSigner;

    invoke-direct {v0}, Lcom/microsoft/onlineid/sts/XmlSigner;-><init>()V

    invoke-interface {p1, v0}, Lcom/microsoft/onlineid/sts/request/ISignableRequest;->setXmlSigner(Lcom/microsoft/onlineid/sts/XmlSigner;)V

    :cond_1
    return-void
.end method
