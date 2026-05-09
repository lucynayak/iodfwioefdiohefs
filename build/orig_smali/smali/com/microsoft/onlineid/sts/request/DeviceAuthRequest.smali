.class public Lcom/microsoft/onlineid/sts/request/DeviceAuthRequest;
.super Lcom/microsoft/onlineid/sts/request/AbstractTokenRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/onlineid/sts/request/AbstractTokenRequest<",
        "Lcom/microsoft/onlineid/sts/response/DeviceAuthResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private _credentials:Lcom/microsoft/onlineid/sts/DeviceCredentials;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/onlineid/sts/request/AbstractTokenRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public buildSecurityNode(Lorg/w3c/dom/Element;)V
    .locals 3

    const-string v0, "wsse:UsernameToken"

    invoke-static {p1, v0}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "wsu:Id"

    const-string v2, "devicesoftware"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/request/DeviceAuthRequest;->_credentials:Lcom/microsoft/onlineid/sts/DeviceCredentials;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/DeviceCredentials;->getUsername()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wsse:Username"

    invoke-static {v0, v2, v1}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/request/DeviceAuthRequest;->_credentials:Lcom/microsoft/onlineid/sts/DeviceCredentials;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/DeviceCredentials;->getPassword()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wsse:Password"

    invoke-static {v0, v2, v1}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/sts/request/AbstractSoapRequest;->appendTimestamp(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method public getEndpoint()Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;
    .locals 1

    sget-object v0, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->Sts:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    return-object v0
.end method

.method public final getRequestedScopes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/onlineid/ISecurityScope;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/microsoft/onlineid/sts/DAToken;->Scope:Lcom/microsoft/onlineid/ISecurityScope;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic instantiateResponse()Lcom/microsoft/onlineid/sts/response/AbstractStsResponse;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/request/DeviceAuthRequest;->instantiateResponse()Lcom/microsoft/onlineid/sts/response/DeviceAuthResponse;

    move-result-object v0

    return-object v0
.end method

.method public instantiateResponse()Lcom/microsoft/onlineid/sts/response/DeviceAuthResponse;
    .locals 2

    new-instance v0, Lcom/microsoft/onlineid/sts/response/DeviceAuthResponse;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;->getClockSkewManager()Lcom/microsoft/onlineid/sts/ClockSkewManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/sts/response/DeviceAuthResponse;-><init>(Lcom/microsoft/onlineid/sts/ClockSkewManager;)V

    return-object v0
.end method

.method public setDeviceCredentials(Lcom/microsoft/onlineid/sts/DeviceCredentials;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/request/DeviceAuthRequest;->_credentials:Lcom/microsoft/onlineid/sts/DeviceCredentials;

    return-void
.end method
