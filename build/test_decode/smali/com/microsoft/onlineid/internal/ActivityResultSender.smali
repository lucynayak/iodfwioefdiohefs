.class public Lcom/microsoft/onlineid/internal/ActivityResultSender;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;
    }
.end annotation


# instance fields
.field public final _activity:Landroid/app/Activity;

.field public final _bundle:Landroid/os/Bundle;

.field public _resultCode:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/ActivityResultSender;->_activity:Landroid/app/Activity;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/ActivityResultSender;->_bundle:Landroid/os/Bundle;

    invoke-virtual {p2}, Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;->getValue()Ljava/lang/String;

    move-result-object p2

    const-string v1, "com.microsoft.onlineid.result_type"

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p2, "com.microsoft.onlineid.client_state"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/microsoft/onlineid/internal/ActivityResultSender;->_resultCode:I

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->set()V

    return-void
.end method

.method private putWebFlowTelemetryFields(Ljava/util/ArrayList;Z)Lcom/microsoft/onlineid/internal/ActivityResultSender;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/microsoft/onlineid/internal/ActivityResultSender;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ActivityResultSender;->_bundle:Landroid/os/Bundle;

    const-string v1, "com.microsoft.onlineid.web_telemetry_events"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p0, p2}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->putWereAllWebFlowTelemetryEventsCaptured(Z)Lcom/microsoft/onlineid/internal/ActivityResultSender;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public putException(Ljava/lang/Exception;)Lcom/microsoft/onlineid/internal/ActivityResultSender;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ActivityResultSender;->_bundle:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->exceptionToBundle(Ljava/lang/Exception;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/microsoft/onlineid/internal/ActivityResultSender;->_resultCode:I

    return-object p0
.end method

.method public putLimitedUserAccount(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;)Lcom/microsoft/onlineid/internal/ActivityResultSender;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ActivityResultSender;->_bundle:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->limitedUserAccountToBundle(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/microsoft/onlineid/internal/ActivityResultSender;->_resultCode:I

    return-object p0
.end method

.method public putSignedOutCid(Ljava/lang/String;Z)Lcom/microsoft/onlineid/internal/ActivityResultSender;
    .locals 2

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ActivityResultSender;->_bundle:Landroid/os/Bundle;

    const-string v1, "com.microsoft.onlineid.user_cid"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/microsoft/onlineid/internal/ActivityResultSender;->_bundle:Landroid/os/Bundle;

    const-string v0, "com.microsoft.onlineid.signed_out_this_app_only"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p1, Lcom/microsoft/onlineid/internal/exception/AccountNotFoundException;

    const-string p2, "The account was signed out."

    invoke-direct {p1, p2}, Lcom/microsoft/onlineid/internal/exception/AccountNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->putException(Ljava/lang/Exception;)Lcom/microsoft/onlineid/internal/ActivityResultSender;

    move-result-object p1

    return-object p1
.end method

.method public putTicket(Lcom/microsoft/onlineid/Ticket;)Lcom/microsoft/onlineid/internal/ActivityResultSender;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ActivityResultSender;->_bundle:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->ticketToBundle(Lcom/microsoft/onlineid/Ticket;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/microsoft/onlineid/internal/ActivityResultSender;->_resultCode:I

    return-object p0
.end method

.method public putWebFlowTelemetryFields(Lcom/microsoft/onlineid/internal/ApiResult;)Lcom/microsoft/onlineid/internal/ActivityResultSender;
    .locals 1

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/ApiResult;->getWebFlowTelemetryEvents()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/ApiResult;->getWereAllWebFlowTelemetryEventsCaptured()Z

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->putWebFlowTelemetryFields(Ljava/util/ArrayList;Z)Lcom/microsoft/onlineid/internal/ActivityResultSender;

    move-result-object p1

    return-object p1
.end method

.method public putWereAllWebFlowTelemetryEventsCaptured(Z)Lcom/microsoft/onlineid/internal/ActivityResultSender;
    .locals 2

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ActivityResultSender;->_bundle:Landroid/os/Bundle;

    const-string v1, "com.microsoft.onlineid.web_telemetry_all_events_captured"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public set()V
    .locals 4

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ActivityResultSender;->_activity:Landroid/app/Activity;

    iget v1, p0, Lcom/microsoft/onlineid/internal/ActivityResultSender;->_resultCode:I

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/microsoft/onlineid/internal/ActivityResultSender;->_bundle:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method
