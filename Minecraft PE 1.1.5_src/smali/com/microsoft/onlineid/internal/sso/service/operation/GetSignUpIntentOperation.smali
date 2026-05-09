.class public Lcom/microsoft/onlineid/internal/sso/service/operation/GetSignUpIntentOperation;
.super Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;
.source "GetSignUpIntentOperation.java"


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
    new-instance v1, Lcom/microsoft/onlineid/SignUpOptions;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetSignUpIntentOperation;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/microsoft/onlineid/SignUpOptions;-><init>(Landroid/os/Bundle;)V

    .line 45
    .local v1, "options":Lcom/microsoft/onlineid/SignUpOptions;
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetSignUpIntentOperation;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    const-string v5, "com.microsoft.onlineid.preferred_membername_type"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, "membernameType":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetSignUpIntentOperation;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    const-string v5, "com.microsoft.onlineid.cobranding_id"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 47
    .local v3, "cobrandingId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetSignUpIntentOperation;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    const-string v5, "com.microsoft.onlineid.web_telemetry_requested"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 50
    .local v4, "webTelemetryRequested":Z
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetSignUpIntentOperation;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 55
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetSignUpIntentOperation;->getCallingPackage()Ljava/lang/String;

    move-result-object v5

    .line 56
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetSignUpIntentOperation;->getCallerStateBundle()Landroid/os/Bundle;

    move-result-object v6

    .line 49
    invoke-static/range {v0 .. v6}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->getSignUpIntent(Landroid/content/Context;Lcom/microsoft/onlineid/SignUpOptions;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v7

    .line 59
    .local v7, "signUpIntent":Landroid/content/Intent;
    invoke-virtual {p0, v7}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetSignUpIntentOperation;->getPendingIntentBuilder(Landroid/content/Intent;)Lcom/microsoft/onlineid/internal/PendingIntentBuilder;

    move-result-object v0

    .line 60
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetSignUpIntentOperation;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/microsoft/onlineid/internal/PendingIntentBuilder;->setContext(Landroid/content/Context;)Lcom/microsoft/onlineid/internal/PendingIntentBuilder;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/PendingIntentBuilder;->buildActivity()Landroid/app/PendingIntent;

    move-result-object v0

    .line 58
    invoke-static {v0}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->pendingIntentToBundle(Landroid/app/PendingIntent;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
