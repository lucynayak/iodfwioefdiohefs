.class public Lcom/microsoft/onlineid/internal/sso/service/operation/GetSignInIntentOperation;
.super Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;
.source "GetSignInIntentOperation.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;Lcom/microsoft/onlineid/internal/sts/TicketManager;)V
    .registers 5
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "accountManager"    # Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;
    .param p4, "ticketManager"    # Lcom/microsoft/onlineid/internal/sts/TicketManager;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;Lcom/microsoft/onlineid/internal/sts/TicketManager;)V

    .line 37
    return-void
.end method


# virtual methods
.method public call()Landroid/os/Bundle;
    .registers 9

    .prologue
    .line 43
    new-instance v1, Lcom/microsoft/onlineid/SignInOptions;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetSignInIntentOperation;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/microsoft/onlineid/SignInOptions;-><init>(Landroid/os/Bundle;)V

    .line 46
    .local v1, "options":Lcom/microsoft/onlineid/SignInOptions;
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetSignInIntentOperation;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    const-string v5, "com.microsoft.onlineid.preferred_membername_type"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, "membernameType":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetSignInIntentOperation;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    const-string v5, "com.microsoft.onlineid.cobranding_id"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, "cobrandingId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetSignInIntentOperation;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    const-string v5, "com.microsoft.onlineid.web_telemetry_requested"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 52
    .local v4, "webTelemetryRequested":Z
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetSignInIntentOperation;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 57
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetSignInIntentOperation;->getCallingPackage()Ljava/lang/String;

    move-result-object v5

    .line 58
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetSignInIntentOperation;->getCallerStateBundle()Landroid/os/Bundle;

    move-result-object v6

    .line 51
    invoke-static/range {v0 .. v6}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->getSignInIntent(Landroid/content/Context;Lcom/microsoft/onlineid/SignInOptions;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v7

    .line 62
    .local v7, "signInIntent":Landroid/content/Intent;
    invoke-virtual {p0, v7}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetSignInIntentOperation;->getPendingIntentBuilder(Landroid/content/Intent;)Lcom/microsoft/onlineid/internal/PendingIntentBuilder;

    move-result-object v0

    .line 63
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetSignInIntentOperation;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/microsoft/onlineid/internal/PendingIntentBuilder;->setContext(Landroid/content/Context;)Lcom/microsoft/onlineid/internal/PendingIntentBuilder;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/PendingIntentBuilder;->buildActivity()Landroid/app/PendingIntent;

    move-result-object v0

    .line 61
    invoke-static {v0}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->pendingIntentToBundle(Landroid/app/PendingIntent;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
