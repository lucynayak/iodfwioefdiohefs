.class Lcom/microsoft/onlineid/internal/ui/WebFlowActivity$HostedWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "WebFlowActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HostedWebViewClient"
.end annotation


# instance fields
.field private _finished:J

.field private final _precachedAssetVendor:Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;

.field private _started:J

.field final synthetic this$0:Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;


# direct methods
.method public constructor <init>(Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;)V
    .registers 3

    .prologue
    .line 532
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity$HostedWebViewClient;->this$0:Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 533
    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->getInstance(Landroid/content/Context;)Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity$HostedWebViewClient;->_precachedAssetVendor:Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;

    .line 534
    return-void
.end method


# virtual methods
.method public getAssetVendor()Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;
    .registers 2

    .prologue
    .line 538
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity$HostedWebViewClient;->_precachedAssetVendor:Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;

    return-object v0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 9
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 563
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity$HostedWebViewClient;->_finished:J

    .line 564
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 565
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity$HostedWebViewClient;->this$0:Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;

    invoke-static {v0, p1, p2}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->access$300(Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 566
    invoke-static {}, Lcom/microsoft/onlineid/internal/configuration/Settings;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Page load time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity$HostedWebViewClient;->_finished:J

    iget-wide v4, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity$HostedWebViewClient;->_started:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Ljava/lang/String;)V

    .line 570
    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 554
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 555
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity$HostedWebViewClient;->this$0:Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;

    invoke-static {v0, p1, p2, p3}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->access$200(Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 556
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity$HostedWebViewClient;->_started:J

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New page loaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Ljava/lang/String;)V

    .line 558
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 575
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 576
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity$HostedWebViewClient;->this$0:Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->access$400(Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 577
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .registers 4
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 583
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity$HostedWebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 4
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 589
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity$HostedWebViewClient;->_precachedAssetVendor:Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;

    invoke-virtual {v0, p2}, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->getAsset(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 544
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity$HostedWebViewClient;->this$0:Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;

    invoke-static {v0, p1, p2}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->access$100(Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 546
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    .line 548
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
