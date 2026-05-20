.class public Lcom/microsoft/cll/android/TicketManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final callback:Lcom/microsoft/cll/android/ITicketCallback;

.field private final logger:Lcom/microsoft/cll/android/ILogger;

.field private needDeviceTicket:Z

.field private final tickets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/microsoft/cll/android/ITicketCallback;Lcom/microsoft/cll/android/ILogger;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AndroidCll-TicketManager"

    iput-object v0, p0, Lcom/microsoft/cll/android/TicketManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/microsoft/cll/android/TicketManager;->needDeviceTicket:Z

    iput-object p1, p0, Lcom/microsoft/cll/android/TicketManager;->callback:Lcom/microsoft/cll/android/ITicketCallback;

    iput-object p2, p0, Lcom/microsoft/cll/android/TicketManager;->logger:Lcom/microsoft/cll/android/ILogger;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/microsoft/cll/android/TicketManager;->tickets:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addTickets(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/microsoft/cll/android/TicketManager;->callback:Lcom/microsoft/cll/android/ITicketCallback;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/microsoft/cll/android/TicketManager;->tickets:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "AndroidCll-TicketManager"

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/microsoft/cll/android/TicketManager;->logger:Lcom/microsoft/cll/android/ILogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Getting ticket for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/microsoft/cll/android/TicketManager;->callback:Lcom/microsoft/cll/android/ITicketCallback;

    invoke-interface {v1, v0}, Lcom/microsoft/cll/android/ITicketCallback;->getXTicketForXuid(Ljava/lang/String;)Lcom/microsoft/cll/android/TicketObject;

    move-result-object v1

    iget-object v2, v1, Lcom/microsoft/cll/android/TicketObject;->ticket:Ljava/lang/String;

    iget-boolean v1, v1, Lcom/microsoft/cll/android/TicketObject;->hasDeviceClaims:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/microsoft/cll/android/TicketManager;->needDeviceTicket:Z

    const-string v1, "rp:"

    .line 1
    invoke-static {v1, v2}, La/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    :cond_1
    iget-object v1, p0, Lcom/microsoft/cll/android/TicketManager;->tickets:Ljava/util/Map;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/microsoft/cll/android/TicketManager;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v1, "We already have a ticket for this id, skipping."

    invoke-interface {v0, v2, v1}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public clean()V
    .registers 2

    iget-object v0, p0, Lcom/microsoft/cll/android/TicketManager;->tickets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/microsoft/cll/android/TicketManager;->needDeviceTicket:Z

    return-void
.end method

.method public getHeaders(Z)Lcom/microsoft/cll/android/TicketHeaders;
    .registers 4

    iget-object v0, p0, Lcom/microsoft/cll/android/TicketManager;->callback:Lcom/microsoft/cll/android/ITicketCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/microsoft/cll/android/TicketManager;->tickets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/microsoft/cll/android/TicketHeaders;

    invoke-direct {v0}, Lcom/microsoft/cll/android/TicketHeaders;-><init>()V

    iget-object v1, p0, Lcom/microsoft/cll/android/TicketManager;->callback:Lcom/microsoft/cll/android/ITicketCallback;

    invoke-interface {v1, p1}, Lcom/microsoft/cll/android/ITicketCallback;->getAuthXToken(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/microsoft/cll/android/TicketHeaders;->authXToken:Ljava/lang/String;

    iget-object v1, p0, Lcom/microsoft/cll/android/TicketManager;->tickets:Ljava/util/Map;

    iput-object v1, v0, Lcom/microsoft/cll/android/TicketHeaders;->xtokens:Ljava/util/Map;

    iget-boolean v1, p0, Lcom/microsoft/cll/android/TicketManager;->needDeviceTicket:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/microsoft/cll/android/TicketManager;->callback:Lcom/microsoft/cll/android/ITicketCallback;

    invoke-interface {v1, p1}, Lcom/microsoft/cll/android/ITicketCallback;->getMsaDeviceTicket(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/microsoft/cll/android/TicketHeaders;->msaDeviceTicket:Ljava/lang/String;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :cond_2
    return-object v0
.end method
