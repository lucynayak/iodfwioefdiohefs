.class public Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;
.super Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$SecurityTokenMode;
    }
.end annotation


# instance fields
.field private _daToken:Lcom/microsoft/onlineid/sts/DAToken;

.field private _inlineAuthUrl:Ljava/lang/String;

.field private final _securityTokenMode:Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$SecurityTokenMode;

.field private _ticket:Lcom/microsoft/onlineid/Ticket;

.field private _ticketError:Lcom/microsoft/onlineid/sts/StsError;

.field private final _ticketScope:Lcom/microsoft/onlineid/ISecurityScope;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;Lcom/microsoft/onlineid/ISecurityScope;Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$SecurityTokenMode;)V
    .registers 6

    const-string v0, "http://schemas.xmlsoap.org/ws/2005/02/trust"

    const-string v1, "RequestSecurityTokenResponse"

    invoke-direct {p0, p1, v0, v1}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;->_ticketScope:Lcom/microsoft/onlineid/ISecurityScope;

    iput-object p3, p0, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;->_securityTokenMode:Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$SecurityTokenMode;

    return-void
.end method

.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$SecurityTokenMode;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Lcom/microsoft/onlineid/ISecurityScope;Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$SecurityTokenMode;)V

    return-void
.end method


# virtual methods
.method public getDAToken()Lcom/microsoft/onlineid/sts/DAToken;
    .registers 2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->verifyParseCalled()V

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;->_daToken:Lcom/microsoft/onlineid/sts/DAToken;

    return-object v0
.end method

.method public getTicket()Lcom/microsoft/onlineid/Ticket;
    .registers 2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->verifyParseCalled()V

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;->_ticket:Lcom/microsoft/onlineid/Ticket;

    return-object v0
.end method

.method public getTicketError()Lcom/microsoft/onlineid/sts/StsError;
    .registers 2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->verifyParseCalled()V

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;->_ticketError:Lcom/microsoft/onlineid/sts/StsError;

    return-object v0
.end method

.method public getTicketInlineAuthUrl()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->verifyParseCalled()V

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;->_inlineAuthUrl:Ljava/lang/String;

    return-object v0
.end method

