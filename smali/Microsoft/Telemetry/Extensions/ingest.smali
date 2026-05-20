.class public LMicrosoft/Telemetry/Extensions/ingest;
.super LMicrosoft/Telemetry/Extension;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LMicrosoft/Telemetry/Extensions/ingest$Schema;
    }
.end annotation


# instance fields
.field private auth:J

.field private clientIp:Ljava/lang/String;

.field private quality:J

.field private time:Ljava/lang/String;

.field private uploadTime:Ljava/lang/String;

.field private userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, LMicrosoft/Telemetry/Extension;-><init>()V

    return-void
.end method

.method public static getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;
    .registers 1

    sget-object v0, LMicrosoft/Telemetry/Extensions/ingest$Schema;->schemaDef:Lcom/microsoft/bond/SchemaDef;

    return-object v0
.end method


# virtual methods
.method public clone()Lcom/microsoft/bond/BondSerializable;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, LMicrosoft/Telemetry/Extensions/ingest;->clone()Lcom/microsoft/bond/BondSerializable;

    move-result-object v0

    return-object v0
.end method

.method public createInstance(Lcom/microsoft/bond/StructDef;)Lcom/microsoft/bond/BondMirror;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public final getAuth()J
    .registers 3

    iget-wide v0, p0, LMicrosoft/Telemetry/Extensions/ingest;->auth:J

    return-wide v0
.end method

.method public final getClientIp()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/ingest;->clientIp:Ljava/lang/String;

    return-object v0
.end method

.method public getField(Lcom/microsoft/bond/FieldDef;)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p1}, Lcom/microsoft/bond/FieldDef;->getId()S

    move-result p1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_5

    const/16 v0, 0x14

    if-eq p1, v0, :cond_4

    const/16 v0, 0x1e

    if-eq p1, v0, :cond_3

    const/16 v0, 0x28

    if-eq p1, v0, :cond_2

    const/16 v0, 0x32

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p0, LMicrosoft/Telemetry/Extensions/ingest;->userAgent:Ljava/lang/String;

    return-object p1

    :cond_1
    iget-object p1, p0, LMicrosoft/Telemetry/Extensions/ingest;->uploadTime:Ljava/lang/String;

    return-object p1

    :cond_2
    iget-wide v0, p0, LMicrosoft/Telemetry/Extensions/ingest;->quality:J

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_3
    iget-wide v0, p0, LMicrosoft/Telemetry/Extensions/ingest;->auth:J

    goto :goto_0

    :cond_4
    iget-object p1, p0, LMicrosoft/Telemetry/Extensions/ingest;->clientIp:Ljava/lang/String;

    return-object p1

    :cond_5
    iget-object p1, p0, LMicrosoft/Telemetry/Extensions/ingest;->time:Ljava/lang/String;

    return-object p1
.end method

.method public final getQuality()J
    .registers 3

    iget-wide v0, p0, LMicrosoft/Telemetry/Extensions/ingest;->quality:J

    return-wide v0
.end method

.method public getSchema()Lcom/microsoft/bond/SchemaDef;
    .registers 2

    invoke-static {}, LMicrosoft/Telemetry/Extensions/ingest;->getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;

    move-result-object v0

    return-object v0
.end method

.method public final getTime()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/ingest;->time:Ljava/lang/String;

    return-object v0
.end method

