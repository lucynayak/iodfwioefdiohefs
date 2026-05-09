.class public Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final _applicationContext:Landroid/content/Context;

.field private final _typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;->_applicationContext:Landroid/content/Context;

    new-instance v0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/onlineid/internal/storage/TypedStorage;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;->_applicationContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    return-void
.end method


# virtual methods
.method public getAccountByCid(Ljava/lang/String;)Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    .locals 3

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->readAllAccounts()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->getCid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAccountByPuid(Ljava/lang/String;)Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->readAccount(Ljava/lang/String;)Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    move-result-object p1

    return-object p1
.end method

.method public getAccounts()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->readAllAccounts()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getFilteredAccounts(Ljava/util/Set;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->readAllAccounts()Ljava/util/Set;

    move-result-object v0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    invoke-virtual {v2}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->getCid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public getSessionApprovalAccounts()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;->getAccounts()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    invoke-virtual {v2}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->isSessionApprover()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public hasAccounts()Z
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->hasAccounts()Z

    move-result v0

    return v0
.end method

.method public hasNgcSessionApprovalAccounts()Z
    .locals 2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;->getAccounts()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->hasNgcRegistrationSucceeded()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hasSessionApprovalAccounts()Z
    .locals 2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;->getAccounts()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->isSessionApprover()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public removeLastSavedUserTileImage(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;)V
    .locals 2

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;->_applicationContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->getPuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".png"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method
