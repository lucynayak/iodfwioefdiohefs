.class public Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$TitleRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TitleRecord"
.end annotation


# instance fields
.field public activity:Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$ActivityRecord;

.field public id:J

.field public lastModified:Ljava/util/Date;

.field public name:Ljava/lang/String;

.field public placement:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isDash()Z
    .registers 6

    iget-wide v0, p0, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$TitleRecord;->id:J

    const-wide v2, 0xfffe07d1L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isRunningInFullOrFill()Z
    .registers 3

    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$TitleRecord;->placement:Ljava/lang/String;

    const-string v1, "Full"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$TitleRecord;->placement:Ljava/lang/String;

    const-string v1, "Fill"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
