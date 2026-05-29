.class public Lcom/microsoft/onlineid/internal/sts/TicketManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final _applicationContext:Landroid/content/Context;

.field private final _configManager:Lcom/microsoft/onlineid/sts/ConfigManager;

.field private final _deviceManager:Lcom/microsoft/onlineid/sts/DeviceIdentityManager;

.field private final _flightManager:Lcom/microsoft/onlineid/sts/FlightManager;

.field private final _stsRequestFactory:Lcom/microsoft/onlineid/sts/request/StsRequestFactory;

.field private final _ticketStorage:Lcom/microsoft/onlineid/internal/storage/TicketStorage;

.field private final _typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_applicationContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_configManager:Lcom/microsoft/onlineid/sts/ConfigManager;

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_deviceManager:Lcom/microsoft/onlineid/sts/DeviceIdentityManager;

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_stsRequestFactory:Lcom/microsoft/onlineid/sts/request/StsRequestFactory;

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_ticketStorage:Lcom/microsoft/onlineid/internal/storage/TicketStorage;

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_flightManager:Lcom/microsoft/onlineid/sts/FlightManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_applicationContext:Landroid/content/Context;

    new-instance v0, Lcom/microsoft/onlineid/sts/ConfigManager;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/sts/ConfigManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_configManager:Lcom/microsoft/onlineid/sts/ConfigManager;

    new-instance v0, Lcom/microsoft/onlineid/sts/DeviceIdentityManager;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/sts/DeviceIdentityManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_deviceManager:Lcom/microsoft/onlineid/sts/DeviceIdentityManager;

    new-instance v0, Lcom/microsoft/onlineid/sts/request/StsRequestFactory;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/sts/request/StsRequestFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_stsRequestFactory:Lcom/microsoft/onlineid/sts/request/StsRequestFactory;

    new-instance v0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    new-instance v0, Lcom/microsoft/onlineid/internal/storage/TicketStorage;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/internal/storage/TicketStorage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_ticketStorage:Lcom/microsoft/onlineid/internal/storage/TicketStorage;

    new-instance v0, Lcom/microsoft/onlineid/sts/FlightManager;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/sts/FlightManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_flightManager:Lcom/microsoft/onlineid/sts/FlightManager;

    return-void
.end method

