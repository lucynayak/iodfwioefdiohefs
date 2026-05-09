.class Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$WebFlowResultHandler;
.super Lcom/microsoft/onlineid/internal/ActivityResultHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebFlowResultHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;


# direct methods
.method private constructor <init>(Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$WebFlowResultHandler;->this$0:Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;

    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/ActivityResultHandler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$WebFlowResultHandler;-><init>(Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;)V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$WebFlowResultHandler;->this$0:Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->onFailure(Ljava/lang/Exception;)V

    return-void
.end method

.method public onSuccess(Lcom/microsoft/onlineid/internal/ApiResult;)V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$WebFlowResultHandler;->this$0:Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/ApiResult;->getFlowToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->onWebFlowSucceeded(Ljava/lang/String;)V

    return-void
.end method

.method public onUINeeded(Landroid/app/PendingIntent;)V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$WebFlowResultHandler;->this$0:Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->onUiNeeded(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public onUserCancel()V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$WebFlowResultHandler;->this$0:Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->onUserCancel()V

    return-void
.end method
