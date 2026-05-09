.class Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$TicketResultReceiver;
.super Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$DelegatedResultReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TicketResultReceiver"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$DelegatedResultReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$TicketResultReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/microsoft/onlineid/internal/ApiResult;)V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$DelegatedResultReceiver;->_activity:Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/ApiResult;->getTicket()Lcom/microsoft/onlineid/Ticket;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->onTicketAcquired(Lcom/microsoft/onlineid/Ticket;)V

    :cond_0
    return-void
.end method
