.class public Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/onlineid/internal/ui/WebFlowActivity$HostedWebChromeClient;,
        Lcom/microsoft/onlineid/internal/ui/WebFlowActivity$HostedWebViewClient;
    }
.end annotation


# static fields
.field public static final ActionResolveInterrupt:Ljava/lang/String; = "com.microsoft.onlineid.internal.RESOLVE_INTERRUPT"

.field public static final ActionSignIn:Ljava/lang/String; = "com.microsoft.onlineid.internal.SIGN_IN"

.field public static final ActionSignUp:Ljava/lang/String; = "com.microsoft.onlineid.internal.SIGN_UP"

.field public static final FullScreenTag:Ljava/lang/String; = "com.microsoft.onlineid.internal.ui.FullScreen"

.field private static final JavaScriptOnBack:Ljava/lang/String; = "javascript:OnBack()"

.field private static final ScenarioAuthUrl:Ljava/lang/String; = "auth url"

.field private static final ScenarioSignIn:Ljava/lang/String; = "sign in"

.field private static final ScenarioSignUp:Ljava/lang/String; = "sign up"


# instance fields
.field private _javaScriptBridge:Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;

.field private _logHandler:Lcom/microsoft/onlineid/internal/log/SendLogsHandler;

.field private _pageLoadTimingEvent:Lcom/microsoft/onlineid/analytics/ITimedAnalyticsEvent;

.field public _progressView:Lcom/microsoft/onlineid/internal/ui/ProgressView;

.field private _scenario:Ljava/lang/String;

.field private _smsReceiver:Lcom/microsoft/onlineid/sms/SmsReceiver;

.field private _startUrl:Ljava/lang/String;

.field private _webTelemetryRecorder:Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;

.field private _webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static synthetic access$100(Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->overrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->showLoadingStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->showLoadingFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->onReceivedWebError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;)Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_javaScriptBridge:Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;

    return-object p0
.end method

