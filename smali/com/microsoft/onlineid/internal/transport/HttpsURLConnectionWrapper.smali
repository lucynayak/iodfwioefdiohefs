.class public Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _connection:Ljavax/net/ssl/HttpsURLConnection;

.field private _url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->_url:Ljava/net/URL;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "URL cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private verifyConnectionIsOpened()V
    .registers 3

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->_connection:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "openConnection should have been called first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->verifyConnectionIsOpened()V

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->_connection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public disconnect()V
    .registers 2

    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->verifyConnectionIsOpened()V

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->_connection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void
.end method

.method public getContentLength()I
    .registers 2

    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->verifyConnectionIsOpened()V

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->_connection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    move-result v0

    return v0
.end method

.method public getDate()J
    .registers 3

    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->verifyConnectionIsOpened()V

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->_connection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .registers 2

    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->verifyConnectionIsOpened()V

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->_connection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2

    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->verifyConnectionIsOpened()V

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->_connection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 2

    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->verifyConnectionIsOpened()V

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->_connection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->verifyConnectionIsOpened()V

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->_connection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseCode()I
    .registers 2

    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->verifyConnectionIsOpened()V

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->_connection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    return v0
.end method

.method public openConnection()V
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->_url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->_connection:Ljavax/net/ssl/HttpsURLConnection;

    return-void
.end method

.method public setConnectTimeout(I)V
    .registers 3

    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->verifyConnectionIsOpened()V

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->_connection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    return-void
.end method

.method public setDoInput(Z)V
    .registers 3

    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->verifyConnectionIsOpened()V

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->_connection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setDoInput(Z)V

    return-void
.end method

.method public setDoOutput(Z)V
    .registers 3

    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->verifyConnectionIsOpened()V

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->_connection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    return-void
.end method

.method public setReadTimeout(I)V
    .registers 3

    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->verifyConnectionIsOpened()V

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->_connection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->verifyConnectionIsOpened()V

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->_connection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-void
.end method

.method public setUrl(Ljava/net/URL;)V
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->disconnect()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/Assertion;->check(Z)V

    :goto_0
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->_url:Ljava/net/URL;

    return-void
.end method

.method public setUseCaches(Z)V
    .registers 3

    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->verifyConnectionIsOpened()V

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->_connection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    return-void
.end method