.method private updateAccountDetails(Ljava/lang/String;Lcom/microsoft/onlineid/sts/response/ServiceResponse;Z)V
    .registers 6

    invoke-virtual {p2}, Lcom/microsoft/onlineid/sts/response/AbstractStsResponse;->succeeded()Z

    move-result v0

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/Assertion;->check(Z)V

    invoke-virtual {p2}, Lcom/microsoft/onlineid/sts/response/ServiceResponse;->getDAToken()Lcom/microsoft/onlineid/sts/DAToken;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v1, p1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->readAccount(Ljava/lang/String;)Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Lcom/microsoft/onlineid/sts/response/ServiceResponse;->getFlights()Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->setFlights(Ljava/util/Set;)V

    :cond_0
    invoke-virtual {p1, v0}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->setDAToken(Lcom/microsoft/onlineid/sts/DAToken;)V

    iget-object p2, p0, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {p2, p1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->writeAccount(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public createTicketRequest(Ljava/lang/String;Lcom/microsoft/onlineid/ISecurityScope;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/ApiRequest;
    .registers 11

    new-instance v0, Lcom/microsoft/onlineid/internal/ApiRequest;

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_applicationContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_applicationContext:Landroid/content/Context;

    const-class v4, Lcom/microsoft/onlineid/internal/MsaService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.microsoft.onlineid.internal.GET_TICKET"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/internal/ApiRequest;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/ApiRequest;->setAccountPuid(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ApiRequest;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/microsoft/onlineid/internal/ApiRequest;->setScope(Lcom/microsoft/onlineid/ISecurityScope;)Lcom/microsoft/onlineid/internal/ApiRequest;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/microsoft/onlineid/internal/ApiRequest;->setClientPackageName(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ApiRequest;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/microsoft/onlineid/internal/ApiRequest;->setCobrandingId(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ApiRequest;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/microsoft/onlineid/internal/ApiRequest;->setClientStateBundle(Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method public getSdkVersion()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/Resources;->getSdkVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTicket(Ljava/lang/String;Lcom/microsoft/onlineid/ISecurityScope;Ljava/lang/String;)Lcom/microsoft/onlineid/Ticket;
    .registers 14

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v9}, Lcom/microsoft/onlineid/internal/sts/TicketManager;->getTicket(Ljava/lang/String;Lcom/microsoft/onlineid/ISecurityScope;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLandroid/os/Bundle;)Lcom/microsoft/onlineid/Ticket;

    move-result-object p1

    return-object p1
.end method

.method public getTicket(Ljava/lang/String;Lcom/microsoft/onlineid/ISecurityScope;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/Ticket;
    .registers 15

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v8}, Lcom/microsoft/onlineid/internal/sts/TicketManager;->getTicket(Ljava/lang/String;Lcom/microsoft/onlineid/ISecurityScope;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLandroid/os/Bundle;)Lcom/microsoft/onlineid/Ticket;

    move-result-object p1

    return-object p1
.end method

.method public getTicket(Ljava/lang/String;Lcom/microsoft/onlineid/ISecurityScope;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLandroid/os/Bundle;)Lcom/microsoft/onlineid/Ticket;
    .registers 22

    move-object v9, p0

    move-object v10, p1

    move-object v2, p2

    move-object/from16 v11, p3

    move/from16 v12, p5

    const-string v0, "accountPuid"

    invoke-static {p1, v0}, Lcom/microsoft/onlineid/internal/Strings;->verifyArgumentNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p2, v0}, Lcom/microsoft/onlineid/internal/Objects;->verifyArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    invoke-static {v11, v0}, Lcom/microsoft/onlineid/internal/Strings;->verifyArgumentNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v9, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_ticketStorage:Lcom/microsoft/onlineid/internal/storage/TicketStorage;

    invoke-virtual {v0, p1, v11, p2}, Lcom/microsoft/onlineid/internal/storage/TicketStorage;->getTicket(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/onlineid/ISecurityScope;)Lcom/microsoft/onlineid/Ticket;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Ticket request serviced from cache: "

    .line 1
    invoke-static {v1}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Ljava/lang/String;)V

    return-object v0

    :cond_0
    iget-object v0, v9, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->readAccount(Ljava/lang/String;)Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v0, "Attempting to get ticket from server: "

    .line 3
    invoke-static {v0}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Ljava/lang/String;)V

    move-object v0, p0

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/microsoft/onlineid/internal/sts/TicketManager;->performServiceRequest(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;Lcom/microsoft/onlineid/ISecurityScope;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLandroid/os/Bundle;)Lcom/microsoft/onlineid/sts/response/ServiceResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/AbstractStsResponse;->succeeded()Z

    move-result v1

    const-string v2, "Service request failure not handled by performServiceRequest"

    invoke-static {v1, v2}, Lcom/microsoft/onlineid/internal/Assertion;->check(ZLjava/lang/Object;)V

    invoke-direct {p0, p1, v0, v12}, Lcom/microsoft/onlineid/internal/sts/TicketManager;->updateAccountDetails(Ljava/lang/String;Lcom/microsoft/onlineid/sts/response/ServiceResponse;Z)V

    iget-object v1, v9, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_applicationContext:Landroid/content/Context;

    if-eqz p4, :cond_1

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/sso/client/BackupService;->pushBackup(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/microsoft/onlineid/internal/sso/client/BackupService;->pushBackupIfNeeded(Landroid/content/Context;)V

    :goto_0
    if-eqz v12, :cond_2

    iget-object v1, v9, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_flightManager:Lcom/microsoft/onlineid/sts/FlightManager;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/FlightManager;->enrollInFlights()V

    :cond_2
    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/ServiceResponse;->getTicket()Lcom/microsoft/onlineid/Ticket;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Lcom/microsoft/onlineid/internal/Assertion;->check(Z)V

    iget-object v1, v9, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_ticketStorage:Lcom/microsoft/onlineid/internal/storage/TicketStorage;

    invoke-virtual {v1, p1, v11, v0}, Lcom/microsoft/onlineid/internal/storage/TicketStorage;->storeTicket(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/onlineid/Ticket;)V

    return-object v0

    :cond_4
    new-instance v0, Lcom/microsoft/onlineid/internal/exception/AccountNotFoundException;

    const-string v1, "The account was deleted."

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/internal/exception/AccountNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTicket(Ljava/lang/String;Lcom/microsoft/onlineid/ISecurityScope;Ljava/lang/String;Z)Lcom/microsoft/onlineid/Ticket;
    .registers 14

    iget-object p4, p0, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_applicationContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v8}, Lcom/microsoft/onlineid/internal/sts/TicketManager;->getTicket(Ljava/lang/String;Lcom/microsoft/onlineid/ISecurityScope;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLandroid/os/Bundle;)Lcom/microsoft/onlineid/Ticket;

    move-result-object p1

    return-object p1
