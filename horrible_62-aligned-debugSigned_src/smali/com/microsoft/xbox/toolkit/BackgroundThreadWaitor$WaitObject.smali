.class Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitObject;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WaitObject"
.end annotation


# instance fields
.field private expires:J

.field public final synthetic this$0:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;

.field private type:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;J)V
    .registers 5

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitObject;->this$0:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitObject;->type:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitObject;->expires:J

    return-void
.end method

.method public static synthetic access$100(Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitObject;)Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;
    .registers 1

    iget-object p0, p0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitObject;->type:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    return-object p0
.end method


# virtual methods
.method public isExpired()Z
    .registers 6

    iget-wide v0, p0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitObject;->expires:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
