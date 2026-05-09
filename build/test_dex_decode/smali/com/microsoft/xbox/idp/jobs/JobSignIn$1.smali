.class Lcom/microsoft/xbox/idp/jobs/JobSignIn$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/onlineid/IAccountCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/jobs/JobSignIn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/xbox/idp/jobs/JobSignIn;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/idp/jobs/JobSignIn;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn$1;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSignIn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountAcquired(Lcom/microsoft/onlineid/UserAccount;Landroid/os/Bundle;)V
    .locals 3

    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "accountCallback.onAccountAcquired"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/microsoft/onlineid/UserAccount;->getCid()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCSignin;->trackAccountAcquired(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn$1;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSignIn;

    iget-object v1, v0, Lcom/microsoft/xbox/idp/jobs/MSAJob;->callbacks:Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;

    invoke-interface {v1, v0, p1}, Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;->onAccountAcquired(Lcom/microsoft/xbox/idp/jobs/MSAJob;Lcom/microsoft/onlineid/UserAccount;)V

    new-instance v0, Lcom/microsoft/onlineid/SecurityScope;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn$1;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSignIn;

    invoke-static {v1}, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->access$100(Lcom/microsoft/xbox/idp/jobs/JobSignIn;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn$1;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSignIn;

    invoke-static {v2}, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->access$200(Lcom/microsoft/xbox/idp/jobs/JobSignIn;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/SecurityScope;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0, p2}, Lcom/microsoft/onlineid/UserAccount;->getTicket(Lcom/microsoft/onlineid/ISecurityScope;Landroid/os/Bundle;)V

    return-void
.end method

.method public onAccountSignedOut(Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 0

    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "accountCallback.onAccountSignedOut"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn$1;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSignIn;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->access$300(Lcom/microsoft/xbox/idp/jobs/JobSignIn;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCUser;->trackSignout(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn$1;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSignIn;

    iget-object p2, p1, Lcom/microsoft/xbox/idp/jobs/MSAJob;->callbacks:Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;

    invoke-interface {p2, p1}, Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;->onSignedOut(Lcom/microsoft/xbox/idp/jobs/MSAJob;)V

    return-void
.end method

.method public onFailure(Lcom/microsoft/onlineid/exception/AuthenticationException;Landroid/os/Bundle;)V
    .locals 2

    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->access$000()Ljava/lang/String;

    move-result-object p2

    const-string v0, "accountCallback.onFailure: "

    .line 1
    invoke-static {v0}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->access$000()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;->Account:Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;

    const/4 v1, 0x0

    invoke-static {p2, v1, v0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackFailure(Ljava/lang/String;ZLcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;Ljava/lang/Exception;)V

    iget-object p2, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn$1;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSignIn;

    iget-object v0, p2, Lcom/microsoft/xbox/idp/jobs/MSAJob;->callbacks:Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;

    invoke-interface {v0, p2, p1}, Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;->onFailure(Lcom/microsoft/xbox/idp/jobs/MSAJob;Ljava/lang/Exception;)V

    return-void
.end method

.method public onUINeeded(Landroid/app/PendingIntent;Landroid/os/Bundle;)V
    .locals 7

    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->access$000()Ljava/lang/String;

    move-result-object p2

    const-string v0, "accountCallback.onUINeeded"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->access$000()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;->Account:Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;

    const/4 v1, 0x0

    invoke-static {p2, v1, v0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackUINeeded(Ljava/lang/String;ZLcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;)V

    :try_start_0
    iget-object p2, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn$1;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSignIn;

    invoke-static {p2}, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->access$300(Lcom/microsoft/xbox/idp/jobs/JobSignIn;)Landroid/app/Activity;

    move-result-object v0

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

    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->access$000()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn$1;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSignIn;

    iget-object v0, p2, Lcom/microsoft/xbox/idp/jobs/MSAJob;->callbacks:Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;

    invoke-interface {v0, p2, p1}, Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;->onFailure(Lcom/microsoft/xbox/idp/jobs/MSAJob;Ljava/lang/Exception;)V

    return-void
.end method

.method public onUserCancel(Landroid/os/Bundle;)V
    .locals 3

    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "accountCallback.onUserCancel"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn$1;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSignIn;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->access$300(Lcom/microsoft/xbox/idp/jobs/JobSignIn;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->access$000()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;->Account:Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCUser;->trackMSACancel(Ljava/lang/CharSequence;Ljava/lang/String;ZLcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;)V

    iget-object p1, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn$1;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSignIn;

    iget-object v0, p1, Lcom/microsoft/xbox/idp/jobs/MSAJob;->callbacks:Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;

    invoke-interface {v0, p1}, Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;->onUserCancel(Lcom/microsoft/xbox/idp/jobs/MSAJob;)V

    return-void
.end method
