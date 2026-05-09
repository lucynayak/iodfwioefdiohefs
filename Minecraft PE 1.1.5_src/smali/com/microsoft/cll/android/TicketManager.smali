.class public Lcom/microsoft/cll/android/TicketManager;
.super Ljava/lang/Object;
.source "TicketManager.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final callback:Lcom/microsoft/cll/android/ITicketCallback;

.field private final logger:Lcom/microsoft/cll/android/ILogger;

.field private needDeviceTicket:Z

.field private final tickets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/microsoft/cll/android/ITicketCallback;Lcom/microsoft/cll/android/ILogger;)V
    .registers 4
    .param p1, "callback"    # Lcom/microsoft/cll/android/ITicketCallback;
    .param p2, "logger"    # Lcom/microsoft/cll/android/ILogger;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, "AndroidCll-TicketManager"

    iput-object v0, p0, Lcom/microsoft/cll/android/TicketManager;->TAG:Ljava/lang/String;

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/microsoft/cll/android/TicketManager;->needDeviceTicket:Z

    .line 15
    iput-object p1, p0, Lcom/microsoft/cll/android/TicketManager;->callback:Lcom/microsoft/cll/android/ITicketCallback;

    .line 16
    iput-object p2, p0, Lcom/microsoft/cll/android/TicketManager;->logger:Lcom/microsoft/cll/android/ILogger;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/cll/android/TicketManager;->tickets:Ljava/util/Map;

    .line 18
    return-void
.end method


# virtual methods
.method public addTickets(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/microsoft/cll/android/TicketManager;->callback:Lcom/microsoft/cll/android/ITicketCallback;

    if-nez v3, :cond_1

    .line 77
    :cond_0
    return-void

    .line 57
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 59
    .local v1, "ticketId":Ljava/lang/String;
    iget-object v4, p0, Lcom/microsoft/cll/android/TicketManager;->tickets:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 60
    iget-object v4, p0, Lcom/microsoft/cll/android/TicketManager;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v5, "AndroidCll-TicketManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Getting ticket for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v4, p0, Lcom/microsoft/cll/android/TicketManager;->callback:Lcom/microsoft/cll/android/ITicketCallback;

    invoke-interface {v4, v1}, Lcom/microsoft/cll/android/ITicketCallback;->getXTicketForXuid(Ljava/lang/String;)Lcom/microsoft/cll/android/TicketObject;

    move-result-object v0

    .line 62
    .local v0, "ticket":Lcom/microsoft/cll/android/TicketObject;
    iget-object v2, v0, Lcom/microsoft/cll/android/TicketObject;->ticket:Ljava/lang/String;

    .line 67
    .local v2, "ticketString":Ljava/lang/String;
    iget-boolean v4, v0, Lcom/microsoft/cll/android/TicketObject;->hasDeviceClaims:Z

    if-eqz v4, :cond_2

    .line 68
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/microsoft/cll/android/TicketManager;->needDeviceTicket:Z

    .line 69
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 72
    :cond_2
    iget-object v4, p0, Lcom/microsoft/cll/android/TicketManager;->tickets:Ljava/util/Map;

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 74
    .end local v0    # "ticket":Lcom/microsoft/cll/android/TicketObject;
    .end local v2    # "ticketString":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/microsoft/cll/android/TicketManager;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v5, "AndroidCll-TicketManager"

    const-string v6, "We already have a ticket for this id, skipping."

    invoke-interface {v4, v5, v6}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public clean()V
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/microsoft/cll/android/TicketManager;->tickets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/microsoft/cll/android/TicketManager;->needDeviceTicket:Z

    .line 86
    return-void
.end method

.method public getHeaders(Z)Lcom/microsoft/cll/android/TicketHeaders;
    .registers 4
    .param p1, "shouldForceRefresh"    # Z

    .prologue
    .line 30
    iget-object v1, p0, Lcom/microsoft/cll/android/TicketManager;->callback:Lcom/microsoft/cll/android/ITicketCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/microsoft/cll/android/TicketManager;->tickets:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 44
    :cond_1
    :goto_0
    return-object v0

    .line 34
    :cond_2
    new-instance v0, Lcom/microsoft/cll/android/TicketHeaders;

    invoke-direct {v0}, Lcom/microsoft/cll/android/TicketHeaders;-><init>()V

    .line 35
    .local v0, "headers":Lcom/microsoft/cll/android/TicketHeaders;
    iget-object v1, p0, Lcom/microsoft/cll/android/TicketManager;->callback:Lcom/microsoft/cll/android/ITicketCallback;

    invoke-interface {v1, p1}, Lcom/microsoft/cll/android/ITicketCallback;->getAuthXToken(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/microsoft/cll/android/TicketHeaders;->authXToken:Ljava/lang/String;

    .line 36
    iget-object v1, p0, Lcom/microsoft/cll/android/TicketManager;->tickets:Ljava/util/Map;

    iput-object v1, v0, Lcom/microsoft/cll/android/TicketHeaders;->xtokens:Ljava/util/Map;

    .line 40
    iget-boolean v1, p0, Lcom/microsoft/cll/android/TicketManager;->needDeviceTicket:Z

    if-eqz v1, :cond_1

    .line 41
    iget-object v1, p0, Lcom/microsoft/cll/android/TicketManager;->callback:Lcom/microsoft/cll/android/ITicketCallback;

    invoke-interface {v1, p1}, Lcom/microsoft/cll/android/ITicketCallback;->getMsaDeviceTicket(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/microsoft/cll/android/TicketHeaders;->msaDeviceTicket:Ljava/lang/String;

    goto :goto_0
.end method
