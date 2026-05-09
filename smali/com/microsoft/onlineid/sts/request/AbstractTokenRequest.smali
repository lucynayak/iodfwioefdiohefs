.class public abstract Lcom/microsoft/onlineid/sts/request/AbstractTokenRequest;
.super Lcom/microsoft/onlineid/sts/request/AbstractSoapRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseType:",
        "Lcom/microsoft/onlineid/sts/response/AbstractSoapResponse;",
        ">",
        "Lcom/microsoft/onlineid/sts/request/AbstractSoapRequest<",
        "TResponseType;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/microsoft/onlineid/sts/request/AbstractSoapRequest;-><init>()V

    return-void
.end method

.method private appendTokenRequestElement(Lorg/w3c/dom/Element;Lcom/microsoft/onlineid/ISecurityScope;)Lorg/w3c/dom/Element;
    .registers 8

    const-string v0, "wst:RequestSecurityToken"

    invoke-static {p1, v0}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    const-string v0, "xmlns:wst"

    const-string v1, "http://schemas.xmlsoap.org/ws/2005/02/trust"

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "wst:RequestType"

    const-string v1, "http://schemas.xmlsoap.org/ws/2005/02/trust/Issue"

    invoke-static {p1, v0, v1}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    const-string v0, "wsp:AppliesTo"

    invoke-static {p1, v0}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "xmlns:wsp"

    const-string v2, "http://schemas.xmlsoap.org/ws/2004/09/policy"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "wsa:EndpointReference"

    invoke-static {v0, v3}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v3, "xmlns:wsa"

    const-string v4, "http://www.w3.org/2005/08/addressing"

    invoke-interface {v0, v3, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/microsoft/onlineid/ISecurityScope;->getTarget()Ljava/lang/String;

    move-result-object v3

    const-string v4, "wsa:Address"

    invoke-static {v0, v4, v3}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    invoke-interface {p2}, Lcom/microsoft/onlineid/ISecurityScope;->getPolicy()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "wsp:PolicyReference"

    invoke-static {p1, v0}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "URI"

    invoke-interface {v0, v1, p2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method


# virtual methods
.method public buildAuthInfo(Lorg/w3c/dom/Element;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/microsoft/onlineid/sts/request/AbstractSoapRequest;->buildAuthInfo(Lorg/w3c/dom/Element;)V

    const-string v0, "ps:HostingApp"

    const-string v1, "{F501FD64-9070-46AB-993C-6F7B71D8D883}"

    invoke-static {p1, v0, v1}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    return-void
.end method

.method public buildSoapBody(Lorg/w3c/dom/Element;)V
    .registers 9

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/request/AbstractTokenRequest;->getRequestedScopes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "Id"

    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    const-string v1, "ps:RequestMultipleSecurityTokens"

    invoke-static {p1, v1}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    const-string v1, "xmlns:ps"

    const-string v4, "http://schemas.microsoft.com/Passport/SoapServices/PPCRL"

    invoke-interface {p1, v1, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "RSTS"

    invoke-interface {p1, v2, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v1, p0, Lcom/microsoft/onlineid/sts/request/ISignableRequest;

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Lcom/microsoft/onlineid/sts/request/ISignableRequest;

    invoke-interface {v1}, Lcom/microsoft/onlineid/sts/request/ISignableRequest;->getXmlSigner()Lcom/microsoft/onlineid/sts/XmlSigner;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/microsoft/onlineid/sts/XmlSigner;->addElementToSign(Lorg/w3c/dom/Element;)V

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/microsoft/onlineid/ISecurityScope;

    invoke-direct {p0, p1, v4}, Lcom/microsoft/onlineid/sts/request/AbstractTokenRequest;->appendTokenRequestElement(Lorg/w3c/dom/Element;Lcom/microsoft/onlineid/ISecurityScope;)Lorg/w3c/dom/Element;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RST"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    add-int/2addr v1, v3

    goto :goto_0

    :cond_1
    return-void
.end method

.method public abstract getRequestedScopes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/onlineid/ISecurityScope;",
            ">;"
        }
    .end annotation
.end method
