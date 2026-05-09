.class public Lcom/microsoft/xbox/toolkit/TimeMonitor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final NSTOMSEC:J

.field private endTicks:J

.field private startTicks:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/microsoft/xbox/toolkit/TimeMonitor;->startTicks:J

    iput-wide v0, p0, Lcom/microsoft/xbox/toolkit/TimeMonitor;->endTicks:J

    const-wide/32 v0, 0xf4240

    iput-wide v0, p0, Lcom/microsoft/xbox/toolkit/TimeMonitor;->NSTOMSEC:J

    return-void
.end method


# virtual methods
.method public currentTime()J
    .registers 5

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/microsoft/xbox/toolkit/TimeMonitor;->startTicks:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getElapsedMs()J
    .registers 6

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/TimeMonitor;->getIsStarted()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    iget-wide v3, p0, Lcom/microsoft/xbox/toolkit/TimeMonitor;->endTicks:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    :goto_0
    iget-wide v0, p0, Lcom/microsoft/xbox/toolkit/TimeMonitor;->startTicks:J

    sub-long/2addr v3, v0

    const-wide/32 v0, 0xf4240

    div-long v1, v3, v0

    :cond_1
    return-wide v1
.end method

.method public getIsEnded()Z
    .registers 6

    iget-wide v0, p0, Lcom/microsoft/xbox/toolkit/TimeMonitor;->endTicks:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getIsStarted()Z
    .registers 6

    iget-wide v0, p0, Lcom/microsoft/xbox/toolkit/TimeMonitor;->startTicks:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/microsoft/xbox/toolkit/TimeMonitor;->startTicks:J

    iput-wide v0, p0, Lcom/microsoft/xbox/toolkit/TimeMonitor;->endTicks:J

    return-void
.end method

.method public saveCurrentTime()V
    .registers 3

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/TimeMonitor;->getIsStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/microsoft/xbox/toolkit/TimeMonitor;->endTicks:J

    :cond_0
    return-void
.end method

.method public start()V
    .registers 3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/microsoft/xbox/toolkit/TimeMonitor;->startTicks:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/microsoft/xbox/toolkit/TimeMonitor;->endTicks:J

    return-void
.end method

.method public stop()V
    .registers 6

    iget-wide v0, p0, Lcom/microsoft/xbox/toolkit/TimeMonitor;->startTicks:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v0, p0, Lcom/microsoft/xbox/toolkit/TimeMonitor;->endTicks:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/microsoft/xbox/toolkit/TimeMonitor;->endTicks:J

    :cond_0
    return-void
.end method
