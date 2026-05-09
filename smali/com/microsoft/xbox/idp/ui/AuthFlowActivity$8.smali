.class Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->onComplete(Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$8;->this$0:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    invoke-static {}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "stateSaved: "

    .line 1
    invoke-static {v1}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$8;->this$0:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;

    invoke-static {v2}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->access$100(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$8;->this$0:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->access$100(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/microsoft/xbox/idp/util/CacheUtil;->clearCaches()V

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$8;->this$0:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->access$200(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;)Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->createAccount:Z

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$8;->this$0:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;

    sget-object v2, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->MSA:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    new-instance v3, Lcom/microsoft/xbox/idp/ui/MSAFragment;

    invoke-direct {v3}, Lcom/microsoft/xbox/idp/ui/MSAFragment;-><init>()V

    iget-object v4, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$8;->this$0:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v0, v2, v3, v4, v1}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->access$300(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;Landroid/app/Fragment;Landroid/os/Bundle;Z)V

    :cond_0
    return-void
.end method
