.class public Lcom/microsoft/onlineid/sts/response/parsers/EncryptedSoapNodeParser;
.super Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;
.source "SourceFile"


# instance fields
.field private _cipherValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    const-string v0, "EncryptedData"

    invoke-direct {p0, p1, v0}, Lcom/microsoft/onlineid/sts/response/parsers/EncryptedSoapNodeParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 1

    const-string v0, "http://www.w3.org/2001/04/xmlenc#"

    invoke-direct {p0, p1, v0, p2}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCipherValue()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->verifyParseCalled()V

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/EncryptedSoapNodeParser;->_cipherValue:Ljava/lang/String;

    return-object v0
.end method

.method public onParse()V
    .locals 2

    const-string v0, "CipherData"

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->nextStartTag(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->getLocation()Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;

    move-result-object v0

    const-string v1, "CipherValue"

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->nextStartTag(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->nextRequiredText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/EncryptedSoapNodeParser;->_cipherValue:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->finish()V

    return-void
.end method
