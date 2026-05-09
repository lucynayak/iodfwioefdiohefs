.class Lcom/microsoft/onlineid/AccountManager$4;
.super Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/onlineid/AccountManager;->getAccountByIdRunnable(Ljava/lang/String;Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/onlineid/AccountManager;

.field public final synthetic val$cid:Ljava/lang/String;

.field public final synthetic val$state:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/microsoft/onlineid/AccountManager;Lcom/microsoft/onlineid/internal/IFailureCallback;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/onlineid/AccountManager$4;->this$0:Lcom/microsoft/onlineid/AccountManager;

    iput-object p4, p0, Lcom/microsoft/onlineid/AccountManager$4;->val$cid:Ljava/lang/String;

    iput-object p5, p0, Lcom/microsoft/onlineid/AccountManager$4;->val$state:Landroid/os/Bundle;

    invoke-direct {p0, p2, p3}, Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;-><init>(Lcom/microsoft/onlineid/internal/IFailureCallback;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public performRequest()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/microsoft/onlineid/AccountManager$4;->val$cid:Ljava/lang/String;

    const-string v1, "cid"

    invoke-static {v0, v1}, Lcom/microsoft/onlineid/internal/Strings;->verifyArgumentNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/microsoft/onlineid/AccountManager$4;->this$0:Lcom/microsoft/onlineid/AccountManager;

    invoke-static {v0}, Lcom/microsoft/onlineid/AccountManager;->access$100(Lcom/microsoft/onlineid/AccountManager;)Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/onlineid/AccountManager$4;->val$cid:Ljava/lang/String;

    iget-object v2, p0, Lcom/microsoft/onlineid/AccountManager$4;->val$state:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->getAccountById(Ljava/lang/String;Landroid/os/Bundle;)Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/onlineid/AccountManager$4;->this$0:Lcom/microsoft/onlineid/AccountManager;

    invoke-static {v1}, Lcom/microsoft/onlineid/AccountManager;->access$300(Lcom/microsoft/onlineid/AccountManager;)Lcom/microsoft/onlineid/IAccountCallback;

    move-result-object v1

    new-instance v2, Lcom/microsoft/onlineid/UserAccount;

    iget-object v3, p0, Lcom/microsoft/onlineid/AccountManager$4;->this$0:Lcom/microsoft/onlineid/AccountManager;

    invoke-static {v3}, Lcom/microsoft/onlineid/AccountManager;->access$200(Lcom/microsoft/onlineid/AccountManager;)Lcom/microsoft/onlineid/AccountManager;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/microsoft/onlineid/UserAccount;-><init>(Lcom/microsoft/onlineid/AccountManager;Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;)V

    iget-object v0, p0, Lcom/microsoft/onlineid/AccountManager$4;->val$state:Landroid/os/Bundle;

    invoke-interface {v1, v2, v0}, Lcom/microsoft/onlineid/IAccountCallback;->onAccountAcquired(Lcom/microsoft/onlineid/UserAccount;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/microsoft/onlineid/internal/exception/AccountNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object v0, p0, Lcom/microsoft/onlineid/AccountManager$4;->this$0:Lcom/microsoft/onlineid/AccountManager;

    invoke-static {v0}, Lcom/microsoft/onlineid/AccountManager;->access$300(Lcom/microsoft/onlineid/AccountManager;)Lcom/microsoft/onlineid/IAccountCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/onlineid/AccountManager$4;->val$cid:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/microsoft/onlineid/AccountManager$4;->val$state:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2, v3}, Lcom/microsoft/onlineid/IAccountCallback;->onAccountSignedOut(Ljava/lang/String;ZLandroid/os/Bundle;)V

    return-void
.end method
