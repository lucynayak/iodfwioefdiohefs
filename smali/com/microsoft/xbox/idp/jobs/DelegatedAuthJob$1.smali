.class Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$1;->this$0:Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Service connected"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$1;->this$0:Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;

    invoke-static {p2}, Lcom/microsoft/xbox/authenticate/IDelegateKeyService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/microsoft/xbox/authenticate/IDelegateKeyService;

    move-result-object p2

    iput-object p2, p1, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->keyService:Lcom/microsoft/xbox/authenticate/IDelegateKeyService;

    :try_start_0
    iget-object p1, p0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$1;->this$0:Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;

    iget-object p1, p1, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->keyService:Lcom/microsoft/xbox/authenticate/IDelegateKeyService;

    invoke-interface {p1}, Lcom/microsoft/xbox/authenticate/IDelegateKeyService;->requestDelegateRPSTicketSilently()Lcom/microsoft/xbox/authenticate/DelegateRPSTicketResult;

    move-result-object p1

    iget-object p2, p0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$1;->this$0:Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;

    invoke-static {p2}, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->access$100(Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/microsoft/xbox/idp/util/XboxAppLinker;->xboxAppIsInstalled(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$1;->this$0:Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;

    invoke-static {p2}, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->access$100(Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/microsoft/xbox/idp/util/XboxAppLinker;->getXboxAppLaunchIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p2

    invoke-static {p2}, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->access$202(Landroid/content/Intent;)Landroid/content/Intent;

    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->access$200()Landroid/content/Intent;

    move-result-object p2

    const-string v0, "com.microsoft.xbox.action.ACTION_SIGNIN"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/xbox/authenticate/DelegateRPSTicketResult;->getErrorCode()I

    move-result p2

    if-eqz p2, :cond_7

    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Error getting RPS ticket"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    if-eq p2, p1, :cond_6

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    if-eq p2, v0, :cond_5

    const/4 v0, 0x4

    if-eq p2, v0, :cond_4

    const/4 v0, 0x5

    if-eq p2, v0, :cond_3

    const/4 v0, 0x6

    if-eq p2, v0, :cond_2

    const-string p2, "UNKNOWN_ERROR"

    goto :goto_0

    :cond_2
    const-string p2, "RESULT_INVALID_APPURI"

    goto :goto_0

    :cond_3
    const-string p2, "RESULT_INVALID_SIGNATURE"

    goto :goto_0

    :cond_4
    const-string p2, "RESULT_INVALID_PACKAGE"

    goto :goto_0

    :cond_5
    const-string p2, "RESULT_UNKNOWN_PACKAGE"

    :goto_0
    :try_start_1
    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->access$000()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;->Ticket:Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1, v1, v2}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackFailure(Ljava/lang/String;ZLcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;Ljava/lang/Exception;)V

    iget-object p1, p0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$1;->this$0:Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->access$300(Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;)Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$Callbacks;

    move-result-object p1

    iget-object v0, p0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$1;->this$0:Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0, v1}, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$Callbacks;->onFailure(Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;Ljava/lang/Exception;)V

    return-void

    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$1;->this$0:Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->access$300(Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;)Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$Callbacks;

    move-result-object p1

    iget-object p2, p0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$1;->this$0:Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;

    invoke-interface {p1, p2}, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$Callbacks;->onUiNeeded(Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;)V

    return-void

    :cond_7
    invoke-virtual {p1}, Lcom/microsoft/xbox/authenticate/DelegateRPSTicketResult;->getTicket()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$1;->this$0:Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;

    invoke-static {p2}, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->access$300(Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;)Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$Callbacks;

    move-result-object p2

    iget-object v0, p0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$1;->this$0:Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;

    invoke-interface {p2, v0, p1}, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$Callbacks;->onTicketAcquired(Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->access$000()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Callback failure"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p2, p0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$1;->this$0:Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;

    invoke-static {p2}, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->access$300(Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;)Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$Callbacks;

    move-result-object p2

    iget-object v0, p0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$1;->this$0:Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;

    invoke-interface {p2, v0, p1}, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$Callbacks;->onFailure(Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;Ljava/lang/Exception;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Service disconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
