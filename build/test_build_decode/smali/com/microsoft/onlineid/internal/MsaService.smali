.class public Lcom/microsoft/onlineid/internal/MsaService;
.super Landroid/app/IntentService;
.source "SourceFile"


# static fields
.field public static final ActionGetTicket:Ljava/lang/String; = "com.microsoft.onlineid.internal.GET_TICKET"

.field public static final ActionSignOut:Ljava/lang/String; = "com.microsoft.onlineid.internal.SIGN_OUT"

.field public static final ActionSignOutAllApps:Ljava/lang/String; = "com.microsoft.onlineid.internal.SIGN_OUT_ALL_APPS"

.field public static final ActionUpdateProfile:Ljava/lang/String; = "com.microsoft.onlineid.internal.UPDATE_PROFILE"


# instance fields
.field private _profileManager:Lcom/microsoft/onlineid/internal/profile/ProfileManager;

.field private _ticketManager:Lcom/microsoft/onlineid/internal/sts/TicketManager;

.field private _typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-class v0, Lcom/microsoft/onlineid/internal/MsaService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/microsoft/onlineid/internal/profile/ProfileManager;

    invoke-direct {v1, v0}, Lcom/microsoft/onlineid/internal/profile/ProfileManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/microsoft/onlineid/internal/MsaService;->_profileManager:Lcom/microsoft/onlineid/internal/profile/ProfileManager;

    new-instance v1, Lcom/microsoft/onlineid/internal/sts/TicketManager;

    invoke-direct {v1, v0}, Lcom/microsoft/onlineid/internal/sts/TicketManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/microsoft/onlineid/internal/MsaService;->_ticketManager:Lcom/microsoft/onlineid/internal/sts/TicketManager;

    new-instance v1, Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-direct {v1, v0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/microsoft/onlineid/internal/MsaService;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    return-void
.end method

.method public onHandleIntent(Landroid/content/Intent;)V
    .locals 12

    const-string v0, "ApiRequest with action "

    new-instance v1, Lcom/microsoft/onlineid/internal/ApiRequest;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/microsoft/onlineid/internal/ApiRequest;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest;->getAccountPuid()Ljava/lang/String;

    move-result-object v11

    const-string v2, "com.microsoft.onlineid.internal.GET_TICKET"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/microsoft/onlineid/internal/MsaService;->_ticketManager:Lcom/microsoft/onlineid/internal/sts/TicketManager;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest;->getScope()Lcom/microsoft/onlineid/ISecurityScope;

    move-result-object v4

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest;->getClientPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest;->getFlowToken()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest;->getCobrandingId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest;->getIsWebFlowTelemetryRequested()Z

    move-result v9

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest;->getClientStateBundle()Landroid/os/Bundle;

    move-result-object v10

    move-object v3, v11

    invoke-virtual/range {v2 .. v10}, Lcom/microsoft/onlineid/internal/sts/TicketManager;->getTicket(Ljava/lang/String;Lcom/microsoft/onlineid/ISecurityScope;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLandroid/os/Bundle;)Lcom/microsoft/onlineid/Ticket;

    move-result-object v2

    new-instance v3, Lcom/microsoft/onlineid/internal/ApiResult;

    invoke-direct {v3}, Lcom/microsoft/onlineid/internal/ApiResult;-><init>()V

    invoke-virtual {v3, v11}, Lcom/microsoft/onlineid/internal/ApiResult;->setAccountPuid(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ApiResult;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/microsoft/onlineid/internal/ApiResult;->addTicket(Lcom/microsoft/onlineid/Ticket;)Lcom/microsoft/onlineid/internal/ApiResult;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/microsoft/onlineid/internal/ApiRequest;->sendSuccess(Lcom/microsoft/onlineid/internal/ApiResult;)V

    return-void

    :cond_0
    const-string v2, "com.microsoft.onlineid.internal.UPDATE_PROFILE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/microsoft/onlineid/internal/MsaService;->_profileManager:Lcom/microsoft/onlineid/internal/profile/ProfileManager;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest;->getAccountPuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest;->getFlowToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/microsoft/onlineid/internal/profile/ProfileManager;->updateProfile(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/microsoft/onlineid/internal/ApiResult;

    invoke-direct {v2}, Lcom/microsoft/onlineid/internal/ApiResult;-><init>()V

    invoke-virtual {v2, v11}, Lcom/microsoft/onlineid/internal/ApiResult;->setAccountPuid(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ApiResult;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/microsoft/onlineid/internal/ApiRequest;->sendSuccess(Lcom/microsoft/onlineid/internal/ApiResult;)V

    return-void

    :cond_1
    const-string v2, "com.microsoft.onlineid.internal.SIGN_OUT"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/microsoft/onlineid/internal/ApiResult;

    invoke-direct {v2}, Lcom/microsoft/onlineid/internal/ApiResult;-><init>()V

    invoke-virtual {v1, v2}, Lcom/microsoft/onlineid/internal/ApiRequest;->sendSuccess(Lcom/microsoft/onlineid/internal/ApiResult;)V

    return-void

    :cond_2
    const-string v2, "com.microsoft.onlineid.internal.SIGN_OUT_ALL_APPS"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/microsoft/onlineid/internal/MsaService;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v2, v11}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->removeAccount(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/microsoft/onlineid/internal/sso/client/BackupService;->pushBackup(Landroid/content/Context;)V

    new-instance v2, Lcom/microsoft/onlineid/internal/ApiResult;

    invoke-direct {v2}, Lcom/microsoft/onlineid/internal/ApiResult;-><init>()V

    invoke-virtual {v1, v2}, Lcom/microsoft/onlineid/internal/ApiRequest;->sendSuccess(Lcom/microsoft/onlineid/internal/ApiResult;)V

    return-void

    :cond_3
    new-instance v2, Lcom/microsoft/onlineid/exception/InternalException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/microsoft/onlineid/exception/InternalException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lcom/microsoft/onlineid/internal/exception/PromptNeededException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logException(Ljava/lang/Throwable;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/microsoft/onlineid/internal/ApiRequest;->sendFailure(Ljava/lang/Exception;)V

    return-void

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " requires UI to complete."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Ljava/lang/String;)V

    new-instance p1, Lcom/microsoft/onlineid/internal/PendingIntentBuilder;

    invoke-virtual {v2}, Lcom/microsoft/onlineid/internal/exception/PromptNeededException;->getRequest()Lcom/microsoft/onlineid/internal/ApiRequest;

    move-result-object v0

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest;->getResultReceiver()Landroid/os/ResultReceiver;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/microsoft/onlineid/internal/ApiRequest;->setResultReceiver(Landroid/os/ResultReceiver;)Lcom/microsoft/onlineid/internal/ApiRequest;

    move-result-object v0

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest;->isSdkRequest()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/microsoft/onlineid/internal/ApiRequest;->setIsSdkRequest(Z)Lcom/microsoft/onlineid/internal/ApiRequest;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/ApiRequest;->setContinuation(Lcom/microsoft/onlineid/internal/ApiRequest;)Lcom/microsoft/onlineid/internal/ApiRequest;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/microsoft/onlineid/internal/PendingIntentBuilder;-><init>(Lcom/microsoft/onlineid/internal/ApiRequest;)V

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/PendingIntentBuilder;->buildActivity()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/microsoft/onlineid/internal/ApiRequest;->sendUINeeded(Landroid/app/PendingIntent;)V

    return-void
.end method