.end method

.method public getTicketNoCache(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;Lcom/microsoft/onlineid/ISecurityScope;Ljava/lang/String;)Lcom/microsoft/onlineid/Ticket;
    .registers 5

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/microsoft/onlineid/internal/sts/TicketManager;->getTicketNoCache(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;Lcom/microsoft/onlineid/ISecurityScope;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/Ticket;

    move-result-object p1

    return-object p1
.end method

.method public getTicketNoCache(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;Lcom/microsoft/onlineid/ISecurityScope;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/Ticket;
    .registers 15

    const-string v0, "account"

    invoke-static {p1, v0}, Lcom/microsoft/onlineid/internal/Objects;->verifyArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p2, v0}, Lcom/microsoft/onlineid/internal/Objects;->verifyArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    invoke-static {p3, v0}, Lcom/microsoft/onlineid/internal/Strings;->verifyArgumentNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempting to get ticket from server: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v9}, Lcom/microsoft/onlineid/internal/sts/TicketManager;->performServiceRequest(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;Lcom/microsoft/onlineid/ISecurityScope;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLandroid/os/Bundle;)Lcom/microsoft/onlineid/sts/response/ServiceResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/onlineid/sts/response/AbstractStsResponse;->succeeded()Z

    move-result p2

    const-string p3, "Service request failure not handled by performServiceRequest"

    invoke-static {p2, p3}, Lcom/microsoft/onlineid/internal/Assertion;->check(ZLjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/microsoft/onlineid/sts/response/ServiceResponse;->getTicket()Lcom/microsoft/onlineid/Ticket;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Lcom/microsoft/onlineid/internal/Assertion;->check(Z)V

    return-object p1
.end method

.method public performServiceRequest(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;Lcom/microsoft/onlineid/ISecurityScope;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLandroid/os/Bundle;)Lcom/microsoft/onlineid/sts/response/ServiceResponse;
    .registers 22

    move-object v0, p0

    move-object/from16 v5, p6

    iget-object v1, v0, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_deviceManager:Lcom/microsoft/onlineid/sts/DeviceIdentityManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/microsoft/onlineid/sts/DeviceIdentityManager;->getDeviceIdentity(Z)Lcom/microsoft/onlineid/sts/DeviceIdentity;

    move-result-object v8

    iget-object v6, v0, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_stsRequestFactory:Lcom/microsoft/onlineid/sts/request/StsRequestFactory;

    move-object v7, p1

    move-object v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    invoke-virtual/range {v6 .. v12}, Lcom/microsoft/onlineid/sts/request/StsRequestFactory;->createServiceRequest(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;Lcom/microsoft/onlineid/sts/DeviceIdentity;Lcom/microsoft/onlineid/ISecurityScope;Ljava/lang/String;Ljava/lang/String;Z)Lcom/microsoft/onlineid/sts/request/ServiceRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;->send()Lcom/microsoft/onlineid/sts/response/AbstractStsResponse;

    move-result-object v1

    check-cast v1, Lcom/microsoft/onlineid/sts/response/ServiceResponse;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/response/AbstractStsResponse;->succeeded()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/response/ServiceResponse;->getError()Lcom/microsoft/onlineid/sts/StsError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/onlineid/sts/StsError;->isRetryableDeviceDAErrorForUserAuth()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v0, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_deviceManager:Lcom/microsoft/onlineid/sts/DeviceIdentityManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/microsoft/onlineid/sts/DeviceIdentityManager;->getDeviceIdentity(Z)Lcom/microsoft/onlineid/sts/DeviceIdentity;

    move-result-object v8

    iget-object v6, v0, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_stsRequestFactory:Lcom/microsoft/onlineid/sts/request/StsRequestFactory;

    move-object v7, p1

    move-object v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    invoke-virtual/range {v6 .. v12}, Lcom/microsoft/onlineid/sts/request/StsRequestFactory;->createServiceRequest(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;Lcom/microsoft/onlineid/sts/DeviceIdentity;Lcom/microsoft/onlineid/ISecurityScope;Ljava/lang/String;Ljava/lang/String;Z)Lcom/microsoft/onlineid/sts/request/ServiceRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;->send()Lcom/microsoft/onlineid/sts/response/AbstractStsResponse;

    move-result-object v1

    check-cast v1, Lcom/microsoft/onlineid/sts/response/ServiceResponse;

    :cond_0
    iget-object v2, v0, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_configManager:Lcom/microsoft/onlineid/sts/ConfigManager;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/response/ServiceResponse;->getConfigVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/onlineid/sts/ConfigManager;->updateIfNeeded(Ljava/lang/String;)Z

    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/response/AbstractStsResponse;->succeeded()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/response/ServiceResponse;->getError()Lcom/microsoft/onlineid/sts/StsError;

    move-result-object v2

    const-string v3, "ServiceRequest failed with error: "

    .line 1
    invoke-static {v3}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2
    invoke-virtual {v2}, Lcom/microsoft/onlineid/sts/StsError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/response/ServiceResponse;->getInlineAuthUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "android"

    .line 3
    invoke-static {v2}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sts/TicketManager;->getSdkVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "platform"

    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    if-eqz v5, :cond_1

    const-string v2, "cobrandid"

    invoke-virtual {v1, v2, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_1
    iget-object v2, v0, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    move-object v1, v2

    move-object v2, v3

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p3

    move-object/from16 v8, p8

    invoke-static/range {v1 .. v8}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->getResolutionIntent(Landroid/content/Context;Landroid/net/Uri;Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;Lcom/microsoft/onlineid/ISecurityScope;Ljava/lang/String;ZLjava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    new-instance v2, Lcom/microsoft/onlineid/internal/exception/PromptNeededException;

    new-instance v3, Lcom/microsoft/onlineid/internal/ApiRequest;

    iget-object v4, v0, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_applicationContext:Landroid/content/Context;

    invoke-direct {v3, v4, v1}, Lcom/microsoft/onlineid/internal/ApiRequest;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {v2, v3}, Lcom/microsoft/onlineid/internal/exception/PromptNeededException;-><init>(Lcom/microsoft/onlineid/internal/ApiRequest;)V

    throw v2

    :cond_2
    new-instance v1, Lcom/microsoft/onlineid/sts/exception/StsException;

    const-string v3, "Could not acquire ticket."

    invoke-direct {v1, v3, v2}, Lcom/microsoft/onlineid/sts/exception/StsException;-><init>(Ljava/lang/String;Lcom/microsoft/onlineid/sts/StsError;)V

    throw v1

    :cond_3
    return-object v1
.end method
