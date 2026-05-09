.class public Lcom/microsoft/onlineid/internal/storage/TicketStorage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final _clockSkewManager:Lcom/microsoft/onlineid/sts/ClockSkewManager;

.field private _typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/microsoft/onlineid/sts/ClockSkewManager;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/sts/ClockSkewManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/storage/TicketStorage;->_clockSkewManager:Lcom/microsoft/onlineid/sts/ClockSkewManager;

    new-instance v0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/storage/TicketStorage;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    return-void
.end method

.method public static checkCommonParameters(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "accountId"

    invoke-static {p0, v0}, Lcom/microsoft/onlineid/internal/Strings;->verifyArgumentNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "appId"

    invoke-static {p1, p0}, Lcom/microsoft/onlineid/internal/Strings;->verifyArgumentNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getTicket(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/onlineid/ISecurityScope;)Lcom/microsoft/onlineid/Ticket;
    .locals 2

    invoke-static {p1, p2}, Lcom/microsoft/onlineid/internal/storage/TicketStorage;->checkCommonParameters(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p3, v0}, Lcom/microsoft/onlineid/internal/Objects;->verifyArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/TicketStorage;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v0, p1, p2, p3}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->getTicket(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/onlineid/ISecurityScope;)Lcom/microsoft/onlineid/Ticket;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/onlineid/Ticket;->getExpiry()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/microsoft/onlineid/internal/storage/TicketStorage;->isTicketValid(Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/TicketStorage;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v0, p1, p2, p3}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->removeTicket(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/onlineid/ISecurityScope;)V

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public isTicketValid(Ljava/util/Date;)Z
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/TicketStorage;->_clockSkewManager:Lcom/microsoft/onlineid/sts/ClockSkewManager;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/ClockSkewManager;->getCurrentServerTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public removeTickets(Ljava/lang/String;)V
    .locals 1

    const-string v0, "accountId"

    invoke-static {p1, v0}, Lcom/microsoft/onlineid/internal/Strings;->verifyArgumentNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/TicketStorage;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->removeTickets(Ljava/lang/String;)V

    return-void
.end method

.method public setTypedStorage(Lcom/microsoft/onlineid/internal/storage/TypedStorage;)V
    .locals 1

    const-string v0, "typedStorage"

    invoke-static {p1, v0}, Lcom/microsoft/onlineid/internal/Objects;->verifyArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/storage/TicketStorage;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    return-void
.end method

.method public storeTicket(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/onlineid/Ticket;)V
    .locals 1

    invoke-static {p1, p2}, Lcom/microsoft/onlineid/internal/storage/TicketStorage;->checkCommonParameters(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ticket"

    invoke-static {p3, v0}, Lcom/microsoft/onlineid/internal/Objects;->verifyArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/microsoft/onlineid/Ticket;->getExpiry()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/internal/storage/TicketStorage;->isTicketValid(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/TicketStorage;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v0, p1, p2, p3}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->storeTicket(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/onlineid/Ticket;)V

    :cond_0
    return-void
.end method
