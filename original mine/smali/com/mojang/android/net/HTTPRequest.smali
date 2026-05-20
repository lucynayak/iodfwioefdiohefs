.class public Lcom/mojang/android/net/HTTPRequest;
.super Ljava/lang/Object;
.source "HTTPRequest.java"


# instance fields
.field mCookieData:Ljava/lang/String;

.field mHTTPRequest:Lorg/apache/http/client/methods/HttpRequestBase;

.field mRequestBody:Ljava/lang/String;

.field mRequestContentType:Ljava/lang/String;

.field mResponse:Lcom/mojang/android/net/HTTPResponse;

.field mURL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mojang/android/net/HTTPRequest;->mHTTPRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/mojang/android/net/HTTPRequest;->mURL:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/mojang/android/net/HTTPRequest;->mRequestBody:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/mojang/android/net/HTTPRequest;->mCookieData:Ljava/lang/String;

    .line 30
    const-string v0, "text/plain"

    iput-object v0, p0, Lcom/mojang/android/net/HTTPRequest;->mRequestContentType:Ljava/lang/String;

    .line 31
    new-instance v0, Lcom/mojang/android/net/HTTPResponse;

    invoke-direct {v0}, Lcom/mojang/android/net/HTTPResponse;-><init>()V

    iput-object v0, p0, Lcom/mojang/android/net/HTTPRequest;->mResponse:Lcom/mojang/android/net/HTTPResponse;

    return-void
.end method

.method private addBodyToRequest(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;)V
    .registers 6
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    .prologue
    .line 104
    iget-object v2, p0, Lcom/mojang/android/net/HTTPRequest;->mRequestBody:Ljava/lang/String;

    const-string v3, ""

    if-eq v2, v3, :cond_0

    .line 106
    :try_start_0
    new-instance v1, Lorg/apache/http/entity/StringEntity;

    iget-object v2, p0, Lcom/mojang/android/net/HTTPRequest;->mRequestBody:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 107
    .local v1, "se":Lorg/apache/http/entity/StringEntity;
    iget-object v2, p0, Lcom/mojang/android/net/HTTPRequest;->mRequestContentType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p1, v1}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 109
    const-string v2, "Content-Type"

    iget-object v3, p0, Lcom/mojang/android/net/HTTPRequest;->mRequestContentType:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .end local v1    # "se":Lorg/apache/http/entity/StringEntity;
    :cond_0
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private addHeaders()V
    .registers 5

    .prologue
    .line 118
    iget-object v1, p0, Lcom/mojang/android/net/HTTPRequest;->mHTTPRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    const-string v2, "User-Agent"

    const-string v3, "MCPE/Android"

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 121
    .local v0, "httpParameters":Lorg/apache/http/params/HttpParams;
    const/16 v1, 0xbb8

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 122
    iget-object v1, p0, Lcom/mojang/android/net/HTTPRequest;->mHTTPRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpRequestBase;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 124
    iget-object v1, p0, Lcom/mojang/android/net/HTTPRequest;->mCookieData:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mojang/android/net/HTTPRequest;->mCookieData:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/mojang/android/net/HTTPRequest;->mHTTPRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    const-string v2, "Cookie"

    iget-object v3, p0, Lcom/mojang/android/net/HTTPRequest;->mCookieData:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/mojang/android/net/HTTPRequest;->mHTTPRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    const-string v2, "Charset"

    const-string v3, "utf-8"

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method private declared-synchronized createHTTPRequest(Ljava/lang/String;)V
    .registers 7
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    const-string v2, "DELETE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    new-instance v2, Lorg/apache/http/client/methods/HttpDelete;

    iget-object v3, p0, Lcom/mojang/android/net/HTTPRequest;->mURL:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/mojang/android/net/HTTPRequest;->mHTTPRequest:Lorg/apache/http/client/methods/HttpRequestBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :goto_0
    monitor-exit p0

    return-void

    .line 88
    :cond_0
    :try_start_1
    const-string v2, "PUT"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    new-instance v1, Lorg/apache/http/client/methods/HttpPut;

    iget-object v2, p0, Lcom/mojang/android/net/HTTPRequest;->mURL:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 90
    .local v1, "putRequest":Lorg/apache/http/client/methods/HttpPut;
    invoke-direct {p0, v1}, Lcom/mojang/android/net/HTTPRequest;->addBodyToRequest(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;)V

    .line 91
    iput-object v1, p0, Lcom/mojang/android/net/HTTPRequest;->mHTTPRequest:Lorg/apache/http/client/methods/HttpRequestBase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 86
    .end local v1    # "putRequest":Lorg/apache/http/client/methods/HttpPut;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 92
    :cond_1
    :try_start_2
    const-string v2, "GET"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 93
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    iget-object v3, p0, Lcom/mojang/android/net/HTTPRequest;->mURL:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/mojang/android/net/HTTPRequest;->mHTTPRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    goto :goto_0

    .line 94
    :cond_2
    const-string v2, "POST"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 95
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    iget-object v2, p0, Lcom/mojang/android/net/HTTPRequest;->mURL:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 96
    .local v0, "postRequest":Lorg/apache/http/client/methods/HttpPost;
    invoke-direct {p0, v0}, Lcom/mojang/android/net/HTTPRequest;->addBodyToRequest(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;)V

    .line 97
    iput-object v0, p0, Lcom/mojang/android/net/HTTPRequest;->mHTTPRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    goto :goto_0

    .line 99
    .end local v0    # "postRequest":Lorg/apache/http/client/methods/HttpPost;
    :cond_3
    new-instance v2, Ljava/security/InvalidParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown request method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method


