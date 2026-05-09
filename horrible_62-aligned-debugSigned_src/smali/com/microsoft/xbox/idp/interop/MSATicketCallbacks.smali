.class public Lcom/microsoft/xbox/idp/interop/MSATicketCallbacks;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;


# instance fields
.field private m_ticket:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/interop/MSATicketCallbacks;->m_ticket:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTicket()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/xbox/idp/interop/MSATicketCallbacks;->m_ticket:Ljava/lang/String;

    return-object v0
.end method

.method public onAccountAcquired(Lcom/microsoft/xbox/idp/jobs/MSAJob;Lcom/microsoft/onlineid/UserAccount;)V
    .registers 3

    return-void
.end method

.method public onFailure(Lcom/microsoft/xbox/idp/jobs/MSAJob;Ljava/lang/Exception;)V
    .registers 3

    monitor-enter p1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public onSignedOut(Lcom/microsoft/xbox/idp/jobs/MSAJob;)V
    .registers 3

    monitor-enter p1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onTicketAcquired(Lcom/microsoft/xbox/idp/jobs/MSAJob;Lcom/microsoft/onlineid/Ticket;)V
    .registers 3

    monitor-enter p1

    :try_start_0
    invoke-virtual {p2}, Lcom/microsoft/onlineid/Ticket;->getValue()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/microsoft/xbox/idp/interop/MSATicketCallbacks;->m_ticket:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public onUiNeeded(Lcom/microsoft/xbox/idp/jobs/MSAJob;)V
    .registers 3

    monitor-enter p1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onUserCancel(Lcom/microsoft/xbox/idp/jobs/MSAJob;)V
    .registers 3

    monitor-enter p1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
