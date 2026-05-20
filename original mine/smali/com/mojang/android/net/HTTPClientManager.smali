.class public Lcom/mojang/android/net/HTTPClientManager;
.super Ljava/lang/Object;
.source "HTTPClientManager.java"


# static fields
.field static instance:Lcom/mojang/android/net/HTTPClientManager;


# instance fields
.field mHTTPClient:Lorg/apache/http/client/HttpClient;

.field mHttpClient:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    new-instance v0, Lcom/mojang/android/net/HTTPClientManager;

    invoke-direct {v0}, Lcom/mojang/android/net/HTTPClientManager;-><init>()V

    sput-object v0, Lcom/mojang/android/net/HTTPClientManager;->instance:Lcom/mojang/android/net/HTTPClientManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 10

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/mojang/android/net/HTTPClientManager;->mHTTPClient:Lorg/apache/http/client/HttpClient;

    .line 25
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 26
    .local v2, "params":Lorg/apache/http/params/HttpParams;
    sget-object v5, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v2, v5}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 27
    const-string v5, "utf-8"

    invoke-static {v2, v5}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 29
    const-wide/16 v6, 0x7530

    invoke-static {v2, v6, v7}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 30
    const-string v5, "http.protocol.expect-continue"

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 33
    new-instance v3, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 34
    .local v3, "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v7

    const/16 v8, 0x50

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 39
    const/4 v4, 0x0

    .line 41
    .local v4, "sslSocketFactory":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    :try_start_0
    invoke-static {}, Lcom/mojang/android/net/NoCertSSLSocketFactory;->createDefault()Lcom/mojang/android/net/NoCertSSLSocketFactory;

    move-result-object v4

    .line 42
    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "https"

    const/16 v7, 0x1bb

    invoke-direct {v5, v6, v4, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    new-instance v1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 48
    .local v1, "manager":Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5, v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v5, p0, Lcom/mojang/android/net/HTTPClientManager;->mHTTPClient:Lorg/apache/http/client/HttpClient;

    .line 49
    return-void

    .line 43
    .end local v1    # "manager":Lorg/apache/http/conn/ClientConnectionManager;
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "MCPE_ssl"

    const-string v6, "Couldn\'t create SSLSocketFactory"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getHTTPClient()Lorg/apache/http/client/HttpClient;
    .registers 1

    .prologue
    .line 52
    sget-object v0, Lcom/mojang/android/net/HTTPClientManager;->instance:Lcom/mojang/android/net/HTTPClientManager;

    iget-object v0, v0, Lcom/mojang/android/net/HTTPClientManager;->mHTTPClient:Lorg/apache/http/client/HttpClient;

    return-object v0
.end method