.method public onParse()V
    .registers 10

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->nextStartTagNoThrow()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_8

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->getPrefixedTagName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "wst:TokenType"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->nextRequiredText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v7, "wsp:AppliesTo"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->getLocation()Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;

    move-result-object v2

    const-string v5, "wsa:EndpointReference"

    invoke-virtual {v2, v5}, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->nextStartTag(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->getLocation()Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;

    move-result-object v5

    const-string v6, "wsa:Address"

    invoke-virtual {v5, v6}, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->nextStartTag(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->nextRequiredText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->finish()V

    move-object v2, v5

    goto :goto_0

    :cond_1
    const-string v7, "wst:Lifetime"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v4, Lcom/microsoft/onlineid/sts/response/parsers/TimeListParser;

    iget-object v5, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v4, v5}, Lcom/microsoft/onlineid/sts/response/parsers/TimeListParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v4}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->parse()V

    invoke-virtual {v4}, Lcom/microsoft/onlineid/sts/response/parsers/TimeListParser;->getExpires()Ljava/util/Date;

    move-result-object v4

    goto :goto_0

    :cond_2
    const-string v7, "wst:RequestedSecurityToken"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    sget-object v5, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$1;->$SwitchMap$com$microsoft$onlineid$sts$response$parsers$TokenParser$SecurityTokenMode:[I

    iget-object v7, p0, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;->_securityTokenMode:Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$SecurityTokenMode;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v5, v5, v7

    if-eq v5, v6, :cond_4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_3

    goto :goto_0

    :cond_3
    new-instance v3, Lcom/microsoft/onlineid/sts/response/parsers/NgcSecurityTokenParser;

    iget-object v5, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v3, v5}, Lcom/microsoft/onlineid/sts/response/parsers/NgcSecurityTokenParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v3}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->parse()V

    invoke-virtual {v3}, Lcom/microsoft/onlineid/sts/response/parsers/NgcSecurityTokenParser;->getTokenBlob()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_4
    new-instance v3, Lcom/microsoft/onlineid/sts/response/parsers/SecurityTokenParser;

    iget-object v5, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v3, v5}, Lcom/microsoft/onlineid/sts/response/parsers/SecurityTokenParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v3}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->parse()V

    invoke-virtual {v3}, Lcom/microsoft/onlineid/sts/response/parsers/SecurityTokenParser;->getTokenBlob()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_5
    const-string v6, "wst:RequestedProofToken"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    new-instance v1, Lcom/microsoft/onlineid/sts/response/parsers/ProofTokenParser;

    iget-object v5, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v1, v5}, Lcom/microsoft/onlineid/sts/response/parsers/ProofTokenParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->parse()V

    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/response/parsers/ProofTokenParser;->getSessionKey()[B

    move-result-object v1

    goto/16 :goto_0

    :cond_6
    const-string v6, "psf:pp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    new-instance v5, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;

    iget-object v6, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v5, v6}, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v5}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->parse()V

    new-instance v6, Lcom/microsoft/onlineid/sts/StsError;

    new-instance v7, Lcom/microsoft/onlineid/sts/IntegerCodeServerError;

    invoke-virtual {v5}, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->getReqStatus()I

    move-result v8

    invoke-direct {v7, v8}, Lcom/microsoft/onlineid/sts/IntegerCodeServerError;-><init>(I)V

    invoke-direct {v6, v7}, Lcom/microsoft/onlineid/sts/StsError;-><init>(Lcom/microsoft/onlineid/sts/IntegerCodeServerError;)V

    iput-object v6, p0, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;->_ticketError:Lcom/microsoft/onlineid/sts/StsError;

    invoke-virtual {v5}, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->getInlineAuthUrl()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;->_inlineAuthUrl:Ljava/lang/String;

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->skipElement()V

    goto/16 :goto_0

    :cond_8
    iget-object v5, p0, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;->_ticketError:Lcom/microsoft/onlineid/sts/StsError;

    const/4 v7, 0x0

    if-nez v5, :cond_a

    if-eqz v0, :cond_9

    goto :goto_1

    :cond_9
    new-instance v0, Lcom/microsoft/onlineid/sts/exception/StsParseException;

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "wst:TokenType node is missing"

    invoke-direct {v0, v2, v1}, Lcom/microsoft/onlineid/sts/exception/StsParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_a
    :goto_1
    :try_start_0
    const-string v5, "urn:passport:legacy"

    invoke-static {v0, v5}, Lcom/microsoft/onlineid/internal/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    if-eqz v1, :cond_b

    sget-object v0, Lcom/microsoft/onlineid/sts/DAToken;->Scope:Lcom/microsoft/onlineid/ISecurityScope;

    invoke-interface {v0}, Lcom/microsoft/onlineid/ISecurityScope;->getTarget()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/Assertion;->check(Z)V

    new-instance v0, Lcom/microsoft/onlineid/sts/DAToken;

    invoke-direct {v0, v3, v1}, Lcom/microsoft/onlineid/sts/DAToken;-><init>(Ljava/lang/String;[B)V

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;->_daToken:Lcom/microsoft/onlineid/sts/DAToken;

    return-void

    :cond_b
    const-string v1, "urn:passport:compact"

    invoke-static {v0, v1}, Lcom/microsoft/onlineid/internal/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "urn:passport:loginprooftoken"

    invoke-static {v0, v1}, Lcom/microsoft/onlineid/internal/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;->_ticketError:Lcom/microsoft/onlineid/sts/StsError;

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;->_ticketScope:Lcom/microsoft/onlineid/ISecurityScope;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Lcom/microsoft/onlineid/ISecurityScope;->getTarget()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_2

    :cond_d
    const/4 v6, 0x0

    :goto_2
    invoke-static {v6}, Lcom/microsoft/onlineid/internal/Assertion;->check(Z)V

    new-instance v0, Lcom/microsoft/onlineid/Ticket;

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;->_ticketScope:Lcom/microsoft/onlineid/ISecurityScope;

    invoke-direct {v0, v1, v4, v3}, Lcom/microsoft/onlineid/Ticket;-><init>(Lcom/microsoft/onlineid/ISecurityScope;Ljava/util/Date;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;->_ticket:Lcom/microsoft/onlineid/Ticket;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_e
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/microsoft/onlineid/sts/exception/StsParseException;

    invoke-direct {v1, v0}, Lcom/microsoft/onlineid/sts/exception/StsParseException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
