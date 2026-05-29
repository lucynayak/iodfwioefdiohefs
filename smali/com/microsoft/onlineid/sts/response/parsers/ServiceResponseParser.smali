.class public Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;
.super Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;
.source "SourceFile"


# instance fields
.field private _authState:I

.field private _configVersion:Ljava/lang/String;

.field private _daToken:Lcom/microsoft/onlineid/sts/DAToken;

.field private _encKeyNonce:[B

.field private _error:Lcom/microsoft/onlineid/sts/StsError;

.field private _expires:Ljava/util/Date;

.field private _flights:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private _inlineAuthUrl:Ljava/lang/String;

.field private _puid:Ljava/lang/String;

.field private _reqStatus:I

.field private final _sessionKey:[B

.field private _ticket:Lcom/microsoft/onlineid/Ticket;

.field private _ticketError:Lcom/microsoft/onlineid/sts/StsError;

.field private _ticketInlineAuthUrl:Ljava/lang/String;

.field private final _ticketScope:Lcom/microsoft/onlineid/ISecurityScope;

.field private _userProperties:Lcom/microsoft/onlineid/sts/UserProperties;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;[B)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;[BLcom/microsoft/onlineid/ISecurityScope;)V

    return-void
.end method

.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;[BLcom/microsoft/onlineid/ISecurityScope;)V
    .registers 6

    const-string v0, "http://www.w3.org/2003/05/soap-envelope"

    const-string v1, "Envelope"

    invoke-direct {p0, p1, v0, v1}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_sessionKey:[B

    iput-object p3, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_ticketScope:Lcom/microsoft/onlineid/ISecurityScope;

    return-void
.end method

.method private decryptEncryptedBlob(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {p1}, Lcom/microsoft/onlineid/sts/response/parsers/TextParsers;->parseBase64(Ljava/lang/String;)[B

    move-result-object p1

    new-instance v0, Lcom/microsoft/onlineid/sts/SharedKeyGenerator;

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_sessionKey:[B

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/sts/SharedKeyGenerator;-><init>([B)V

    sget-object v1, Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;->STSDigest:Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;

    iget-object v2, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_encKeyNonce:[B

    invoke-virtual {v0, v1, v2}, Lcom/microsoft/onlineid/sts/SharedKeyGenerator;->generateKey(Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;[B)[B

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/microsoft/onlineid/sts/Cryptography;->decryptWithAesCbcPcs5PaddingCipher([B[B)[B

    move-result-object p1

    sget-object v0, Lcom/microsoft/onlineid/internal/Strings;->Utf8Charset:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/microsoft/onlineid/sts/exception/StsParseException;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/sts/exception/StsParseException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    new-instance v0, Lcom/microsoft/onlineid/sts/exception/StsParseException;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/sts/exception/StsParseException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private parseAndSaveFromPassport(Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    new-instance p1, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;

    invoke-direct {p1, v0}, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {p1}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->parse()V

    invoke-direct {p0, p1}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->saveFromPassport(Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;)V

    return-void
.end method

.method private parseAndSaveFromTokenCollection(Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    new-instance p1, Lcom/microsoft/onlineid/sts/response/parsers/TokenCollectionParser;

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_ticketScope:Lcom/microsoft/onlineid/ISecurityScope;

    invoke-direct {p1, v0, v1}, Lcom/microsoft/onlineid/sts/response/parsers/TokenCollectionParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Lcom/microsoft/onlineid/ISecurityScope;)V

    invoke-virtual {p1}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->parse()V

    invoke-virtual {p1}, Lcom/microsoft/onlineid/sts/response/parsers/TokenCollectionParser;->getDAToken()Lcom/microsoft/onlineid/sts/DAToken;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_daToken:Lcom/microsoft/onlineid/sts/DAToken;

    invoke-virtual {p1}, Lcom/microsoft/onlineid/sts/response/parsers/TokenCollectionParser;->getTicket()Lcom/microsoft/onlineid/Ticket;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_ticket:Lcom/microsoft/onlineid/Ticket;

    invoke-virtual {p1}, Lcom/microsoft/onlineid/sts/response/parsers/TokenCollectionParser;->getTicketError()Lcom/microsoft/onlineid/sts/StsError;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_ticketError:Lcom/microsoft/onlineid/sts/StsError;

    invoke-virtual {p1}, Lcom/microsoft/onlineid/sts/response/parsers/TokenCollectionParser;->getTicketInlineAuthUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_ticketInlineAuthUrl:Ljava/lang/String;

    return-void
.end method

.method private saveFromPassport(Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;)V
    .registers 4

    invoke-virtual {p1}, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->getAuthState()I

    move-result v0

    iput v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_authState:I

    invoke-virtual {p1}, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->getReqStatus()I

    move-result v0

    iput v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_reqStatus:I

    invoke-virtual {p1}, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->getInlineAuthUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_inlineAuthUrl:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->getConfigVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_configVersion:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->getPuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_puid:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->getUserProperties()Lcom/microsoft/onlineid/sts/UserProperties;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_userProperties:Lcom/microsoft/onlineid/sts/UserProperties;

    invoke-virtual {p1}, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->getFlights()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_flights:Ljava/util/Set;

    iget-object p1, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_userProperties:Lcom/microsoft/onlineid/sts/UserProperties;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/microsoft/onlineid/sts/UserProperties$UserProperty;->CID:Lcom/microsoft/onlineid/sts/UserProperties$UserProperty;

    invoke-virtual {p1, v0}, Lcom/microsoft/onlineid/sts/UserProperties;->get(Lcom/microsoft/onlineid/sts/UserProperties$UserProperty;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/microsoft/onlineid/sts/exception/StsParseException;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "CID not found."

    invoke-direct {p1, v1, v0}, Lcom/microsoft/onlineid/sts/exception/StsParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getAuthState()I
    .registers 2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->verifyParseCalled()V

    iget v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_authState:I

    return v0
.end method

.method public getConfigVersion()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->verifyParseCalled()V

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_configVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getDAToken()Lcom/microsoft/onlineid/sts/DAToken;
    .registers 2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->verifyParseCalled()V

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_daToken:Lcom/microsoft/onlineid/sts/DAToken;

    return-object v0
.end method

.method public getEncKeyNonce()[B
    .registers 2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->verifyParseCalled()V

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_encKeyNonce:[B

    return-object v0
.end method

.method public getError()Lcom/microsoft/onlineid/sts/StsError;
    .registers 2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->verifyParseCalled()V

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_error:Lcom/microsoft/onlineid/sts/StsError;

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

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->verifyParseCalled()V

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_flights:Ljava/util/Set;

    return-object v0
.end method

.method public getInlineAuthUrl()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->verifyParseCalled()V

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_inlineAuthUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPuid()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->verifyParseCalled()V

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_puid:Ljava/lang/String;

    return-object v0
.end method

.method public getReqStatus()I
    .registers 2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->verifyParseCalled()V

    iget v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_reqStatus:I

    return v0
.end method

.method public getResponseExpiry()Ljava/util/Date;
    .registers 2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->verifyParseCalled()V

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_expires:Ljava/util/Date;

    return-object v0
.end method

.method public getTicket()Lcom/microsoft/onlineid/Ticket;
    .registers 2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->verifyParseCalled()V

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_ticket:Lcom/microsoft/onlineid/Ticket;

    return-object v0
.end method

.method public getTicketError()Lcom/microsoft/onlineid/sts/StsError;
    .registers 2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->verifyParseCalled()V

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_ticketError:Lcom/microsoft/onlineid/sts/StsError;

    return-object v0
.end method

.method public getTicketInlineAuthUrl()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->verifyParseCalled()V

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_ticketInlineAuthUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUserProperties()Lcom/microsoft/onlineid/sts/UserProperties;
    .registers 2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->verifyParseCalled()V

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_userProperties:Lcom/microsoft/onlineid/sts/UserProperties;

    return-object v0
.end method

.method public onParse()V
    .registers 7

    new-instance v0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_sessionKey:[B

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;-><init>([B)V

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->nextStartTagNoThrow()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->getPrefixedTagName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "S:Header"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v1, Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;

    iget-object v2, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v1, v2, v0}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;)V

    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->parse()V

    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;->getResponseExpiry()Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_expires:Ljava/util/Date;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;->getEncKeyNonce()[B

    move-result-object v2

    iput-object v2, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_encKeyNonce:[B

    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;->getPassportParser()Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;

    move-result-object v2

    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;->getEncryptedHeader()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v5, "S:Body"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v3, Lcom/microsoft/onlineid/sts/response/parsers/ServiceBodyParser;

    invoke-virtual {v0, p0}, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->computeNodeDigest(Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceBodyParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v3}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->parse()V

    invoke-virtual {v3}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceBodyParser;->getError()Lcom/microsoft/onlineid/sts/StsError;

    move-result-object v4

    iput-object v4, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_error:Lcom/microsoft/onlineid/sts/StsError;

    invoke-virtual {v3}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceBodyParser;->getEncryptedBody()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->skipElement()V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_encKeyNonce:[B

    if-nez v4, :cond_3

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->canValidate()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->validate()V

    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0, v1}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->decryptEncryptedBlob(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/microsoft/onlineid/internal/log/RedactableResponse;

    const-string v2, "Decrypted service response header: "

    .line 1
    invoke-static {v2, v0}, La/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-direct {v1, v2}, Lcom/microsoft/onlineid/internal/log/RedactableResponse;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Lcom/microsoft/onlineid/internal/log/IRedactable;)V

    invoke-direct {p0, v0}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->parseAndSaveFromPassport(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    if-eqz v2, :cond_6

    invoke-direct {p0, v2}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->saveFromPassport(Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;)V

    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_error:Lcom/microsoft/onlineid/sts/StsError;

    if-nez v0, :cond_7

    invoke-direct {p0, v3}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->decryptEncryptedBlob(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/microsoft/onlineid/internal/log/RedactableResponse;

    const-string v2, "Decrypted service response body: "

    .line 3
    invoke-static {v2, v0}, La/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-direct {v1, v2}, Lcom/microsoft/onlineid/internal/log/RedactableResponse;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Lcom/microsoft/onlineid/internal/log/IRedactable;)V

    invoke-direct {p0, v0}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->parseAndSaveFromTokenCollection(Ljava/lang/String;)V

    :cond_7
    return-void
.end method
