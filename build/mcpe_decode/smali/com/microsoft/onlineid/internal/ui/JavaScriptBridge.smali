.class public Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final PPCRL_REQUEST_E_USER_CANCELED:Ljava/lang/String; = "80048842"


# instance fields
.field private _assetBundlePropertyProvider:Lcom/microsoft/onlineid/internal/ui/IWebPropertyProvider;

.field private _isOutOfBandInterrupt:Z

.field private final _propertyBag:Lcom/microsoft/onlineid/internal/ui/PropertyBag;

.field private final _serverConfig:Lcom/microsoft/onlineid/sts/ServerConfig;

.field private final _telemetryRecorder:Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;

.field private final _ticketManager:Lcom/microsoft/onlineid/internal/sts/TicketManager;

.field private final _typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

.field private final _webFlowActivity:Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_webFlowActivity:Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_telemetryRecorder:Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_propertyBag:Lcom/microsoft/onlineid/internal/ui/PropertyBag;

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_serverConfig:Lcom/microsoft/onlineid/sts/ServerConfig;

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_ticketManager:Lcom/microsoft/onlineid/internal/sts/TicketManager;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_webFlowActivity:Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;

    iput-object p2, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_telemetryRecorder:Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;

    new-instance p2, Lcom/microsoft/onlineid/internal/ui/PropertyBag;

    invoke-direct {p2}, Lcom/microsoft/onlineid/internal/ui/PropertyBag;-><init>()V

    iput-object p2, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_propertyBag:Lcom/microsoft/onlineid/internal/ui/PropertyBag;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Lcom/microsoft/onlineid/sts/ServerConfig;

    invoke-direct {p2, p1}, Lcom/microsoft/onlineid/sts/ServerConfig;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_serverConfig:Lcom/microsoft/onlineid/sts/ServerConfig;

    new-instance p2, Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-direct {p2, p1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    new-instance p2, Lcom/microsoft/onlineid/internal/sts/TicketManager;

    invoke-direct {p2, p1}, Lcom/microsoft/onlineid/internal/sts/TicketManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_ticketManager:Lcom/microsoft/onlineid/internal/sts/TicketManager;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->populatePropertyBag()V

    invoke-direct {p0, p3}, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->populateTelemetryData(Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;)Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_webFlowActivity:Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;

    return-object p0
.end method

.method private static getKeyForName(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/microsoft/onlineid/internal/Assertion;->check(Z)V

    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->valueOf(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method private populateTelemetryData(Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_webFlowActivity:Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;->getCallingAppPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/microsoft/onlineid/internal/PackageInfoHelper;->isCurrentApp(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_propertyBag:Lcom/microsoft/onlineid/internal/ui/PropertyBag;

    sget-object v3, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->TelemetryAppVersion:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;->getCallingAppVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/microsoft/onlineid/internal/ui/PropertyBag;->set(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_propertyBag:Lcom/microsoft/onlineid/internal/ui/PropertyBag;

    sget-object v3, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->TelemetryIsRequestorMaster:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/microsoft/onlineid/internal/ui/PropertyBag;->set(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_propertyBag:Lcom/microsoft/onlineid/internal/ui/PropertyBag;

    sget-object v2, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->TelemetryNetworkType:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/NetworkConnectivity;->getNetworkTypeForServerTelemetry(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/microsoft/onlineid/internal/ui/PropertyBag;->set(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_propertyBag:Lcom/microsoft/onlineid/internal/ui/PropertyBag;

    sget-object v1, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->TelemetryPrecaching:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;->getWasPrecachingEnabled()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/microsoft/onlineid/internal/ui/PropertyBag;->set(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Encountered error setting telemetry items in property bag."

    invoke-static {v0, p1}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public FinalBack()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_webFlowActivity:Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->cancel()V

    return-void
.end method

.method public FinalNext()V
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_webFlowActivity:Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_propertyBag:Lcom/microsoft/onlineid/internal/ui/PropertyBag;

    sget-object v2, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->ErrorCode:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    invoke-virtual {v1, v2}, Lcom/microsoft/onlineid/internal/ui/PropertyBag;->get(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v1, "com.microsoft.onlineid.internal.SIGN_IN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.microsoft.onlineid.internal.SIGN_UP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "com.microsoft.onlineid.internal.RESOLVE_INTERRUPT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->handleInterruptResult()V

    return-void

    :cond_1
    new-instance v1, Lcom/microsoft/onlineid/exception/InternalException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown Action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/microsoft/onlineid/exception/InternalException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->handleSignInResult()V

    return-void

    :cond_3
    iget-boolean v2, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_isOutOfBandInterrupt:Z

    if-eqz v2, :cond_4

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_webFlowActivity:Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->cancel()V

    return-void

    :cond_4
    iget-object v2, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_propertyBag:Lcom/microsoft/onlineid/internal/ui/PropertyBag;

    sget-object v3, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->ExtendedErrorString:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    invoke-virtual {v2, v3}, Lcom/microsoft/onlineid/internal/ui/PropertyBag;->get(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v3, "80048842"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->FinalBack()V

    return-void

    :cond_5
    new-instance v3, Lcom/microsoft/onlineid/sts/exception/InlineFlowException;

    iget-object v4, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_propertyBag:Lcom/microsoft/onlineid/internal/ui/PropertyBag;

    sget-object v5, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->ErrorString:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    invoke-virtual {v4, v5}, Lcom/microsoft/onlineid/internal/ui/PropertyBag;->get(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_propertyBag:Lcom/microsoft/onlineid/internal/ui/PropertyBag;

    sget-object v6, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->ErrorURL:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    invoke-virtual {v5, v6}, Lcom/microsoft/onlineid/internal/ui/PropertyBag;->get(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1, v2}, Lcom/microsoft/onlineid/sts/exception/InlineFlowException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logException(Ljava/lang/Throwable;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Web flow with action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " failed."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_webFlowActivity:Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;

    const/4 v2, 0x1

    new-instance v3, Lcom/microsoft/onlineid/internal/ApiResult;

    invoke-direct {v3}, Lcom/microsoft/onlineid/internal/ApiResult;-><init>()V

    invoke-virtual {v3, v1}, Lcom/microsoft/onlineid/internal/ApiResult;->setException(Ljava/lang/Exception;)Lcom/microsoft/onlineid/internal/ApiResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiResult;->asBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->sendResult(ILandroid/os/Bundle;)V

    return-void
.end method

.method public Property(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p1}, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->getKeyForName(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_assetBundlePropertyProvider:Lcom/microsoft/onlineid/internal/ui/IWebPropertyProvider;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/microsoft/onlineid/internal/ui/IWebPropertyProvider;->handlesProperty(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_assetBundlePropertyProvider:Lcom/microsoft/onlineid/internal/ui/IWebPropertyProvider;

    invoke-interface {v0, p1}, Lcom/microsoft/onlineid/internal/ui/IWebPropertyProvider;->getProperty(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_propertyBag:Lcom/microsoft/onlineid/internal/ui/PropertyBag;

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/ui/PropertyBag;->get(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public Property(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p1}, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->getKeyForName(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_assetBundlePropertyProvider:Lcom/microsoft/onlineid/internal/ui/IWebPropertyProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/microsoft/onlineid/internal/ui/IWebPropertyProvider;->handlesProperty(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_assetBundlePropertyProvider:Lcom/microsoft/onlineid/internal/ui/IWebPropertyProvider;

    invoke-interface {v0, p1, p2}, Lcom/microsoft/onlineid/internal/ui/IWebPropertyProvider;->setProperty(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_propertyBag:Lcom/microsoft/onlineid/internal/ui/PropertyBag;

    invoke-virtual {v0, p1, p2}, Lcom/microsoft/onlineid/internal/ui/PropertyBag;->set(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;Ljava/lang/String;)V

    sget-object v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->IsSignUp:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Ljava/lang/String;)V

    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object p1

    const-string p2, "Authenticator accounts"

    const-string v0, "Sign up success"

    invoke-interface {p1, p2, v0}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    :cond_1
    :goto_0
    return-void
.end method

.method public ReportTelemetry(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_telemetryRecorder:Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;->recordEvent(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public createAccountFromProperties(Lcom/microsoft/onlineid/internal/ui/PropertyBag;)Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    .locals 8

    sget-object v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->DAToken:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    invoke-virtual {p1, v0}, Lcom/microsoft/onlineid/internal/ui/PropertyBag;->get(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->DASessionKey:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    invoke-virtual {p1, v2}, Lcom/microsoft/onlineid/internal/ui/PropertyBag;->get(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->SigninName:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    invoke-virtual {p1, v4}, Lcom/microsoft/onlineid/internal/ui/PropertyBag;->get(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->CID:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    invoke-virtual {p1, v6}, Lcom/microsoft/onlineid/internal/ui/PropertyBag;->get(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->PUID:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    invoke-virtual {p1, v7}, Lcom/microsoft/onlineid/internal/ui/PropertyBag;->get(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->validateProperty(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->validateProperty(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;Ljava/lang/String;)V

    invoke-virtual {p0, v4, v5}, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->validateProperty(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;Ljava/lang/String;)V

    new-instance v0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    new-instance v2, Lcom/microsoft/onlineid/sts/DAToken;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/microsoft/onlineid/sts/DAToken;-><init>(Ljava/lang/String;[B)V

    invoke-direct {v0, p1, v6, v5, v2}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/onlineid/sts/DAToken;)V

    return-object v0
.end method

.method public handleInterruptResult()V
    .locals 5

    new-instance v0, Lcom/microsoft/onlineid/internal/ApiRequest;

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_webFlowActivity:Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/microsoft/onlineid/internal/ApiRequest;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ApiRequest;->getAccountPuid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v1, v0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->readAccount(Ljava/lang/String;)Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_propertyBag:Lcom/microsoft/onlineid/internal/ui/PropertyBag;

    sget-object v2, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->DAToken:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    invoke-virtual {v1, v2}, Lcom/microsoft/onlineid/internal/ui/PropertyBag;->get(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_propertyBag:Lcom/microsoft/onlineid/internal/ui/PropertyBag;

    sget-object v3, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->DASessionKey:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    invoke-virtual {v2, v3}, Lcom/microsoft/onlineid/internal/ui/PropertyBag;->get(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    :try_start_0
    new-instance v3, Lcom/microsoft/onlineid/sts/DAToken;

    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/microsoft/onlineid/sts/DAToken;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v0, v3}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->setDAToken(Lcom/microsoft/onlineid/sts/DAToken;)V

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v1, v0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->writeAccount(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not decode Base64: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;)V

    new-instance v0, Lcom/microsoft/onlineid/exception/InternalException;

    const-string v1, "Session Key from interrupt resolution was invalid."

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/exception/InternalException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "WebWizard property bag did not have DAToken/SessionKey"

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_propertyBag:Lcom/microsoft/onlineid/internal/ui/PropertyBag;

    sget-object v1, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->STSInlineFlowToken:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/ui/PropertyBag;->get(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Interrupt resolution did not return a flow token."

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lcom/microsoft/onlineid/internal/Assertion;->check(ZLjava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_webFlowActivity:Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;

    const/4 v2, -0x1

    new-instance v3, Lcom/microsoft/onlineid/internal/ApiResult;

    invoke-direct {v3}, Lcom/microsoft/onlineid/internal/ApiResult;-><init>()V

    invoke-virtual {v3, v0}, Lcom/microsoft/onlineid/internal/ApiResult;->setFlowToken(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ApiResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ApiResult;->asBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->sendResult(ILandroid/os/Bundle;)V

    return-void

    :cond_2
    new-instance v0, Lcom/microsoft/onlineid/internal/exception/AccountNotFoundException;

    const-string v1, "Account was deleted before interrupt could be resolved."

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/internal/exception/AccountNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public handleSignInResult()V
    .locals 4

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_propertyBag:Lcom/microsoft/onlineid/internal/ui/PropertyBag;

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->createAccountFromProperties(Lcom/microsoft/onlineid/internal/ui/PropertyBag;)Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->isNewAndInOutOfBandInterrupt()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;->Production:Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;->getEnvironment()Lcom/microsoft/onlineid/internal/configuration/Environment;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_serverConfig:Lcom/microsoft/onlineid/sts/ServerConfig;

    invoke-virtual {v2}, Lcom/microsoft/onlineid/sts/ServerConfig;->getEnvironment()Lcom/microsoft/onlineid/internal/configuration/Environment;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/microsoft/onlineid/internal/configuration/Environment;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ssl.live.com"

    goto :goto_0

    :cond_0
    const-string v1, "ssl.live-int.com"

    :goto_0
    new-instance v2, Lcom/microsoft/onlineid/SecurityScope;

    const-string v3, "mbi_ssl"

    invoke-direct {v2, v1, v3}, Lcom/microsoft/onlineid/SecurityScope;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_ticketManager:Lcom/microsoft/onlineid/internal/sts/TicketManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/microsoft/onlineid/internal/sts/TicketManager;->getTicketNoCache(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;Lcom/microsoft/onlineid/ISecurityScope;Ljava/lang/String;)Lcom/microsoft/onlineid/Ticket;
    :try_end_0
    .catch Lcom/microsoft/onlineid/internal/exception/PromptNeededException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/exception/PromptNeededException;->getRequest()Lcom/microsoft/onlineid/internal/ApiRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ApiRequest;->asIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->Continuation:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_webFlowActivity:Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    const-string v1, "com.microsoft.onlineid.internal.RESOLVE_INTERRUPT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_telemetryRecorder:Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;->isRequested()Z

    move-result v1

    const-string v2, "com.microsoft.onlineid.web_telemetry_requested"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_webFlowActivity:Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;

    new-instance v2, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge$1;

    invoke-direct {v2, p0, v0}, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge$1;-><init>(Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v1, v0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->writeAccount(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;)V

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_webFlowActivity:Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;

    const/4 v2, -0x1

    new-instance v3, Lcom/microsoft/onlineid/internal/ApiResult;

    invoke-direct {v3}, Lcom/microsoft/onlineid/internal/ApiResult;-><init>()V

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->getPuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/microsoft/onlineid/internal/ApiResult;->setAccountPuid(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ApiResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ApiResult;->asBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->sendResult(ILandroid/os/Bundle;)V

    return-void
.end method

.method public populatePropertyBag()V
    .locals 5

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_webFlowActivity:Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/microsoft/onlineid/userdata/SignUpData;

    invoke-direct {v1, v0}, Lcom/microsoft/onlineid/userdata/SignUpData;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_propertyBag:Lcom/microsoft/onlineid/internal/ui/PropertyBag;

    sget-object v3, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->PfUsernames:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    new-instance v4, Lcom/microsoft/onlineid/userdata/AccountManagerReader;

    invoke-direct {v4, v0}, Lcom/microsoft/onlineid/userdata/AccountManagerReader;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/microsoft/onlineid/userdata/AccountManagerReader;->getEmailsAsJsonArray()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/microsoft/onlineid/internal/ui/PropertyBag;->set(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_propertyBag:Lcom/microsoft/onlineid/internal/ui/PropertyBag;

    sget-object v2, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->PfFirstName:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/userdata/SignUpData;->getFirstName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/microsoft/onlineid/internal/ui/PropertyBag;->set(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_propertyBag:Lcom/microsoft/onlineid/internal/ui/PropertyBag;

    sget-object v2, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->PfLastName:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/userdata/SignUpData;->getLastName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/microsoft/onlineid/internal/ui/PropertyBag;->set(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_propertyBag:Lcom/microsoft/onlineid/internal/ui/PropertyBag;

    sget-object v2, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->PfDeviceEmail:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/userdata/SignUpData;->getDeviceEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/microsoft/onlineid/internal/ui/PropertyBag;->set(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_propertyBag:Lcom/microsoft/onlineid/internal/ui/PropertyBag;

    sget-object v2, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->PfPhone:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/userdata/SignUpData;->getPhone()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/microsoft/onlineid/internal/ui/PropertyBag;->set(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_propertyBag:Lcom/microsoft/onlineid/internal/ui/PropertyBag;

    sget-object v2, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->PfCountryCode:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/userdata/SignUpData;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/microsoft/onlineid/internal/ui/PropertyBag;->set(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;Ljava/lang/String;)V

    return-void
.end method

.method public setAssetBundlePropertyProvider(Lcom/microsoft/onlineid/internal/ui/IWebPropertyProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_assetBundlePropertyProvider:Lcom/microsoft/onlineid/internal/ui/IWebPropertyProvider;

    return-void
.end method

.method public setIsOutOfBandInterrupt()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_isOutOfBandInterrupt:Z

    return-void
.end method

.method public validateProperty(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;Ljava/lang/String;)V
    .locals 0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string p2, "PropertyBag was missing required property: "

    .line 1
    invoke-static {p2}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;)V

    new-instance p2, Lcom/microsoft/onlineid/exception/InternalException;

    invoke-direct {p2, p1}, Lcom/microsoft/onlineid/exception/InternalException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
