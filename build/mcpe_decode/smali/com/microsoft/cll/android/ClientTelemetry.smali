.class public Lcom/microsoft/cll/android/ClientTelemetry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private settingsCallLatencies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public snapshot:Lb/a;

.field private vortexCallLatencies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/a;

    invoke-direct {v0}, Lb/a;-><init>()V

    iput-object v0, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:Lb/a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/microsoft/cll/android/ClientTelemetry;->settingsCallLatencies:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/microsoft/cll/android/ClientTelemetry;->vortexCallLatencies:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/microsoft/cll/android/ClientTelemetry;->Reset()V

    return-void
.end method


# virtual methods
.method public GetEvent()LMicrosoft/Android/LoggingLibrary/Snapshot;
    .locals 2

    new-instance v0, LMicrosoft/Android/LoggingLibrary/Snapshot;

    invoke-direct {v0}, LMicrosoft/Android/LoggingLibrary/Snapshot;-><init>()V

    iget-object v1, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:Lb/a;

    invoke-virtual {v0, v1}, Lcom/microsoft/telemetry/Data;->setBaseData(Lcom/microsoft/telemetry/Domain;)V

    return-object v0
.end method

.method public IncrementEventsDroppedDueToQuota()V
    .locals 2

    iget-object v0, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:Lb/a;

    .line 1
    iget v1, v0, Lb/a;->i:I

    add-int/lit8 v1, v1, 0x1

    .line 2
    iput v1, v0, Lb/a;->i:I

    return-void
.end method

.method public IncrementEventsQueuedForUpload()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/microsoft/cll/android/ClientTelemetry;->IncrementEventsQueuedForUpload(I)V

    return-void
.end method

.method public IncrementEventsQueuedForUpload(I)V
    .locals 2

    iget-object v0, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:Lb/a;

    .line 1
    iget v1, v0, Lb/a;->d:I

    add-int/2addr p1, v1

    .line 2
    iput p1, v0, Lb/a;->d:I

    return-void
.end method

.method public IncrementLogFailures()V
    .locals 2

    iget-object v0, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:Lb/a;

    .line 1
    iget v1, v0, Lb/a;->f:I

    add-int/lit8 v1, v1, 0x1

    .line 2
    iput v1, v0, Lb/a;->f:I

    return-void
.end method

.method public IncrementRejectDropCount(I)V
    .locals 2

    iget-object v0, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:Lb/a;

    .line 1
    iget v1, v0, Lb/a;->j:I

    add-int/2addr p1, v1

    .line 2
    iput p1, v0, Lb/a;->j:I

    return-void
.end method

.method public IncrementSettingsHttpAttempts()V
    .locals 2

    iget-object v0, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:Lb/a;

    .line 1
    iget v1, v0, Lb/a;->n:I

    add-int/lit8 v1, v1, 0x1

    .line 2
    iput v1, v0, Lb/a;->n:I

    return-void
.end method

.method public IncrementSettingsHttpFailures(I)V
    .locals 3

    iget-object v0, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:Lb/a;

    .line 1
    iget v1, v0, Lb/a;->o:I

    add-int/lit8 v1, v1, 0x1

    .line 2
    iput v1, v0, Lb/a;->o:I

    const/16 v1, 0x190

    const/16 v2, 0x1f4

    if-lt p1, v1, :cond_0

    if-ge p1, v2, :cond_0

    .line 3
    iget v1, v0, Lb/a;->k:I

    add-int/lit8 v1, v1, 0x1

    .line 4
    iput v1, v0, Lb/a;->k:I

    :cond_0
    if-lt p1, v2, :cond_1

    const/16 v1, 0x258

    if-ge p1, v1, :cond_1

    .line 5
    iget v1, v0, Lb/a;->l:I

    add-int/lit8 v1, v1, 0x1

    .line 6
    iput v1, v0, Lb/a;->l:I

    :cond_1
    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    .line 7
    iget p1, v0, Lb/a;->m:I

    add-int/lit8 p1, p1, 0x1

    .line 8
    iput p1, v0, Lb/a;->m:I

    :cond_2
    return-void
.end method

.method public IncrementVortexHttpAttempts()V
    .locals 2

    iget-object v0, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:Lb/a;

    .line 1
    iget v1, v0, Lb/a;->s:I

    add-int/lit8 v1, v1, 0x1

    .line 2
    iput v1, v0, Lb/a;->s:I

    return-void
.end method

