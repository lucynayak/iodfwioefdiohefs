.class public Lcom/microsoft/onlineid/sts/response/ServiceResponse;
.super Lcom/microsoft/onlineid/sts/response/AbstractSoapResponse;
.source "SourceFile"


# instance fields
.field private final _clockSkewManager:Lcom/microsoft/onlineid/sts/ClockSkewManager;

.field private final _decryptionSessionKey:[B

.field private _parser:Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;

.field private final _ticketScope:Lcom/microsoft/onlineid/ISecurityScope;


# direct methods
.method public constructor <init>([BLcom/microsoft/onlineid/ISecurityScope;Lcom/microsoft/onlineid/sts/ClockSkewManager;)V
    .registers 4

    invoke-direct {p0}, Lcom/microsoft/onlineid/sts/response/AbstractSoapResponse;-><init>()V

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/response/ServiceResponse;->_decryptionSessionKey:[B

    iput-object p2, p0, Lcom/microsoft/onlineid/sts/response/ServiceResponse;->_ticketScope:Lcom/microsoft/onlineid/ISecurityScope;

    iput-object p3, p0, Lcom/microsoft/onlineid/sts/response/ServiceResponse;->_clockSkewManager:Lcom/microsoft/onlineid/sts/ClockSkewManager;

    return-void
.end method

.method public constructor <init>([BLcom/microsoft/onlineid/sts/ClockSkewManager;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/microsoft/onlineid/sts/response/ServiceResponse;-><init>([BLcom/microsoft/onlineid/ISecurityScope;Lcom/microsoft/onlineid/sts/ClockSkewManager;)V

    return-void
.end method


# virtual methods
.method public getConfigVersion()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/ServiceResponse;->_parser:Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->getConfigVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDAToken()Lcom/microsoft/onlineid/sts/DAToken;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/ServiceResponse;->_parser:Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->getDAToken()Lcom/microsoft/onlineid/sts/DAToken;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lcom/microsoft/onlineid/sts/StsError;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/ServiceResponse;->_parser:Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->getError()Lcom/microsoft/onlineid/sts/StsError;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/ServiceResponse;->_parser:Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->getTicketError()Lcom/microsoft/onlineid/sts/StsError;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getFlights()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/ServiceResponse;->_parser:Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->getFlights()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getInlineAuthUrl()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/ServiceResponse;->_parser:Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->getInlineAuthUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/ServiceResponse;->_parser:Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->getTicketInlineAuthUrl()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPuid()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/ServiceResponse;->_parser:Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->getPuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTicket()Lcom/microsoft/onlineid/Ticket;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/ServiceResponse;->_parser:Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->getTicket()Lcom/microsoft/onlineid/Ticket;

    move-result-object v0

    return-object v0
.end method

.method public getTicketError()Lcom/microsoft/onlineid/sts/StsError;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/ServiceResponse;->_parser:Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->getTicketError()Lcom/microsoft/onlineid/sts/StsError;

    move-result-object v0

    return-object v0
.end method

.method public getUserProperties()Lcom/microsoft/onlineid/sts/UserProperties;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/ServiceResponse;->_parser:Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->getUserProperties()Lcom/microsoft/onlineid/sts/UserProperties;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 5

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/ServiceResponse;->_parser:Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;

    if-nez v0, :cond_0

    new-instance v0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/ServiceResponse;->_decryptionSessionKey:[B

    iget-object v2, p0, Lcom/microsoft/onlineid/sts/response/ServiceResponse;->_ticketScope:Lcom/microsoft/onlineid/ISecurityScope;

    invoke-direct {v0, p1, v1, v2}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;[BLcom/microsoft/onlineid/ISecurityScope;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/response/ServiceResponse;->_parser:Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->parse()V

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/ServiceResponse;->validateExpirationTime()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Each response object may only parse its respone once."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public validateExpirationTime()V
    .registers 5

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/ServiceResponse;->_clockSkewManager:Lcom/microsoft/onlineid/sts/ClockSkewManager;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/ClockSkewManager;->getCurrentServerTime()Ljava/util/Date;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/ServiceResponse;->_parser:Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->getResponseExpiry()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    new-instance v0, Lcom/microsoft/onlineid/sts/exception/StsParseException;

    const-string v1, "Response is expired. Current time: %s Expiry Time: %s"

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/sts/exception/StsParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method
