.class public Lcom/microsoft/onlineid/internal/sso/client/request/GetTicketRequest;
.super Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest<",
        "Lcom/microsoft/onlineid/internal/sso/client/SsoResponse<",
        "Lcom/microsoft/onlineid/Ticket;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final _cid:Ljava/lang/String;

.field private final _onlineIdConfiguration:Lcom/microsoft/onlineid/OnlineIdConfiguration;

.field private final _securityScope:Lcom/microsoft/onlineid/ISecurityScope;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Lcom/microsoft/onlineid/ISecurityScope;Lcom/microsoft/onlineid/OnlineIdConfiguration;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object p3, p0, Lcom/microsoft/onlineid/internal/sso/client/request/GetTicketRequest;->_cid:Ljava/lang/String;

    iput-object p4, p0, Lcom/microsoft/onlineid/internal/sso/client/request/GetTicketRequest;->_securityScope:Lcom/microsoft/onlineid/ISecurityScope;

    iput-object p5, p0, Lcom/microsoft/onlineid/internal/sso/client/request/GetTicketRequest;->_onlineIdConfiguration:Lcom/microsoft/onlineid/OnlineIdConfiguration;

    return-void
.end method


# virtual methods
.method public performRequestTask()Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/onlineid/internal/sso/client/SsoResponse<",
            "Lcom/microsoft/onlineid/Ticket;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->getDefaultCallingParams()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/request/GetTicketRequest;->_cid:Ljava/lang/String;

    const-string v2, "com.microsoft.onlineid.user_cid"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/request/GetTicketRequest;->_securityScope:Lcom/microsoft/onlineid/ISecurityScope;

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->scopeToBundle(Lcom/microsoft/onlineid/ISecurityScope;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/request/GetTicketRequest;->_onlineIdConfiguration:Lcom/microsoft/onlineid/OnlineIdConfiguration;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->onlineIdConfigurationToBundle(Lcom/microsoft/onlineid/OnlineIdConfiguration;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->_msaSsoService:Lcom/microsoft/onlineid/internal/sso/service/IMsaSsoService;

    invoke-interface {v1, v0}, Lcom/microsoft/onlineid/internal/sso/service/IMsaSsoService;->getTicket(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->checkForErrors(Landroid/os/Bundle;)V

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->hasPendingIntent(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;

    invoke-direct {v1}, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;-><init>()V

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->pendingIntentFromBundle(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;->setPendingIntent(Landroid/app/PendingIntent;)Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v1, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;

    invoke-direct {v1}, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;-><init>()V

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->ticketFromBundle(Landroid/os/Bundle;)Lcom/microsoft/onlineid/Ticket;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;->setData(Ljava/lang/Object;)Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic performRequestTask()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/client/request/GetTicketRequest;->performRequestTask()Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;

    move-result-object v0

    return-object v0
.end method
