.class public Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final _computedDigests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final _parsedDigests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final _sessionKey:[B

.field private _signKeyNonce:[B

.field private _signatureValue:Ljava/lang/String;

.field private _signedInfoXml:Ljava/lang/String;

.field private final _signer:Lcom/microsoft/onlineid/sts/XmlSigner;


# direct methods
.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->_sessionKey:[B

    new-instance p1, Lcom/microsoft/onlineid/sts/XmlSigner;

    invoke-direct {p1}, Lcom/microsoft/onlineid/sts/XmlSigner;-><init>()V

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->_signer:Lcom/microsoft/onlineid/sts/XmlSigner;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->_computedDigests:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->_parsedDigests:Ljava/util/Map;

    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->parseSignedInfoNode(Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->_signatureValue:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->_signatureValue:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->_signedInfoXml:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->_parsedDigests:Ljava/util/Map;

    return-object p0
.end method

.method private parseSignedInfoNode(Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;)V
    .registers 5

    invoke-virtual {p1}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->readRawOuterXml()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->_signedInfoXml:Ljava/lang/String;

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p1

    new-instance v0, Ljava/io/StringReader;

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->_signedInfoXml:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    new-instance v0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator$2;

    const/4 v1, 0x0

    const-string v2, "SignedInfo"

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator$2;-><init>(Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->parse()V

    return-void
.end method


# virtual methods
.method public canValidate()Z
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->_sessionKey:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->_signedInfoXml:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->_signKeyNonce:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->_signatureValue:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public computeNodeDigest(Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;)Lorg/xmlpull/v1/XmlPullParser;
    .registers 5

    iget-object v0, p1, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "Id"

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->readRawOuterXml()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->_signer:Lcom/microsoft/onlineid/sts/XmlSigner;

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/sts/XmlSigner;->computeDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->_computedDigests:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->_computedDigests:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/microsoft/onlineid/sts/exception/StsSignatureException;

    const-string v0, "Duplicate element for Id=\""

    const-string v2, "\""

    .line 1
    invoke-static {v0, v1, v2}, La/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-direct {p1, v0, v1}, Lcom/microsoft/onlineid/sts/exception/StsSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public parseSignatureNode(Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;)V
    .registers 5

    new-instance v0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator$1;

    iget-object p1, p1, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v1, "http://www.w3.org/2000/09/xmldsig#"

    const-string v2, "Signature"

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator$1;-><init>(Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->parse()V

    return-void
.end method

.method public setSignKeyNonce([B)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->_signKeyNonce:[B

    return-void
.end method

.method public validate()V
    .registers 9

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->_computedDigests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v5, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->_parsedDigests:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->_parsedDigests:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v4

    aput-object v5, v6, v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v6, v2

    new-instance v1, Lcom/microsoft/onlineid/sts/exception/StsSignatureException;

    const-string v2, "Digest mismatch: id=\"%s\", expected=\"%s\", actual=\"%s\""

    invoke-static {v0, v2, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-direct {v1, v0, v2}, Lcom/microsoft/onlineid/sts/exception/StsSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_2
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->_parsedDigests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->_signedInfoXml:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->_signKeyNonce:[B

    if-eqz v0, :cond_4

    array-length v1, v0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->_signer:Lcom/microsoft/onlineid/sts/XmlSigner;

    iget-object v5, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->_sessionKey:[B

    iget-object v6, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->_signedInfoXml:Ljava/lang/String;

    invoke-virtual {v1, v5, v0, v6}, Lcom/microsoft/onlineid/sts/XmlSigner;->computeSignatureForResponse([B[BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->_signatureValue:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->_signatureValue:Ljava/lang/String;

    aput-object v5, v2, v4

    aput-object v0, v2, v3

    new-instance v0, Lcom/microsoft/onlineid/sts/exception/StsSignatureException;

    const-string v3, "Signature mismatch: expected=\"%s\", actual=\"%s\""

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/sts/exception/StsSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_4
    new-instance v0, Lcom/microsoft/onlineid/sts/exception/StsSignatureException;

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "SignKey nonce was missing or invalid."

    invoke-direct {v0, v2, v1}, Lcom/microsoft/onlineid/sts/exception/StsSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_5
    new-instance v0, Lcom/microsoft/onlineid/sts/exception/StsSignatureException;

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "<SignedInfo> node was missing."

    invoke-direct {v0, v2, v1}, Lcom/microsoft/onlineid/sts/exception/StsSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_6
    new-instance v0, Lcom/microsoft/onlineid/sts/exception/StsSignatureException;

    const-string v1, "Failed to compute digests for element ids "

    .line 1
    invoke-static {v1}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->_parsedDigests:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/sts/exception/StsSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method
