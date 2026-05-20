.class public Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;
.super Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;
.source "SourceFile"


# instance fields
.field private _authState:I

.field private final _clockSkewManager:Lcom/microsoft/onlineid/sts/ClockSkewManager;

.field private _configVersion:Ljava/lang/String;

.field private _daToken:Lcom/microsoft/onlineid/sts/DAToken;

.field private _error:Lcom/microsoft/onlineid/sts/StsError;

.field private _expires:Ljava/util/Date;

.field private _reqStatus:I


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;Lcom/microsoft/onlineid/sts/ClockSkewManager;)V
    .registers 5

    const-string v0, "http://www.w3.org/2003/05/soap-envelope"

    const-string v1, "Envelope"

    invoke-direct {p0, p1, v0, v1}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;->_clockSkewManager:Lcom/microsoft/onlineid/sts/ClockSkewManager;

    return-void
.end method


# virtual methods
.method public getAuthState()I
    .registers 2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->verifyParseCalled()V

    iget v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;->_authState:I

    return v0
.end method

.method public getConfigVersion()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->verifyParseCalled()V

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;->_configVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getDAToken()Lcom/microsoft/onlineid/sts/DAToken;
    .registers 2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->verifyParseCalled()V

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;->_daToken:Lcom/microsoft/onlineid/sts/DAToken;

    return-object v0
.end method

.method public getError()Lcom/microsoft/onlineid/sts/StsError;
    .registers 2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->verifyParseCalled()V

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;->_error:Lcom/microsoft/onlineid/sts/StsError;

    return-object v0
.end method

.method public getReqStatus()I
    .registers 2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->verifyParseCalled()V

    iget v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;->_reqStatus:I

    return v0
.end method

.method public getResponseExpiry()Ljava/util/Date;
    .registers 2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->verifyParseCalled()V

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;->_expires:Ljava/util/Date;

    return-object v0
.end method

.method public onParse()V
    .registers 4

    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->nextStartTagNoThrow()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->getPrefixedTagName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "S:Header"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;

    iget-object v2, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v0, v2}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->parse()V

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;->getResponseExpiry()Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;->_expires:Ljava/util/Date;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;->getPassportParser()Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->getAuthState()I

    move-result v1

    iput v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;->_authState:I

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->getReqStatus()I

    move-result v1

    iput v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;->_reqStatus:I

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->getConfigVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;->_configVersion:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/microsoft/onlineid/sts/exception/StsParseException;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Missing passport node in device auth response."

    invoke-direct {v0, v2, v1}, Lcom/microsoft/onlineid/sts/exception/StsParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_1
    const-string v1, "S:Body"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceBodyParser;

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceBodyParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->parse()V

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceBodyParser;->getError()Lcom/microsoft/onlineid/sts/StsError;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;->_error:Lcom/microsoft/onlineid/sts/StsError;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceBodyParser;->getDAToken()Lcom/microsoft/onlineid/sts/DAToken;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;->_daToken:Lcom/microsoft/onlineid/sts/DAToken;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->skipElement()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;->_error:Lcom/microsoft/onlineid/sts/StsError;

    if-nez v0, :cond_5

    iget-object v2, p0, Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;->_expires:Ljava/util/Date;

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/microsoft/onlineid/sts/exception/StsParseException;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "S:Header tag not found"

    invoke-direct {v0, v2, v1}, Lcom/microsoft/onlineid/sts/exception/StsParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_5
    :goto_1
    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;->_daToken:Lcom/microsoft/onlineid/sts/DAToken;

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    new-instance v0, Lcom/microsoft/onlineid/sts/exception/StsParseException;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "S:Body tag not found"

    invoke-direct {v0, v2, v1}, Lcom/microsoft/onlineid/sts/exception/StsParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;->_clockSkewManager:Lcom/microsoft/onlineid/sts/ClockSkewManager;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/ClockSkewManager;->getCurrentServerTime()Ljava/util/Date;

    move-result-object v0

    iget-object v2, p0, Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;->_expires:Ljava/util/Date;

    if-eqz v2, :cond_9

    invoke-virtual {v0, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_3

    :cond_8
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;->_expires:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    new-instance v0, Lcom/microsoft/onlineid/sts/exception/StsParseException;

    const-string v1, "Response is expired. Current time: %s Expiry Time: %s"

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/sts/exception/StsParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_9
    :goto_3
    return-void
.end method