.method public final getUploadTime()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/ingest;->uploadTime:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserAgent()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/ingest;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public marshal(Lcom/microsoft/bond/ProtocolWriter;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/microsoft/bond/internal/Marshaler;->marshal(Lcom/microsoft/bond/BondSerializable;Lcom/microsoft/bond/ProtocolWriter;)V

    return-void
.end method

.method public memberwiseCompare(Ljava/lang/Object;)Z
    .registers 3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, LMicrosoft/Telemetry/Extensions/ingest;

    invoke-virtual {p0, p1}, LMicrosoft/Telemetry/Extensions/ingest;->memberwiseCompareQuick(LMicrosoft/Telemetry/Extensions/ingest;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, LMicrosoft/Telemetry/Extensions/ingest;->memberwiseCompareDeep(LMicrosoft/Telemetry/Extensions/ingest;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public memberwiseCompareDeep(LMicrosoft/Telemetry/Extensions/ingest;)Z
    .registers 6

    invoke-super {p0, p1}, LMicrosoft/Telemetry/Extension;->memberwiseCompareDeep(LMicrosoft/Telemetry/Extension;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/ingest;->time:Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p1, LMicrosoft/Telemetry/Extensions/ingest;->time:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_6

    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/ingest;->clientIp:Ljava/lang/String;

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    iget-object v3, p1, LMicrosoft/Telemetry/Extensions/ingest;->clientIp:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v0, 0x1

    goto :goto_6

    :cond_6
    :goto_5
    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_9

    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/ingest;->uploadTime:Ljava/lang/String;

    if-nez v0, :cond_7

    goto :goto_7

    :cond_7
    iget-object v3, p1, LMicrosoft/Telemetry/Extensions/ingest;->uploadTime:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_8

    :cond_8
    :goto_7
    const/4 v0, 0x1

    goto :goto_9

    :cond_9
    :goto_8
    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_c

    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/ingest;->userAgent:Ljava/lang/String;

    if-nez v0, :cond_a

    goto :goto_a

    :cond_a
    iget-object p1, p1, LMicrosoft/Telemetry/Extensions/ingest;->userAgent:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_b

    :cond_b
    :goto_a
    return v1

    :cond_c
    :goto_b
    return v2
.end method

.method public memberwiseCompareQuick(LMicrosoft/Telemetry/Extensions/ingest;)Z
    .registers 9

    invoke-super {p0, p1}, LMicrosoft/Telemetry/Extension;->memberwiseCompareQuick(LMicrosoft/Telemetry/Extension;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/ingest;->time:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p1, LMicrosoft/Telemetry/Extensions/ingest;->time:Ljava/lang/String;

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-ne v0, v3, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_6

    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/ingest;->time:Ljava/lang/String;

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v3, p1, LMicrosoft/Telemetry/Extensions/ingest;->time:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v0, v3, :cond_5

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v0, 0x1

    goto :goto_6

    :cond_6
    :goto_5
    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_9

    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/ingest;->clientIp:Ljava/lang/String;

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_7

    :cond_7
    const/4 v0, 0x0

    :goto_7
    iget-object v3, p1, LMicrosoft/Telemetry/Extensions/ingest;->clientIp:Ljava/lang/String;

    if-nez v3, :cond_8

    const/4 v3, 0x1

    goto :goto_8

    :cond_8
    const/4 v3, 0x0

    :goto_8
    if-ne v0, v3, :cond_9

    const/4 v0, 0x1

    goto :goto_9

    :cond_9
    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_c

    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/ingest;->clientIp:Ljava/lang/String;

    if-nez v0, :cond_a

    goto :goto_a

    :cond_a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v3, p1, LMicrosoft/Telemetry/Extensions/ingest;->clientIp:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v0, v3, :cond_b

    goto :goto_b

    :cond_b
    :goto_a
    const/4 v0, 0x1

    goto :goto_c

    :cond_c
    :goto_b
    const/4 v0, 0x0

    :goto_c
    if-eqz v0, :cond_d

    iget-wide v3, p0, LMicrosoft/Telemetry/Extensions/ingest;->auth:J

    iget-wide v5, p1, LMicrosoft/Telemetry/Extensions/ingest;->auth:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_d

    :cond_d
    const/4 v0, 0x0

    :goto_d
    if-eqz v0, :cond_e

    iget-wide v3, p0, LMicrosoft/Telemetry/Extensions/ingest;->quality:J

    iget-wide v5, p1, LMicrosoft/Telemetry/Extensions/ingest;->quality:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_e

    :cond_e
    const/4 v0, 0x0

    :goto_e
    if-eqz v0, :cond_11

    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/ingest;->uploadTime:Ljava/lang/String;

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_f

    :cond_f
    const/4 v0, 0x0

    :goto_f
    iget-object v3, p1, LMicrosoft/Telemetry/Extensions/ingest;->uploadTime:Ljava/lang/String;

    if-nez v3, :cond_10

    const/4 v3, 0x1

    goto :goto_10

    :cond_10
    const/4 v3, 0x0

    :goto_10
    if-ne v0, v3, :cond_11

    const/4 v0, 0x1

    goto :goto_11

    :cond_11
    const/4 v0, 0x0

    :goto_11
    if-eqz v0, :cond_14

    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/ingest;->uploadTime:Ljava/lang/String;

    if-nez v0, :cond_12

    goto :goto_12

    :cond_12
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v3, p1, LMicrosoft/Telemetry/Extensions/ingest;->uploadTime:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v0, v3, :cond_13

    goto :goto_13

    :cond_13
    :goto_12
    const/4 v0, 0x1

    goto :goto_14

    :cond_14
    :goto_13
    const/4 v0, 0x0

    :goto_14
    if-eqz v0, :cond_17

    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/ingest;->userAgent:Ljava/lang/String;

    if-nez v0, :cond_15

    const/4 v0, 0x1

    goto :goto_15

    :cond_15
    const/4 v0, 0x0

    :goto_15
    iget-object v3, p1, LMicrosoft/Telemetry/Extensions/ingest;->userAgent:Ljava/lang/String;

    if-nez v3, :cond_16

    const/4 v3, 0x1

    goto :goto_16

    :cond_16
    const/4 v3, 0x0

    :goto_16
    if-ne v0, v3, :cond_17

    const/4 v0, 0x1

    goto :goto_17

    :cond_17
    const/4 v0, 0x0

    :goto_17
    if-eqz v0, :cond_1a

    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/ingest;->userAgent:Ljava/lang/String;

    if-nez v0, :cond_18

    goto :goto_18

    :cond_18
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object p1, p1, LMicrosoft/Telemetry/Extensions/ingest;->userAgent:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eq v0, p1, :cond_19

    goto :goto_19

    :cond_19
    :goto_18
    return v1

    :cond_1a
    :goto_19
    return v2
.end method

.method public read(Lcom/microsoft/bond/ProtocolReader;)V
    .registers 2

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readBegin()V

    invoke-virtual {p0, p1}, LMicrosoft/Telemetry/Extensions/ingest;->readNested(Lcom/microsoft/bond/ProtocolReader;)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readEnd()V

    return-void
.end method

.method public read(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondSerializable;)V
    .registers 3

    return-void
.end method

.method public readNested(Lcom/microsoft/bond/ProtocolReader;)V
    .registers 4

    sget-object v0, Lcom/microsoft/bond/ProtocolCapability;->TAGGED:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v0}, Lcom/microsoft/bond/ProtocolReader;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, v1}, LMicrosoft/Telemetry/Extensions/ingest;->readUntagged(Lcom/microsoft/bond/ProtocolReader;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v1}, LMicrosoft/Telemetry/Extensions/ingest;->readTagged(Lcom/microsoft/bond/ProtocolReader;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/microsoft/bond/internal/ReadHelper;->skipPartialStruct(Lcom/microsoft/bond/ProtocolReader;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public readTagged(Lcom/microsoft/bond/ProtocolReader;Z)Z
    .registers 7

    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolReader;->readStructBegin(Z)V

    const/4 p2, 0x1

    invoke-super {p0, p1, p2}, LMicrosoft/Telemetry/Extension;->readTagged(Lcom/microsoft/bond/ProtocolReader;Z)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldBegin()Lcom/microsoft/bond/ProtocolReader$FieldTag;

    move-result-object v0

    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_STOP:Lcom/microsoft/bond/BondDataType;

    if-eq v2, v3, :cond_8

    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-ne v2, v3, :cond_1

    goto :goto_2

    :cond_1
    iget v0, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->id:I

    const/16 v3, 0xa

    if-eq v0, v3, :cond_7

    const/16 v3, 0x14

    if-eq v0, v3, :cond_6

    const/16 v3, 0x1e

    if-eq v0, v3, :cond_5

    const/16 v3, 0x28

    if-eq v0, v3, :cond_4

    const/16 v3, 0x32

    if-eq v0, v3, :cond_3

    const/16 v3, 0x3c

    if-eq v0, v3, :cond_2

    invoke-virtual {p1, v2}, Lcom/microsoft/bond/ProtocolReader;->skip(Lcom/microsoft/bond/BondDataType;)V

    goto :goto_1

    :cond_2
    invoke-static {p1, v2}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LMicrosoft/Telemetry/Extensions/ingest;->userAgent:Ljava/lang/String;

    goto :goto_1

    :cond_3
    invoke-static {p1, v2}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LMicrosoft/Telemetry/Extensions/ingest;->uploadTime:Ljava/lang/String;

    goto :goto_1

    :cond_4
    invoke-static {p1, v2}, Lcom/microsoft/bond/internal/ReadHelper;->readInt64(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)J

    move-result-wide v2

    iput-wide v2, p0, LMicrosoft/Telemetry/Extensions/ingest;->quality:J

    goto :goto_1

    :cond_5
    invoke-static {p1, v2}, Lcom/microsoft/bond/internal/ReadHelper;->readInt64(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)J

    move-result-wide v2

    iput-wide v2, p0, LMicrosoft/Telemetry/Extensions/ingest;->auth:J

    goto :goto_1

    :cond_6
    invoke-static {p1, v2}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LMicrosoft/Telemetry/Extensions/ingest;->clientIp:Ljava/lang/String;

    goto :goto_1

    :cond_7
    invoke-static {p1, v2}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LMicrosoft/Telemetry/Extensions/ingest;->time:Ljava/lang/String;

    :goto_1
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldEnd()V

    goto :goto_0

    :cond_8
    :goto_2
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-ne v2, v0, :cond_9

    goto :goto_3

    :cond_9
    const/4 p2, 0x0

    :goto_3
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readStructEnd()V

    return p2
.end method

.method public readUntagged(Lcom/microsoft/bond/ProtocolReader;Z)V
    .registers 6

    sget-object v0, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v0}, Lcom/microsoft/bond/ProtocolReader;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolReader;->readStructBegin(Z)V

    const/4 p2, 0x1

    invoke-super {p0, p1, p2}, LMicrosoft/Telemetry/Extension;->readUntagged(Lcom/microsoft/bond/ProtocolReader;Z)V

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, LMicrosoft/Telemetry/Extensions/ingest;->time:Ljava/lang/String;

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_3

    :cond_2
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, LMicrosoft/Telemetry/Extensions/ingest;->clientIp:Ljava/lang/String;

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_5

    :cond_4
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, LMicrosoft/Telemetry/Extensions/ingest;->auth:J

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_7

    :cond_6
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, LMicrosoft/Telemetry/Extensions/ingest;->quality:J

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_9

    :cond_8
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, LMicrosoft/Telemetry/Extensions/ingest;->uploadTime:Ljava/lang/String;

    :cond_9
    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_b

    :cond_a
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, LMicrosoft/Telemetry/Extensions/ingest;->userAgent:Ljava/lang/String;

    :cond_b
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readStructEnd()V

    return-void
.end method

.method public reset()V
    .registers 3

    const-string v0, "ingest"

    const-string v1, "Microsoft.Telemetry.Extensions.ingest"

    invoke-virtual {p0, v0, v1}, LMicrosoft/Telemetry/Extensions/ingest;->reset(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reset(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-super {p0, p1, p2}, LMicrosoft/Telemetry/Extension;->reset(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    iput-object p1, p0, LMicrosoft/Telemetry/Extensions/ingest;->time:Ljava/lang/String;

    iput-object p1, p0, LMicrosoft/Telemetry/Extensions/ingest;->clientIp:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LMicrosoft/Telemetry/Extensions/ingest;->auth:J

    iput-wide v0, p0, LMicrosoft/Telemetry/Extensions/ingest;->quality:J

    iput-object p1, p0, LMicrosoft/Telemetry/Extensions/ingest;->uploadTime:Ljava/lang/String;

    iput-object p1, p0, LMicrosoft/Telemetry/Extensions/ingest;->userAgent:Ljava/lang/String;

    return-void
.end method

.method public final setAuth(J)V
    .registers 3

    iput-wide p1, p0, LMicrosoft/Telemetry/Extensions/ingest;->auth:J

    return-void
.end method

.method public final setClientIp(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, LMicrosoft/Telemetry/Extensions/ingest;->clientIp:Ljava/lang/String;

    return-void
.end method

.method public setField(Lcom/microsoft/bond/FieldDef;Ljava/lang/Object;)V
    .registers 4

    invoke-virtual {p1}, Lcom/microsoft/bond/FieldDef;->getId()S

    move-result p1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_5

    const/16 v0, 0x14

    if-eq p1, v0, :cond_4

    const/16 v0, 0x1e

    if-eq p1, v0, :cond_3

    const/16 v0, 0x28

    if-eq p1, v0, :cond_2

    const/16 v0, 0x32

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, LMicrosoft/Telemetry/Extensions/ingest;->userAgent:Ljava/lang/String;

    return-void

    :cond_1
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, LMicrosoft/Telemetry/Extensions/ingest;->uploadTime:Ljava/lang/String;

    return-void

    :cond_2
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, LMicrosoft/Telemetry/Extensions/ingest;->quality:J

    return-void

    :cond_3
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, LMicrosoft/Telemetry/Extensions/ingest;->auth:J

    return-void

    :cond_4
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, LMicrosoft/Telemetry/Extensions/ingest;->clientIp:Ljava/lang/String;

    return-void

    :cond_5
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, LMicrosoft/Telemetry/Extensions/ingest;->time:Ljava/lang/String;

    return-void
.end method

.method public final setQuality(J)V
    .registers 3

    iput-wide p1, p0, LMicrosoft/Telemetry/Extensions/ingest;->quality:J

    return-void
.end method

.method public final setTime(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, LMicrosoft/Telemetry/Extensions/ingest;->time:Ljava/lang/String;

    return-void
.end method

.method public final setUploadTime(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, LMicrosoft/Telemetry/Extensions/ingest;->uploadTime:Ljava/lang/String;

    return-void
.end method

.method public final setUserAgent(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, LMicrosoft/Telemetry/Extensions/ingest;->userAgent:Ljava/lang/String;

    return-void
.end method

.method public unmarshal(Ljava/io/InputStream;)V
    .registers 2

    invoke-static {p1, p0}, Lcom/microsoft/bond/internal/Marshaler;->unmarshal(Ljava/io/InputStream;Lcom/microsoft/bond/BondSerializable;)V

    return-void
.end method

.method public unmarshal(Ljava/io/InputStream;Lcom/microsoft/bond/BondSerializable;)V
    .registers 3

    check-cast p2, Lcom/microsoft/bond/SchemaDef;

    invoke-static {p1, p2, p0}, Lcom/microsoft/bond/internal/Marshaler;->unmarshal(Ljava/io/InputStream;Lcom/microsoft/bond/BondSerializable;Lcom/microsoft/bond/BondSerializable;)V

    return-void
.end method

.method public write(Lcom/microsoft/bond/ProtocolWriter;)V
    .registers 4

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeBegin()V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->getFirstPassWriter()Lcom/microsoft/bond/ProtocolWriter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, v1}, LMicrosoft/Telemetry/Extensions/ingest;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    :cond_0
    invoke-virtual {p0, p1, v1}, LMicrosoft/Telemetry/Extensions/ingest;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeEnd()V

    return-void
.end method

.method public writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V
    .registers 11

    sget-object v0, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v0}, Lcom/microsoft/bond/ProtocolWriter;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    sget-object v1, LMicrosoft/Telemetry/Extensions/ingest$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {p1, v1, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructBegin(Lcom/microsoft/bond/BondSerializable;Z)V

    const/4 v1, 0x1

    invoke-super {p0, p1, v1}, LMicrosoft/Telemetry/Extension;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/ingest$Schema;->access$000()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {p1, v1, v3, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget-object v2, p0, LMicrosoft/Telemetry/Extensions/ingest;->time:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    invoke-static {}, LMicrosoft/Telemetry/Extensions/ingest$Schema;->access$100()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    const/16 v3, 0x14

    invoke-virtual {p1, v1, v3, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget-object v2, p0, LMicrosoft/Telemetry/Extensions/ingest;->clientIp:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    const/16 v2, 0x1e

    if-eqz v0, :cond_1

    iget-wide v3, p0, LMicrosoft/Telemetry/Extensions/ingest;->auth:J

    invoke-static {}, LMicrosoft/Telemetry/Extensions/ingest$Schema;->access$200()Lcom/microsoft/bond/Metadata;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/bond/Variant;->getInt_value()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_INT64:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/ingest$Schema;->access$200()Lcom/microsoft/bond/Metadata;

    move-result-object v4

    invoke-virtual {p1, v3, v2, v4}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_INT64:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/ingest$Schema;->access$200()Lcom/microsoft/bond/Metadata;

    move-result-object v4

    invoke-virtual {p1, v3, v2, v4}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget-wide v2, p0, LMicrosoft/Telemetry/Extensions/ingest;->auth:J

    invoke-virtual {p1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeInt64(J)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    :goto_1
    const/16 v2, 0x28

    if-eqz v0, :cond_3

    iget-wide v3, p0, LMicrosoft/Telemetry/Extensions/ingest;->quality:J

    invoke-static {}, LMicrosoft/Telemetry/Extensions/ingest$Schema;->access$300()Lcom/microsoft/bond/Metadata;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/bond/Variant;->getInt_value()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_INT64:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/ingest$Schema;->access$300()Lcom/microsoft/bond/Metadata;

    move-result-object v4

    invoke-virtual {p1, v3, v2, v4}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_3

    :cond_3
    :goto_2
    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_INT64:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/ingest$Schema;->access$300()Lcom/microsoft/bond/Metadata;

    move-result-object v4

    invoke-virtual {p1, v3, v2, v4}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget-wide v2, p0, LMicrosoft/Telemetry/Extensions/ingest;->quality:J

    invoke-virtual {p1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeInt64(J)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    :goto_3
    const/16 v2, 0x32

    if-eqz v0, :cond_5

    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/ingest;->uploadTime:Ljava/lang/String;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/ingest$Schema;->access$400()Lcom/microsoft/bond/Metadata;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/bond/Variant;->getString_value()Ljava/lang/String;

    move-result-object v4

    if-eq v3, v4, :cond_4

    goto :goto_4

    :cond_4
    invoke-static {}, LMicrosoft/Telemetry/Extensions/ingest$Schema;->access$400()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_5

    :cond_5
    :goto_4
    invoke-static {}, LMicrosoft/Telemetry/Extensions/ingest$Schema;->access$400()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget-object v2, p0, LMicrosoft/Telemetry/Extensions/ingest;->uploadTime:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    :goto_5
    const/16 v2, 0x3c

    if-eqz v0, :cond_7

    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/ingest;->userAgent:Ljava/lang/String;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/ingest$Schema;->access$500()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/bond/Variant;->getString_value()Ljava/lang/String;

    move-result-object v3

    if-eq v0, v3, :cond_6

    goto :goto_6

    :cond_6
    invoke-static {}, LMicrosoft/Telemetry/Extensions/ingest$Schema;->access$500()Lcom/microsoft/bond/Metadata;

    move-result-object v0

    invoke-virtual {p1, v1, v2, v0}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_7

    :cond_7
    :goto_6
    invoke-static {}, LMicrosoft/Telemetry/Extensions/ingest$Schema;->access$500()Lcom/microsoft/bond/Metadata;

    move-result-object v0

    invoke-virtual {p1, v1, v2, v0}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/ingest;->userAgent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    :goto_7
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructEnd(Z)V

    return-void
.end method
