.class public Lcom/microsoft/onlineid/internal/configuration/Environment;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final _configUrl:Ljava/net/URL;

.field private final _environmentName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/net/URL;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/configuration/Environment;->_environmentName:Ljava/lang/String;

    iput-object p2, p0, Lcom/microsoft/onlineid/internal/configuration/Environment;->_configUrl:Ljava/net/URL;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    instance-of v1, p1, Lcom/microsoft/onlineid/internal/configuration/Environment;

    if-eqz v1, :cond_2

    check-cast p1, Lcom/microsoft/onlineid/internal/configuration/Environment;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/configuration/Environment;->getEnvironmentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/configuration/Environment;->getEnvironmentName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/microsoft/onlineid/internal/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/configuration/Environment;->getConfigUrl()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/configuration/Environment;->getConfigUrl()Ljava/net/URL;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/microsoft/onlineid/internal/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    return v0
.end method

.method public getConfigUrl()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/configuration/Environment;->_configUrl:Ljava/net/URL;

    return-object v0
.end method

.method public getEnvironmentName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/configuration/Environment;->_environmentName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/configuration/Environment;->_environmentName:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/configuration/Environment;->_configUrl:Ljava/net/URL;

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
