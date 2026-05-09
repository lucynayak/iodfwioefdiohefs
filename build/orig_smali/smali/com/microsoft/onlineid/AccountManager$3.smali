.class Lcom/microsoft/onlineid/AccountManager$3;
.super Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/onlineid/AccountManager;->getSignUpIntentRunnable(Lcom/microsoft/onlineid/SignUpOptions;Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/onlineid/AccountManager;

.field public final synthetic val$options:Lcom/microsoft/onlineid/SignUpOptions;

.field public final synthetic val$state:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/microsoft/onlineid/AccountManager;Lcom/microsoft/onlineid/internal/IFailureCallback;Landroid/os/Bundle;Lcom/microsoft/onlineid/SignUpOptions;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/onlineid/AccountManager$3;->this$0:Lcom/microsoft/onlineid/AccountManager;

    iput-object p4, p0, Lcom/microsoft/onlineid/AccountManager$3;->val$options:Lcom/microsoft/onlineid/SignUpOptions;

    iput-object p5, p0, Lcom/microsoft/onlineid/AccountManager$3;->val$state:Landroid/os/Bundle;

    invoke-direct {p0, p2, p3}, Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;-><init>(Lcom/microsoft/onlineid/internal/IFailureCallback;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public performRequest()V
    .locals 4

    iget-object v0, p0, Lcom/microsoft/onlineid/AccountManager$3;->this$0:Lcom/microsoft/onlineid/AccountManager;

    invoke-static {v0}, Lcom/microsoft/onlineid/AccountManager;->access$100(Lcom/microsoft/onlineid/AccountManager;)Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/onlineid/AccountManager$3;->val$options:Lcom/microsoft/onlineid/SignUpOptions;

    iget-object v2, p0, Lcom/microsoft/onlineid/AccountManager$3;->this$0:Lcom/microsoft/onlineid/AccountManager;

    invoke-static {v2}, Lcom/microsoft/onlineid/AccountManager;->access$000(Lcom/microsoft/onlineid/AccountManager;)Lcom/microsoft/onlineid/OnlineIdConfiguration;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/onlineid/AccountManager$3;->val$state:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->getSignUpIntent(Lcom/microsoft/onlineid/SignUpOptions;Lcom/microsoft/onlineid/OnlineIdConfiguration;Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/onlineid/AccountManager$3;->this$0:Lcom/microsoft/onlineid/AccountManager;

    invoke-static {v1}, Lcom/microsoft/onlineid/AccountManager;->access$300(Lcom/microsoft/onlineid/AccountManager;)Lcom/microsoft/onlineid/IAccountCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/onlineid/AccountManager$3;->val$state:Landroid/os/Bundle;

    invoke-interface {v1, v0, v2}, Lcom/microsoft/onlineid/IAccountCallback;->onUINeeded(Landroid/app/PendingIntent;Landroid/os/Bundle;)V

    return-void
.end method