# virtual methods
.method public declared-synchronized abort()V
    .registers 3

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mojang/android/net/HTTPRequest;->mResponse:Lcom/mojang/android/net/HTTPResponse;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mojang/android/net/HTTPResponse;->setStatus(I)V

    .line 80
    iget-object v0, p0, Lcom/mojang/android/net/HTTPRequest;->mHTTPRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/mojang/android/net/HTTPRequest;->mHTTPRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_0
    monitor-exit p0

    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public send(Ljava/lang/String;)Lcom/mojang/android/net/HTTPResponse;
    .registers 8
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/mojang/android/net/HTTPRequest;->createHTTPRequest(Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Lcom/mojang/android/net/HTTPRequest;->addHeaders()V

    .line 53
    iget-object v4, p0, Lcom/mojang/android/net/HTTPRequest;->mResponse:Lcom/mojang/android/net/HTTPResponse;

    invoke-virtual {v4}, Lcom/mojang/android/net/HTTPResponse;->getStatus()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 54
    iget-object v4, p0, Lcom/mojang/android/net/HTTPRequest;->mResponse:Lcom/mojang/android/net/HTTPResponse;

    .line 75
    :goto_0
    return-object v4

    .line 57
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/mojang/android/net/HTTPClientManager;->getHTTPClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 58
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    iget-object v4, p0, Lcom/mojang/android/net/HTTPRequest;->mHTTPRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-interface {v0, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 59
    .local v3, "response":Lorg/apache/http/HttpResponse;
    iget-object v4, p0, Lcom/mojang/android/net/HTTPRequest;->mResponse:Lcom/mojang/android/net/HTTPResponse;

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/mojang/android/net/HTTPResponse;->setResponseCode(I)V

    .line 60
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 61
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    iget-object v4, p0, Lcom/mojang/android/net/HTTPRequest;->mResponse:Lcom/mojang/android/net/HTTPResponse;

    invoke-static {v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mojang/android/net/HTTPResponse;->setBody(Ljava/lang/String;)V

    .line 62
    iget-object v4, p0, Lcom/mojang/android/net/HTTPRequest;->mResponse:Lcom/mojang/android/net/HTTPResponse;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/mojang/android/net/HTTPResponse;->setStatus(I)V

    .line 63
    iget-object v4, p0, Lcom/mojang/android/net/HTTPRequest;->mResponse:Lcom/mojang/android/net/HTTPResponse;

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mojang/android/net/HTTPResponse;->setHeaders([Lorg/apache/http/Header;)V

    .line 64
    iget-object v4, p0, Lcom/mojang/android/net/HTTPRequest;->mResponse:Lcom/mojang/android/net/HTTPResponse;
    :try_end_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 65
    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    .end local v2    # "entity":Lorg/apache/http/HttpEntity;
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Lorg/apache/http/conn/ConnectTimeoutException;
    iget-object v4, p0, Lcom/mojang/android/net/HTTPRequest;->mResponse:Lcom/mojang/android/net/HTTPResponse;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/mojang/android/net/HTTPResponse;->setStatus(I)V

    .line 74
    .end local v1    # "e":Lorg/apache/http/conn/ConnectTimeoutException;
    :goto_1
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/mojang/android/net/HTTPRequest;->mHTTPRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 75
    iget-object v4, p0, Lcom/mojang/android/net/HTTPRequest;->mResponse:Lcom/mojang/android/net/HTTPResponse;

    goto :goto_0

    .line 67
    :catch_1
    move-exception v1

    .line 69
    .local v1, "e":Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_1

    .line 70
    .end local v1    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v1

    .line 72
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public setContentType(Ljava/lang/String;)V
    .registers 2
    .param p1, "conentType"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/mojang/android/net/HTTPRequest;->mRequestContentType:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setCookieData(Ljava/lang/String;)V
    .registers 2
    .param p1, "cookieData"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/mojang/android/net/HTTPRequest;->mCookieData:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setRequestBody(Ljava/lang/String;)V
    .registers 2
    .param p1, "requestBody"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/mojang/android/net/HTTPRequest;->mRequestBody:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setURL(Ljava/lang/String;)V
    .registers 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/mojang/android/net/HTTPRequest;->mURL:Ljava/lang/String;

    .line 35
    return-void
.end method
