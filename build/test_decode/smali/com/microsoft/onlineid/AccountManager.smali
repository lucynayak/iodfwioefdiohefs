.class public Lcom/microsoft/onlineid/AccountManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _accountCallback:Lcom/microsoft/onlineid/IAccountCallback;

.field private _accountCollectionCallback:Lcom/microsoft/onlineid/IAccountCollectionCallback;

.field private final _applicationContext:Landroid/content/Context;

.field private final _onlineIdConfiguration:Lcom/microsoft/onlineid/OnlineIdConfiguration;

.field private final _ssoClient:Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;

.field private _telemetryCallback:Lcom/microsoft/onlineid/ITelemetryCallback;

.field private _ticketCallback:Lcom/microsoft/onlineid/ITicketCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/microsoft/onlineid/OnlineIdConfiguration;

    invoke-direct {v0}, Lcom/microsoft/onlineid/OnlineIdConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/microsoft/onlineid/AccountManager;-><init>(Landroid/content/Context;Lcom/microsoft/onlineid/OnlineIdConfiguration;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/microsoft/onlineid/OnlineIdConfiguration;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/microsoft/onlineid/AccountManager;->_applicationContext:Landroid/content/Context;

    if-nez p2, :cond_1

    new-instance p2, Lcom/microsoft/onlineid/OnlineIdConfiguration;

    invoke-direct {p2}, Lcom/microsoft/onlineid/OnlineIdConfiguration;-><init>()V

    :cond_1
    iput-object p2, p0, Lcom/microsoft/onlineid/AccountManager;->_onlineIdConfiguration:Lcom/microsoft/onlineid/OnlineIdConfiguration;

    new-instance p2, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;

    invoke-direct {p2, p1}, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/microsoft/onlineid/AccountManager;->_ssoClient:Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;

    invoke-static {p1}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->initialize(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/microsoft/onlineid/internal/log/Logger;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/onlineid/AccountManager;)Lcom/microsoft/onlineid/OnlineIdConfiguration;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/onlineid/AccountManager;->_onlineIdConfiguration:Lcom/microsoft/onlineid/OnlineIdConfiguration;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/microsoft/onlineid/AccountManager;)Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/onlineid/AccountManager;->_ssoClient:Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/microsoft/onlineid/AccountManager;)Lcom/microsoft/onlineid/AccountManager;
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/onlineid/AccountManager;->getAccountManager()Lcom/microsoft/onlineid/AccountManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Lcom/microsoft/onlineid/AccountManager;)Lcom/microsoft/onlineid/IAccountCallback;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/onlineid/AccountManager;->_accountCallback:Lcom/microsoft/onlineid/IAccountCallback;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/microsoft/onlineid/AccountManager;)Lcom/microsoft/onlineid/IAccountCollectionCallback;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/onlineid/AccountManager;->_accountCollectionCallback:Lcom/microsoft/onlineid/IAccountCollectionCallback;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/microsoft/onlineid/AccountManager;)Lcom/microsoft/onlineid/ITicketCallback;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/onlineid/AccountManager;->_ticketCallback:Lcom/microsoft/onlineid/ITicketCallback;

    return-object p0
.end method

.method private getAccountManager()Lcom/microsoft/onlineid/AccountManager;
    .locals 0

    return-object p0
.end method

