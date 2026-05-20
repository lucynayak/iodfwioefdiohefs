.class public Lcom/microsoft/onlineid/sts/request/ServiceRequest;
.super Lcom/microsoft/onlineid/sts/request/AbstractTokenRequest;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/onlineid/sts/request/ISignableRequest;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/onlineid/sts/request/AbstractTokenRequest<",
        "Lcom/microsoft/onlineid/sts/response/ServiceResponse;",
        ">;",
        "Lcom/microsoft/onlineid/sts/request/ISignableRequest;"
    }
.end annotation


# instance fields
.field private _clientAppUri:Ljava/lang/String;

.field private _deviceDA:Lcom/microsoft/onlineid/sts/DAToken;

.field private _flowToken:Ljava/lang/String;

.field private _parentOfSignatureNode:Lorg/w3c/dom/Element;

.field private _requestFlights:Z

.field public _requestedScopes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/microsoft/onlineid/ISecurityScope;",
            ">;"
        }
    .end annotation
.end field

.field private _signer:Lcom/microsoft/onlineid/sts/XmlSigner;

.field private _telemetry:Ljava/lang/String;

.field private _userDA:Lcom/microsoft/onlineid/sts/DAToken;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/microsoft/onlineid/sts/request/AbstractTokenRequest;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->_requestFlights:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->_requestedScopes:Ljava/util/List;

    sget-object v1, Lcom/microsoft/onlineid/sts/DAToken;->Scope:Lcom/microsoft/onlineid/ISecurityScope;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public addRequest(Lcom/microsoft/onlineid/ISecurityScope;)V
    .registers 5

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->_requestedScopes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/onlineid/internal/Assertion;->check(Z)V

    sget-object v0, Lcom/microsoft/onlineid/sts/DAToken;->Scope:Lcom/microsoft/onlineid/ISecurityScope;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/Assertion;->check(Z)V

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->_requestedScopes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->_requestedScopes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot request a null scope."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public buildAuthInfo(Lorg/w3c/dom/Element;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/microsoft/onlineid/sts/request/AbstractTokenRequest;->buildAuthInfo(Lorg/w3c/dom/Element;)V

    const-string v0, "ps:InlineUX"

    const-string v1, "Android"

    invoke-static {p1, v0, v1}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    const-string v0, "ps:ConsentFlags"

    const-string v1, "1"

    invoke-static {p1, v0, v1}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    const-string v0, "ps:IsConnected"

    invoke-static {p1, v0, v1}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    iget-boolean v0, p0, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->_requestFlights:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/microsoft/onlineid/internal/configuration/Experiment;->getExperimentList()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ps:Experiments"

    invoke-static {p1, v1, v0}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    :cond_0
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->_flowToken:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "ps:InlineFT"

    invoke-static {p1, v1, v0}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    :cond_1
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->_clientAppUri:Ljava/lang/String;

    const-string v1, "ps:ClientAppURI"

    invoke-static {p1, v1, v0}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->_telemetry:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->_telemetry:Ljava/lang/String;

    const-string v1, "ps:Telemetry"

    invoke-static {p1, v1, v0}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    :cond_2
    return-void
.end method

