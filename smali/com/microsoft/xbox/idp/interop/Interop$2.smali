.class final Lcom/microsoft/xbox/idp/interop/Interop$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/interop/Interop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountAcquired(Lcom/microsoft/xbox/idp/jobs/MSAJob;Lcom/microsoft/onlineid/UserAccount;)V
    .registers 3

    invoke-static {}, Lcom/microsoft/xbox/idp/interop/Interop;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Java - Ticket Acquired"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onFailure(Lcom/microsoft/xbox/idp/jobs/MSAJob;Ljava/lang/Exception;)V
    .registers 5

    invoke-static {}, Lcom/microsoft/xbox/idp/interop/Interop;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Java - onFailure"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;->OTHER:Lcom/microsoft/xbox/idp/interop/Interop$MSAError;

    iget p1, p1, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;->id:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "There was a problem acquiring an account: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2}, Lcom/microsoft/xbox/idp/interop/Interop;->MSACallback(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public onSignedOut(Lcom/microsoft/xbox/idp/jobs/MSAJob;)V
    .registers 5

    invoke-static {}, Lcom/microsoft/xbox/idp/interop/Interop;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Java - onSignedOut"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;->OTHER:Lcom/microsoft/xbox/idp/interop/Interop$MSAError;

    iget p1, p1, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;->id:I

    const-string v0, ""

    const/4 v1, 0x0

    const-string v2, "Signed out during silent sign in - should not be here"

    invoke-static {v0, v1, p1, v2}, Lcom/microsoft/xbox/idp/interop/Interop;->MSACallback(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public onTicketAcquired(Lcom/microsoft/xbox/idp/jobs/MSAJob;Lcom/microsoft/onlineid/Ticket;)V
    .registers 5

    invoke-static {}, Lcom/microsoft/xbox/idp/interop/Interop;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Java - Ticket Acquired"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/microsoft/onlineid/Ticket;->getValue()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;->NONE:Lcom/microsoft/xbox/idp/interop/Interop$MSAError;

    iget p2, p2, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;->id:I

    const/4 v0, 0x0

    const-string v1, "Got ticket"

    invoke-static {p1, v0, p2, v1}, Lcom/microsoft/xbox/idp/interop/Interop;->MSACallback(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public onUiNeeded(Lcom/microsoft/xbox/idp/jobs/MSAJob;)V
    .registers 5

    invoke-static {}, Lcom/microsoft/xbox/idp/interop/Interop;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Java - onUiNeeded"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;->UI_INTERACTION_REQUIRED:Lcom/microsoft/xbox/idp/interop/Interop$MSAError;

    iget p1, p1, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;->id:I

    const-string v0, ""

    const/4 v1, 0x0

    const-string v2, "Must show UI to acquire an account."

    invoke-static {v0, v1, p1, v2}, Lcom/microsoft/xbox/idp/interop/Interop;->MSACallback(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public onUserCancel(Lcom/microsoft/xbox/idp/jobs/MSAJob;)V
    .registers 5

    invoke-static {}, Lcom/microsoft/xbox/idp/interop/Interop;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Java - onUserCancel"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;->USER_CANCEL:Lcom/microsoft/xbox/idp/interop/Interop$MSAError;

    iget p1, p1, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;->id:I

    const-string v0, ""

    const/4 v1, 0x0

    const-string v2, "The user cancelled the UI to acquire a ticket."

    invoke-static {v0, v1, p1, v2}, Lcom/microsoft/xbox/idp/interop/Interop;->MSACallback(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method
