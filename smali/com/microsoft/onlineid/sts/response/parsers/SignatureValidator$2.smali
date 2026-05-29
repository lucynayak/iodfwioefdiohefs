.class Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator$2;
.super Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->parseSignedInfoNode(Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;


# direct methods
.method public constructor <init>(Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator$2;->this$0:Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;

    invoke-direct {p0, p2, p3, p4}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onParse()V
    .registers 5

    :goto_0
    const-string v0, "Reference"

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->nextStartTagNoThrow(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v1, 0x0

    const-string v2, "URI"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->getLocation()Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;

    move-result-object v1

    const-string v2, "DigestValue"

    invoke-virtual {v1, v2}, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->nextStartTagNoThrow(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->nextRequiredText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator$2;->this$0:Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;

    invoke-static {v2}, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->access$300(Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/microsoft/onlineid/sts/exception/StsSignatureException;

    const-string v2, "Invalid digest: "

    .line 1
    invoke-static {v2, v1}, La/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    .line 2
    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/sts/exception/StsSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_1
    new-instance v1, Lcom/microsoft/onlineid/sts/exception/StsSignatureException;

    const-string v2, "Invalid digest URI: "

    .line 3
    invoke-static {v2, v0}, La/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    .line 4
    invoke-direct {v1, v0, v2}, Lcom/microsoft/onlineid/sts/exception/StsSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_2
    new-instance v1, Lcom/microsoft/onlineid/sts/exception/StsSignatureException;

    const-string v2, "Missing DigestValue for URI "

    .line 5
    invoke-static {v2, v0}, La/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    .line 6
    invoke-direct {v1, v0, v2}, Lcom/microsoft/onlineid/sts/exception/StsSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_3
    return-void
.end method
