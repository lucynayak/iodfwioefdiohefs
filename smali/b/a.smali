.class public final Lb/a;
.super Lcom/microsoft/telemetry/Domain;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:D

.field public d:I

.field public e:Ljava/lang/String;

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Lcom/microsoft/telemetry/Domain;-><init>()V

    const-string v0, "Ms.Telemetry.CllHeartBeat"

    .line 1
    iput-object v0, p0, Lcom/microsoft/telemetry/Domain;->QualifiedName:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/microsoft/telemetry/Domain;->Attributes:Ljava/util/LinkedHashMap;

    const-string v1, "Description"

    const-string v2, "This event is meant to be sent on a regular basis by all persistent in-process and out-of-process Logging Libraries."

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final InitializeFields()V
    .registers 2

    const-string v0, "Ms.Telemetry.CllHeartBeat"

    iput-object v0, p0, Lcom/microsoft/telemetry/Domain;->QualifiedName:Ljava/lang/String;

    return-void
.end method

.method public final serializeContent(Ljava/io/Writer;)Ljava/lang/String;
    .registers 9

    invoke-super {p0, p1}, Lcom/microsoft/telemetry/Domain;->serializeContent(Ljava/io/Writer;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lb/a;->e:Ljava/lang/String;

    const-string v2, ","

    if-eqz v1, :cond_0

    const-string v1, "\"lastHeartBeat\":"

    .line 1
    invoke-static {v0, v1, p1}, La/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 2
    iget-object v0, p0, Lb/a;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget v1, p0, Lb/a;->d:I

    if-eqz v1, :cond_1

    const-string v1, "\"eventsQueued\":"

    .line 3
    invoke-static {v0, v1, p1}, La/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 4
    iget v0, p0, Lb/a;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    iget v1, p0, Lb/a;->f:I

    if-eqz v1, :cond_2

    const-string v1, "\"logFailures\":"

    .line 5
    invoke-static {v0, v1, p1}, La/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 6
    iget v0, p0, Lb/a;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    iget v1, p0, Lb/a;->i:I

    if-eqz v1, :cond_3

    const-string v1, "\"quotaDropCount\":"

    .line 7
    invoke-static {v0, v1, p1}, La/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 8
    iget v0, p0, Lb/a;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3
    iget v1, p0, Lb/a;->j:I

    if-eqz v1, :cond_4

    const-string v1, "\"rejectDropCount\":"

    .line 9
    invoke-static {v0, v1, p1}, La/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 10
    iget v0, p0, Lb/a;->j:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object v0, v2

    :cond_4
    iget v1, p0, Lb/a;->s:I

    if-eqz v1, :cond_5

    const-string v1, "\"vortexHttpAttempts\":"

    .line 11
    invoke-static {v0, v1, p1}, La/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 12
    iget v0, p0, Lb/a;->s:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object v0, v2

    :cond_5
    iget v1, p0, Lb/a;->t:I

    if-eqz v1, :cond_6

    const-string v1, "\"vortexHttpFailures\":"

    .line 13
    invoke-static {v0, v1, p1}, La/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 14
    iget v0, p0, Lb/a;->t:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object v0, v2

    :cond_6
    iget-wide v3, p0, Lb/a;->c:D

    const-wide/16 v5, 0x0

    cmpl-double v1, v3, v5

    if-lez v1, :cond_7

    const-string v1, "\"cacheUsagePercent\":"

    .line 15
    invoke-static {v0, v1, p1}, La/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 16
    iget-wide v0, p0, Lb/a;->c:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object v0, v2

    :cond_7
    iget v1, p0, Lb/a;->b:I

    if-eqz v1, :cond_8

    const-string v1, "\"avgVortexLatencyMs\":"

    .line 17
    invoke-static {v0, v1, p1}, La/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 18
    iget v0, p0, Lb/a;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object v0, v2

    :cond_8
    iget v1, p0, Lb/a;->h:I

    if-eqz v1, :cond_9

    const-string v1, "\"maxVortexLatencyMs\":"

    .line 19
    invoke-static {v0, v1, p1}, La/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 20
    iget v0, p0, Lb/a;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object v0, v2

    :cond_9
    iget v1, p0, Lb/a;->n:I

    if-eqz v1, :cond_a

    const-string v1, "\"settingsHttpAttempts\":"

    .line 21
    invoke-static {v0, v1, p1}, La/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 22
    iget v0, p0, Lb/a;->n:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object v0, v2

    :cond_a
    iget v1, p0, Lb/a;->o:I

    if-eqz v1, :cond_b

    const-string v1, "\"settingsHttpFailures\":"

    .line 23
    invoke-static {v0, v1, p1}, La/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 24
    iget v0, p0, Lb/a;->o:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object v0, v2

    :cond_b
    iget v1, p0, Lb/a;->a:I

    if-eqz v1, :cond_c

    const-string v1, "\"avgSettingsLatencyMs\":"

    .line 25
    invoke-static {v0, v1, p1}, La/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 26
    iget v0, p0, Lb/a;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object v0, v2

    :cond_c
    iget v1, p0, Lb/a;->g:I

    if-eqz v1, :cond_d

    const-string v1, "\"maxSettingsLatencyMs\":"

    .line 27
    invoke-static {v0, v1, p1}, La/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 28
    iget v0, p0, Lb/a;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object v0, v2

    :cond_d
    iget v1, p0, Lb/a;->q:I

    if-eqz v1, :cond_e

    const-string v1, "\"vortexFailures5xx\":"

    .line 29
    invoke-static {v0, v1, p1}, La/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 30
    iget v0, p0, Lb/a;->q:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object v0, v2

    :cond_e
    iget v1, p0, Lb/a;->p:I

    if-eqz v1, :cond_f

    const-string v1, "\"vortexFailures4xx\":"

    .line 31
    invoke-static {v0, v1, p1}, La/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 32
    iget v0, p0, Lb/a;->p:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object v0, v2

    :cond_f
    iget v1, p0, Lb/a;->r:I

    if-eqz v1, :cond_10

    const-string v1, "\"vortexFailuresTimeout\":"

    .line 33
    invoke-static {v0, v1, p1}, La/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 34
    iget v0, p0, Lb/a;->r:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object v0, v2

    :cond_10
    iget v1, p0, Lb/a;->l:I

    if-eqz v1, :cond_11

    const-string v1, "\"settingsFailures5xx\":"

    .line 35
    invoke-static {v0, v1, p1}, La/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 36
    iget v0, p0, Lb/a;->l:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object v0, v2

    :cond_11
    iget v1, p0, Lb/a;->k:I

    if-eqz v1, :cond_12

    const-string v1, "\"settingsFailures4xx\":"

    .line 37
    invoke-static {v0, v1, p1}, La/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 38
    iget v0, p0, Lb/a;->k:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object v0, v2

    :cond_12
    iget v1, p0, Lb/a;->m:I

    if-eqz v1, :cond_13

    const-string v1, "\"settingsFailuresTimeout\":"

    .line 39
    invoke-static {v0, v1, p1}, La/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 40
    iget v0, p0, Lb/a;->m:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_13
    move-object v2, v0

    :goto_0
    return-object v2
.end method
