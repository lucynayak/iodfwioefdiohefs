.class public Lcom/microsoft/onlineid/internal/sso/client/request/GetTicketRequest;
.super Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;
.source "GetTicketRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest",
        "<",
        "Lcom/microsoft/onlineid/internal/sso/client/SsoResponse",
        "<",
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
    .registers 6
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "state"    # Landroid/os/Bundle;
    .param p3, "cid"    # Ljava/lang/String;
    .param p4, "securityScope"    # Lcom/microsoft/onlineid/ISecurityScope;
    .param p5, "onlineIdConfiguration"    # Lcom/microsoft/onlineid/OnlineIdConfiguration;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 44
    iput-object p3, p0, Lcom/microsoft/onlineid/internal/sso/client/request/GetTicketRequest;->_cid:Ljava/lang/String;

    .line 45
    iput-object p4, p0, Lcom/microsoft/onlineid/internal/sso/client/request/GetTicketRequest;->_securityScope:Lcom/microsoft/onlineid/ISecurityScope;

    .line 46
    iput-object p5, p0, Lcom/microsoft/onlineid/internal/sso/client/request/GetTicketRequest;->_onlineIdConfiguration:Lcom/microsoft/onlineid/OnlineIdConfiguration;

    .line 47
    return-void
.end method


# virtual methods
.method public performRequestTask()Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/onlineid/internal/sso/client/SsoResponse",
            "<",
            "Lcom/microsoft/onlineid/Ticket;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/microsoft/onlineid/exception/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/client/request/GetTicketRequest;->getDefaultCallingParams()Landroid/os/Bundle;

    move-result-object v1

    .line 55
    .local v1, "params":Landroid/os/Bundle;
    const-string v2, "com.microsoft.onlineid.user_cid"

    iget-object v3, p0, Lcom/microsoft/onlineid/internal/sso/client/request/GetTicketRequest;->_cid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v2, p0, Lcom/microsoft/onlineid/internal/sso/client/request/GetTicketRequest;->_securityScope:Lcom/microsoft/onlineid/ISecurityScope;

    invoke-static {v2}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->scopeToBundle(Lcom/microsoft/onlineid/ISecurityScope;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 58
    iget-object v2, p0, Lcom/microsoft/onlineid/internal/sso/client/request/GetTicketRequest;->_onlineIdConfiguration:Lcom/microsoft/onlineid/OnlineIdConfiguration;

    if-eqz v2, :cond_0

    .line 60
    iget-object v2, p0, Lcom/microsoft/onlineid/internal/sso/client/request/GetTicketRequest;->_onlineIdConfiguration:Lcom/microsoft/onlineid/OnlineIdConfiguration;

    invoke-static {v2}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->onlineIdConfigurationToBundle(Lcom/microsoft/onlineid/OnlineIdConfiguration;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 63
    :cond_0
    iget-object v2, p0, Lcom/microsoft/onlineid/internal/sso/client/request/GetTicketRequest;->_msaSsoService:Lcom/microsoft/onlineid/internal/sso/service/IMsaSsoService;

    invoke-interface {v2, v1}, Lcom/microsoft/onlineid/internal/sso/service/IMsaSsoService;->getTicket(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 64
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {v0}, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->checkForErrors(Landroid/os/Bundle;)V

    .line 66
    invoke-static {v0}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->hasPendingIntent(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;

    invoke-direct {v2}, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;-><init>()V

    .line 67
    invoke-static {v0}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->pendingIntentFromBundle(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;->setPendingIntent(Landroid/app/PendingIntent;)Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;

    move-result-object v2

    .line 68
    :goto_0
    return-object v2

    .line 67
    :cond_1
    new-instance v2, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;

    invoke-direct {v2}, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;-><init>()V

    .line 68
    invoke-static {v0}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->ticketFromBundle(Landroid/os/Bundle;)Lcom/microsoft/onlineid/Ticket;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;->setData(Ljava/lang/Object;)Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;

    move-result-object v2

    goto :goto_0
.end method

.method public bridge synthetic performRequestTask()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/exception/AuthenticationException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/client/request/GetTicketRequest;->performRequestTask()Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;

    move-result-object v0

    return-object v0
.end method
