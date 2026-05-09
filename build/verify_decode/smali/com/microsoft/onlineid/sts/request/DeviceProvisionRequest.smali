.class public Lcom/microsoft/onlineid/sts/request/DeviceProvisionRequest;
.super Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/onlineid/sts/request/AbstractStsRequest<",
        "Lcom/microsoft/onlineid/sts/response/DeviceProvisionResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private _credentials:Lcom/microsoft/onlineid/sts/DeviceCredentials;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public buildRequest()Lorg/w3c/dom/Document;
    .locals 5

    const/4 v0, 0x0

    const-string v1, "DeviceAddRequest"

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;->createBlankDocument(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    const-string v2, "ClientInfo"

    invoke-static {v1, v2}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    const-string v3, "name"

    const-string v4, "MSAAndroidApp"

    invoke-interface {v2, v3, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "version"

    const-string v4, "1.0"

    invoke-interface {v2, v3, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Authentication"

    invoke-static {v1, v2}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/onlineid/sts/request/DeviceProvisionRequest;->_credentials:Lcom/microsoft/onlineid/sts/DeviceCredentials;

    invoke-virtual {v2}, Lcom/microsoft/onlineid/sts/DeviceCredentials;->getUsername()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Membername"

    invoke-static {v1, v3, v2}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    iget-object v2, p0, Lcom/microsoft/onlineid/sts/request/DeviceProvisionRequest;->_credentials:Lcom/microsoft/onlineid/sts/DeviceCredentials;

    invoke-virtual {v2}, Lcom/microsoft/onlineid/sts/DeviceCredentials;->getPassword()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Password"

    invoke-static {v1, v3, v2}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    return-object v0
.end method

.method public getEndpoint()Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;
    .locals 1

    sget-object v0, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->DeviceProvision:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    return-object v0
.end method

.method public bridge synthetic instantiateResponse()Lcom/microsoft/onlineid/sts/response/AbstractStsResponse;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/request/DeviceProvisionRequest;->instantiateResponse()Lcom/microsoft/onlineid/sts/response/DeviceProvisionResponse;

    move-result-object v0

    return-object v0
.end method

.method public instantiateResponse()Lcom/microsoft/onlineid/sts/response/DeviceProvisionResponse;
    .locals 1

    new-instance v0, Lcom/microsoft/onlineid/sts/response/DeviceProvisionResponse;

    invoke-direct {v0}, Lcom/microsoft/onlineid/sts/response/DeviceProvisionResponse;-><init>()V

    return-object v0
.end method

.method public setDeviceCredentials(Lcom/microsoft/onlineid/sts/DeviceCredentials;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/request/DeviceProvisionRequest;->_credentials:Lcom/microsoft/onlineid/sts/DeviceCredentials;

    return-void
.end method
