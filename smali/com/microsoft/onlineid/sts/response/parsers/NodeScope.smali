.class Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final _depth:I

.field private final _parser:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result p1

    iput p1, p0, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->_depth:I

    return-void
.end method


# virtual methods
.method public finish()V
    .registers 2

    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->hasMore()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getDepth()I
    .registers 2

    iget v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->_depth:I

    return v0
.end method

.method public hasMore()Z
    .registers 5

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->_depth:I

    iget-object v3, p0, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-ne v0, v3, :cond_2

    return v2

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public nextRequiredText()Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    new-instance v1, Lcom/microsoft/onlineid/sts/exception/StsParseException;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v0, "Expected text of %s is empty"

    invoke-static {v2, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-direct {v1, v0, v2}, Lcom/microsoft/onlineid/sts/exception/StsParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method public nextStartTag(Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->nextStartTagNoThrow(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/microsoft/onlineid/sts/exception/StsParseException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Required node \"%s\" is missing."

    invoke-direct {v0, p1, v1}, Lcom/microsoft/onlineid/sts/exception/StsParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public nextStartTagNoThrow()Z
    .registers 3

    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->hasMore()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public nextStartTagNoThrow(Ljava/lang/String;)Z
    .registers 3

    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->nextStartTagNoThrow()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->getPrefixedTagName(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->skipElement()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public skipElement()V
    .registers 4

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    iget v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->_depth:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->finish()V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-ne v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    return-void

    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0
.end method
