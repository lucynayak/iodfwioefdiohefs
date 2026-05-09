.class public Lcom/microsoft/onlineid/sts/DeviceIdentity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final _credentials:Lcom/microsoft/onlineid/sts/DeviceCredentials;

.field private final _puid:Ljava/lang/String;

.field private _token:Lcom/microsoft/onlineid/sts/DAToken;


# direct methods
.method public constructor <init>(Lcom/microsoft/onlineid/sts/DeviceCredentials;Ljava/lang/String;Lcom/microsoft/onlineid/sts/DAToken;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/DeviceIdentity;->_credentials:Lcom/microsoft/onlineid/sts/DeviceCredentials;

    iput-object p2, p0, Lcom/microsoft/onlineid/sts/DeviceIdentity;->_puid:Ljava/lang/String;

    iput-object p3, p0, Lcom/microsoft/onlineid/sts/DeviceIdentity;->_token:Lcom/microsoft/onlineid/sts/DAToken;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "credentials and puid must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    instance-of v1, p1, Lcom/microsoft/onlineid/sts/DeviceIdentity;

    if-eqz v1, :cond_2

    check-cast p1, Lcom/microsoft/onlineid/sts/DeviceIdentity;

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/DeviceIdentity;->_credentials:Lcom/microsoft/onlineid/sts/DeviceCredentials;

    iget-object v2, p1, Lcom/microsoft/onlineid/sts/DeviceIdentity;->_credentials:Lcom/microsoft/onlineid/sts/DeviceCredentials;

    invoke-static {v1, v2}, Lcom/microsoft/onlineid/internal/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/DeviceIdentity;->_puid:Ljava/lang/String;

    iget-object v2, p1, Lcom/microsoft/onlineid/sts/DeviceIdentity;->_puid:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/microsoft/onlineid/internal/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/DeviceIdentity;->_token:Lcom/microsoft/onlineid/sts/DAToken;

    iget-object p1, p1, Lcom/microsoft/onlineid/sts/DeviceIdentity;->_token:Lcom/microsoft/onlineid/sts/DAToken;

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

.method public getCredentials()Lcom/microsoft/onlineid/sts/DeviceCredentials;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/DeviceIdentity;->_credentials:Lcom/microsoft/onlineid/sts/DeviceCredentials;

    return-object v0
.end method

.method public getDAToken()Lcom/microsoft/onlineid/sts/DAToken;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/DeviceIdentity;->_token:Lcom/microsoft/onlineid/sts/DAToken;

    return-object v0
.end method

.method public getPuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/DeviceIdentity;->_puid:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/DeviceIdentity;->_credentials:Lcom/microsoft/onlineid/sts/DeviceCredentials;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/DeviceCredentials;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/DeviceIdentity;->_puid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/DeviceIdentity;->_token:Lcom/microsoft/onlineid/sts/DAToken;

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public setDAToken(Lcom/microsoft/onlineid/sts/DAToken;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/DeviceIdentity;->_token:Lcom/microsoft/onlineid/sts/DAToken;

    return-void
.end method
