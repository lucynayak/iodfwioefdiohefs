.class public Lcom/microsoft/onlineid/sts/response/DeviceProvisionResponse;
.super Lcom/microsoft/onlineid/sts/response/AbstractStsResponse;
.source "SourceFile"


# instance fields
.field private _parser:Lcom/microsoft/onlineid/sts/response/parsers/DeviceProvisionResponseParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/onlineid/sts/response/AbstractStsResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getError()Lcom/microsoft/onlineid/sts/StsError;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/DeviceProvisionResponse;->_parser:Lcom/microsoft/onlineid/sts/response/parsers/DeviceProvisionResponseParser;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/DeviceProvisionResponseParser;->getError()Lcom/microsoft/onlineid/sts/StsError;

    move-result-object v0

    return-object v0
.end method

.method public getPuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/DeviceProvisionResponse;->_parser:Lcom/microsoft/onlineid/sts/response/parsers/DeviceProvisionResponseParser;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/DeviceProvisionResponseParser;->getPuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/DeviceProvisionResponse;->_parser:Lcom/microsoft/onlineid/sts/response/parsers/DeviceProvisionResponseParser;

    if-nez v0, :cond_0

    new-instance v0, Lcom/microsoft/onlineid/sts/response/parsers/DeviceProvisionResponseParser;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/sts/response/parsers/DeviceProvisionResponseParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/response/DeviceProvisionResponse;->_parser:Lcom/microsoft/onlineid/sts/response/parsers/DeviceProvisionResponseParser;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->parse()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Each response object may only parse its respone once."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
