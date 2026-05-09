.class public Lcom/mojang/minecraftpe/NotificationListenerService;
.super Ln1/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ln1/a;-><init>()V

    return-void
.end method


# virtual methods
.method public native nativePushNotificationReceived(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public onMessageReceived(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    invoke-static {p2, p0}, Lcom/microsoft/xbox/services/NotificationHelper;->tryParseXboxLiveNotification(Landroid/os/Bundle;Landroid/content/Context;)Lcom/microsoft/xbox/services/NotificationResult;

    move-result-object p1

    iget-object p2, p1, Lcom/microsoft/xbox/services/NotificationResult;->notificationType:Lcom/microsoft/xbox/services/NotificationResult$NotificationType;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    iget-object v0, p1, Lcom/microsoft/xbox/services/NotificationResult;->title:Ljava/lang/String;

    iget-object v1, p1, Lcom/microsoft/xbox/services/NotificationResult;->body:Ljava/lang/String;

    iget-object p1, p1, Lcom/microsoft/xbox/services/NotificationResult;->data:Ljava/lang/String;

    invoke-virtual {p0, p2, v0, v1, p1}, Lcom/mojang/minecraftpe/NotificationListenerService;->nativePushNotificationReceived(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
