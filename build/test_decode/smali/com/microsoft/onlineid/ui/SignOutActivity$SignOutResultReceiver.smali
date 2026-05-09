.class Lcom/microsoft/onlineid/ui/SignOutActivity$SignOutResultReceiver;
.super Lcom/microsoft/onlineid/internal/ApiRequestResultReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/ui/SignOutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SignOutResultReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/onlineid/ui/SignOutActivity;


# direct methods
.method public constructor <init>(Lcom/microsoft/onlineid/ui/SignOutActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/onlineid/ui/SignOutActivity$SignOutResultReceiver;->this$0:Lcom/microsoft/onlineid/ui/SignOutActivity;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Lcom/microsoft/onlineid/internal/ApiRequestResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/ui/SignOutActivity$SignOutResultReceiver;->this$0:Lcom/microsoft/onlineid/ui/SignOutActivity;

    invoke-static {v0}, Lcom/microsoft/onlineid/ui/SignOutActivity;->access$200(Lcom/microsoft/onlineid/ui/SignOutActivity;)Lcom/microsoft/onlineid/internal/ActivityResultSender;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->putException(Ljava/lang/Exception;)Lcom/microsoft/onlineid/internal/ActivityResultSender;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->set()V

    iget-object p1, p0, Lcom/microsoft/onlineid/ui/SignOutActivity$SignOutResultReceiver;->this$0:Lcom/microsoft/onlineid/ui/SignOutActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onSuccess(Lcom/microsoft/onlineid/internal/ApiResult;)V
    .locals 2

    iget-object p1, p0, Lcom/microsoft/onlineid/ui/SignOutActivity$SignOutResultReceiver;->this$0:Lcom/microsoft/onlineid/ui/SignOutActivity;

    invoke-static {p1}, Lcom/microsoft/onlineid/ui/SignOutActivity;->access$200(Lcom/microsoft/onlineid/ui/SignOutActivity;)Lcom/microsoft/onlineid/internal/ActivityResultSender;

    move-result-object p1

    iget-object v0, p0, Lcom/microsoft/onlineid/ui/SignOutActivity$SignOutResultReceiver;->this$0:Lcom/microsoft/onlineid/ui/SignOutActivity;

    invoke-static {v0}, Lcom/microsoft/onlineid/ui/SignOutActivity;->access$100(Lcom/microsoft/onlineid/ui/SignOutActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/onlineid/ui/SignOutActivity$SignOutResultReceiver;->this$0:Lcom/microsoft/onlineid/ui/SignOutActivity;

    invoke-static {v1}, Lcom/microsoft/onlineid/ui/SignOutActivity;->access$000(Lcom/microsoft/onlineid/ui/SignOutActivity;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->putSignedOutCid(Ljava/lang/String;Z)Lcom/microsoft/onlineid/internal/ActivityResultSender;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->set()V

    iget-object p1, p0, Lcom/microsoft/onlineid/ui/SignOutActivity$SignOutResultReceiver;->this$0:Lcom/microsoft/onlineid/ui/SignOutActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onUINeeded(Landroid/app/PendingIntent;)V
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "onUINeeded not expected for sign out request."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/ui/SignOutActivity$SignOutResultReceiver;->onFailure(Ljava/lang/Exception;)V

    return-void
.end method

.method public onUserCancel()V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/ui/SignOutActivity$SignOutResultReceiver;->this$0:Lcom/microsoft/onlineid/ui/SignOutActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
