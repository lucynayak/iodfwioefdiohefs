.class public Lcom/microsoft/onlineid/sts/response/DeviceAuthResponse;
.super Lcom/microsoft/onlineid/sts/response/AbstractSoapResponse;
.source "SourceFile"


# instance fields
.field private final _clockSkewManager:Lcom/microsoft/onlineid/sts/ClockSkewManager;

.field private _parser:Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;


# direct methods
.method public constructor <init>(Lcom/microsoft/onlineid/sts/ClockSkewManager;)V
    .registers 2

    invoke-direct {p0}, Lcom/microsoft/onlineid/sts/response/AbstractSoapResponse;-><init>()V

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/response/DeviceAuthResponse;->_clockSkewManager:Lcom/microsoft/onlineid/sts/ClockSkewManager;

    return-void
.end method


# virtual methods
.method public getDAToken()Lcom/microsoft/onlineid/sts/DAToken;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/DeviceAuthResponse;->_parser:Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;->getDAToken()Lcom/microsoft/onlineid/sts/DAToken;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lcom/microsoft/onlineid/sts/StsError;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/DeviceAuthResponse;->_parser:Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;->getError()Lcom/microsoft/onlineid/sts/StsError;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 4

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/DeviceAuthResponse;->_parser:Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;

    if-nez v0, :cond_0

    new-instance v0, Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/DeviceAuthResponse;->_clockSkewManager:Lcom/microsoft/onlineid/sts/ClockSkewManager;

    invoke-direct {v0, p1, v1}, Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Lcom/microsoft/onlineid/sts/ClockSkewManager;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/response/DeviceAuthResponse;->_parser:Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->parse()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Each response object may only parse its respone once."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
