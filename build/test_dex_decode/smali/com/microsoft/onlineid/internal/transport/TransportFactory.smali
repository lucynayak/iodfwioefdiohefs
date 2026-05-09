.class public Lcom/microsoft/onlineid/internal/transport/TransportFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final _applicationContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/transport/TransportFactory;->_applicationContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public configureTransport(Lcom/microsoft/onlineid/internal/transport/Transport;)V
    .locals 2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/transport/TransportFactory;->getServerConfig()Lcom/microsoft/onlineid/sts/ServerConfig;

    move-result-object v0

    sget-object v1, Lcom/microsoft/onlineid/sts/ServerConfig$Int;->ConnectTimeout:Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/sts/ServerConfig;->getInt(Lcom/microsoft/onlineid/internal/configuration/ISetting;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/microsoft/onlineid/internal/transport/Transport;->setConnectionTimeoutMilliseconds(I)V

    sget-object v1, Lcom/microsoft/onlineid/sts/ServerConfig$Int;->ReceiveTimeout:Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/sts/ServerConfig;->getInt(Lcom/microsoft/onlineid/internal/configuration/ISetting;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/microsoft/onlineid/internal/transport/Transport;->setReadTimeoutMilliseconds(I)V

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/transport/TransportFactory;->_applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/transport/Transport;->buildUserAgentString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/microsoft/onlineid/internal/transport/Transport;->appendCustomUserAgentString(Ljava/lang/String;)V

    return-void
.end method

.method public createTransport()Lcom/microsoft/onlineid/internal/transport/Transport;
    .locals 1

    new-instance v0, Lcom/microsoft/onlineid/internal/transport/Transport;

    invoke-direct {v0}, Lcom/microsoft/onlineid/internal/transport/Transport;-><init>()V

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/internal/transport/TransportFactory;->configureTransport(Lcom/microsoft/onlineid/internal/transport/Transport;)V

    return-object v0
.end method

.method public getServerConfig()Lcom/microsoft/onlineid/sts/ServerConfig;
    .locals 2

    new-instance v0, Lcom/microsoft/onlineid/sts/ServerConfig;

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/transport/TransportFactory;->_applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/sts/ServerConfig;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
