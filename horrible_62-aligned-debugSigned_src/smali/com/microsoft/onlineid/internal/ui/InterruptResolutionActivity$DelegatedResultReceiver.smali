.class abstract Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$DelegatedResultReceiver;
.super Lcom/microsoft/onlineid/internal/ApiRequestResultReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DelegatedResultReceiver"
.end annotation


# instance fields
.field public _activity:Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;


# direct methods
.method public constructor <init>()V
    .registers 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Lcom/microsoft/onlineid/internal/ApiRequestResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .registers 3

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$DelegatedResultReceiver;->_activity:Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->onFailure(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public onUINeeded(Landroid/app/PendingIntent;)V
    .registers 3

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$DelegatedResultReceiver;->_activity:Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->onUiNeeded(Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method public onUserCancel()V
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$DelegatedResultReceiver;->_activity:Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->onUserCancel()V

    :cond_0
    return-void
.end method

.method public setActivity(Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$DelegatedResultReceiver;->_activity:Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;

    return-void
.end method
