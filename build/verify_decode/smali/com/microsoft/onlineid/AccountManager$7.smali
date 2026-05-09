.class Lcom/microsoft/onlineid/AccountManager$7;
.super Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/onlineid/AccountManager;->getSignOutIntentRunnable(Lcom/microsoft/onlineid/UserAccount;Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/onlineid/AccountManager;

.field public final synthetic val$account:Lcom/microsoft/onlineid/UserAccount;

.field public final synthetic val$state:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/microsoft/onlineid/AccountManager;Lcom/microsoft/onlineid/internal/IFailureCallback;Landroid/os/Bundle;Lcom/microsoft/onlineid/UserAccount;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/onlineid/AccountManager$7;->this$0:Lcom/microsoft/onlineid/AccountManager;

    iput-object p4, p0, Lcom/microsoft/onlineid/AccountManager$7;->val$account:Lcom/microsoft/onlineid/UserAccount;

    iput-object p5, p0, Lcom/microsoft/onlineid/AccountManager$7;->val$state:Landroid/os/Bundle;

    invoke-direct {p0, p2, p3}, Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;-><init>(Lcom/microsoft/onlineid/internal/IFailureCallback;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public performRequest()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/microsoft/onlineid/AccountManager$7;->this$0:Lcom/microsoft/onlineid/AccountManager;

    invoke-static {v0}, Lcom/microsoft/onlineid/AccountManager;->access$100(Lcom/microsoft/onlineid/AccountManager;)Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/onlineid/AccountManager$7;->val$account:Lcom/microsoft/onlineid/UserAccount;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/UserAccount;->getCid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/onlineid/AccountManager$7;->val$state:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->getSignOutIntent(Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/onlineid/AccountManager$7;->this$0:Lcom/microsoft/onlineid/AccountManager;

    invoke-static {v1}, Lcom/microsoft/onlineid/AccountManager;->access$300(Lcom/microsoft/onlineid/AccountManager;)Lcom/microsoft/onlineid/IAccountCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/onlineid/AccountManager$7;->val$state:Landroid/os/Bundle;

    invoke-interface {v1, v0, v2}, Lcom/microsoft/onlineid/IAccountCallback;->onUINeeded(Landroid/app/PendingIntent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/microsoft/onlineid/internal/exception/AccountNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object v0, p0, Lcom/microsoft/onlineid/AccountManager$7;->this$0:Lcom/microsoft/onlineid/AccountManager;

    invoke-static {v0}, Lcom/microsoft/onlineid/AccountManager;->access$300(Lcom/microsoft/onlineid/AccountManager;)Lcom/microsoft/onlineid/IAccountCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/onlineid/AccountManager$7;->val$account:Lcom/microsoft/onlineid/UserAccount;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/UserAccount;->getCid()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/microsoft/onlineid/AccountManager$7;->val$state:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2, v3}, Lcom/microsoft/onlineid/IAccountCallback;->onAccountSignedOut(Ljava/lang/String;ZLandroid/os/Bundle;)V

    return-void
.end method
