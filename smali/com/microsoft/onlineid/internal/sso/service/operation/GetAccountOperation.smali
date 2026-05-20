.class public Lcom/microsoft/onlineid/internal/sso/service/operation/GetAccountOperation;
.super Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;Lcom/microsoft/onlineid/internal/sts/TicketManager;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;Lcom/microsoft/onlineid/internal/sts/TicketManager;)V

    return-void
.end method


# virtual methods
.method public call()Landroid/os/Bundle;
    .registers 6

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->getAccountManager()Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;->hasAccounts()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/microsoft/onlineid/internal/sso/service/operation/GetSignInIntentOperation;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->getParameters()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->getAccountManager()Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->getTicketManager()Lcom/microsoft/onlineid/internal/sts/TicketManager;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetSignInIntentOperation;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;Lcom/microsoft/onlineid/internal/sts/TicketManager;)V

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetSignInIntentOperation;->call()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->getAccountManager()Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;->getAccounts()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->limitedUserAccountToBundle(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Lcom/microsoft/onlineid/internal/sso/service/operation/GetAccountPickerOperation;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->getParameters()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->getAccountManager()Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->getTicketManager()Lcom/microsoft/onlineid/internal/sts/TicketManager;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetAccountPickerOperation;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;Lcom/microsoft/onlineid/internal/sts/TicketManager;)V

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetAccountPickerOperation;->call()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
