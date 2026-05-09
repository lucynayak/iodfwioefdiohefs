.class public Lcom/microsoft/onlineid/sts/response/parsers/ServiceBodyParser;
.super Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;
.source "SourceFile"


# instance fields
.field private _daToken:Lcom/microsoft/onlineid/sts/DAToken;

.field private _encryptedBody:Ljava/lang/String;

.field private _error:Lcom/microsoft/onlineid/sts/StsError;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2

    const-string v0, "http://www.w3.org/2003/05/soap-envelope"

    const-string v1, "Body"

    invoke-direct {p0, p1, v0, v1}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getDAToken()Lcom/microsoft/onlineid/sts/DAToken;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->verifyParseCalled()V

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceBodyParser;->_daToken:Lcom/microsoft/onlineid/sts/DAToken;

    return-object v0
.end method

.method public getEncryptedBody()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->verifyParseCalled()V

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceBodyParser;->_encryptedBody:Ljava/lang/String;

    return-object v0
.end method

.method public getError()Lcom/microsoft/onlineid/sts/StsError;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->verifyParseCalled()V

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceBodyParser;->_error:Lcom/microsoft/onlineid/sts/StsError;

    return-object v0
.end method

.method public onParse()V
    .locals 3

    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->nextStartTagNoThrow()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->getPrefixedTagName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S:Fault"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/microsoft/onlineid/sts/response/parsers/FaultParser;

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/sts/response/parsers/FaultParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->parse()V

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/FaultParser;->getError()Lcom/microsoft/onlineid/sts/StsError;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceBodyParser;->_error:Lcom/microsoft/onlineid/sts/StsError;

    goto :goto_0

    :cond_0
    const-string v1, "EncryptedData"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/microsoft/onlineid/sts/response/parsers/EncryptedSoapNodeParser;

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/sts/response/parsers/EncryptedSoapNodeParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->parse()V

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/EncryptedSoapNodeParser;->getCipherValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceBodyParser;->_encryptedBody:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v1, "wst:RequestSecurityTokenResponse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v2, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$SecurityTokenMode;->ServiceRequest:Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$SecurityTokenMode;

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$SecurityTokenMode;)V

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->parse()V

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;->getDAToken()Lcom/microsoft/onlineid/sts/DAToken;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceBodyParser;->_daToken:Lcom/microsoft/onlineid/sts/DAToken;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->skipElement()V

    goto :goto_0

    :cond_3
    return-void
.end method
