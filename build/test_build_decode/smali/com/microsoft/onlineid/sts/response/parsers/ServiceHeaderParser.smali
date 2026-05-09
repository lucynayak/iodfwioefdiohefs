.class public Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;
.super Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;
.source "SourceFile"


# instance fields
.field private _encKeyNonce:[B

.field private _encryptedHeader:Ljava/lang/String;

.field private _expires:Ljava/util/Date;

.field private _passportParser:Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;

.field private final _validator:Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;)V

    return-void
.end method

.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;)V
    .locals 2

    const-string v0, "http://www.w3.org/2003/05/soap-envelope"

    const-string v1, "Header"

    invoke-direct {p0, p1, v0, v1}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;->_validator:Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;

    return-void
.end method


# virtual methods
.method public getEncKeyNonce()[B
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->verifyParseCalled()V

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;->_encKeyNonce:[B

    return-object v0
.end method

.method public getEncryptedHeader()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->verifyParseCalled()V

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;->_encryptedHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getPassportParser()Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->verifyParseCalled()V

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;->_passportParser:Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;

    return-object v0
.end method

.method public getResponseExpiry()Ljava/util/Date;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->verifyParseCalled()V

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;->_expires:Ljava/util/Date;

    return-object v0
.end method

.method public onParse()V
    .locals 4

    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->nextStartTagNoThrow()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->getPrefixedTagName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v2, "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd"

    const-string v3, "Id"

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "wsse:Security"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/microsoft/onlineid/sts/response/parsers/SecurityParser;

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    iget-object v2, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;->_validator:Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/sts/response/parsers/SecurityParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;)V

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->parse()V

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/SecurityParser;->getResponseExpiry()Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;->_expires:Ljava/util/Date;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/SecurityParser;->getEncKeyNonce()[B

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;->_encKeyNonce:[B

    goto :goto_0

    :cond_0
    const-string v2, "psf:pp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;->_passportParser:Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->parse()V

    goto :goto_0

    :cond_1
    const-string v2, "psf:EncryptedPP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->getLocation()Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;

    move-result-object v0

    const-string v1, "EncryptedData"

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->nextStartTag(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;->_validator:Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p0}, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->computeNodeDigest(Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    :goto_1
    new-instance v2, Lcom/microsoft/onlineid/sts/response/parsers/EncryptedSoapNodeParser;

    invoke-direct {v2, v1}, Lcom/microsoft/onlineid/sts/response/parsers/EncryptedSoapNodeParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v2}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->parse()V

    invoke-virtual {v2}, Lcom/microsoft/onlineid/sts/response/parsers/EncryptedSoapNodeParser;->getCipherValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;->_encryptedHeader:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->finish()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;->_validator:Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;

    if-eqz v0, :cond_4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;->_validator:Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;

    invoke-virtual {v0, p0}, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->computeNodeDigest(Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;)Lorg/xmlpull/v1/XmlPullParser;

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->skipElement()V

    goto/16 :goto_0

    :cond_5
    return-void
.end method
