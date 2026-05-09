.class public abstract Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _parseCalled:Z

.field public final _parser:Lorg/xmlpull/v1/XmlPullParser;

.field public final _parserTag:Ljava/lang/String;

.field public final _parserTagNamespace:Ljava/lang/String;

.field private final _scope:Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parseCalled:Z

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    iput-object p3, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parserTag:Ljava/lang/String;

    iput-object p2, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parserTagNamespace:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->getLocation()Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_scope:Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;

    return-void
.end method

.method private finish()V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_scope:Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->finish()V

    return-void
.end method

.method private getPrefixedAttributeName(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v0, "Attribute should only be retrieved on a start or end tag."

    invoke-direct {p1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-ltz p1, :cond_3

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object p1

    :cond_2
    const-string v1, ":"

    .line 1
    invoke-static {v0, v1, p1}, La/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2
    :cond_3
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v0, "Invalid attribute location."

    invoke-direct {p1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getPrefixedNamespaceName(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v0, "Namespace name should only be retrieved on a start or end tag."

    invoke-direct {p1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    move-result v1

    if-lt p1, v1, :cond_3

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    move-result v0

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "xmlns"

    return-object p1

    :cond_2
    const-string v0, "xmlns:"

    .line 1
    invoke-static {v0, p1}, La/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2
    :cond_3
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v0, "Invalid namespace location."

    invoke-direct {p1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getPrefixedTagName(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v0, "Tag name should only be retrieved on a start or end tag."

    invoke-direct {p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object p0

    :cond_2
    const-string v1, ":"

    .line 1
    invoke-static {v0, v1, p0}, La/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getLocation()Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;
    .locals 2

    new-instance v0, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    return-object v0
.end method

.method public getPrefixedTagName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->getPrefixedTagName(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasMore()Z
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_scope:Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->hasMore()Z

    move-result v0

    return v0
.end method

.method public nextRequiredText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_scope:Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->nextRequiredText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextStartTag(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_scope:Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->nextStartTag(Ljava/lang/String;)V

    return-void
.end method

.method public nextStartTagNoThrow()Z
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_scope:Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->nextStartTagNoThrow()Z

    move-result v0

    return v0
.end method

.method public nextStartTagNoThrow(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_scope:Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->nextStartTagNoThrow(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public abstract onParse()V
.end method

.method public final parse()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parseCalled:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parseCalled:Z

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_scope:Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->getDepth()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    :cond_0
    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parserTagNamespace:Ljava/lang/String;

    iget-object v4, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parserTag:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->onParse()V

    invoke-direct {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->finish()V

    return-void

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Parse has already been called."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    new-instance v2, Lcom/microsoft/onlineid/sts/exception/StsParseException;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "XML was either invalid or failed to parse."

    invoke-direct {v2, v3, v1, v0}, Lcom/microsoft/onlineid/sts/exception/StsParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    throw v2
.end method

.method public readRawOuterXml()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->getLocation()Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->hasMore()Z

    move-result v2

    const-string v3, "</"

    const/16 v4, 0x3e

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v5, 0x2

    if-eq v2, v5, :cond_3

    const/4 v5, 0x3

    if-eq v2, v5, :cond_1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v2, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v2}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->getPrefixedTagName(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    const/16 v2, 0x3c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->getPrefixedTagName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    move-result v2

    iget-object v3, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    move-result v3

    :goto_1
    const/16 v5, 0x22

    const-string v6, "=\""

    const/16 v7, 0x20

    if-ge v2, v3, :cond_4

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->getPrefixedNamespaceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6, v2}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceUri(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_2
    iget-object v3, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->getPrefixedAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :goto_3
    iget-object v2, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v1}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->getPrefixedTagName(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public skipElement()V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_scope:Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->skipElement()V

    return-void
.end method

.method public verifyParseCalled()V
    .locals 2

    iget-boolean v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parseCalled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call this method without calling parse."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
