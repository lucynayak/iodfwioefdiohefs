.class public Lcom/microsoft/onlineid/sts/response/parsers/TokenCollectionParser;
.super Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;
.source "SourceFile"


# instance fields
.field private _daToken:Lcom/microsoft/onlineid/sts/DAToken;

.field private _ticket:Lcom/microsoft/onlineid/Ticket;

.field private _ticketError:Lcom/microsoft/onlineid/sts/StsError;

.field private _ticketInlineAuthUrl:Ljava/lang/String;

.field private final _ticketScope:Lcom/microsoft/onlineid/ISecurityScope;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/microsoft/onlineid/sts/response/parsers/TokenCollectionParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Lcom/microsoft/onlineid/ISecurityScope;)V

    return-void
.end method

.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;Lcom/microsoft/onlineid/ISecurityScope;)V
    .locals 2

    const-string v0, "http://schemas.xmlsoap.org/ws/2005/02/trust"

    const-string v1, "RequestSecurityTokenResponseCollection"

    invoke-direct {p0, p1, v0, v1}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/microsoft/onlineid/sts/response/parsers/TokenCollectionParser;->_ticketScope:Lcom/microsoft/onlineid/ISecurityScope;

    return-void
.end method


# virtual methods
.method public getDAToken()Lcom/microsoft/onlineid/sts/DAToken;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->verifyParseCalled()V

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/TokenCollectionParser;->_daToken:Lcom/microsoft/onlineid/sts/DAToken;

    return-object v0
.end method

.method public getTicket()Lcom/microsoft/onlineid/Ticket;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->verifyParseCalled()V

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/TokenCollectionParser;->_ticket:Lcom/microsoft/onlineid/Ticket;

    return-object v0
.end method

.method public getTicketError()Lcom/microsoft/onlineid/sts/StsError;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->verifyParseCalled()V

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/TokenCollectionParser;->_ticketError:Lcom/microsoft/onlineid/sts/StsError;

    return-object v0
.end method

.method public getTicketInlineAuthUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->verifyParseCalled()V

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/TokenCollectionParser;->_ticketInlineAuthUrl:Ljava/lang/String;

    return-object v0
.end method

.method public onParse()V
    .locals 5

    :cond_0
    :goto_0
    const-string v0, "wst:RequestSecurityTokenResponse"

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->nextStartTagNoThrow(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;

    iget-object v2, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    iget-object v3, p0, Lcom/microsoft/onlineid/sts/response/parsers/TokenCollectionParser;->_ticketScope:Lcom/microsoft/onlineid/ISecurityScope;

    sget-object v4, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$SecurityTokenMode;->ServiceRequest:Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$SecurityTokenMode;

    invoke-direct {v0, v2, v3, v4}, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Lcom/microsoft/onlineid/ISecurityScope;Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$SecurityTokenMode;)V

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->parse()V

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;->getDAToken()Lcom/microsoft/onlineid/sts/DAToken;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/microsoft/onlineid/sts/response/parsers/TokenCollectionParser;->_daToken:Lcom/microsoft/onlineid/sts/DAToken;

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Lcom/microsoft/onlineid/internal/Assertion;->check(Z)V

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;->getDAToken()Lcom/microsoft/onlineid/sts/DAToken;

    move-result-object v2

    iput-object v2, p0, Lcom/microsoft/onlineid/sts/response/parsers/TokenCollectionParser;->_daToken:Lcom/microsoft/onlineid/sts/DAToken;

    :cond_2
    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;->getTicketError()Lcom/microsoft/onlineid/sts/StsError;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/microsoft/onlineid/sts/response/parsers/TokenCollectionParser;->_ticketError:Lcom/microsoft/onlineid/sts/StsError;

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    invoke-static {v2}, Lcom/microsoft/onlineid/internal/Assertion;->check(Z)V

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;->getTicketError()Lcom/microsoft/onlineid/sts/StsError;

    move-result-object v2

    iput-object v2, p0, Lcom/microsoft/onlineid/sts/response/parsers/TokenCollectionParser;->_ticketError:Lcom/microsoft/onlineid/sts/StsError;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;->getTicketInlineAuthUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/microsoft/onlineid/sts/response/parsers/TokenCollectionParser;->_ticketInlineAuthUrl:Ljava/lang/String;

    :cond_4
    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;->getTicket()Lcom/microsoft/onlineid/Ticket;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/microsoft/onlineid/sts/response/parsers/TokenCollectionParser;->_ticket:Lcom/microsoft/onlineid/Ticket;

    if-nez v2, :cond_5

    const/4 v1, 0x1

    :cond_5
    invoke-static {v1}, Lcom/microsoft/onlineid/internal/Assertion;->check(Z)V

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;->getTicket()Lcom/microsoft/onlineid/Ticket;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/TokenCollectionParser;->_ticket:Lcom/microsoft/onlineid/Ticket;

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/TokenCollectionParser;->_ticketScope:Lcom/microsoft/onlineid/ISecurityScope;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/TokenCollectionParser;->_ticketError:Lcom/microsoft/onlineid/sts/StsError;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/TokenCollectionParser;->_ticket:Lcom/microsoft/onlineid/Ticket;

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    new-instance v0, Lcom/microsoft/onlineid/sts/exception/StsParseException;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "No ticket or ticket error found."

    invoke-direct {v0, v2, v1}, Lcom/microsoft/onlineid/sts/exception/StsParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_8
    :goto_3
    return-void
.end method