.method public IncrementVortexHttpFailures(I)V
    .locals 3

    iget-object v0, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:Lb/a;

    .line 1
    iget v1, v0, Lb/a;->t:I

    add-int/lit8 v1, v1, 0x1

    .line 2
    iput v1, v0, Lb/a;->t:I

    const/16 v1, 0x190

    const/16 v2, 0x1f4

    if-lt p1, v1, :cond_0

    if-ge p1, v2, :cond_0

    .line 3
    iget v1, v0, Lb/a;->p:I

    add-int/lit8 v1, v1, 0x1

    .line 4
    iput v1, v0, Lb/a;->p:I

    :cond_0
    if-lt p1, v2, :cond_1

    const/16 v1, 0x258

    if-ge p1, v1, :cond_1

    .line 5
    iget v1, v0, Lb/a;->q:I

    add-int/lit8 v1, v1, 0x1

    .line 6
    iput v1, v0, Lb/a;->q:I

    :cond_1
    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    .line 7
    iget p1, v0, Lb/a;->r:I

    add-int/lit8 p1, p1, 0x1

    .line 8
    iput p1, v0, Lb/a;->r:I

    :cond_2
    return-void
.end method

.method public Reset()V
    .locals 4

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSSSSSS\'Z\'"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    iget-object v1, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:Lb/a;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1
    iput-object v0, v1, Lb/a;->e:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:Lb/a;

    const/4 v1, 0x0

    .line 3
    iput v1, v0, Lb/a;->d:I

    .line 4
    iput v1, v0, Lb/a;->f:I

    .line 5
    iput v1, v0, Lb/a;->i:I

    .line 6
    iput v1, v0, Lb/a;->j:I

    .line 7
    iput v1, v0, Lb/a;->s:I

    .line 8
    iput v1, v0, Lb/a;->t:I

    const-wide/16 v2, 0x0

    .line 9
    iput-wide v2, v0, Lb/a;->c:D

    .line 10
    iput v1, v0, Lb/a;->b:I

    .line 11
    iput v1, v0, Lb/a;->h:I

    .line 12
    iput v1, v0, Lb/a;->n:I

    .line 13
    iput v1, v0, Lb/a;->o:I

    .line 14
    iput v1, v0, Lb/a;->a:I

    .line 15
    iput v1, v0, Lb/a;->g:I

    .line 16
    iput v1, v0, Lb/a;->p:I

    .line 17
    iput v1, v0, Lb/a;->q:I

    .line 18
    iput v1, v0, Lb/a;->r:I

    .line 19
    iput v1, v0, Lb/a;->k:I

    .line 20
    iput v1, v0, Lb/a;->l:I

    .line 21
    iput v1, v0, Lb/a;->m:I

    .line 22
    iget-object v0, p0, Lcom/microsoft/cll/android/ClientTelemetry;->settingsCallLatencies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/microsoft/cll/android/ClientTelemetry;->vortexCallLatencies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public SetAvgSettingsLatencyMs(I)V
    .locals 2

    iget-object v0, p0, Lcom/microsoft/cll/android/ClientTelemetry;->settingsCallLatencies:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/microsoft/cll/android/ClientTelemetry;->settingsCallLatencies:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/microsoft/cll/android/ClientTelemetry;->settingsCallLatencies:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    div-int/2addr v0, p1

    iget-object p1, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:Lb/a;

    iput v0, p1, Lb/a;->a:I

    return-void
.end method

.method public SetAvgVortexLatencyMs(I)V
    .locals 2

    iget-object v0, p0, Lcom/microsoft/cll/android/ClientTelemetry;->vortexCallLatencies:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/microsoft/cll/android/ClientTelemetry;->vortexCallLatencies:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/microsoft/cll/android/ClientTelemetry;->vortexCallLatencies:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    div-int/2addr v0, p1

    iget-object p1, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:Lb/a;

    iput v0, p1, Lb/a;->b:I

    return-void
.end method

.method public SetCacheUsagePercent(D)V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:Lb/a;

    iput-wide p1, v0, Lb/a;->c:D

    return-void
.end method

.method public SetMaxSettingsLatencyMs(I)V
    .locals 2

    iget-object v0, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:Lb/a;

    .line 1
    iget v1, v0, Lb/a;->g:I

    if-ge v1, p1, :cond_0

    .line 2
    iput p1, v0, Lb/a;->g:I

    :cond_0
    return-void
.end method

.method public SetMaxVortexLatencyMs(I)V
    .locals 2

    iget-object v0, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:Lb/a;

    .line 1
    iget v1, v0, Lb/a;->h:I

    if-ge v1, p1, :cond_0

    .line 2
    iput p1, v0, Lb/a;->h:I

    :cond_0
    return-void
.end method
