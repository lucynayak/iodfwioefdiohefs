.class Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$AddAccountFlowReceiver;
.super Lcom/microsoft/onlineid/internal/ApiRequestResultReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AddAccountFlowReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;


# direct methods
.method public constructor <init>(Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$AddAccountFlowReceiver;->this$0:Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;

    invoke-direct {p0, p2}, Lcom/microsoft/onlineid/internal/ApiRequestResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Request failed without Exception."

    invoke-static {v0, v1}, Lcom/microsoft/onlineid/internal/Assertion;->check(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$AddAccountFlowReceiver;->this$0:Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;

    invoke-static {v0, p1}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->access$500(Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;Ljava/lang/Exception;)V

    return-void
.end method

.method public onSuccess(Lcom/microsoft/onlineid/internal/ApiResult;)V
    .locals 4

    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v0

    const-string v1, "SDK"

    const-string v2, "Add account"

    const-string v3, "via account picker"

    invoke-interface {v0, v1, v2, v3}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$AddAccountFlowReceiver;->this$0:Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->access$400(Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;)Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/ApiResult;->getAccountPuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;->getAccountByPuid(Ljava/lang/String;)Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$AddAccountFlowReceiver;->this$0:Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;

    new-instance v0, Lcom/microsoft/onlineid/exception/InternalException;

    const-string v1, "Picker could not find newly added account."

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/exception/InternalException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->access$500(Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;Ljava/lang/Exception;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$AddAccountFlowReceiver;->this$0:Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;

    invoke-static {v0, p1}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->access$200(Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;)V

    return-void
.end method

.method public onUINeeded(Landroid/app/PendingIntent;)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$AddAccountFlowReceiver;->this$0:Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$AddAccountFlowReceiver;->this$0:Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;

    invoke-static {v0, p1}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->access$500(Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;Ljava/lang/Exception;)V

    return-void
.end method

.method public onUserCancel()V
    .locals 2

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$AddAccountFlowReceiver;->this$0:Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->access$400(Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;)Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$AddAccountFlowReceiver;->this$0:Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->access$300(Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;->getFilteredAccounts(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$AddAccountFlowReceiver;->this$0:Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
