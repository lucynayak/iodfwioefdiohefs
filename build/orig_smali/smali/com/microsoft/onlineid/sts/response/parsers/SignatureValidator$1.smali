.class Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator$1;
.super Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->parseSignatureNode(Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;


# direct methods
.method public constructor <init>(Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator$1;->this$0:Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;

    invoke-direct {p0, p2, p3, p4}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onParse()V
    .locals 3

    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->nextStartTagNoThrow()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->getPrefixedTagName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SignedInfo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator$1;->this$0:Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;

    invoke-static {v0, p0}, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->access$000(Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;)V

    goto :goto_0

    :cond_0
    const-string v1, "SignatureValue"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator$1;->this$0:Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->nextRequiredText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->access$102(Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->skipElement()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator$1;->this$0:Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;

    invoke-static {v0}, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->access$100(Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator$1;->this$0:Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;

    invoke-static {v0}, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->access$200(Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    new-instance v0, Lcom/microsoft/onlineid/sts/exception/StsSignatureException;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "<SignedInfo> node was missing."

    invoke-direct {v0, v2, v1}, Lcom/microsoft/onlineid/sts/exception/StsSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_4
    new-instance v0, Lcom/microsoft/onlineid/sts/exception/StsSignatureException;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "<SignatureValue> node was missing."

    invoke-direct {v0, v2, v1}, Lcom/microsoft/onlineid/sts/exception/StsSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method
