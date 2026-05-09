.class public Lcom/microsoft/onlineid/sts/response/parsers/SecurityTokenParser;
.super Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;
.source "SourceFile"


# instance fields
.field private _tokenBlob:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2

    const-string v0, "http://schemas.xmlsoap.org/ws/2005/02/trust"

    const-string v1, "RequestedSecurityToken"

    invoke-direct {p0, p1, v0, v1}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getTokenBlob()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->verifyParseCalled()V

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/SecurityTokenParser;->_tokenBlob:Ljava/lang/String;

    return-object v0
.end method

.method public onParse()V
    .locals 4

    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->nextStartTagNoThrow()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->getPrefixedTagName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EncryptedData"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/SecurityTokenParser;->_tokenBlob:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Lcom/microsoft/onlineid/internal/Assertion;->check(Z)V

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->readRawOuterXml()Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/SecurityTokenParser;->_tokenBlob:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v1, "wsse:BinarySecurityToken"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/SecurityTokenParser;->_tokenBlob:Ljava/lang/String;

    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    const/4 v2, 0x0

    :goto_3
    invoke-static {v2}, Lcom/microsoft/onlineid/internal/Assertion;->check(Z)V

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->nextRequiredText()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->skipElement()V

    goto :goto_0

    :cond_4
    return-void
.end method
