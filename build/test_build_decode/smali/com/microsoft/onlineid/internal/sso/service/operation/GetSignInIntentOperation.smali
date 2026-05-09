.class public Lcom/microsoft/onlineid/internal/sso/service/operation/GetSignInIntentOperation;
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
    .locals 7

    new-instance v1, Lcom/microsoft/onlineid/SignInOptions;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/microsoft/onlineid/SignInOptions;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "com.microsoft.onlineid.preferred_membername_type"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "com.microsoft.onlineid.cobranding_id"

    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "com.microsoft.onlineid.web_telemetry_requested"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->getCallingPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->getCallerStateBundle()Landroid/os/Bundle;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->getSignInIntent(Landroid/content/Context;Lcom/microsoft/onlineid/SignInOptions;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

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
.end method
