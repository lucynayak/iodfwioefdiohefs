.class public abstract Lcom/microsoft/onlineid/sts/request/AbstractSoapRequest;
.super Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseType:",
        "Lcom/microsoft/onlineid/sts/response/AbstractSoapResponse;",
        ">",
        "Lcom/microsoft/onlineid/sts/request/AbstractStsRequest<",
        "TResponseType;>;"
    }
.end annotation


# static fields
.field public static final MsaAppGuid:Ljava/lang/String; = "{F501FD64-9070-46AB-993C-6F7B71D8D883}"

.field public static final PSNamespace:Ljava/lang/String; = "http://schemas.microsoft.com/Passport/SoapServices/PPCRL"

.field public static final PsfNamespace:Ljava/lang/String; = "http://schemas.microsoft.com/Passport/SoapServices/SOAPFault"

.field private static final RequestExpiryMilliseconds:I = 0x493e0

.field public static final SamlNamespace:Ljava/lang/String; = "urn:oasis:names:tc:SAML:1.0:assertion"

.field public static final SoapNamespace:Ljava/lang/String; = "http://www.w3.org/2003/05/soap-envelope"

.field public static final WsaNamespace:Ljava/lang/String; = "http://www.w3.org/2005/08/addressing"

.field public static final WspNamespace:Ljava/lang/String; = "http://schemas.xmlsoap.org/ws/2004/09/policy"

.field public static final WsscNamespace:Ljava/lang/String; = "http://schemas.xmlsoap.org/ws/2005/02/sc"

.field public static final WsseNamespace:Ljava/lang/String; = "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd"

.field public static final WstNamespace:Ljava/lang/String; = "http://schemas.xmlsoap.org/ws/2005/02/trust"

