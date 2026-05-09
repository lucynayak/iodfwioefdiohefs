.class public abstract Lcom/microsoft/onlineid/sts/response/AbstractStsResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getError()Lcom/microsoft/onlineid/sts/StsError;
.end method

.method public parse(Ljava/io/InputStream;)V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    sget-object v2, Lcom/microsoft/onlineid/internal/Strings;->Utf8Charset:Ljava/nio/charset/Charset;

    invoke-static {p1, v2}, Lcom/microsoft/onlineid/internal/Strings;->fromStream(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x1

    aput-object p1, v3, v4

    new-instance v4, Lcom/microsoft/onlineid/internal/log/RedactableResponse;

    const-string v5, "%s: %s"

    invoke-static {v2, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/microsoft/onlineid/internal/log/RedactableResponse;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Lcom/microsoft/onlineid/internal/log/IRedactable;)V

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-virtual {p0, v1}, Lcom/microsoft/onlineid/sts/response/AbstractStsResponse;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/AbstractStsResponse;->getError()Lcom/microsoft/onlineid/sts/StsError;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/AbstractStsResponse;->getError()Lcom/microsoft/onlineid/sts/StsError;

    move-result-object p1

    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v1

    const-string v2, "Server errors"

    invoke-virtual {p1}, Lcom/microsoft/onlineid/sts/StsError;->getCode()Lcom/microsoft/onlineid/sts/StsErrorCode;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/microsoft/onlineid/sts/StsError;->getOriginalErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, v3, p1}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    new-instance v1, Lcom/microsoft/onlineid/sts/exception/StsParseException;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "XML response could not be properly parsed."

    invoke-direct {v1, v2, p1, v0}, Lcom/microsoft/onlineid/sts/exception/StsParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    throw v1
.end method

.method public abstract parse(Lorg/xmlpull/v1/XmlPullParser;)V
.end method

.method public succeeded()Z
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/AbstractStsResponse;->getError()Lcom/microsoft/onlineid/sts/StsError;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