.method public buildSecurityNode(Lorg/w3c/dom/Element;)V
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->_userDA:Lcom/microsoft/onlineid/sts/DAToken;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/DAToken;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/onlineid/sts/request/Requests;->xmlStringToElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lorg/w3c/dom/Document;->importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->_deviceDA:Lcom/microsoft/onlineid/sts/DAToken;

    invoke-virtual {p0, p1, v0}, Lcom/microsoft/onlineid/sts/request/AbstractSoapRequest;->appendDeviceDAToken(Lorg/w3c/dom/Element;Lcom/microsoft/onlineid/sts/DAToken;)V

    const-string v0, "wssc:DerivedKeyToken"

    invoke-static {p1, v0}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "wsu:Id"

    const-string v2, "SignKey"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Algorithm"

    const-string v2, "urn:liveid:SP800-108CTR-HMAC-SHA256"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "wsse:RequestedTokenReference"

    invoke-static {v0, v1}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    const-string v2, "wsse:KeyIdentifier"

    invoke-static {v1, v2}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    const-string v3, "ValueType"

    const-string v4, "http://docs.oasis-open.org/wss/2004/XX/oasis-2004XX-wss-saml-token-profile-1.0#SAMLAssertionID"

    invoke-interface {v2, v3, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "wsse:Reference"

    invoke-static {v1, v2}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    const-string v2, "URI"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->_signer:Lcom/microsoft/onlineid/sts/XmlSigner;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/XmlSigner;->getEncodedNonce()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wssc:Nonce"

    invoke-static {v0, v2, v1}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/sts/request/AbstractSoapRequest;->appendTimestamp(Lorg/w3c/dom/Element;)V

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->_parentOfSignatureNode:Lorg/w3c/dom/Element;

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/microsoft/onlineid/sts/exception/CorruptedUserDATokenException;

    const-string v1, "Unable to parse user DAToken blob into XML, possibly corrupt."

    invoke-direct {v0, v1, p1}, Lcom/microsoft/onlineid/sts/exception/CorruptedUserDATokenException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getEndpoint()Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;
    .registers 2

    sget-object v0, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->Sts:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    return-object v0
.end method

.method public getParentOfSignatureNode()Lorg/w3c/dom/Element;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->_parentOfSignatureNode:Lorg/w3c/dom/Element;

    return-object v0
.end method

.method public getRequestedScopes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/onlineid/ISecurityScope;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->_requestedScopes:Ljava/util/List;

    return-object v0
.end method

.method public getSigningSessionKey()[B
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->_userDA:Lcom/microsoft/onlineid/sts/DAToken;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/DAToken;->getSessionKey()[B

    move-result-object v0

    return-object v0
.end method

.method public getXmlSigner()Lcom/microsoft/onlineid/sts/XmlSigner;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->_signer:Lcom/microsoft/onlineid/sts/XmlSigner;

    return-object v0
.end method

.method public bridge synthetic instantiateResponse()Lcom/microsoft/onlineid/sts/response/AbstractStsResponse;
    .registers 2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->instantiateResponse()Lcom/microsoft/onlineid/sts/response/ServiceResponse;

    move-result-object v0

    return-object v0
.end method

.method public instantiateResponse()Lcom/microsoft/onlineid/sts/response/ServiceResponse;
    .registers 5

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->getRequestedScopes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/onlineid/internal/Assertion;->check(Z)V

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->getRequestedScopes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/microsoft/onlineid/ISecurityScope;

    sget-object v1, Lcom/microsoft/onlineid/sts/DAToken;->Scope:Lcom/microsoft/onlineid/ISecurityScope;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_2
    new-instance v0, Lcom/microsoft/onlineid/sts/response/ServiceResponse;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->getSigningSessionKey()[B

    move-result-object v1

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;->getClockSkewManager()Lcom/microsoft/onlineid/sts/ClockSkewManager;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/onlineid/sts/response/ServiceResponse;-><init>([BLcom/microsoft/onlineid/ISecurityScope;Lcom/microsoft/onlineid/sts/ClockSkewManager;)V

    return-object v0
.end method

.method public setClientAppUri(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->_clientAppUri:Ljava/lang/String;

    return-void
.end method

.method public setDeviceDA(Lcom/microsoft/onlineid/sts/DAToken;)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->_deviceDA:Lcom/microsoft/onlineid/sts/DAToken;

    return-void
.end method

.method public setFlowToken(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->_flowToken:Ljava/lang/String;

    return-void
.end method

.method public setRequestFlights(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->_requestFlights:Z

    return-void
.end method

.method public setTelemetry(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->_telemetry:Ljava/lang/String;

    return-void
.end method

.method public setUserDA(Lcom/microsoft/onlineid/sts/DAToken;)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->_userDA:Lcom/microsoft/onlineid/sts/DAToken;

    return-void
.end method

.method public setXmlSigner(Lcom/microsoft/onlineid/sts/XmlSigner;)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->_signer:Lcom/microsoft/onlineid/sts/XmlSigner;

    return-void
.end method
