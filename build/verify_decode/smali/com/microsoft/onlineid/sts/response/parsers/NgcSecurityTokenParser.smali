.class public Lcom/microsoft/onlineid/sts/response/parsers/NgcSecurityTokenParser;
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

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/NgcSecurityTokenParser;->_tokenBlob:Ljava/lang/String;

    return-object v0
.end method

.method public onParse()V
    .locals 2

    const-string v0, "EncryptedData"

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->nextStartTag(Ljava/lang/String;)V

    new-instance v0, Lcom/microsoft/onlineid/sts/response/parsers/EncryptedSoapNodeParser;

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/sts/response/parsers/EncryptedSoapNodeParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->parse()V

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/EncryptedSoapNodeParser;->getCipherValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/NgcSecurityTokenParser;->_tokenBlob:Ljava/lang/String;

    return-void
.end method
