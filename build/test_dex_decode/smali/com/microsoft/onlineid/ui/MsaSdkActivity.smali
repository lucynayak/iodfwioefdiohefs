.class public abstract Lcom/microsoft/onlineid/ui/MsaSdkActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static final AuthenticatorIntentFlagTag:Ljava/lang/String; = "com.microsoft.msa.authenticator.authenticatorFlags"

.field public static final IntentFlagNoFinishAnimation:I = 0x1


# instance fields
.field public _logHandler:Lcom/microsoft/onlineid/internal/log/SendLogsHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/microsoft/onlineid/sdk/R$string;->webflow_header:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/microsoft/onlineid/internal/ui/AccountHeaderView;->applyStyle(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;

    invoke-direct {p1, p0}, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/microsoft/onlineid/ui/MsaSdkActivity;->_logHandler:Lcom/microsoft/onlineid/internal/log/SendLogsHandler;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-static {}, Lcom/microsoft/onlineid/internal/configuration/Settings;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/onlineid/ui/MsaSdkActivity;->_logHandler:Lcom/microsoft/onlineid/internal/log/SendLogsHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->setSendScreenshot(Z)V

    iget-object v0, p0, Lcom/microsoft/onlineid/ui/MsaSdkActivity;->_logHandler:Lcom/microsoft/onlineid/internal/log/SendLogsHandler;

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->trySendLogsOnKeyEvent(I)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.microsoft.msa.authenticator.authenticatorFlags"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method
