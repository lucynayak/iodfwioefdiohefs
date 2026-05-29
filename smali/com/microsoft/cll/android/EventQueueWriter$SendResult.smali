.class final enum Lcom/microsoft/cll/android/EventQueueWriter$SendResult;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/cll/android/EventQueueWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SendResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/cll/android/EventQueueWriter$SendResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/cll/android/EventQueueWriter$SendResult;

.field public static final enum ERROR:Lcom/microsoft/cll/android/EventQueueWriter$SendResult;

.field public static final enum SUCCESS:Lcom/microsoft/cll/android/EventQueueWriter$SendResult;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/microsoft/cll/android/EventQueueWriter$SendResult;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/cll/android/EventQueueWriter$SendResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/cll/android/EventQueueWriter$SendResult;->SUCCESS:Lcom/microsoft/cll/android/EventQueueWriter$SendResult;

    new-instance v1, Lcom/microsoft/cll/android/EventQueueWriter$SendResult;

    const-string v3, "ERROR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/microsoft/cll/android/EventQueueWriter$SendResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/microsoft/cll/android/EventQueueWriter$SendResult;->ERROR:Lcom/microsoft/cll/android/EventQueueWriter$SendResult;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/microsoft/cll/android/EventQueueWriter$SendResult;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/microsoft/cll/android/EventQueueWriter$SendResult;->$VALUES:[Lcom/microsoft/cll/android/EventQueueWriter$SendResult;

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

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/cll/android/EventQueueWriter$SendResult;
    .registers 2

    const-class v0, Lcom/microsoft/cll/android/EventQueueWriter$SendResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/cll/android/EventQueueWriter$SendResult;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/cll/android/EventQueueWriter$SendResult;
    .registers 1

    sget-object v0, Lcom/microsoft/cll/android/EventQueueWriter$SendResult;->$VALUES:[Lcom/microsoft/cll/android/EventQueueWriter$SendResult;

    invoke-virtual {v0}, [Lcom/microsoft/cll/android/EventQueueWriter$SendResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/cll/android/EventQueueWriter$SendResult;

    return-object v0
.end method
