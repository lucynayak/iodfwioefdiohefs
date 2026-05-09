.class Lcom/microsoft/onlineid/internal/ui/WebFlowActivity$HostedWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HostedWebChromeClient"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;


# direct methods
.method private constructor <init>(Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity$HostedWebChromeClient;->this$0:Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;Lcom/microsoft/onlineid/internal/ui/WebFlowActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity$HostedWebChromeClient;-><init>(Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;)V

    return-void
.end method


# virtual methods
.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 0

    :try_start_0
    iget-object p1, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/webkit/WebView$WebViewTransport;

    new-instance p2, Landroid/webkit/WebView;

    iget-object p3, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity$HostedWebChromeClient;->this$0:Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;

    invoke-direct {p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    iget-object p1, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity$HostedWebChromeClient;->this$0:Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;

    invoke-static {p1}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->access$500(Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;)Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->setIsOutOfBandInterrupt()V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    const-string p2, "resultMsg is not a WebViewTransport"

    invoke-static {p1, p2}, Lcom/microsoft/onlineid/internal/Assertion;->check(ZLjava/lang/Object;)V

    return p1
.end method
