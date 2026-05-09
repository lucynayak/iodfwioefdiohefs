.class public Lcom/microsoft/onlineid/sts/DAToken;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final Scope:Lcom/microsoft/onlineid/ISecurityScope;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final _sessionKey:[B

.field private final _token:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/microsoft/onlineid/SecurityScope;

    const-string v1, "http://Passport.NET/tb"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/SecurityScope;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/onlineid/sts/DAToken;->Scope:Lcom/microsoft/onlineid/ISecurityScope;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "token"

    invoke-static {p1, v0}, Lcom/microsoft/onlineid/internal/Strings;->verifyArgumentNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sessionKey"

    invoke-static {p2, v0}, Lcom/microsoft/onlineid/internal/Objects;->verifyArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/DAToken;->_token:Ljava/lang/String;

    iput-object p2, p0, Lcom/microsoft/onlineid/sts/DAToken;->_sessionKey:[B

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

    instance-of v1, p1, Lcom/microsoft/onlineid/sts/DAToken;

    if-eqz v1, :cond_2

    check-cast p1, Lcom/microsoft/onlineid/sts/DAToken;

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/DAToken;->_token:Ljava/lang/String;

    iget-object v2, p1, Lcom/microsoft/onlineid/sts/DAToken;->_token:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/microsoft/onlineid/internal/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/DAToken;->_sessionKey:[B

    iget-object p1, p1, Lcom/microsoft/onlineid/sts/DAToken;->_sessionKey:[B

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

.method public getOneTimeSignedCredential(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/microsoft/onlineid/sts/OneTimeCredentialSigner;

    invoke-direct {v0, p1, p0}, Lcom/microsoft/onlineid/sts/OneTimeCredentialSigner;-><init>(Ljava/util/Date;Lcom/microsoft/onlineid/sts/DAToken;)V

    invoke-virtual {v0, p2}, Lcom/microsoft/onlineid/sts/OneTimeCredentialSigner;->generateOneTimeSignedCredential(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSessionKey()[B
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/DAToken;->_sessionKey:[B

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/DAToken;->_token:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/DAToken;->_token:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/DAToken;->_sessionKey:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
