.class public Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final _cid:Ljava/lang/String;

.field private _displayName:Ljava/lang/String;

.field private _flights:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private _gcmRegistrationID:Ljava/lang/String;

.field private _isSessionApprover:Z

.field private _isSessionApproverRegistrationNeeded:Z

.field private final _puid:Ljava/lang/String;

.field private _serverKeyIdentifier:Ljava/lang/String;

.field private _timeOfLastProfileUpdate:J

.field private _token:Lcom/microsoft/onlineid/sts/DAToken;

.field private _totpKey:[B

.field private _username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/onlineid/sts/DAToken;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "username"

    invoke-static {p3, v0}, Lcom/microsoft/onlineid/internal/Strings;->verifyArgumentNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_puid:Ljava/lang/String;

    iput-object p2, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_cid:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_isSessionApprover:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_isSessionApproverRegistrationNeeded:Z

    iput-object p3, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_username:Ljava/lang/String;

    iput-object p4, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_token:Lcom/microsoft/onlineid/sts/DAToken;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_totpKey:[B

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_serverKeyIdentifier:Ljava/lang/String;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_flights:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    instance-of v1, p1, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    if-eqz v1, :cond_2

    check-cast p1, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_puid:Ljava/lang/String;

    iget-object v2, p1, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_puid:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/microsoft/onlineid/internal/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_isSessionApprover:Z

    iget-boolean v2, p1, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_isSessionApprover:Z

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_username:Ljava/lang/String;

    iget-object v2, p1, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_username:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/microsoft/onlineid/internal/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_token:Lcom/microsoft/onlineid/sts/DAToken;

    iget-object v2, p1, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_token:Lcom/microsoft/onlineid/sts/DAToken;

    invoke-static {v1, v2}, Lcom/microsoft/onlineid/internal/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_totpKey:[B

    iget-object p1, p1, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_totpKey:[B

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

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

.method public getCid()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_cid:Ljava/lang/String;

    return-object v0
.end method

.method public getDAToken()Lcom/microsoft/onlineid/sts/DAToken;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_token:Lcom/microsoft/onlineid/sts/DAToken;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getFlights()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_flights:Ljava/util/Set;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getGcmRegistrationID()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_gcmRegistrationID:Ljava/lang/String;

    return-object v0
.end method

.method public getPuid()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_puid:Ljava/lang/String;

    return-object v0
.end method

.method public getServerKeyIdentifier()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_serverKeyIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeOfLastProfileUpdate()J
    .registers 3

    iget-wide v0, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_timeOfLastProfileUpdate:J

    return-wide v0
.end method

.method public getTotpKey()[B
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_totpKey:[B

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_username:Ljava/lang/String;

    return-object v0
.end method

.method public hasNgcRegistrationSucceeded()Z
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_serverKeyIdentifier:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_puid:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isNewAndInOutOfBandInterrupt()Z
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_puid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isSessionApprover()Z
    .registers 2

    iget-boolean v0, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_isSessionApprover:Z

    return v0
.end method

.method public isSessionApproverRegistrationNeeded()Z
    .registers 2

    iget-boolean v0, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_isSessionApproverRegistrationNeeded:Z

    return v0
.end method

.method public setDAToken(Lcom/microsoft/onlineid/sts/DAToken;)V
    .registers 3

    const-string v0, "token"

    invoke-static {p1, v0}, Lcom/microsoft/onlineid/internal/Objects;->verifyArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_token:Lcom/microsoft/onlineid/sts/DAToken;

    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_displayName:Ljava/lang/String;

    return-void
.end method

.method public setFlights(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_flights:Ljava/util/Set;

    return-void
.end method

.method public setGcmRegistrationID(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_gcmRegistrationID:Ljava/lang/String;

    return-void
.end method

.method public setIsSessionApprover(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_isSessionApprover:Z

    return-void
.end method

.method public setIsSessionApproverRegistrationNeeded(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_isSessionApproverRegistrationNeeded:Z

    return-void
.end method

.method public setServerKeyIdentifier(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_serverKeyIdentifier:Ljava/lang/String;

    return-void
.end method

.method public setTimeOfLastProfileUpdate(J)V
    .registers 3

    iput-wide p1, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_timeOfLastProfileUpdate:J

    return-void
.end method

.method public setTotpKey([B)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_totpKey:[B

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .registers 3

    const-string v0, "username"

    invoke-static {p1, v0}, Lcom/microsoft/onlineid/internal/Strings;->verifyArgumentNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_username:Ljava/lang/String;

    return-void
.end method