.field public static final WsuNamespace:Ljava/lang/String; = "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public addEnvelopeNamespaces(Lorg/w3c/dom/Element;)V
    .locals 2

    const-string v0, "xmlns:ps"

    const-string v1, "http://schemas.microsoft.com/Passport/SoapServices/PPCRL"

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "xmlns:wsse"

    const-string v1, "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd"

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "xmlns:saml"

    const-string v1, "urn:oasis:names:tc:SAML:1.0:assertion"

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "xmlns:wsp"

    const-string v1, "http://schemas.xmlsoap.org/ws/2004/09/policy"

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "xmlns:wsu"

    const-string v1, "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd"

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "xmlns:wsa"

    const-string v1, "http://www.w3.org/2005/08/addressing"

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "xmlns:wssc"

    const-string v1, "http://schemas.xmlsoap.org/ws/2005/02/sc"

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "xmlns:wst"

    const-string v1, "http://schemas.xmlsoap.org/ws/2005/02/trust"

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final appendDeviceDAToken(Lorg/w3c/dom/Element;Lcom/microsoft/onlineid/sts/DAToken;)V
    .locals 2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;->getClockSkewManager()Lcom/microsoft/onlineid/sts/ClockSkewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/ClockSkewManager;->getCurrentServerTime()Ljava/util/Date;

    move-result-object v0

    const-string v1, "{F501FD64-9070-46AB-993C-6F7B71D8D883}"

    invoke-virtual {p2, v0, v1}, Lcom/microsoft/onlineid/sts/DAToken;->getOneTimeSignedCredential(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "wsse:BinarySecurityToken"

    invoke-static {p1, v0, p2}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    const-string p2, "ValueType"

    const-string v0, "urn:liveid:sha1device"

    invoke-interface {p1, p2, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "Id"

    const-string v0, "DeviceDAToken"

    invoke-interface {p1, p2, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final appendTimestamp(Lorg/w3c/dom/Element;)V
    .locals 7

    const-string v0, "wsu:Timestamp"

    invoke-static {p1, v0}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    const-string v0, "wsu:Id"

    const-string v1, "Timestamp"

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "xmlns:wsu"

    const-string v1, "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd"

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;->getClockSkewManager()Lcom/microsoft/onlineid/sts/ClockSkewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/ClockSkewManager;->getCurrentServerTime()Ljava/util/Date;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/32 v5, 0x493e0

    add-long/2addr v3, v5

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "wsu:Created"

    invoke-static {p1, v3, v1}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "wsu:Expires"

    invoke-static {p1, v1, v0}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    instance-of v0, p0, Lcom/microsoft/onlineid/sts/request/ISignableRequest;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/microsoft/onlineid/sts/request/ISignableRequest;

    invoke-interface {v0}, Lcom/microsoft/onlineid/sts/request/ISignableRequest;->getXmlSigner()Lcom/microsoft/onlineid/sts/XmlSigner;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/sts/XmlSigner;->addElementToSign(Lorg/w3c/dom/Element;)V

    :cond_0
    return-void
.end method

.method public buildAuthInfo(Lorg/w3c/dom/Element;)V
    .locals 2

    const-string v0, "ps:BinaryVersion"

    const-string v1, "11"

    invoke-static {p1, v0, v1}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    const-string v0, "ps:DeviceType"

    const-string v1, "Android"

    invoke-static {p1, v0, v1}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    return-void
.end method

.method public buildRequest()Lorg/w3c/dom/Document;
    .locals 3

    const-string v0, "http://www.w3.org/2003/05/soap-envelope"

    const-string v1, "s:Envelope"

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;->createBlankDocument(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/microsoft/onlineid/sts/request/AbstractSoapRequest;->addEnvelopeNamespaces(Lorg/w3c/dom/Element;)V

    const-string v2, "s:Header"

    invoke-static {v1, v2}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/microsoft/onlineid/sts/request/AbstractSoapRequest;->buildSoapHeader(Lorg/w3c/dom/Element;)V

    const-string v2, "s:Body"

    invoke-static {v1, v2}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/microsoft/onlineid/sts/request/AbstractSoapRequest;->buildSoapBody(Lorg/w3c/dom/Element;)V

    instance-of v1, p0, Lcom/microsoft/onlineid/sts/request/ISignableRequest;

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Lcom/microsoft/onlineid/sts/request/ISignableRequest;

    invoke-interface {v1}, Lcom/microsoft/onlineid/sts/request/ISignableRequest;->getXmlSigner()Lcom/microsoft/onlineid/sts/XmlSigner;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/microsoft/onlineid/sts/XmlSigner;->sign(Lcom/microsoft/onlineid/sts/request/ISignableRequest;)V

    :cond_0
    return-object v0
.end method

.method public abstract buildSecurityNode(Lorg/w3c/dom/Element;)V
.end method

.method public abstract buildSoapBody(Lorg/w3c/dom/Element;)V
.end method

.method public buildSoapHeader(Lorg/w3c/dom/Element;)V
    .locals 4

    const-string v0, "wsa:Action"

    const-string v1, "http://schemas.xmlsoap.org/ws/2005/02/trust/RST/Issue"

    invoke-static {p1, v0, v1}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "s:mustUnderstand"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;->getDestination()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "wsa:To"

    invoke-static {p1, v3, v0}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "wsa:MessageID"

    invoke-static {p1, v1, v0}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    const-string v0, "ps:AuthInfo"

    invoke-static {p1, v0}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "xmlns:ps"

    const-string v2, "http://schemas.microsoft.com/Passport/SoapServices/PPCRL"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Id"

    const-string v2, "PPAuthInfo"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/sts/request/AbstractSoapRequest;->buildAuthInfo(Lorg/w3c/dom/Element;)V

    instance-of v1, p0, Lcom/microsoft/onlineid/sts/request/ISignableRequest;

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Lcom/microsoft/onlineid/sts/request/ISignableRequest;

    invoke-interface {v1}, Lcom/microsoft/onlineid/sts/request/ISignableRequest;->getXmlSigner()Lcom/microsoft/onlineid/sts/XmlSigner;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/microsoft/onlineid/sts/XmlSigner;->addElementToSign(Lorg/w3c/dom/Element;)V

    :cond_0
    const-string v0, "wsse:Security"

    invoke-static {p1, v0}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/sts/request/AbstractSoapRequest;->buildSecurityNode(Lorg/w3c/dom/Element;)V

    return-void
.end method
