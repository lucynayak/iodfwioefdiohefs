.class public final enum Lcom/microsoft/xbox/services/NotificationResult$NotificationType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/services/NotificationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NotificationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/services/NotificationResult$NotificationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/services/NotificationResult$NotificationType;

.field public static final enum Achievement:Lcom/microsoft/xbox/services/NotificationResult$NotificationType;

.field public static final enum Invite:Lcom/microsoft/xbox/services/NotificationResult$NotificationType;

.field public static final enum Unknown:Lcom/microsoft/xbox/services/NotificationResult$NotificationType;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/microsoft/xbox/services/NotificationResult$NotificationType;

    const-string v1, "Achievement"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/services/NotificationResult$NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/services/NotificationResult$NotificationType;->Achievement:Lcom/microsoft/xbox/services/NotificationResult$NotificationType;

    new-instance v1, Lcom/microsoft/xbox/services/NotificationResult$NotificationType;

    const-string v3, "Invite"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/microsoft/xbox/services/NotificationResult$NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/microsoft/xbox/services/NotificationResult$NotificationType;->Invite:Lcom/microsoft/xbox/services/NotificationResult$NotificationType;

    new-instance v3, Lcom/microsoft/xbox/services/NotificationResult$NotificationType;

    const-string v5, "Unknown"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/microsoft/xbox/services/NotificationResult$NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/microsoft/xbox/services/NotificationResult$NotificationType;->Unknown:Lcom/microsoft/xbox/services/NotificationResult$NotificationType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/microsoft/xbox/services/NotificationResult$NotificationType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/microsoft/xbox/services/NotificationResult$NotificationType;->$VALUES:[Lcom/microsoft/xbox/services/NotificationResult$NotificationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/services/NotificationResult$NotificationType;
    .registers 2

    const-class v0, Lcom/microsoft/xbox/services/NotificationResult$NotificationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/services/NotificationResult$NotificationType;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/services/NotificationResult$NotificationType;
    .registers 1

    sget-object v0, Lcom/microsoft/xbox/services/NotificationResult$NotificationType;->$VALUES:[Lcom/microsoft/xbox/services/NotificationResult$NotificationType;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/services/NotificationResult$NotificationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/services/NotificationResult$NotificationType;

    return-object v0
.end method
