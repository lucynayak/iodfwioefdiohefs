.class Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;
.super Lcom/microsoft/onlineid/internal/sso/service/IMsaSsoService$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;


# direct methods
.method public constructor <init>(Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/sso/service/IMsaSsoService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccount(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 7

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    new-instance v1, Lcom/microsoft/onlineid/internal/sso/service/operation/GetAccountOperation;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    invoke-static {v3}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->access$000(Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;)Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    move-result-object v3

    iget-object v4, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    invoke-static {v4}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->access$100(Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;)Lcom/microsoft/onlineid/internal/sts/TicketManager;

    move-result-object v4

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetAccountOperation;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;Lcom/microsoft/onlineid/internal/sts/TicketManager;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->handleIncomingRequest(Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public getAccountById(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 7

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    new-instance v1, Lcom/microsoft/onlineid/internal/sso/service/operation/GetAccountByIdOperation;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    invoke-static {v3}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->access$000(Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;)Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    move-result-object v3

    iget-object v4, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    invoke-static {v4}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->access$100(Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;)Lcom/microsoft/onlineid/internal/sts/TicketManager;

    move-result-object v4

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetAccountByIdOperation;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;Lcom/microsoft/onlineid/internal/sts/TicketManager;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->handleIncomingRequest(Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public getAccountPickerIntent(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 7

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    new-instance v1, Lcom/microsoft/onlineid/internal/sso/service/operation/GetAccountPickerOperation;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    invoke-static {v3}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->access$000(Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;)Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    move-result-object v3

    iget-object v4, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    invoke-static {v4}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->access$100(Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;)Lcom/microsoft/onlineid/internal/sts/TicketManager;

    move-result-object v4

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetAccountPickerOperation;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;Lcom/microsoft/onlineid/internal/sts/TicketManager;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->handleIncomingRequest(Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public getAllAccounts(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 7

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    new-instance v1, Lcom/microsoft/onlineid/internal/sso/service/operation/GetAllAccountsOperation;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    invoke-static {v3}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->access$000(Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;)Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    move-result-object v3

    iget-object v4, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    invoke-static {v4}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->access$100(Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;)Lcom/microsoft/onlineid/internal/sts/TicketManager;

    move-result-object v4

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetAllAccountsOperation;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;Lcom/microsoft/onlineid/internal/sts/TicketManager;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->handleIncomingRequest(Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public getSignInIntent(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 7

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    new-instance v1, Lcom/microsoft/onlineid/internal/sso/service/operation/GetSignInIntentOperation;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    invoke-static {v3}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->access$000(Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;)Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    move-result-object v3

    iget-object v4, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    invoke-static {v4}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->access$100(Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;)Lcom/microsoft/onlineid/internal/sts/TicketManager;

    move-result-object v4

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetSignInIntentOperation;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;Lcom/microsoft/onlineid/internal/sts/TicketManager;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->handleIncomingRequest(Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public getSignOutIntent(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 7

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    new-instance v1, Lcom/microsoft/onlineid/internal/sso/service/operation/GetSignOutIntentOperation;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    invoke-static {v3}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->access$000(Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;)Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    move-result-object v3

    iget-object v4, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    invoke-static {v4}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->access$100(Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;)Lcom/microsoft/onlineid/internal/sts/TicketManager;

    move-result-object v4

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetSignOutIntentOperation;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;Lcom/microsoft/onlineid/internal/sts/TicketManager;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->handleIncomingRequest(Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public getSignUpIntent(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 7

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    new-instance v1, Lcom/microsoft/onlineid/internal/sso/service/operation/GetSignUpIntentOperation;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    invoke-static {v3}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->access$000(Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;)Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    move-result-object v3

    iget-object v4, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    invoke-static {v4}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->access$100(Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;)Lcom/microsoft/onlineid/internal/sts/TicketManager;

    move-result-object v4

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetSignUpIntentOperation;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;Lcom/microsoft/onlineid/internal/sts/TicketManager;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->handleIncomingRequest(Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public getTicket(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 7

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    new-instance v1, Lcom/microsoft/onlineid/internal/sso/service/operation/GetTicketOperation;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    invoke-static {v3}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->access$000(Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;)Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    move-result-object v3

    iget-object v4, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    invoke-static {v4}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->access$100(Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;)Lcom/microsoft/onlineid/internal/sts/TicketManager;

    move-result-object v4

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetTicketOperation;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;Lcom/microsoft/onlineid/internal/sts/TicketManager;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->handleIncomingRequest(Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public retrieveBackup(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 10

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    new-instance v7, Lcom/microsoft/onlineid/internal/sso/service/operation/RetrieveBackupOperation;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->access$000(Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;)Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    move-result-object v4

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->access$100(Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;)Lcom/microsoft/onlineid/internal/sts/TicketManager;

    move-result-object v5

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->access$200(Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;)Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    move-result-object v6

    move-object v1, v7

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/microsoft/onlineid/internal/sso/service/operation/RetrieveBackupOperation;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;Lcom/microsoft/onlineid/internal/sts/TicketManager;Lcom/microsoft/onlineid/internal/storage/TypedStorage;)V

    invoke-virtual {v0, v7}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->handleIncomingRequest(Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public storeBackup(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 10

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    new-instance v7, Lcom/microsoft/onlineid/internal/sso/service/operation/StoreBackupOperation;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->access$000(Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;)Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    move-result-object v4

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->access$100(Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;)Lcom/microsoft/onlineid/internal/sts/TicketManager;

    move-result-object v5

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->access$200(Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;)Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    move-result-object v6

    move-object v1, v7

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/microsoft/onlineid/internal/sso/service/operation/StoreBackupOperation;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;Lcom/microsoft/onlineid/internal/sts/TicketManager;Lcom/microsoft/onlineid/internal/storage/TypedStorage;)V

    invoke-virtual {v0, v7}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->handleIncomingRequest(Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method
