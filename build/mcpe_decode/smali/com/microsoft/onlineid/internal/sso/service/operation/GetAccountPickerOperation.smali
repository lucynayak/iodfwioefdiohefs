.class public Lcom/microsoft/onlineid/internal/sso/service/operation/GetAccountPickerOperation;
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
    .locals 8

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.microsoft.onlineid.cid_exclusion_list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.microsoft.onlineid.preferred_membername_type"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.microsoft.onlineid.cobranding_id"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-eqz v3, :cond_0

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->getAccountManager()Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;->getFilteredAccounts(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->getCallingPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->getCallerStateBundle()Landroid/os/Bundle;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->getAccountPickerIntent(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->getPendingIntentBuilder(Landroid/content/Intent;)Lcom/microsoft/onlineid/internal/PendingIntentBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/PendingIntentBuilder;->setContext(Landroid/content/Context;)Lcom/microsoft/onlineid/internal/PendingIntentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/PendingIntentBuilder;->buildActivity()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->pendingIntentToBundle(Landroid/app/PendingIntent;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_1
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
.end method
