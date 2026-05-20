.class final Lcom/microsoft/xbox/idp/interop/Interop$2;
.super Ljava/lang/Object;
.source "Interop.java"

# interfaces
.implements Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/interop/Interop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountAcquired(Lcom/microsoft/xbox/idp/jobs/MSAJob;Lcom/microsoft/onlineid/UserAccount;)V
    .registers 5
    .param p1, "job"    # Lcom/microsoft/xbox/idp/jobs/MSAJob;
    .param p2, "userAccount"    # Lcom/microsoft/onlineid/UserAccount;

    .prologue
    .line 398
    invoke-static {}, Lcom/microsoft/xbox/idp/interop/Interop;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Java - Ticket Acquired"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    return-void
.end method

.method public onFailure(Lcom/microsoft/xbox/idp/jobs/MSAJob;Ljava/lang/Exception;)V
    .registers 8
    .param p1, "job"    # Lcom/microsoft/xbox/idp/jobs/MSAJob;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 377
    invoke-static {}, Lcom/microsoft/xbox/idp/interop/Interop;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Java - onFailure"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const-string v0, ""

    const/4 v1, 0x0

    sget-object v2, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;->OTHER:Lcom/microsoft/xbox/idp/interop/Interop$MSAError;

    iget v2, v2, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;->id:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "There was a problem acquiring an account: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/microsoft/xbox/idp/interop/Interop;->MSACallback(Ljava/lang/String;IILjava/lang/String;)V

    .line 379
    return-void
.end method

.method public onSignedOut(Lcom/microsoft/xbox/idp/jobs/MSAJob;)V
    .registers 6
    .param p1, "job"    # Lcom/microsoft/xbox/idp/jobs/MSAJob;

    .prologue
    .line 391
    invoke-static {}, Lcom/microsoft/xbox/idp/interop/Interop;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Java - onSignedOut"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const-string v0, ""

    const/4 v1, 0x0

    sget-object v2, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;->OTHER:Lcom/microsoft/xbox/idp/interop/Interop$MSAError;

    iget v2, v2, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;->id:I

    const-string v3, "Signed out during silent sign in - should not be here"

    invoke-static {v0, v1, v2, v3}, Lcom/microsoft/xbox/idp/interop/Interop;->MSACallback(Ljava/lang/String;IILjava/lang/String;)V

    .line 393
    return-void
.end method

.method public onTicketAcquired(Lcom/microsoft/xbox/idp/jobs/MSAJob;Lcom/microsoft/onlineid/Ticket;)V
    .registers 7
    .param p1, "job"    # Lcom/microsoft/xbox/idp/jobs/MSAJob;
    .param p2, "ticket"    # Lcom/microsoft/onlineid/Ticket;

    .prologue
    .line 404
    invoke-static {}, Lcom/microsoft/xbox/idp/interop/Interop;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Java - Ticket Acquired"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-virtual {p2}, Lcom/microsoft/onlineid/Ticket;->getValue()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;->NONE:Lcom/microsoft/xbox/idp/interop/Interop$MSAError;

    iget v2, v2, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;->id:I

    const-string v3, "Got ticket"

    invoke-static {v0, v1, v2, v3}, Lcom/microsoft/xbox/idp/interop/Interop;->MSACallback(Ljava/lang/String;IILjava/lang/String;)V

    .line 406
    return-void
.end method

.method public onUiNeeded(Lcom/microsoft/xbox/idp/jobs/MSAJob;)V
    .registers 6
    .param p1, "job"    # Lcom/microsoft/xbox/idp/jobs/MSAJob;

    .prologue
    .line 370
    invoke-static {}, Lcom/microsoft/xbox/idp/interop/Interop;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Java - onUiNeeded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const-string v0, ""

    const/4 v1, 0x0

    sget-object v2, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;->UI_INTERACTION_REQUIRED:Lcom/microsoft/xbox/idp/interop/Interop$MSAError;

    iget v2, v2, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;->id:I

    const-string v3, "Must show UI to acquire an account."

    invoke-static {v0, v1, v2, v3}, Lcom/microsoft/xbox/idp/interop/Interop;->MSACallback(Ljava/lang/String;IILjava/lang/String;)V

    .line 372
    return-void
.end method

.method public onUserCancel(Lcom/microsoft/xbox/idp/jobs/MSAJob;)V
    .registers 6
    .param p1, "job"    # Lcom/microsoft/xbox/idp/jobs/MSAJob;

    .prologue
    .line 384
    invoke-static {}, Lcom/microsoft/xbox/idp/interop/Interop;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Java - onUserCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const-string v0, ""

    const/4 v1, 0x0

    sget-object v2, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;->USER_CANCEL:Lcom/microsoft/xbox/idp/interop/Interop$MSAError;

    iget v2, v2, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;->id:I

    const-string v3, "The user cancelled the UI to acquire a ticket."

    invoke-static {v0, v1, v2, v3}, Lcom/microsoft/xbox/idp/interop/Interop;->MSACallback(Ljava/lang/String;IILjava/lang/String;)V

    .line 386
    return-void
.end method
