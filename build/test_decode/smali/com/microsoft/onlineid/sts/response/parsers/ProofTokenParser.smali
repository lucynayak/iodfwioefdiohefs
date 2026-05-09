.class public Lcom/microsoft/onlineid/sts/response/parsers/ProofTokenParser;
.super Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;
.source "SourceFile"


# instance fields
.field private _sessionKey:[B


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2

    const-string v0, "http://schemas.xmlsoap.org/ws/2005/02/trust"

    const-string v1, "RequestedProofToken"

    invoke-direct {p0, p1, v0, v1}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getSessionKey()[B
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->verifyParseCalled()V

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ProofTokenParser;->_sessionKey:[B

    return-object v0
.end method

.method public onParse()V
    .locals 6

    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->nextStartTagNoThrow()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->getPrefixedTagName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EncryptedKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "Only one of EncryptedKey or wst:BinarySecret is expected"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    new-instance v0, Lcom/microsoft/onlineid/sts/response/parsers/EncryptedSoapNodeParser;

    iget-object v2, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v0, v2, v1}, Lcom/microsoft/onlineid/sts/response/parsers/EncryptedSoapNodeParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->parse()V

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ProofTokenParser;->_sessionKey:[B

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-static {v4, v3}, Lcom/microsoft/onlineid/internal/Assertion;->check(ZLjava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ProofTokenParser;->_sessionKey:[B

    goto :goto_0

    :cond_1
    const-string v1, "wst:BinarySecret"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ProofTokenParser;->_sessionKey:[B

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    invoke-static {v4, v3}, Lcom/microsoft/onlineid/internal/Assertion;->check(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->nextRequiredText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/onlineid/sts/response/parsers/TextParsers;->parseBase64(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ProofTokenParser;->_sessionKey:[B

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->skipElement()V

    goto :goto_0

    :cond_4
    return-void
.end method
