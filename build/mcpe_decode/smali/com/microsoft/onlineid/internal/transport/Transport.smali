.class public Lcom/microsoft/onlineid/internal/transport/Transport;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final GetMethod:Ljava/lang/String; = "GET"

.field private static final PostMethod:Ljava/lang/String; = "POST"

.field public static final SdkIdentifier:Ljava/lang/String; = "MsaAndroidSdk"


# instance fields
.field private _connectionTimeoutMilliseconds:I

.field private _customUserAgentString:Ljava/lang/String;

.field private _httpsURLConnectionWrapper:Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;

.field private _readTimeoutMilliseconds:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xea60

    iput v0, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_connectionTimeoutMilliseconds:I

    const/16 v0, 0x7530

    iput v0, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_readTimeoutMilliseconds:I

    return-void
.end method

.method public static buildUserAgentString(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/microsoft/onlineid/internal/PackageInfoHelper;->getCurrentAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MsaAndroidSdk/"

    .line 1
    invoke-static {v1}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    invoke-static {p0}, Lcom/microsoft/onlineid/internal/Resources;->getSdkVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/microsoft/onlineid/internal/transport/Transport;->mergeUserAgentStrings(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initializeConnection(Ljava/net/URL;)V
    .locals 2

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_httpsURLConnectionWrapper:Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;-><init>(Ljava/net/URL;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_httpsURLConnectionWrapper:Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->setUrl(Ljava/net/URL;)V

    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_httpsURLConnectionWrapper:Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->openConnection()V

    iget-object p1, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_httpsURLConnectionWrapper:Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;

    iget v0, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_connectionTimeoutMilliseconds:I

    invoke-virtual {p1, v0}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->setConnectTimeout(I)V

    iget-object p1, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_httpsURLConnectionWrapper:Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;

    iget v0, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_readTimeoutMilliseconds:I

    invoke-virtual {p1, v0}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->setReadTimeout(I)V

    iget-object p1, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_httpsURLConnectionWrapper:Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->setDoInput(Z)V

    iget-object p1, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_httpsURLConnectionWrapper:Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->setUseCaches(Z)V

    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/transport/Transport;->setUserAgent()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/microsoft/onlineid/exception/NetworkException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/microsoft/onlineid/exception/NetworkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static mergeUserAgentStrings(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    const-string v0, "; "

    .line 1
    invoke-static {p0, v0, p1}, La/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private setUserAgent()V
    .locals 3

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_customUserAgentString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/Assertion;->check(Z)V

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_httpsURLConnectionWrapper:Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;

    const-string v1, "http.agent"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_customUserAgentString:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/microsoft/onlineid/internal/transport/Transport;->mergeUserAgentStrings(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "User-Agent"

    invoke-virtual {v0, v2, v1}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_httpsURLConnectionWrapper:Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public appendCustomUserAgentString(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_customUserAgentString:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/microsoft/onlineid/internal/transport/Transport;->mergeUserAgentStrings(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_customUserAgentString:Ljava/lang/String;

    return-void
.end method

.method public closeConnection()V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_httpsURLConnectionWrapper:Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->disconnect()V

    return-void
.end method

.method public getConnectionTimeoutMilliseconds()I
    .locals 1

    iget v0, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_connectionTimeoutMilliseconds:I

    return v0
.end method

.method public getReadTimeoutMilliseconds()I
    .locals 1

    iget v0, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_readTimeoutMilliseconds:I

    return v0
.end method

.method public getRequestStream()Ljava/io/OutputStream;
    .locals 2

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_httpsURLConnectionWrapper:Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_httpsURLConnectionWrapper:Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/microsoft/onlineid/exception/NetworkException;

    invoke-direct {v1, v0}, Lcom/microsoft/onlineid/exception/NetworkException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    new-instance v0, Lcom/microsoft/onlineid/exception/NetworkException;

    const-string v1, "A GET request cannot have an OutputStream"

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/exception/NetworkException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getResponseCode()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_httpsURLConnectionWrapper:Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->getResponseCode()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/microsoft/onlineid/exception/NetworkException;

    invoke-direct {v1, v0}, Lcom/microsoft/onlineid/exception/NetworkException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getResponseDate()J
    .locals 2

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_httpsURLConnectionWrapper:Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getResponseStream()Ljava/io/InputStream;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_httpsURLConnectionWrapper:Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_httpsURLConnectionWrapper:Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_httpsURLConnectionWrapper:Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/microsoft/onlineid/exception/NetworkException;

    invoke-direct {v1, v0}, Lcom/microsoft/onlineid/exception/NetworkException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public openGetRequest(Ljava/net/URL;)V
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/microsoft/onlineid/internal/transport/Transport;->initializeConnection(Ljava/net/URL;)V

    iget-object p1, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_httpsURLConnectionWrapper:Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;

    const-string v0, "GET"

    invoke-virtual {p1, v0}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->setRequestMethod(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/microsoft/onlineid/exception/NetworkException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/microsoft/onlineid/exception/NetworkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "URL cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public openPostRequest(Ljava/net/URL;)V
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/microsoft/onlineid/internal/transport/Transport;->initializeConnection(Ljava/net/URL;)V

    iget-object p1, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_httpsURLConnectionWrapper:Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;

    const-string v0, "POST"

    invoke-virtual {p1, v0}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->setRequestMethod(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_httpsURLConnectionWrapper:Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->setDoOutput(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/microsoft/onlineid/exception/NetworkException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/microsoft/onlineid/exception/NetworkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "URL cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setConnectionTimeoutMilliseconds(I)V
    .locals 1

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_connectionTimeoutMilliseconds:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Connection timeout value is out of range"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setHttpsURLConnectionWrapper(Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_httpsURLConnectionWrapper:Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;

    return-void
.end method

.method public setReadTimeoutMilliseconds(I)V
    .locals 1

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_readTimeoutMilliseconds:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Read timeout value is out of range"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUseCaches(Z)V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_httpsURLConnectionWrapper:Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->setUseCaches(Z)V

    return-void
.end method
