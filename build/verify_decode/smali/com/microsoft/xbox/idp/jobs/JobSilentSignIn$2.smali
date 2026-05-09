.class Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/onlineid/ITicketCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn$2;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/microsoft/onlineid/exception/AuthenticationException;Landroid/os/Bundle;)V
    .locals 2

    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->access$000()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ticketCallback.onFailure: "

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

    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->access$000()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;->Ticket:Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;

    const/4 v1, 0x1

    invoke-static {p2, v1, v0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackFailure(Ljava/lang/String;ZLcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;Ljava/lang/Exception;)V

    iget-object p2, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn$2;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;

    iget-object v0, p2, Lcom/microsoft/xbox/idp/jobs/MSAJob;->callbacks:Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;

    invoke-interface {v0, p2, p1}, Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;->onFailure(Lcom/microsoft/xbox/idp/jobs/MSAJob;Ljava/lang/Exception;)V

    return-void
.end method

.method public onTicketAcquired(Lcom/microsoft/onlineid/Ticket;Lcom/microsoft/onlineid/UserAccount;Landroid/os/Bundle;)V
    .locals 2

    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->access$000()Ljava/lang/String;

    move-result-object p3

    const-string v0, "ticketCallback.onTicketAcquired"

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x1

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/microsoft/onlineid/UserAccount;->getCid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCSignin;->trackTicketAcquired(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p2}, Lcom/microsoft/onlineid/UserAccount;->getCid()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->access$000()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn$2;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->access$400(Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p3}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCSignin;->trackTicketAcquired(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p2, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn$2;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;

    invoke-static {p2}, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->access$400(Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    iget-object v0, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn$2;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->access$300(Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCSignin;->trackMSASigninSuccess(Ljava/lang/String;ZLjava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn$2;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;

    iget-object p3, p2, Lcom/microsoft/xbox/idp/jobs/MSAJob;->callbacks:Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;

    invoke-interface {p3, p2, p1}, Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;->onTicketAcquired(Lcom/microsoft/xbox/idp/jobs/MSAJob;Lcom/microsoft/onlineid/Ticket;)V

    return-void
.end method

.method public onUINeeded(Landroid/app/PendingIntent;Landroid/os/Bundle;)V
    .locals 1

    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ticketCallback.onUINeeded"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->access$000()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;->Ticket:Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;

    const/4 v0, 0x1

    invoke-static {p1, v0, p2}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackUINeeded(Ljava/lang/String;ZLcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;)V

    iget-object p1, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn$2;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;

    iget-object p2, p1, Lcom/microsoft/xbox/idp/jobs/MSAJob;->callbacks:Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;

    invoke-interface {p2, p1}, Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;->onUiNeeded(Lcom/microsoft/xbox/idp/jobs/MSAJob;)V

    return-void
.end method

.method public onUserCancel(Landroid/os/Bundle;)V
    .locals 2

    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ticketCallback.onUserCancel"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->access$000()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;->Ticket:Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackMSACancel(Ljava/lang/String;ZLcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;)V

    iget-object p1, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn$2;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;

    iget-object v0, p1, Lcom/microsoft/xbox/idp/jobs/MSAJob;->callbacks:Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;

    invoke-interface {v0, p1}, Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;->onUserCancel(Lcom/microsoft/xbox/idp/jobs/MSAJob;)V

    return-void
.end method
