.class Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$AddAccountFlowReceiver;
.super Lcom/microsoft/onlineid/internal/ApiRequestResultReceiver;
.source "AccountPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddAccountFlowReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;


# direct methods
.method public constructor <init>(Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$AddAccountFlowReceiver;->this$0:Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;

    .line 275
    invoke-direct {p0, p2}, Lcom/microsoft/onlineid/internal/ApiRequestResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 276
    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/Exception;)V
    .registers 4
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 295
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Request failed without Exception."

    invoke-static {v0, v1}, Lcom/microsoft/onlineid/internal/Assertion;->check(ZLjava/lang/Object;)V

    .line 296
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$AddAccountFlowReceiver;->this$0:Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;

    invoke-static {v0, p1}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->access$500(Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;Ljava/lang/Exception;)V

    .line 297
    return-void

    .line 295
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSuccess(Lcom/microsoft/onlineid/internal/ApiResult;)V
    .registers 7
    .param p1, "result"    # Lcom/microsoft/onlineid/internal/ApiResult;

    .prologue
    .line 317
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v1

    const-string v2, "SDK"

    const-string v3, "Add account"

    const-string v4, "via account picker"

    invoke-interface {v1, v2, v3, v4}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    .line 323
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$AddAccountFlowReceiver;->this$0:Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->access$400(Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;)Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/ApiResult;->getAccountPuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;->getAccountByPuid(Ljava/lang/String;)Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    move-result-object v0

    .line 324
    .local v0, "account":Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    if-nez v0, :cond_0

    .line 326
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$AddAccountFlowReceiver;->this$0:Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;

    new-instance v2, Lcom/microsoft/onlineid/exception/InternalException;

    const-string v3, "Picker could not find newly added account."

    invoke-direct {v2, v3}, Lcom/microsoft/onlineid/exception/InternalException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->access$500(Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;Ljava/lang/Exception;)V

    .line 332
    :goto_0
    return-void

    .line 330
    :cond_0
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$AddAccountFlowReceiver;->this$0:Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;

    invoke-static {v1, v0}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->access$200(Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;)V

    goto :goto_0
.end method

.method protected onUINeeded(Landroid/app/PendingIntent;)V
    .registers 10
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$AddAccountFlowReceiver;->this$0:Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :goto_0
    return-void

    .line 307
    :catch_0
    move-exception v7

    .line 309
    .local v7, "e":Landroid/content/IntentSender$SendIntentException;
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$AddAccountFlowReceiver;->this$0:Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;

    invoke-static {v0, v7}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->access$500(Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected onUserCancel()V
    .registers 3

    .prologue
    .line 284
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

    .line 288
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$AddAccountFlowReceiver;->this$0:Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->finish()V

    .line 290
    :cond_0
    return-void
.end method
