.class public Lcom/microsoft/onlineid/internal/sso/service/operation/GetAccountByIdOperation;
.super Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;Lcom/microsoft/onlineid/internal/sts/TicketManager;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;Lcom/microsoft/onlineid/internal/sts/TicketManager;)V

    return-void
.end method


# virtual methods
.method public call()Landroid/os/Bundle;
    .locals 2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.microsoft.onlineid.user_cid"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/microsoft/onlineid/internal/Strings;->verifyArgumentNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->getAccountManager()Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;->getAccountByCid(Ljava/lang/String;)Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->limitedUserAccountToBundle(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/microsoft/onlineid/internal/exception/AccountNotFoundException;

    const-string v1, "No account was found with the specified ID."

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/internal/exception/AccountNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
