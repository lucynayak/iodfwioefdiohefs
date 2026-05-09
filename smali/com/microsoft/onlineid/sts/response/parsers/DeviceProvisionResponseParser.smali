.class public Lcom/microsoft/onlineid/sts/response/parsers/DeviceProvisionResponseParser;
.super Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;
.source "SourceFile"


# instance fields
.field private _error:Lcom/microsoft/onlineid/sts/StsError;

.field private _puid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 4

    const-string v0, ""

    const-string v1, "DeviceAddResponse"

    invoke-direct {p0, p1, v0, v1}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getError()Lcom/microsoft/onlineid/sts/StsError;
    .registers 2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->verifyParseCalled()V

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/DeviceProvisionResponseParser;->_error:Lcom/microsoft/onlineid/sts/StsError;

    return-object v0
.end method

.method public getPuid()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->verifyParseCalled()V

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/DeviceProvisionResponseParser;->_puid:Ljava/lang/String;

    return-object v0
.end method

.method public onParse()V
    .registers 4

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v1, ""

    const-string v2, "Success"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-static {v0, v1}, Lcom/microsoft/onlineid/internal/Strings;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "puid"

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->nextStartTag(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->nextRequiredText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/DeviceProvisionResponseParser;->_puid:Ljava/lang/String;

    return-void

    :cond_0
    new-instance v0, Lcom/microsoft/onlineid/sts/response/parsers/StringCodeErrorParser;

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/sts/response/parsers/StringCodeErrorParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->parse()V

    new-instance v1, Lcom/microsoft/onlineid/sts/StsError;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/StringCodeErrorParser;->getError()Lcom/microsoft/onlineid/sts/StringCodeServerError;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/microsoft/onlineid/sts/StsError;-><init>(Lcom/microsoft/onlineid/sts/StringCodeServerError;)V

    iput-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/DeviceProvisionResponseParser;->_error:Lcom/microsoft/onlineid/sts/StsError;

    return-void
.end method
