.class public Lcom/microsoft/onlineid/sts/response/parsers/SecurityParser;
.super Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;
.source "SourceFile"


# instance fields
.field private _encKeyNonce:[B

.field private _expires:Ljava/util/Date;

.field private final _validator:Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/microsoft/onlineid/sts/response/parsers/SecurityParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;)V

    return-void
.end method

.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;)V
    .registers 5

    const-string v0, "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd"

    const-string v1, "Security"

    invoke-direct {p0, p1, v0, v1}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/microsoft/onlineid/sts/response/parsers/SecurityParser;->_validator:Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;

    return-void
.end method


# virtual methods
.method public getEncKeyNonce()[B
    .registers 2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->verifyParseCalled()V

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/SecurityParser;->_encKeyNonce:[B

    return-object v0
.end method

.method public getResponseExpiry()Ljava/util/Date;
    .registers 2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->verifyParseCalled()V

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/SecurityParser;->_expires:Ljava/util/Date;

    return-object v0
.end method

.method public onParse()V
    .registers 4

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->nextStartTagNoThrow()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->getPrefixedTagName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wsu:Timestamp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/SecurityParser;->_validator:Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->computeNodeDigest(Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    :goto_1
    new-instance v1, Lcom/microsoft/onlineid/sts/response/parsers/TimeListParser;

    invoke-direct {v1, v0}, Lcom/microsoft/onlineid/sts/response/parsers/TimeListParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->parse()V

    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/response/parsers/TimeListParser;->getExpires()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/SecurityParser;->_expires:Ljava/util/Date;

    goto :goto_0

    :cond_2
    const-string v1, "wssc:DerivedKeyToken"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v1, "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd"

    const-string v2, "Id"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/microsoft/onlineid/sts/response/parsers/DerivedKeyTokenParser;

    iget-object v2, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v1, v2}, Lcom/microsoft/onlineid/sts/response/parsers/DerivedKeyTokenParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->parse()V

    const-string v2, "EncKey"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/response/parsers/DerivedKeyTokenParser;->getNonce()[B

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/SecurityParser;->_encKeyNonce:[B

    goto :goto_0

    :cond_3
    const-string v2, "SignKey"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/SecurityParser;->_validator:Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/response/parsers/DerivedKeyTokenParser;->getNonce()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->setSignKeyNonce([B)V

    goto :goto_0

    :cond_4
    const-string v1, "Signature"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/SecurityParser;->_validator:Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p0}, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->parseSignatureNode(Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->skipElement()V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/SecurityParser;->_expires:Ljava/util/Date;

    if-eqz v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Lcom/microsoft/onlineid/sts/exception/StsParseException;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "wsu:Timestamp node not found."

    invoke-direct {v0, v2, v1}, Lcom/microsoft/onlineid/sts/exception/StsParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method
