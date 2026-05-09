.class public Lcom/microsoft/onlineid/sts/response/parsers/FaultParser;
.super Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;
.source "SourceFile"


# instance fields
.field private _error:Lcom/microsoft/onlineid/sts/StsError;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2

    const-string v0, "http://www.w3.org/2003/05/soap-envelope"

    const-string v1, "Fault"

    invoke-direct {p0, p1, v0, v1}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getError()Lcom/microsoft/onlineid/sts/StsError;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->verifyParseCalled()V

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/FaultParser;->_error:Lcom/microsoft/onlineid/sts/StsError;

    return-object v0
.end method

.method public onParse()V
    .locals 8

    const-string v0, "S:Detail"

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->nextStartTag(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->getLocation()Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;

    move-result-object v0

    const-string v1, "psf:error"

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->nextStartTag(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->getLocation()Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->nextStartTagNoThrow()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->getPrefixedTagName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "psf:value"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->nextRequiredText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/microsoft/onlineid/sts/response/parsers/TextParsers;->parseIntHex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v6, "psf:internalerror"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->getLocation()Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;

    move-result-object v5

    :goto_1
    invoke-virtual {v5}, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->nextStartTagNoThrow()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->getPrefixedTagName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "psf:code"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->nextRequiredText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/microsoft/onlineid/sts/response/parsers/TextParsers;->parseIntHex(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    :cond_2
    const-string v7, "psf:text"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v4, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->skipElement()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->skipElement()V

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->finish()V

    const/4 v0, 0x0

    if-eqz v2, :cond_7

    if-eqz v3, :cond_6

    new-instance v0, Lcom/microsoft/onlineid/sts/StsError;

    new-instance v1, Lcom/microsoft/onlineid/sts/IntegerCodeServerError;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v1, v2, v3, v4}, Lcom/microsoft/onlineid/sts/IntegerCodeServerError;-><init>(IILjava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/sts/StsError;-><init>(Lcom/microsoft/onlineid/sts/IntegerCodeServerError;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/FaultParser;->_error:Lcom/microsoft/onlineid/sts/StsError;

    return-void

    :cond_6
    new-instance v1, Lcom/microsoft/onlineid/sts/exception/StsParseException;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "psf:code node does not exist."

    invoke-direct {v1, v2, v0}, Lcom/microsoft/onlineid/sts/exception/StsParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_7
    new-instance v1, Lcom/microsoft/onlineid/sts/exception/StsParseException;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "psf:value node does not exist."

    invoke-direct {v1, v2, v0}, Lcom/microsoft/onlineid/sts/exception/StsParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method
