.class Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->onComplete(Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;Lcom/microsoft/xbox/idp/util/AuthFlowResult;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;

.field public final synthetic val$createAccount:Z


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$2;->this$0:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;

    iput-boolean p2, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$2;->val$createAccount:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "stateSaved: "

    .line 1
    invoke-static {v1}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$2;->this$0:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;

    invoke-static {v2}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->access$100(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$2;->this$0:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->access$100(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$2;->this$0:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;

    invoke-static {v1}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->access$200(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;)Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    move-result-object v1

    iget-object v1, v1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->userImpl:Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl;

    invoke-virtual {v1}, Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl;->getUserImplPtr()J

    move-result-wide v1

    const-string v3, "ARG_USER_PTR"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-boolean v1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$2;->val$createAccount:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$2;->this$0:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;

    sget-object v3, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->ACCOUNT_PROVISIONING:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    new-instance v4, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-direct {v4}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;-><init>()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$2;->this$0:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;

    invoke-static {v1}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->access$200(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;)Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    move-result-object v1

    iget-object v1, v1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->ticket:Ljava/lang/String;

    const-string v3, "ARG_RPS_TICKET"

    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$2;->this$0:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;

    sget-object v3, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->EVENT_INITIALIZATION:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    new-instance v4, Lcom/microsoft/xbox/idp/ui/EventInitializationFragment;

    invoke-direct {v4}, Lcom/microsoft/xbox/idp/ui/EventInitializationFragment;-><init>()V

    :goto_0
    invoke-static {v1, v3, v4, v0, v2}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->access$300(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;Landroid/app/Fragment;Landroid/os/Bundle;Z)V

    :cond_1
    return-void
.end method
