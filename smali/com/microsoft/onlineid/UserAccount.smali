.class public Lcom/microsoft/onlineid/UserAccount;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final _accountManager:Lcom/microsoft/onlineid/AccountManager;

.field private final _cid:Ljava/lang/String;

.field private final _puid:Ljava/lang/String;

.field private final _username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/microsoft/onlineid/AccountManager;Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;)V
    .registers 5

    invoke-virtual {p2}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->getCid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->getPuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->getUsername()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/microsoft/onlineid/UserAccount;-><init>(Lcom/microsoft/onlineid/AccountManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/onlineid/AccountManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/onlineid/UserAccount;->_accountManager:Lcom/microsoft/onlineid/AccountManager;

    iput-object p2, p0, Lcom/microsoft/onlineid/UserAccount;->_cid:Ljava/lang/String;

    iput-object p3, p0, Lcom/microsoft/onlineid/UserAccount;->_puid:Ljava/lang/String;

    iput-object p4, p0, Lcom/microsoft/onlineid/UserAccount;->_username:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/microsoft/onlineid/UserAccount;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/microsoft/onlineid/UserAccount;

    iget-object v1, p0, Lcom/microsoft/onlineid/UserAccount;->_puid:Ljava/lang/String;

    iget-object v2, p1, Lcom/microsoft/onlineid/UserAccount;->_puid:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/microsoft/onlineid/internal/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/microsoft/onlineid/UserAccount;->_cid:Ljava/lang/String;

    iget-object p1, p1, Lcom/microsoft/onlineid/UserAccount;->_cid:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/microsoft/onlineid/internal/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getCid()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/UserAccount;->_cid:Ljava/lang/String;

    return-object v0
.end method

.method public getPuid()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/UserAccount;->_puid:Ljava/lang/String;

    return-object v0
.end method

.method public getTicket(Lcom/microsoft/onlineid/ISecurityScope;Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Lcom/microsoft/onlineid/UserAccount;->_accountManager:Lcom/microsoft/onlineid/AccountManager;

    invoke-virtual {v0, p0, p1, p2}, Lcom/microsoft/onlineid/AccountManager;->getTicket(Lcom/microsoft/onlineid/UserAccount;Lcom/microsoft/onlineid/ISecurityScope;Landroid/os/Bundle;)V

    return-void
.end method

.method public getUsername()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/UserAccount;->_username:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/microsoft/onlineid/UserAccount;->_puid:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/microsoft/onlineid/UserAccount;->_cid:Ljava/lang/String;

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
