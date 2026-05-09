.class public abstract Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseType:",
        "Lcom/microsoft/onlineid/sts/response/AbstractStsResponse;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final AppIdentifier:Ljava/lang/String; = "MSAAndroidApp"

.field public static final DeviceType:Ljava/lang/String; = "Android"

.field public static final StsBinaryVersion:Ljava/lang/String; = "11"


# instance fields
.field private _clockSkewManager:Lcom/microsoft/onlineid/sts/ClockSkewManager;

.field private _destination:Ljava/net/URL;

.field private _msaAppVersionCode:I

.field private _transportFactory:Lcom/microsoft/onlineid/internal/transport/TransportFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private updateClockSkew(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;->getClockSkewManager()Lcom/microsoft/onlineid/sts/ClockSkewManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/microsoft/onlineid/sts/ClockSkewManager;->onTimestampReceived(J)V

    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object p1

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;->getClockSkewManager()Lcom/microsoft/onlineid/sts/ClockSkewManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/microsoft/onlineid/sts/ClockSkewManager;->getSkewMilliseconds()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logClockSkew(J)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract buildRequest()Lorg/w3c/dom/Document;
.end method

.method public final createBlankDocument(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;
    .locals 2

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    :try_start_0
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->getDOMImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lorg/w3c/dom/DOMImplementation;->createDocument(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)Lorg/w3c/dom/Document;

    move-result-object p1
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    invoke-static {p2}, Lcom/microsoft/onlineid/internal/Assertion;->check(Z)V

    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Invalid parser configuration."

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getAnalyticsRequestType()Ljava/lang/String;
    .locals 1

    const-string v0, "(none)"

    return-object v0
.end method

.method public getClockSkewManager()Lcom/microsoft/onlineid/sts/ClockSkewManager;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;->_clockSkewManager:Lcom/microsoft/onlineid/sts/ClockSkewManager;

    return-object v0
.end method

.method public getDestination()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;->_destination:Ljava/net/URL;

    return-object v0
.end method

.method public abstract getEndpoint()Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;
.end method

.method public getMsaAppVersionCode()I
    .locals 1

    iget v0, p0, Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;->_msaAppVersionCode:I

    return v0
.end method

.method public abstract instantiateResponse()Lcom/microsoft/onlineid/sts/response/AbstractStsResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResponseType;"
        }
    .end annotation
.end method

.method public send()Lcom/microsoft/onlineid/sts/response/AbstractStsResponse;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResponseType;"
        }
    .end annotation

    const-string v0, "Unable to parse stream."

    const-string v1, "Unable to close stream"

    const-string v2, "Problem occurred transforming XML document"

    const-string v3, "Unable to configure Transformer"

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;->instantiateResponse()Lcom/microsoft/onlineid/sts/response/AbstractStsResponse;

    move-result-object v4

    iget-object v5, p0, Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;->_transportFactory:Lcom/microsoft/onlineid/internal/transport/TransportFactory;

    invoke-virtual {v5}, Lcom/microsoft/onlineid/internal/transport/TransportFactory;->createTransport()Lcom/microsoft/onlineid/internal/transport/Transport;

    move-result-object v5

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;->getDestination()Ljava/net/URL;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/microsoft/onlineid/internal/transport/Transport;->openPostRequest(Ljava/net/URL;)V

    invoke-virtual {v5}, Lcom/microsoft/onlineid/internal/transport/Transport;->getRequestStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;->getAnalyticsRequestType()Ljava/lang/String;

    move-result-object v9

    const-string v10, "STS requests"

    invoke-interface {v7, v10, v8, v9}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->createTimedEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/ITimedAnalyticsEvent;

    move-result-object v7

    invoke-interface {v7}, Lcom/microsoft/onlineid/analytics/ITimedAnalyticsEvent;->start()Lcom/microsoft/onlineid/analytics/ITimedAnalyticsEvent;

    :try_start_0
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v8

    invoke-virtual {v8}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v8

    invoke-static {}, Lcom/microsoft/onlineid/internal/configuration/Settings;->isDebugBuild()Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v9, Ljava/io/CharArrayWriter;

    invoke-direct {v9}, Ljava/io/CharArrayWriter;-><init>()V

    new-instance v10, Ljavax/xml/transform/dom/DOMSource;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;->buildRequest()Lorg/w3c/dom/Document;

    move-result-object v11

    invoke-direct {v10, v11}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v11, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v11, v9}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v8, v10, v11}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    invoke-virtual {v9}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const/4 v11, 0x1

    aput-object v8, v10, v11

    new-instance v11, Lcom/microsoft/onlineid/internal/log/RedactableXml;

    const-string v13, "%s: %s"

    invoke-static {v9, v13, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-array v10, v12, [Ljava/lang/String;

    invoke-direct {v11, v9, v10}, Lcom/microsoft/onlineid/internal/log/RedactableXml;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {v11}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Lcom/microsoft/onlineid/internal/log/IRedactable;)V

    sget-object v9, Lcom/microsoft/onlineid/internal/Strings;->Utf8Charset:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :cond_0
    new-instance v9, Ljavax/xml/transform/dom/DOMSource;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;->buildRequest()Lorg/w3c/dom/Document;

    move-result-object v10

    invoke-direct {v9, v10}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v10, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v10, v6}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v8, v9, v10}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    :goto_0
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v5}, Lcom/microsoft/onlineid/internal/transport/Transport;->getResponseStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v5}, Lcom/microsoft/onlineid/internal/transport/Transport;->getResponseDate()J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;->updateClockSkew(J)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v4, v6}, Lcom/microsoft/onlineid/sts/response/AbstractStsResponse;->parse(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v7}, Lcom/microsoft/onlineid/analytics/ITimedAnalyticsEvent;->end()V

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v5}, Lcom/microsoft/onlineid/internal/transport/Transport;->closeConnection()V

    return-object v4

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_3
    invoke-static {v0, v4}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v8, Lcom/microsoft/onlineid/exception/NetworkException;

    invoke-direct {v8, v0, v4}, Lcom/microsoft/onlineid/exception/NetworkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    :try_start_4
    invoke-interface {v7}, Lcom/microsoft/onlineid/analytics/ITimedAnalyticsEvent;->end()V

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_4
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljavax/xml/transform/TransformerException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_5
    invoke-static {v1, v0}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v2, Lcom/microsoft/onlineid/exception/NetworkException;

    invoke-direct {v2, v1, v0}, Lcom/microsoft/onlineid/exception/NetworkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_2
    move-exception v0

    invoke-static {v2, v0}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    invoke-static {v3, v0}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_2
    invoke-virtual {v5}, Lcom/microsoft/onlineid/internal/transport/Transport;->closeConnection()V

    throw v0
.end method

.method public setClockSkewManager(Lcom/microsoft/onlineid/sts/ClockSkewManager;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;->_clockSkewManager:Lcom/microsoft/onlineid/sts/ClockSkewManager;

    return-void
.end method

.method public setDestination(Ljava/net/URL;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;->_destination:Ljava/net/URL;

    return-void
.end method

.method public setMsaAppVersionCode(I)V
    .locals 0

    iput p1, p0, Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;->_msaAppVersionCode:I

    return-void
.end method

.method public setTransportFactory(Lcom/microsoft/onlineid/internal/transport/TransportFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;->_transportFactory:Lcom/microsoft/onlineid/internal/transport/TransportFactory;

    return-void
.end method
