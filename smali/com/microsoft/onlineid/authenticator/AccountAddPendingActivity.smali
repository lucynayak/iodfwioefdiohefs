.class public Lcom/microsoft/onlineid/authenticator/AccountAddPendingActivity;
.super Lcom/microsoft/onlineid/ui/MsaSdkActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/microsoft/onlineid/ui/MsaSdkActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 1

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    sget v0, Lcom/microsoft/onlineid/sdk/R$layout;->static_page:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    invoke-super {p0, p1}, Lcom/microsoft/onlineid/ui/MsaSdkActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/microsoft/onlineid/sdk/R$id;->progressView:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/microsoft/onlineid/internal/ui/ProgressView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/ui/ProgressView;->startAnimation()Z

    sget p1, Lcom/microsoft/onlineid/sdk/R$id;->static_page_header:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    sget p1, Lcom/microsoft/onlineid/sdk/R$id;->static_page_body_first:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    sget p1, Lcom/microsoft/onlineid/sdk/R$id;->static_page_body_second:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onStart()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v0

    const-string v1, "Account add pending screen"

    invoke-interface {v0, v1}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logScreenView(Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    return-void
.end method
