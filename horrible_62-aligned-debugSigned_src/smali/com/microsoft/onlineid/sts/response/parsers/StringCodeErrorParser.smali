.class public Lcom/microsoft/onlineid/sts/response/parsers/StringCodeErrorParser;
.super Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;
.source "SourceFile"


# instance fields
.field private _code:Ljava/lang/String;

.field private _error:Lcom/microsoft/onlineid/sts/StringCodeServerError;

.field private _subCode:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getError()Lcom/microsoft/onlineid/sts/StringCodeServerError;
    .registers 2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->verifyParseCalled()V

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/StringCodeErrorParser;->_error:Lcom/microsoft/onlineid/sts/StringCodeServerError;

    return-object v0
.end method

.method public onParse()V
    .registers 6

    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->nextStartTagNoThrow()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Error"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v1, ""

    const-string v2, "Code"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/StringCodeErrorParser;->_code:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v2, "ErrorSubcode"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lcom/microsoft/onlineid/internal/Integers;->parseIntHex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/microsoft/onlineid/sts/response/parsers/StringCodeErrorParser;->_subCode:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Lcom/microsoft/onlineid/sts/exception/StsParseException;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v1

    const-string v0, "Hex error code could not be parsed: %s."

    invoke-direct {v3, v0, v2, v4}, Lcom/microsoft/onlineid/sts/exception/StsParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    throw v3

    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->skipElement()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/StringCodeErrorParser;->_code:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/microsoft/onlineid/sts/response/parsers/StringCodeErrorParser;->_subCode:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    new-instance v1, Lcom/microsoft/onlineid/sts/StringCodeServerError;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/microsoft/onlineid/sts/StringCodeServerError;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/StringCodeErrorParser;->_error:Lcom/microsoft/onlineid/sts/StringCodeServerError;

    return-void

    :cond_3
    new-instance v0, Lcom/microsoft/onlineid/sts/exception/StsParseException;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Required node \"ErrorSubcode\" is missing."

    invoke-direct {v0, v2, v1}, Lcom/microsoft/onlineid/sts/exception/StsParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_4
    new-instance v0, Lcom/microsoft/onlineid/sts/exception/StsParseException;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Required node \"Error\" is missing or empty."

    invoke-direct {v0, v2, v1}, Lcom/microsoft/onlineid/sts/exception/StsParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method
