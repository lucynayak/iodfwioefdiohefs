.class public Lcom/microsoft/onlineid/internal/sso/client/request/GetSignInIntentRequest;
.super Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest<",
        "Landroid/app/PendingIntent;",
        ">;"
    }
.end annotation


# instance fields
.field private final _onlineIdConfiguration:Lcom/microsoft/onlineid/OnlineIdConfiguration;

.field private final _signInOptions:Lcom/microsoft/onlineid/SignInOptions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/microsoft/onlineid/SignInOptions;Lcom/microsoft/onlineid/OnlineIdConfiguration;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object p3, p0, Lcom/microsoft/onlineid/internal/sso/client/request/GetSignInIntentRequest;->_signInOptions:Lcom/microsoft/onlineid/SignInOptions;

    iput-object p4, p0, Lcom/microsoft/onlineid/internal/sso/client/request/GetSignInIntentRequest;->_onlineIdConfiguration:Lcom/microsoft/onlineid/OnlineIdConfiguration;

    return-void
.end method


# virtual methods
.method public performRequestTask()Landroid/app/PendingIntent;
    .locals 2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->getDefaultCallingParams()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/request/GetSignInIntentRequest;->_signInOptions:Lcom/microsoft/onlineid/SignInOptions;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/microsoft/onlineid/RequestOptions;->asBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/request/GetSignInIntentRequest;->_onlineIdConfiguration:Lcom/microsoft/onlineid/OnlineIdConfiguration;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->onlineIdConfigurationToBundle(Lcom/microsoft/onlineid/OnlineIdConfiguration;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_1
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->_msaSsoService:Lcom/microsoft/onlineid/internal/sso/service/IMsaSsoService;

    invoke-interface {v1, v0}, Lcom/microsoft/onlineid/internal/sso/service/IMsaSsoService;->getSignInIntent(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->checkForErrors(Landroid/os/Bundle;)V

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->pendingIntentFromBundle(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic performRequestTask()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/client/request/GetSignInIntentRequest;->performRequestTask()Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method
