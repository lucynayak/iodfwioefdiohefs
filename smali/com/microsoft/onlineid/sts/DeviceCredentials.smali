.class public Lcom/microsoft/onlineid/sts/DeviceCredentials;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final _password:Ljava/lang/String;

.field private final _username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/DeviceCredentials;->_username:Ljava/lang/String;

    iput-object p2, p0, Lcom/microsoft/onlineid/sts/DeviceCredentials;->_password:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "username and password must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    instance-of v1, p1, Lcom/microsoft/onlineid/sts/DeviceCredentials;

    if-eqz v1, :cond_2

    check-cast p1, Lcom/microsoft/onlineid/sts/DeviceCredentials;

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/DeviceCredentials;->_username:Ljava/lang/String;

    iget-object v2, p1, Lcom/microsoft/onlineid/sts/DeviceCredentials;->_username:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/microsoft/onlineid/internal/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/DeviceCredentials;->_password:Ljava/lang/String;

    iget-object p1, p1, Lcom/microsoft/onlineid/sts/DeviceCredentials;->_password:Ljava/lang/String;

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

.method public getPassword()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/DeviceCredentials;->_password:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/DeviceCredentials;->_username:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/DeviceCredentials;->_username:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/DeviceCredentials;->_password:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
