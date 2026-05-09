.class public Lcom/microsoft/telemetry/cs2/Envelope;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/telemetry/IJsonSerializable;


# instance fields
.field private appId:Ljava/lang/String;

.field private appVer:Ljava/lang/String;

.field private data:Lcom/microsoft/telemetry/Base;

.field private deviceId:Ljava/lang/String;

.field private flags:J

.field private iKey:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private os:Ljava/lang/String;

.field private osVer:Ljava/lang/String;

.field private sampleRate:D

.field private seq:Ljava/lang/String;

.field private tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private time:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private ver:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/microsoft/telemetry/cs2/Envelope;->ver:I

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    iput-wide v0, p0, Lcom/microsoft/telemetry/cs2/Envelope;->sampleRate:D

    invoke-virtual {p0}, Lcom/microsoft/telemetry/cs2/Envelope;->InitializeFields()V

    return-void
.end method


# virtual methods
.method public InitializeFields()V
    .locals 0

    return-void
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/telemetry/cs2/Envelope;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/telemetry/cs2/Envelope;->appVer:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Lcom/microsoft/telemetry/Base;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/telemetry/cs2/Envelope;->data:Lcom/microsoft/telemetry/Base;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/telemetry/cs2/Envelope;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getFlags()J
    .locals 2

    iget-wide v0, p0, Lcom/microsoft/telemetry/cs2/Envelope;->flags:J

    return-wide v0
.end method

.method public getIKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/telemetry/cs2/Envelope;->iKey:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/telemetry/cs2/Envelope;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOs()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/telemetry/cs2/Envelope;->os:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/telemetry/cs2/Envelope;->osVer:Ljava/lang/String;

    return-object v0
.end method

.method public getSampleRate()D
    .locals 2

    iget-wide v0, p0, Lcom/microsoft/telemetry/cs2/Envelope;->sampleRate:D

    return-wide v0
.end method

.method public getSeq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/telemetry/cs2/Envelope;->seq:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/telemetry/cs2/Envelope;->tags:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/telemetry/cs2/Envelope;->tags:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/microsoft/telemetry/cs2/Envelope;->tags:Ljava/util/Map;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/telemetry/cs2/Envelope;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/telemetry/cs2/Envelope;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getVer()I
    .locals 1

    iget v0, p0, Lcom/microsoft/telemetry/cs2/Envelope;->ver:I

    return v0
.end method

