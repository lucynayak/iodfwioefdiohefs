.class Lcom/microsoft/onlineid/internal/ui/WebFlowActivity$HostedWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HostedWebViewClient"
.end annotation


# instance fields
.field private _finished:J

.field private final _precachedAssetVendor:Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;

.field private _started:J

.field public final synthetic this$0:Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;


# direct methods
.method public constructor <init>(Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity$HostedWebViewClient;->this$0:Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->getInstance(Landroid/content/Context;)Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity$HostedWebViewClient;->_precachedAssetVendor:Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;

    return-void
.end method


# virtual methods
.method public getAssetVendor()Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity$HostedWebViewClient;->_precachedAssetVendor:Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;

    return-object v0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity$HostedWebViewClient;->_finished:J

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity$HostedWebViewClient;->this$0:Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;

    invoke-static {v0, p1, p2}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->access$300(Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-static {}, Lcom/microsoft/onlineid/internal/configuration/Settings;->isDebugBuild()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Page load time = "

    .line 1
    invoke-static {p1}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2
    iget-wide v0, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity$HostedWebViewClient;->_finished:J

    iget-wide v2, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity$HostedWebViewClient;->_started:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity$HostedWebViewClient;->this$0:Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;

    invoke-static {v0, p1, p2, p3}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->access$200(Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity$HostedWebViewClient;->_started:J

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "New page loaded: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity$HostedWebViewClient;->this$0:Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->access$400(Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity$HostedWebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 0

    iget-object p1, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity$HostedWebViewClient;->_precachedAssetVendor:Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;

    invoke-virtual {p1, p2}, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->getAsset(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity$HostedWebViewClient;->this$0:Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;

    invoke-static {v0, p1, p2}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->access$100(Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
