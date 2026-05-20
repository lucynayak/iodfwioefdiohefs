.class public Lcom/microsoft/xbox/services/NotificationResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/services/NotificationResult$NotificationType;
    }
.end annotation


# instance fields
.field public body:Ljava/lang/String;

.field public data:Ljava/lang/String;

.field public notificationType:Lcom/microsoft/xbox/services/NotificationResult$NotificationType;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Landroid/content/Context;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    sget-object p2, Lcom/microsoft/xbox/services/NotificationResult$NotificationType;->Unknown:Lcom/microsoft/xbox/services/NotificationResult$NotificationType;

    :goto_0
    iput-object p2, p0, Lcom/microsoft/xbox/services/NotificationResult;->notificationType:Lcom/microsoft/xbox/services/NotificationResult$NotificationType;

    goto/16 :goto_2

    :cond_1
    const-string v1, "xbox_live_game_invite"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "notification"

    if-eqz v1, :cond_4

    sget v0, Lcom/microsoft/xbox/idp/R$string;->xbox_live_game_invite_title:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/services/NotificationResult;->title:Ljava/lang/String;

    sget v0, Lcom/microsoft/xbox/idp/R$string;->xbox_live_game_invite_body:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "body_loc_args"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "["

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v3, v0, v2

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aget-object v0, v0, v2

    aput-object v0, v1, v2

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/microsoft/xbox/services/NotificationResult;->body:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string p2, "XSAPI.Android"

    const-string v0, "could not parse notification"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    sget-object p2, Lcom/microsoft/xbox/services/NotificationResult$NotificationType;->Invite:Lcom/microsoft/xbox/services/NotificationResult$NotificationType;

    goto :goto_0

    :cond_4
    const-string p2, "xbox_live_achievement_unlock"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/microsoft/xbox/services/NotificationResult$NotificationType;->Achievement:Lcom/microsoft/xbox/services/NotificationResult$NotificationType;

    iput-object p2, p0, Lcom/microsoft/xbox/services/NotificationResult;->notificationType:Lcom/microsoft/xbox/services/NotificationResult$NotificationType;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_5

    const-string v0, "title"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/services/NotificationResult;->title:Ljava/lang/String;

    const-string v0, "body"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/microsoft/xbox/services/NotificationResult;->body:Ljava/lang/String;

    :cond_5
    :goto_2
    const-string p2, "xbl"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/xbox/services/NotificationResult;->data:Ljava/lang/String;

    return-void
.end method