.method private configureWebView(Landroid/os/Bundle;Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    new-instance v0, Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;

    invoke-virtual {p2}, Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;->getIsWebTelemetryRequested()Z

    move-result v1

    invoke-direct {v0, v1, p1}, Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;-><init>(ZLandroid/os/Bundle;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_webTelemetryRecorder:Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;

    new-instance p1, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;

    invoke-direct {p1, p0, v0, p2}, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;-><init>(Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;)V

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_javaScriptBridge:Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;

    iget-object p2, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_webView:Landroid/webkit/WebView;

    const-string v0, "external"

    invoke-virtual {p2, p1, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/transport/Transport;->buildUserAgentString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/microsoft/onlineid/internal/transport/Transport;->mergeUserAgentStrings(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    new-instance p1, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity$HostedWebViewClient;

    invoke-direct {p1, p0}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity$HostedWebViewClient;-><init>(Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;)V

    iget-object p2, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_javaScriptBridge:Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity$HostedWebViewClient;->getAssetVendor()Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->setAssetBundlePropertyProvider(Lcom/microsoft/onlineid/internal/ui/IWebPropertyProvider;)V

    iget-object p2, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_webView:Landroid/webkit/WebView;

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object p1, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_webView:Landroid/webkit/WebView;

    new-instance p2, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity$HostedWebChromeClient;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity$HostedWebChromeClient;-><init>(Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;Lcom/microsoft/onlineid/internal/ui/WebFlowActivity$1;)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method private createInitialUI()Landroid/widget/RelativeLayout;
    .locals 7

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_webView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v4, "com.microsoft.onlineid.internal.SIGN_IN"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v1, "msa_sdk_webflow_webview_sign_in"

    goto :goto_0

    :cond_0
    const-string v4, "com.microsoft.onlineid.internal.SIGN_UP"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "msa_sdk_webflow_webview_sign_up"

    goto :goto_0

    :cond_1
    const-string v1, "msa_sdk_webflow_webview_resolve_interrupt"

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "id"

    invoke-virtual {v4, v1, v6, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v4, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_webView:Landroid/webkit/WebView;

    invoke-virtual {v4, v1}, Landroid/view/View;->setId(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v5, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/microsoft/onlineid/internal/ui/ProgressView;

    invoke-direct {v1, p0}, Lcom/microsoft/onlineid/internal/ui/ProgressView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_progressView:Lcom/microsoft/onlineid/internal/ui/ProgressView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_progressView:Lcom/microsoft/onlineid/internal/ui/ProgressView;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private disableSavePasswordInWebView()V
    .locals 0

    return-void
.end method

.method public static getFlowRequest(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;ZLcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;)Lcom/microsoft/onlineid/internal/ApiRequest;
    .locals 3

    new-instance v0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity$1;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "com.microsoft.onlineid.internal.ui.FullScreen"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p4}, Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;->asBundle()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity$1;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    return-object v0
.end method

.method private initializeSendLogsHandler()V
    .locals 2

    invoke-static {}, Lcom/microsoft/onlineid/internal/configuration/Settings;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;

    invoke-direct {v0, p0}, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_logHandler:Lcom/microsoft/onlineid/internal/log/SendLogsHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->setSendScreenshot(Z)V

    :cond_0
    return-void
.end method

.method private onReceivedWebError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    const-string v0, "about:blank"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object p1

    const-string v0, "Performance"

    const-string v1, "No network connectivity"

    const-string v2, "During web flow"

    invoke-interface {p1, v0, v1, v2}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    new-instance p1, Lcom/microsoft/onlineid/internal/ApiResult;

    invoke-direct {p1}, Lcom/microsoft/onlineid/internal/ApiResult;-><init>()V

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p3, v1, p2

    const/4 p3, 0x2

    aput-object p4, v1, p3

    new-instance p3, Lcom/microsoft/onlineid/exception/NetworkException;

    const-string p4, "Error code: %d, Error description: %s, Failing url: %s"

    invoke-static {v0, p4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4}, Lcom/microsoft/onlineid/exception/NetworkException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/microsoft/onlineid/internal/ApiResult;->setException(Ljava/lang/Exception;)Lcom/microsoft/onlineid/internal/ApiResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/ApiResult;->asBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->sendResult(ILandroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private overrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method private showLoadingFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_progressView:Lcom/microsoft/onlineid/internal/ui/ProgressView;

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/ui/ProgressView;->stopAnimation()Z

    iget-object p1, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_pageLoadTimingEvent:Lcom/microsoft/onlineid/analytics/ITimedAnalyticsEvent;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/microsoft/onlineid/analytics/ITimedAnalyticsEvent;->end()V

    :cond_0
    return-void
.end method

.method private showLoadingStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object p1, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_progressView:Lcom/microsoft/onlineid/internal/ui/ProgressView;

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/ui/ProgressView;->startAnimation()Z

    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object p1

    iget-object p2, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_scenario:Ljava/lang/String;

    const-string p3, "Rendering"

    const-string v0, "WebWizard page load"

    invoke-interface {p1, p3, v0, p2}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->createTimedEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/ITimedAnalyticsEvent;

    move-result-object p1

    invoke-interface {p1}, Lcom/microsoft/onlineid/analytics/ITimedAnalyticsEvent;->start()Lcom/microsoft/onlineid/analytics/ITimedAnalyticsEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_pageLoadTimingEvent:Lcom/microsoft/onlineid/analytics/ITimedAnalyticsEvent;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->sendResult(ILandroid/os/Bundle;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_startUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_webView:Landroid/webkit/WebView;

    const-string v1, "javascript:OnBack()"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->cancel()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->createInitialUI()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    new-instance v0, Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p0, p1, v0}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->configureWebView(Landroid/os/Bundle;Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;)V

    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->disableSavePasswordInWebView()V

    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->initializeSendLogsHandler()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/microsoft/onlineid/internal/Uris;->appendMarketQueryString(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/NetworkConnectivity;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/microsoft/onlineid/userdata/TelephonyManagerReader;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/userdata/TelephonyManagerReader;-><init>(Landroid/content/Context;)V

    invoke-static {v0, p1}, Lcom/microsoft/onlineid/internal/Uris;->appendPhoneDigits(Lcom/microsoft/onlineid/userdata/TelephonyManagerReader;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    :cond_0
    new-instance v0, Lcom/microsoft/onlineid/userdata/AccountManagerReader;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/userdata/AccountManagerReader;-><init>(Landroid/content/Context;)V

    invoke-static {v0, p1}, Lcom/microsoft/onlineid/internal/Uris;->appendEmails(Lcom/microsoft/onlineid/userdata/AccountManagerReader;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_startUrl:Ljava/lang/String;

    invoke-static {}, Lcom/microsoft/onlineid/internal/configuration/Settings;->isDebugBuild()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Web flow starting URL: "

    .line 1
    invoke-static {p1}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_startUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_webView:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_startUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_logHandler:Lcom/microsoft/onlineid/internal/log/SendLogsHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->trySendLogsOnKeyEvent(I)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_smsReceiver:Lcom/microsoft/onlineid/sms/SmsReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    new-instance v0, Lcom/microsoft/onlineid/sms/SmsReceiver;

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_javaScriptBridge:Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/sms/SmsReceiver;-><init>(Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_smsReceiver:Lcom/microsoft/onlineid/sms/SmsReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_smsReceiver:Lcom/microsoft/onlineid/sms/SmsReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_webTelemetryRecorder:Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;->saveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onStart()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.microsoft.onlineid.internal.SIGN_IN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "sign in"

    goto :goto_0

    :cond_0
    const-string v1, "com.microsoft.onlineid.internal.SIGN_UP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "sign up"

    goto :goto_0

    :cond_1
    const-string v1, "com.microsoft.onlineid.internal.RESOLVE_INTERRUPT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "auth url"

    goto :goto_0

    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "not specified"

    :cond_3
    :goto_0
    iput-object v0, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_scenario:Ljava/lang/String;

    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v0

    const-string v1, "Web wizard ("

    .line 1
    invoke-static {v1}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_scenario:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logScreenView(Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    return-void
.end method

.method public sendResult(ILandroid/os/Bundle;)V
    .locals 4

    new-instance v0, Lcom/microsoft/onlineid/internal/ApiRequest;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/internal/ApiRequest;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ApiRequest;->getContinuation()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ApiRequest;->getResultReceiver()Landroid/os/ResultReceiver;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_webTelemetryRecorder:Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;

    invoke-virtual {v3}, Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;->hasEvents()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/microsoft/onlineid/internal/ApiResult;

    invoke-direct {v3, p2}, Lcom/microsoft/onlineid/internal/ApiResult;-><init>(Landroid/os/Bundle;)V

    iget-object p2, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_webTelemetryRecorder:Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;

    invoke-virtual {v3, p2}, Lcom/microsoft/onlineid/internal/ApiResult;->setWebFlowTelemetryFields(Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;)Lcom/microsoft/onlineid/internal/ApiResult;

    move-result-object p2

    invoke-virtual {p2}, Lcom/microsoft/onlineid/internal/ApiResult;->asBundle()Landroid/os/Bundle;

    move-result-object p2

    :cond_0
    const/4 v3, -0x1

    if-eqz v1, :cond_1

    if-ne p1, v3, :cond_1

    new-instance v1, Lcom/microsoft/onlineid/internal/ApiResult;

    invoke-direct {v1, p2}, Lcom/microsoft/onlineid/internal/ApiResult;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/ApiRequest;->sendSuccess(Lcom/microsoft/onlineid/internal/ApiResult;)V

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2, p1, p2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p2

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    if-ne p1, v3, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result p1

    const/high16 p2, 0x10000

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_4

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_4
    return-void
.end method