.method public serialize(Ljava/io/Writer;)V
    .locals 1

    if-eqz p1, :cond_0

    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    invoke-virtual {p0, p1}, Lcom/microsoft/telemetry/cs2/Envelope;->serializeContent(Ljava/io/Writer;)Ljava/lang/String;

    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "writer"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public serializeContent(Ljava/io/Writer;)Ljava/lang/String;
    .locals 6

    iget v0, p0, Lcom/microsoft/telemetry/cs2/Envelope;->ver:I

    const-string v1, ","

    if-eqz v0, :cond_0

    const-string v0, "\"ver\":"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v0, p0, Lcom/microsoft/telemetry/cs2/Envelope;->ver:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    const-string v2, "\"name\":"

    .line 1
    invoke-static {v0, v2, p1}, La/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 2
    iget-object v0, p0, Lcom/microsoft/telemetry/cs2/Envelope;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ",\"time\":"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/microsoft/telemetry/cs2/Envelope;->time:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/microsoft/telemetry/cs2/Envelope;->sampleRate:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_1

    const-string v0, ",\"sampleRate\":"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/microsoft/telemetry/cs2/Envelope;->sampleRate:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/microsoft/telemetry/cs2/Envelope;->seq:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "\"seq\":"

    .line 3
    invoke-static {v1, v0, p1}, La/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 4
    iget-object v0, p0, Lcom/microsoft/telemetry/cs2/Envelope;->seq:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/microsoft/telemetry/cs2/Envelope;->iKey:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, "\"iKey\":"

    .line 5
    invoke-static {v1, v0, p1}, La/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 6
    iget-object v0, p0, Lcom/microsoft/telemetry/cs2/Envelope;->iKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_3
    iget-wide v2, p0, Lcom/microsoft/telemetry/cs2/Envelope;->flags:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    const-string v0, "\"flags\":"

    .line 7
    invoke-static {v1, v0, p1}, La/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 8
    iget-wide v2, p0, Lcom/microsoft/telemetry/cs2/Envelope;->flags:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/microsoft/telemetry/cs2/Envelope;->deviceId:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v0, "\"deviceId\":"

    .line 9
    invoke-static {v1, v0, p1}, La/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 10
    iget-object v0, p0, Lcom/microsoft/telemetry/cs2/Envelope;->deviceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/microsoft/telemetry/cs2/Envelope;->os:Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string v0, "\"os\":"

    .line 11
    invoke-static {v1, v0, p1}, La/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 12
    iget-object v0, p0, Lcom/microsoft/telemetry/cs2/Envelope;->os:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/microsoft/telemetry/cs2/Envelope;->osVer:Ljava/lang/String;

    if-eqz v0, :cond_7

    const-string v0, "\"osVer\":"

    .line 13
    invoke-static {v1, v0, p1}, La/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 14
    iget-object v0, p0, Lcom/microsoft/telemetry/cs2/Envelope;->osVer:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/microsoft/telemetry/cs2/Envelope;->appId:Ljava/lang/String;

    if-eqz v0, :cond_8

    const-string v0, "\"appId\":"

    .line 15
    invoke-static {v1, v0, p1}, La/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 16
    iget-object v0, p0, Lcom/microsoft/telemetry/cs2/Envelope;->appId:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_8
    iget-object v0, p0, Lcom/microsoft/telemetry/cs2/Envelope;->appVer:Ljava/lang/String;

    if-eqz v0, :cond_9

    const-string v0, "\"appVer\":"

    .line 17
    invoke-static {v1, v0, p1}, La/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 18
    iget-object v0, p0, Lcom/microsoft/telemetry/cs2/Envelope;->appVer:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_9
    iget-object v0, p0, Lcom/microsoft/telemetry/cs2/Envelope;->userId:Ljava/lang/String;

    if-eqz v0, :cond_a

    const-string v0, "\"userId\":"

    .line 19
    invoke-static {v1, v0, p1}, La/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 20
    iget-object v0, p0, Lcom/microsoft/telemetry/cs2/Envelope;->userId:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_a
    iget-object v0, p0, Lcom/microsoft/telemetry/cs2/Envelope;->tags:Ljava/util/Map;

    if-eqz v0, :cond_b

    const-string v0, "\"tags\":"

    .line 21
    invoke-static {v1, v0, p1}, La/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 22
    iget-object v0, p0, Lcom/microsoft/telemetry/cs2/Envelope;->tags:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/microsoft/telemetry/JsonHelper;->writeDictionary(Ljava/io/Writer;Ljava/util/Map;)V

    :cond_b
    iget-object v0, p0, Lcom/microsoft/telemetry/cs2/Envelope;->data:Lcom/microsoft/telemetry/Base;

    if-eqz v0, :cond_c

    const-string v0, "\"data\":"

    .line 23
    invoke-static {v1, v0, p1}, La/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 24
    iget-object v0, p0, Lcom/microsoft/telemetry/cs2/Envelope;->data:Lcom/microsoft/telemetry/Base;

    invoke-static {p1, v0}, Lcom/microsoft/telemetry/JsonHelper;->writeJsonSerializable(Ljava/io/Writer;Lcom/microsoft/telemetry/IJsonSerializable;)V

    :cond_c
    return-object v1
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/telemetry/cs2/Envelope;->appId:Ljava/lang/String;

    return-void
.end method

.method public setAppVer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/telemetry/cs2/Envelope;->appVer:Ljava/lang/String;

    return-void
.end method

.method public setData(Lcom/microsoft/telemetry/Base;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/telemetry/cs2/Envelope;->data:Lcom/microsoft/telemetry/Base;

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/telemetry/cs2/Envelope;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public setFlags(J)V
    .locals 0

    iput-wide p1, p0, Lcom/microsoft/telemetry/cs2/Envelope;->flags:J

    return-void
.end method

.method public setIKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/telemetry/cs2/Envelope;->iKey:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/telemetry/cs2/Envelope;->name:Ljava/lang/String;

    return-void
.end method

.method public setOs(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/telemetry/cs2/Envelope;->os:Ljava/lang/String;

    return-void
.end method

.method public setOsVer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/telemetry/cs2/Envelope;->osVer:Ljava/lang/String;

    return-void
.end method

.method public setSampleRate(D)V
    .locals 0

    iput-wide p1, p0, Lcom/microsoft/telemetry/cs2/Envelope;->sampleRate:D

    return-void
.end method

.method public setSeq(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/telemetry/cs2/Envelope;->seq:Ljava/lang/String;

    return-void
.end method

.method public setTags(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/microsoft/telemetry/cs2/Envelope;->tags:Ljava/util/Map;

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/telemetry/cs2/Envelope;->time:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/telemetry/cs2/Envelope;->userId:Ljava/lang/String;

    return-void
.end method

.method public setVer(I)V
    .locals 0

    iput p1, p0, Lcom/microsoft/telemetry/cs2/Envelope;->ver:I

    return-void
.end method
