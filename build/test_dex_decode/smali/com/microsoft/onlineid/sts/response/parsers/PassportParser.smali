.class public Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;
.super Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;
.source "SourceFile"


# instance fields
.field private _authState:I

.field private _configVersion:Ljava/lang/String;

.field private final _flights:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private _inlineAuthUrl:Ljava/lang/String;

.field private _nonce:Ljava/lang/String;

.field private _puid:Ljava/lang/String;

.field private _reqStatus:I

.field private _userProperties:Lcom/microsoft/onlineid/sts/UserProperties;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "pp"

    invoke-direct {p0, p1, v0, v1}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->_flights:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public getAuthState()I
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->verifyParseCalled()V

    iget v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->_authState:I

    return v0
.end method

.method public getConfigVersion()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->verifyParseCalled()V

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->_configVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getFlights()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->verifyParseCalled()V

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->_flights:Ljava/util/Set;

    return-object v0
.end method

.method public getInlineAuthUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->verifyParseCalled()V

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->_inlineAuthUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->verifyParseCalled()V

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->_nonce:Ljava/lang/String;

    return-object v0
.end method

.method public getPuid()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->verifyParseCalled()V

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->_puid:Ljava/lang/String;

    return-object v0
.end method

.method public getReqStatus()I
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->verifyParseCalled()V

    iget v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->_reqStatus:I

    return v0
.end method

.method public getUserProperties()Lcom/microsoft/onlineid/sts/UserProperties;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->verifyParseCalled()V

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->_userProperties:Lcom/microsoft/onlineid/sts/UserProperties;

    return-object v0
.end method

.method public onParse()V
    .locals 5

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->nextStartTagNoThrow()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->getPrefixedTagName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "psf:authstate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->nextRequiredText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/onlineid/sts/response/parsers/TextParsers;->parseIntHex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->_authState:I

    goto :goto_0

    :cond_1
    const-string v1, "psf:reqstatus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->nextRequiredText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/onlineid/sts/response/parsers/TextParsers;->parseIntHex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->_reqStatus:I

    goto :goto_0

    :cond_2
    const-string v1, "psf:inlineauthurl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->nextRequiredText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->_inlineAuthUrl:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v1, "psf:signChallenge"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->nextRequiredText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->_nonce:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v1, "psf:configVersion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->nextRequiredText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->_configVersion:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string v1, "psf:PUID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->nextRequiredText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->_puid:Ljava/lang/String;

    goto :goto_0

    :cond_6
    const-string v1, "psf:flights"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->nextRequiredText()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->_flights:Ljava/util/Set;

    invoke-static {v3}, Lcom/microsoft/onlineid/sts/response/parsers/TextParsers;->parseIntHex(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    const-string v1, "psf:credProperties"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/microsoft/onlineid/sts/response/parsers/UserPropertiesParser;

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/sts/response/parsers/UserPropertiesParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->parse()V

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/UserPropertiesParser;->getUserProperties()Lcom/microsoft/onlineid/sts/UserProperties;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->_userProperties:Lcom/microsoft/onlineid/sts/UserProperties;

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->skipElement()V

    goto/16 :goto_0

    :cond_9
    return-void
.end method
