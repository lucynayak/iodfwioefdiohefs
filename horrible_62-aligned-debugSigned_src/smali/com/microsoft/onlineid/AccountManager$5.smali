.class Lcom/microsoft/onlineid/AccountManager$5;
.super Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/onlineid/AccountManager;->getAllAccountsRunnable(Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/onlineid/AccountManager;

.field public final synthetic val$state:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/microsoft/onlineid/AccountManager;Lcom/microsoft/onlineid/internal/IFailureCallback;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 5

    iput-object p1, p0, Lcom/microsoft/onlineid/AccountManager$5;->this$0:Lcom/microsoft/onlineid/AccountManager;

    iput-object p4, p0, Lcom/microsoft/onlineid/AccountManager$5;->val$state:Landroid/os/Bundle;

    invoke-direct {p0, p2, p3}, Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;-><init>(Lcom/microsoft/onlineid/internal/IFailureCallback;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public performRequest()V
    .registers 6

    iget-object v0, p0, Lcom/microsoft/onlineid/AccountManager$5;->this$0:Lcom/microsoft/onlineid/AccountManager;

    invoke-static {v0}, Lcom/microsoft/onlineid/AccountManager;->access$100(Lcom/microsoft/onlineid/AccountManager;)Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/onlineid/AccountManager$5;->val$state:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->getAllAccounts(Landroid/os/Bundle;)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    new-instance v3, Lcom/microsoft/onlineid/UserAccount;

    iget-object v4, p0, Lcom/microsoft/onlineid/AccountManager$5;->this$0:Lcom/microsoft/onlineid/AccountManager;

    invoke-static {v4}, Lcom/microsoft/onlineid/AccountManager;->access$200(Lcom/microsoft/onlineid/AccountManager;)Lcom/microsoft/onlineid/AccountManager;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/microsoft/onlineid/UserAccount;-><init>(Lcom/microsoft/onlineid/AccountManager;Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;)V

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/microsoft/onlineid/AccountManager$5;->this$0:Lcom/microsoft/onlineid/AccountManager;

    invoke-static {v0}, Lcom/microsoft/onlineid/AccountManager;->access$400(Lcom/microsoft/onlineid/AccountManager;)Lcom/microsoft/onlineid/IAccountCollectionCallback;

    move-result-object v0

    iget-object v2, p0, Lcom/microsoft/onlineid/AccountManager$5;->val$state:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/microsoft/onlineid/IAccountCollectionCallback;->onAccountCollectionAcquired(Ljava/util/Set;Landroid/os/Bundle;)V

    return-void
.end method
