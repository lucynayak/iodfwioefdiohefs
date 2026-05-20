.class public Lcom/microsoft/onlineid/internal/sso/service/operation/GetAccountPickerOperation;
.super Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;
.source "GetAccountPickerOperation.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;Lcom/microsoft/onlineid/internal/sts/TicketManager;)V
    .registers 5
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "accountManager"    # Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;
    .param p4, "ticketManager"    # Lcom/microsoft/onlineid/internal/sts/TicketManager;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;Lcom/microsoft/onlineid/internal/sts/TicketManager;)V

    .line 41
    return-void
.end method


# virtual methods
.method public call()Landroid/os/Bundle;
    .registers 12

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetAccountPickerOperation;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "com.microsoft.onlineid.cid_exclusion_list"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 50
    .local v1, "excludedCids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetAccountPickerOperation;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "com.microsoft.onlineid.preferred_membername_type"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, "membernameType":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetAccountPickerOperation;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "com.microsoft.onlineid.cobranding_id"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, "cobrandingId":Ljava/lang/String;
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 54
    .local v8, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 56
    invoke-interface {v8, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetAccountPickerOperation;->getAccountManager()Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;->getFilteredAccounts(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v6

    .line 60
    .local v6, "accounts":Ljava/util/Set;, "Ljava/util/Set<Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;>;"
    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 63
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetAccountPickerOperation;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 67
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetAccountPickerOperation;->getCallingPackage()Ljava/lang/String;

    move-result-object v4

    .line 68
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetAccountPickerOperation;->getCallerStateBundle()Landroid/os/Bundle;

    move-result-object v5

    .line 62
    invoke-static/range {v0 .. v5}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->getAccountPickerIntent(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v7

    .line 71
    .local v7, "pickerIntent":Landroid/content/Intent;
    invoke-virtual {p0, v7}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetAccountPickerOperation;->getPendingIntentBuilder(Landroid/content/Intent;)Lcom/microsoft/onlineid/internal/PendingIntentBuilder;

    move-result-object v0

    .line 72
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetAccountPickerOperation;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/microsoft/onlineid/internal/PendingIntentBuilder;->setContext(Landroid/content/Context;)Lcom/microsoft/onlineid/internal/PendingIntentBuilder;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/PendingIntentBuilder;->buildActivity()Landroid/app/PendingIntent;

    move-result-object v0

    .line 70
    invoke-static {v0}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->pendingIntentToBundle(Landroid/app/PendingIntent;)Landroid/os/Bundle;

    move-result-object v0

    .line 78
    .end local v7    # "pickerIntent":Landroid/content/Intent;
    :goto_0
    return-object v0

    .line 77
    :cond_1
    new-instance v0, Lcom/microsoft/onlineid/internal/sso/service/operation/GetSignInIntentOperation;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetAccountPickerOperation;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetAccountPickerOperation;->getParameters()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetAccountPickerOperation;->getAccountManager()Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    move-result-object v9

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetAccountPickerOperation;->getTicketManager()Lcom/microsoft/onlineid/internal/sts/TicketManager;

    move-result-object v10

    invoke-direct {v0, v4, v5, v9, v10}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetSignInIntentOperation;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;Lcom/microsoft/onlineid/internal/sts/TicketManager;)V

    .line 78
    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetSignInIntentOperation;->call()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method
