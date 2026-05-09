.class public Lcom/microsoft/onlineid/internal/sso/client/request/GetSignUpIntentRequest;
.super Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;
.source "GetSignUpIntentRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest",
        "<",
        "Landroid/app/PendingIntent;",
        ">;"
    }
.end annotation


# instance fields
.field private final _onlineIdConfiguration:Lcom/microsoft/onlineid/OnlineIdConfiguration;

.field private final _signUpOptions:Lcom/microsoft/onlineid/SignUpOptions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/microsoft/onlineid/SignUpOptions;Lcom/microsoft/onlineid/OnlineIdConfiguration;)V
    .registers 5
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "state"    # Landroid/os/Bundle;
    .param p3, "signUpOptions"    # Lcom/microsoft/onlineid/SignUpOptions;
    .param p4, "onlineIdConfiguration"    # Lcom/microsoft/onlineid/OnlineIdConfiguration;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 41
    iput-object p3, p0, Lcom/microsoft/onlineid/internal/sso/client/request/GetSignUpIntentRequest;->_signUpOptions:Lcom/microsoft/onlineid/SignUpOptions;

    .line 42
    iput-object p4, p0, Lcom/microsoft/onlineid/internal/sso/client/request/GetSignUpIntentRequest;->_onlineIdConfiguration:Lcom/microsoft/onlineid/OnlineIdConfiguration;

    .line 43
    return-void
.end method


# virtual methods
.method public performRequestTask()Landroid/app/PendingIntent;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/microsoft/onlineid/exception/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/client/request/GetSignUpIntentRequest;->getDefaultCallingParams()Landroid/os/Bundle;

    move-result-object v1

    .line 51
    .local v1, "params":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/microsoft/onlineid/internal/sso/client/request/GetSignUpIntentRequest;->_signUpOptions:Lcom/microsoft/onlineid/SignUpOptions;

    if-eqz v2, :cond_0

    .line 53
    iget-object v2, p0, Lcom/microsoft/onlineid/internal/sso/client/request/GetSignUpIntentRequest;->_signUpOptions:Lcom/microsoft/onlineid/SignUpOptions;

    invoke-virtual {v2}, Lcom/microsoft/onlineid/SignUpOptions;->asBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 56
    :cond_0
    iget-object v2, p0, Lcom/microsoft/onlineid/internal/sso/client/request/GetSignUpIntentRequest;->_onlineIdConfiguration:Lcom/microsoft/onlineid/OnlineIdConfiguration;

    if-eqz v2, :cond_1

    .line 58
    iget-object v2, p0, Lcom/microsoft/onlineid/internal/sso/client/request/GetSignUpIntentRequest;->_onlineIdConfiguration:Lcom/microsoft/onlineid/OnlineIdConfiguration;

    invoke-static {v2}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->onlineIdConfigurationToBundle(Lcom/microsoft/onlineid/OnlineIdConfiguration;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 61
    :cond_1
    iget-object v2, p0, Lcom/microsoft/onlineid/internal/sso/client/request/GetSignUpIntentRequest;->_msaSsoService:Lcom/microsoft/onlineid/internal/sso/service/IMsaSsoService;

    invoke-interface {v2, v1}, Lcom/microsoft/onlineid/internal/sso/service/IMsaSsoService;->getSignUpIntent(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 62
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {v0}, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->checkForErrors(Landroid/os/Bundle;)V

    .line 64
    invoke-static {v0}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->pendingIntentFromBundle(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v2

    return-object v2
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
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/client/request/GetSignUpIntentRequest;->performRequestTask()Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method