.method private verifyCallback(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You must specify an "

    const-string v1, " before invoking this method."

    .line 1
    invoke-static {v0, p2, v1}, La/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getAccount(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/microsoft/onlineid/AccountManager;->_accountCallback:Lcom/microsoft/onlineid/IAccountCallback;

    const-string v1, "IAccountCallback"

    invoke-direct {p0, v0, v1}, Lcom/microsoft/onlineid/AccountManager;->verifyCallback(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/AccountManager;->getAccountRunnable(Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public getAccountById(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/microsoft/onlineid/AccountManager;->_accountCallback:Lcom/microsoft/onlineid/IAccountCallback;

    const-string v1, "IAccountCallback"

    invoke-direct {p0, v0, v1}, Lcom/microsoft/onlineid/AccountManager;->verifyCallback(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/onlineid/AccountManager;->getAccountByIdRunnable(Ljava/lang/String;Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public getAccountByIdRunnable(Ljava/lang/String;Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;
    .locals 7

    new-instance v6, Lcom/microsoft/onlineid/AccountManager$4;

    iget-object v2, p0, Lcom/microsoft/onlineid/AccountManager;->_accountCallback:Lcom/microsoft/onlineid/IAccountCallback;

    move-object v0, v6

    move-object v1, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/onlineid/AccountManager$4;-><init>(Lcom/microsoft/onlineid/AccountManager;Lcom/microsoft/onlineid/internal/IFailureCallback;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v6
.end method

.method public getAccountPickerIntent(Ljava/lang/Iterable;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/onlineid/AccountManager;->_accountCallback:Lcom/microsoft/onlineid/IAccountCallback;

    const-string v1, "IAccountCallback"

    invoke-direct {p0, v0, v1}, Lcom/microsoft/onlineid/AccountManager;->verifyCallback(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/onlineid/AccountManager;->getAccountPickerIntentRunnable(Ljava/lang/Iterable;Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public getAccountPickerIntentRunnable(Ljava/lang/Iterable;Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;"
        }
    .end annotation

    new-instance v6, Lcom/microsoft/onlineid/AccountManager$6;

    iget-object v2, p0, Lcom/microsoft/onlineid/AccountManager;->_accountCallback:Lcom/microsoft/onlineid/IAccountCallback;

    move-object v0, v6

    move-object v1, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/onlineid/AccountManager$6;-><init>(Lcom/microsoft/onlineid/AccountManager;Lcom/microsoft/onlineid/internal/IFailureCallback;Landroid/os/Bundle;Ljava/lang/Iterable;Landroid/os/Bundle;)V

    return-object v6
.end method

.method public getAccountRunnable(Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;
    .locals 2

    new-instance v0, Lcom/microsoft/onlineid/AccountManager$1;

    iget-object v1, p0, Lcom/microsoft/onlineid/AccountManager;->_accountCallback:Lcom/microsoft/onlineid/IAccountCallback;

    invoke-direct {v0, p0, v1, p1, p1}, Lcom/microsoft/onlineid/AccountManager$1;-><init>(Lcom/microsoft/onlineid/AccountManager;Lcom/microsoft/onlineid/internal/IFailureCallback;Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public getAllAccounts(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/microsoft/onlineid/AccountManager;->_accountCollectionCallback:Lcom/microsoft/onlineid/IAccountCollectionCallback;

    const-string v1, "IAccountCollectionCallback"

    invoke-direct {p0, v0, v1}, Lcom/microsoft/onlineid/AccountManager;->verifyCallback(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/AccountManager;->getAllAccountsRunnable(Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public getAllAccountsRunnable(Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;
    .locals 2

    new-instance v0, Lcom/microsoft/onlineid/AccountManager$5;

    iget-object v1, p0, Lcom/microsoft/onlineid/AccountManager;->_accountCollectionCallback:Lcom/microsoft/onlineid/IAccountCollectionCallback;

    invoke-direct {v0, p0, v1, p1, p1}, Lcom/microsoft/onlineid/AccountManager$5;-><init>(Lcom/microsoft/onlineid/AccountManager;Lcom/microsoft/onlineid/internal/IFailureCallback;Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public getSignInIntent(Lcom/microsoft/onlineid/SignInOptions;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/microsoft/onlineid/AccountManager;->_accountCallback:Lcom/microsoft/onlineid/IAccountCallback;

    const-string v1, "IAccountCallback"

    invoke-direct {p0, v0, v1}, Lcom/microsoft/onlineid/AccountManager;->verifyCallback(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/onlineid/AccountManager;->getSignInIntentRunnable(Lcom/microsoft/onlineid/SignInOptions;Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public getSignInIntentRunnable(Lcom/microsoft/onlineid/SignInOptions;Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;
    .locals 7

    new-instance v6, Lcom/microsoft/onlineid/AccountManager$2;

    iget-object v2, p0, Lcom/microsoft/onlineid/AccountManager;->_accountCallback:Lcom/microsoft/onlineid/IAccountCallback;

    move-object v0, v6

    move-object v1, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/onlineid/AccountManager$2;-><init>(Lcom/microsoft/onlineid/AccountManager;Lcom/microsoft/onlineid/internal/IFailureCallback;Landroid/os/Bundle;Lcom/microsoft/onlineid/SignInOptions;Landroid/os/Bundle;)V

    return-object v6
.end method

.method public getSignOutIntent(Lcom/microsoft/onlineid/UserAccount;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/microsoft/onlineid/AccountManager;->_accountCallback:Lcom/microsoft/onlineid/IAccountCallback;

    const-string v1, "IAccountCallback"

    invoke-direct {p0, v0, v1}, Lcom/microsoft/onlineid/AccountManager;->verifyCallback(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/onlineid/AccountManager;->getSignOutIntentRunnable(Lcom/microsoft/onlineid/UserAccount;Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public getSignOutIntentRunnable(Lcom/microsoft/onlineid/UserAccount;Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;
    .locals 7

    new-instance v6, Lcom/microsoft/onlineid/AccountManager$7;

    iget-object v2, p0, Lcom/microsoft/onlineid/AccountManager;->_accountCallback:Lcom/microsoft/onlineid/IAccountCallback;

    move-object v0, v6

    move-object v1, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/onlineid/AccountManager$7;-><init>(Lcom/microsoft/onlineid/AccountManager;Lcom/microsoft/onlineid/internal/IFailureCallback;Landroid/os/Bundle;Lcom/microsoft/onlineid/UserAccount;Landroid/os/Bundle;)V

    return-object v6
.end method

.method public getSignUpIntent(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/microsoft/onlineid/AccountManager;->getSignUpIntent(Lcom/microsoft/onlineid/SignUpOptions;Landroid/os/Bundle;)V

    return-void
.end method

.method public getSignUpIntent(Lcom/microsoft/onlineid/SignUpOptions;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/microsoft/onlineid/AccountManager;->_accountCallback:Lcom/microsoft/onlineid/IAccountCallback;

    const-string v1, "IAccountCallback"

    invoke-direct {p0, v0, v1}, Lcom/microsoft/onlineid/AccountManager;->verifyCallback(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/onlineid/AccountManager;->getSignUpIntentRunnable(Lcom/microsoft/onlineid/SignUpOptions;Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public getSignUpIntentRunnable(Lcom/microsoft/onlineid/SignUpOptions;Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;
    .locals 7

    new-instance v6, Lcom/microsoft/onlineid/AccountManager$3;

    iget-object v2, p0, Lcom/microsoft/onlineid/AccountManager;->_accountCallback:Lcom/microsoft/onlineid/IAccountCallback;

    move-object v0, v6

    move-object v1, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/onlineid/AccountManager$3;-><init>(Lcom/microsoft/onlineid/AccountManager;Lcom/microsoft/onlineid/internal/IFailureCallback;Landroid/os/Bundle;Lcom/microsoft/onlineid/SignUpOptions;Landroid/os/Bundle;)V

    return-object v6
.end method

.method public getTicket(Lcom/microsoft/onlineid/UserAccount;Lcom/microsoft/onlineid/ISecurityScope;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/microsoft/onlineid/AccountManager;->_accountCallback:Lcom/microsoft/onlineid/IAccountCallback;

    const-string v1, "IAccountCallback"

    invoke-direct {p0, v0, v1}, Lcom/microsoft/onlineid/AccountManager;->verifyCallback(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/microsoft/onlineid/AccountManager;->_ticketCallback:Lcom/microsoft/onlineid/ITicketCallback;

    const-string v1, "ITicketCallback"

    invoke-direct {p0, v0, v1}, Lcom/microsoft/onlineid/AccountManager;->verifyCallback(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/onlineid/AccountManager;->getTicketRunnable(Lcom/microsoft/onlineid/UserAccount;Lcom/microsoft/onlineid/ISecurityScope;Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public getTicketRunnable(Lcom/microsoft/onlineid/UserAccount;Lcom/microsoft/onlineid/ISecurityScope;Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;
    .locals 8

    new-instance v7, Lcom/microsoft/onlineid/AccountManager$8;

    iget-object v2, p0, Lcom/microsoft/onlineid/AccountManager;->_ticketCallback:Lcom/microsoft/onlineid/ITicketCallback;

    move-object v0, v7

    move-object v1, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/microsoft/onlineid/AccountManager$8;-><init>(Lcom/microsoft/onlineid/AccountManager;Lcom/microsoft/onlineid/internal/IFailureCallback;Landroid/os/Bundle;Lcom/microsoft/onlineid/UserAccount;Lcom/microsoft/onlineid/ISecurityScope;Landroid/os/Bundle;)V

    return-object v7
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    :try_start_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    if-eqz p3, :cond_0

    const-string v1, "com.microsoft.onlineid.client_state"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.microsoft.onlineid.result_type"

    invoke-virtual {p3, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;->fromString(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;

    move-result-object v3

    move-object v8, v1

    move-object v1, p3

    move-object p3, v8

    goto :goto_0

    :cond_0
    move-object v2, v1

    move-object v3, v2

    move-object v1, p3

    move-object p3, v3

    goto :goto_0

    :cond_1
    move-object p3, v1

    move-object v2, p3

    move-object v3, v2

    :goto_0
    invoke-static {}, Lcom/microsoft/onlineid/internal/configuration/Settings;->isDebugBuild()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity result: request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", result: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Ljava/lang/String;)V

    const-string p1, "With extras:"

    invoke-static {p1, v1}, Lcom/microsoft/onlineid/internal/Bundles;->log(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    if-nez v3, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown result type ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") encountered, ignoring."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    return v0

    :cond_3
    sget-object p1, Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;->Ticket:Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;

    if-ne v3, p1, :cond_4

    iget-object v2, p0, Lcom/microsoft/onlineid/AccountManager;->_ticketCallback:Lcom/microsoft/onlineid/ITicketCallback;

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/microsoft/onlineid/AccountManager;->_accountCallback:Lcom/microsoft/onlineid/IAccountCallback;

    :goto_1
    if-ne v3, p1, :cond_5

    iget-object v4, p0, Lcom/microsoft/onlineid/AccountManager;->_ticketCallback:Lcom/microsoft/onlineid/ITicketCallback;

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/microsoft/onlineid/AccountManager;->_accountCallback:Lcom/microsoft/onlineid/IAccountCallback;

    :goto_2
    if-eqz v1, :cond_6

    iget-object v5, p0, Lcom/microsoft/onlineid/AccountManager;->_telemetryCallback:Lcom/microsoft/onlineid/ITelemetryCallback;

    if-eqz v5, :cond_6

    const-string v5, "com.microsoft.onlineid.web_telemetry_events"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    const-string v6, "com.microsoft.onlineid.web_telemetry_all_events_captured"

    invoke-virtual {v1, v6, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/microsoft/onlineid/AccountManager;->_telemetryCallback:Lcom/microsoft/onlineid/ITelemetryCallback;

    invoke-interface {v7, v5, v6}, Lcom/microsoft/onlineid/ITelemetryCallback;->webTelemetryEventsReceived(Ljava/lang/Iterable;Z)V

    :cond_6
    const/4 v5, 0x1

    if-nez p2, :cond_7

    invoke-interface {v2, p3}, Lcom/microsoft/onlineid/internal/IUserInteractionCallback;->onUserCancel(Landroid/os/Bundle;)V

    goto/16 :goto_4

    :cond_7
    const/4 v6, -0x1

    if-ne p2, v6, :cond_e

    :try_start_1
    invoke-static {v1}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->hasError(Landroid/os/Bundle;)Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->exceptionFromBundle(Landroid/os/Bundle;)Lcom/microsoft/onlineid/exception/AuthenticationException;

    move-result-object p1

    instance-of p2, p1, Lcom/microsoft/onlineid/internal/exception/AccountNotFoundException;

    if-eqz p2, :cond_9

    const-string p1, "com.microsoft.onlineid.user_cid"

    invoke-virtual {v1, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    :cond_8
    const-string p2, "Expect to find a CID for sign-out notification."

    invoke-static {v0, p2}, Lcom/microsoft/onlineid/internal/Assertion;->check(ZLjava/lang/Object;)V

    const-string p2, "com.microsoft.onlineid.signed_out_this_app_only"

    invoke-virtual {v1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    iget-object v0, p0, Lcom/microsoft/onlineid/AccountManager;->_accountCallback:Lcom/microsoft/onlineid/IAccountCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/microsoft/onlineid/IAccountCallback;->onAccountSignedOut(Ljava/lang/String;ZLandroid/os/Bundle;)V

    goto :goto_4

    :cond_9
    :goto_3
    invoke-interface {v4, p1, p3}, Lcom/microsoft/onlineid/internal/IFailureCallback;->onFailure(Lcom/microsoft/onlineid/exception/AuthenticationException;Landroid/os/Bundle;)V

    goto :goto_4

    :cond_a
    invoke-static {v1}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->hasPendingIntent(Landroid/os/Bundle;)Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->pendingIntentFromBundle(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-interface {v2, p1, p3}, Lcom/microsoft/onlineid/internal/IUserInteractionCallback;->onUINeeded(Landroid/app/PendingIntent;Landroid/os/Bundle;)V

    goto :goto_4

    :cond_b
    if-ne v3, p1, :cond_c

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->hasTicket(Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->limitedUserAccountFromBundle(Landroid/os/Bundle;)Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    move-result-object p1

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->ticketFromBundle(Landroid/os/Bundle;)Lcom/microsoft/onlineid/Ticket;

    move-result-object p2

    iget-object v0, p0, Lcom/microsoft/onlineid/AccountManager;->_ticketCallback:Lcom/microsoft/onlineid/ITicketCallback;

    new-instance v1, Lcom/microsoft/onlineid/UserAccount;

    invoke-direct {v1, p0, p1}, Lcom/microsoft/onlineid/UserAccount;-><init>(Lcom/microsoft/onlineid/AccountManager;Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;)V

    invoke-interface {v0, p2, v1, p3}, Lcom/microsoft/onlineid/ITicketCallback;->onTicketAcquired(Lcom/microsoft/onlineid/Ticket;Lcom/microsoft/onlineid/UserAccount;Landroid/os/Bundle;)V

    goto :goto_4

    :cond_c
    sget-object p1, Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;->Account:Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;

    if-ne v3, p1, :cond_d

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->hasLimitedUserAccount(Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->limitedUserAccountFromBundle(Landroid/os/Bundle;)Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    move-result-object p1

    iget-object p2, p0, Lcom/microsoft/onlineid/AccountManager;->_accountCallback:Lcom/microsoft/onlineid/IAccountCallback;

    new-instance v0, Lcom/microsoft/onlineid/UserAccount;

    invoke-direct {v0, p0, p1}, Lcom/microsoft/onlineid/UserAccount;-><init>(Lcom/microsoft/onlineid/AccountManager;Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;)V

    invoke-interface {p2, v0, p3}, Lcom/microsoft/onlineid/IAccountCallback;->onAccountAcquired(Lcom/microsoft/onlineid/UserAccount;Landroid/os/Bundle;)V

    goto :goto_4

    :cond_d
    new-instance p1, Lcom/microsoft/onlineid/exception/InternalException;

    const-string p2, "Unexpected onActivityResult found."

    invoke-direct {p1, p2}, Lcom/microsoft/onlineid/exception/InternalException;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/microsoft/onlineid/internal/sso/BundleMarshallerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    new-instance p2, Lcom/microsoft/onlineid/exception/InternalException;

    invoke-direct {p2, p1}, Lcom/microsoft/onlineid/exception/InternalException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v4, p2, p3}, Lcom/microsoft/onlineid/internal/IFailureCallback;->onFailure(Lcom/microsoft/onlineid/exception/AuthenticationException;Landroid/os/Bundle;)V

    :cond_e
    :goto_4
    return v5

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_f

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/lang/ClassNotFoundException;

    if-eqz p2, :cond_f

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Caught RuntimeException when checking extras, ignoring: "

    :goto_5
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Ljava/lang/String;)V

    return v0

    :cond_f
    throw p1

    :catch_2
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Caught BadParcelableException when checking extras, ignoring: "

    goto :goto_5
.end method

.method public setAccountCallback(Lcom/microsoft/onlineid/IAccountCallback;)Lcom/microsoft/onlineid/AccountManager;
    .locals 0

    iput-object p1, p0, Lcom/microsoft/onlineid/AccountManager;->_accountCallback:Lcom/microsoft/onlineid/IAccountCallback;

    return-object p0
.end method

.method public setAccountCollectionCallback(Lcom/microsoft/onlineid/IAccountCollectionCallback;)Lcom/microsoft/onlineid/AccountManager;
    .locals 0

    iput-object p1, p0, Lcom/microsoft/onlineid/AccountManager;->_accountCollectionCallback:Lcom/microsoft/onlineid/IAccountCollectionCallback;

    return-object p0
.end method

.method public setTelemetryCallback(Lcom/microsoft/onlineid/ITelemetryCallback;)Lcom/microsoft/onlineid/AccountManager;
    .locals 0

    iput-object p1, p0, Lcom/microsoft/onlineid/AccountManager;->_telemetryCallback:Lcom/microsoft/onlineid/ITelemetryCallback;

    return-object p0
.end method

.method public setTicketCallback(Lcom/microsoft/onlineid/ITicketCallback;)Lcom/microsoft/onlineid/AccountManager;
    .locals 0

    iput-object p1, p0, Lcom/microsoft/onlineid/AccountManager;->_ticketCallback:Lcom/microsoft/onlineid/ITicketCallback;

    return-object p0
.end method
