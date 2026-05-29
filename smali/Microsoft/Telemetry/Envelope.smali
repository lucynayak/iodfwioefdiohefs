.class public LMicrosoft/Telemetry/Envelope;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/bond/BondSerializable;
.implements Lcom/microsoft/bond/BondMirror;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LMicrosoft/Telemetry/Envelope$Schema;
    }
.end annotation


# instance fields
.field private appId:Ljava/lang/String;

.field private appVer:Ljava/lang/String;

.field private cV:Ljava/lang/String;

.field private data:Lcom/microsoft/bond/Bonded;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/bond/Bonded<",
            "LMicrosoft/Telemetry/Base;",
            ">;"
        }
    .end annotation
.end field

.field private epoch:Ljava/lang/String;

.field private ext:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/microsoft/bond/Bonded<",
            "LMicrosoft/Telemetry/Extension;",
            ">;>;"
        }
    .end annotation
.end field

.field private flags:J

.field private iKey:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private os:Ljava/lang/String;

.field private osVer:Ljava/lang/String;

.field private popSample:D

.field private seqNum:J

.field private tags:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private time:Ljava/lang/String;

.field private ver:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, LMicrosoft/Telemetry/Envelope;->reset()V

    return-void
.end method

.method public static getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;
    .registers 1

    sget-object v0, LMicrosoft/Telemetry/Envelope$Schema;->schemaDef:Lcom/microsoft/bond/SchemaDef;

    return-object v0
.end method

.method private readFieldImpl_ext(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)V
    .registers 7

    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_MAP:Lcom/microsoft/bond/BondDataType;

    invoke-static {p2, v0}, Lcom/microsoft/bond/internal/ReadHelper;->validateType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readMapContainerBegin()Lcom/microsoft/bond/ProtocolReader$MapTag;

    move-result-object p2

    iget-object v0, p2, Lcom/microsoft/bond/ProtocolReader$MapTag;->valueType:Lcom/microsoft/bond/BondDataType;

    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    invoke-static {v0, v1}, Lcom/microsoft/bond/internal/ReadHelper;->validateType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p2, Lcom/microsoft/bond/ProtocolReader$MapTag;->size:I

    if-ge v0, v1, :cond_0

    new-instance v1, Lcom/microsoft/bond/Bonded;

    invoke-direct {v1}, Lcom/microsoft/bond/Bonded;-><init>()V

    iget-object v2, p2, Lcom/microsoft/bond/ProtocolReader$MapTag;->keyType:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v2}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1}, Lcom/microsoft/bond/Bonded;->readNested(Lcom/microsoft/bond/ProtocolReader;)V

    iget-object v3, p0, LMicrosoft/Telemetry/Envelope;->ext:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readContainerEnd()V

    return-void
.end method

.method private readFieldImpl_tags(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)V
    .registers 7

    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_MAP:Lcom/microsoft/bond/BondDataType;

    invoke-static {p2, v0}, Lcom/microsoft/bond/internal/ReadHelper;->validateType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readMapContainerBegin()Lcom/microsoft/bond/ProtocolReader$MapTag;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    iget v1, p2, Lcom/microsoft/bond/ProtocolReader$MapTag;->size:I

    if-ge v0, v1, :cond_0

    iget-object v1, p2, Lcom/microsoft/bond/ProtocolReader$MapTag;->keyType:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v1}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/microsoft/bond/ProtocolReader$MapTag;->valueType:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v2}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, LMicrosoft/Telemetry/Envelope;->tags:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readContainerEnd()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/microsoft/bond/BondSerializable;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, LMicrosoft/Telemetry/Envelope;->clone()Lcom/microsoft/bond/BondSerializable;

    move-result-object v0

    return-object v0
.end method

.method public createInstance(Lcom/microsoft/bond/StructDef;)Lcom/microsoft/bond/BondMirror;
    .registers 4

    sget-object v0, LMicrosoft/Telemetry/Extension$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {p1}, Lcom/microsoft/bond/StructDef;->getMetadata()Lcom/microsoft/bond/Metadata;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance p1, LMicrosoft/Telemetry/Extension;

    invoke-direct {p1}, LMicrosoft/Telemetry/Extension;-><init>()V

    return-object p1

    :cond_0
    sget-object v0, LMicrosoft/Telemetry/Base$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {p1}, Lcom/microsoft/bond/StructDef;->getMetadata()Lcom/microsoft/bond/Metadata;

    move-result-object p1

    if-ne v0, p1, :cond_1

    new-instance p1, LMicrosoft/Telemetry/Base;

    invoke-direct {p1}, LMicrosoft/Telemetry/Base;-><init>()V

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getAppId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppVer()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->appVer:Ljava/lang/String;

    return-object v0
.end method

.method public final getCV()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->cV:Ljava/lang/String;

    return-object v0
.end method

.method public final getData()Lcom/microsoft/bond/Bonded;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/bond/Bonded<",
            "LMicrosoft/Telemetry/Base;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->data:Lcom/microsoft/bond/Bonded;

    return-object v0
.end method

.method public final getEpoch()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->epoch:Ljava/lang/String;

    return-object v0
.end method

.method public final getExt()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/microsoft/bond/Bonded<",
            "LMicrosoft/Telemetry/Extension;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->ext:Ljava/util/HashMap;

    return-object v0
.end method

.method public getField(Lcom/microsoft/bond/FieldDef;)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p1}, Lcom/microsoft/bond/FieldDef;->getId()S

    move-result p1

    sparse-switch p1, :sswitch_data_0

    const/4 p1, 0x0

    return-object p1

    :sswitch_0
    iget-object p1, p0, LMicrosoft/Telemetry/Envelope;->data:Lcom/microsoft/bond/Bonded;

    return-object p1

    :sswitch_1
    iget-object p1, p0, LMicrosoft/Telemetry/Envelope;->ext:Ljava/util/HashMap;

    return-object p1

    :sswitch_2
    iget-object p1, p0, LMicrosoft/Telemetry/Envelope;->tags:Ljava/util/HashMap;

    return-object p1

    :sswitch_3
    iget-object p1, p0, LMicrosoft/Telemetry/Envelope;->cV:Ljava/lang/String;

    return-object p1

    :sswitch_4
    iget-object p1, p0, LMicrosoft/Telemetry/Envelope;->appVer:Ljava/lang/String;

    return-object p1

    :sswitch_5
    iget-object p1, p0, LMicrosoft/Telemetry/Envelope;->appId:Ljava/lang/String;

    return-object p1

    :sswitch_6
    iget-object p1, p0, LMicrosoft/Telemetry/Envelope;->osVer:Ljava/lang/String;

    return-object p1

    :sswitch_7
    iget-object p1, p0, LMicrosoft/Telemetry/Envelope;->os:Ljava/lang/String;

    return-object p1

    :sswitch_8
    iget-wide v0, p0, LMicrosoft/Telemetry/Envelope;->flags:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :sswitch_9
    iget-object p1, p0, LMicrosoft/Telemetry/Envelope;->iKey:Ljava/lang/String;

    return-object p1

    :sswitch_a
    iget-wide v0, p0, LMicrosoft/Telemetry/Envelope;->seqNum:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :sswitch_b
    iget-object p1, p0, LMicrosoft/Telemetry/Envelope;->epoch:Ljava/lang/String;

    return-object p1

    :sswitch_c
    iget-wide v0, p0, LMicrosoft/Telemetry/Envelope;->popSample:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :sswitch_d
    iget-object p1, p0, LMicrosoft/Telemetry/Envelope;->time:Ljava/lang/String;

    return-object p1

    :sswitch_e
    iget-object p1, p0, LMicrosoft/Telemetry/Envelope;->name:Ljava/lang/String;

    return-object p1

    :sswitch_f
    iget-object p1, p0, LMicrosoft/Telemetry/Envelope;->ver:Ljava/lang/String;

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_f
        0x14 -> :sswitch_e
        0x1e -> :sswitch_d
        0x28 -> :sswitch_c
        0x32 -> :sswitch_b
        0x3c -> :sswitch_a
        0x46 -> :sswitch_9
        0x50 -> :sswitch_8
        0x5a -> :sswitch_7
        0x64 -> :sswitch_6
        0x6e -> :sswitch_5
        0x78 -> :sswitch_4
        0x82 -> :sswitch_3
        0x1f4 -> :sswitch_2
        0x1fe -> :sswitch_1
        0x3e7 -> :sswitch_0
    .end sparse-switch
.end method

.method public final getFlags()J
    .registers 3

    iget-wide v0, p0, LMicrosoft/Telemetry/Envelope;->flags:J

    return-wide v0
.end method

.method public final getIKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->iKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getOs()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->os:Ljava/lang/String;

    return-object v0
.end method

.method public final getOsVer()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->osVer:Ljava/lang/String;

    return-object v0
.end method

.method public final getPopSample()D
    .registers 3

    iget-wide v0, p0, LMicrosoft/Telemetry/Envelope;->popSample:D

    return-wide v0
.end method

.method public getSchema()Lcom/microsoft/bond/SchemaDef;
    .registers 2

    invoke-static {}, LMicrosoft/Telemetry/Envelope;->getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;

    move-result-object v0

    return-object v0
.end method

.method public final getSeqNum()J
    .registers 3

    iget-wide v0, p0, LMicrosoft/Telemetry/Envelope;->seqNum:J

    return-wide v0
.end method

.method public final getTags()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->tags:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getTime()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->time:Ljava/lang/String;

    return-object v0
.end method

.method public final getVer()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->ver:Ljava/lang/String;

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
    check-cast p1, LMicrosoft/Telemetry/Envelope;

    invoke-virtual {p0, p1}, LMicrosoft/Telemetry/Envelope;->memberwiseCompareQuick(LMicrosoft/Telemetry/Envelope;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, LMicrosoft/Telemetry/Envelope;->memberwiseCompareDeep(LMicrosoft/Telemetry/Envelope;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public memberwiseCompareDeep(LMicrosoft/Telemetry/Envelope;)Z
    .registers 10

    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->ver:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p1, LMicrosoft/Telemetry/Envelope;->ver:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_4

    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->name:Ljava/lang/String;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v3, p1, LMicrosoft/Telemetry/Envelope;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_7

    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->time:Ljava/lang/String;

    if-nez v0, :cond_5

    goto :goto_5

    :cond_5
    iget-object v3, p1, LMicrosoft/Telemetry/Envelope;->time:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_6

    :cond_6
    :goto_5
    const/4 v0, 0x1

    goto :goto_7

    :cond_7
    :goto_6
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_a

    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->epoch:Ljava/lang/String;

    if-nez v0, :cond_8

    goto :goto_8

    :cond_8
    iget-object v3, p1, LMicrosoft/Telemetry/Envelope;->epoch:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_9

    :cond_9
    :goto_8
    const/4 v0, 0x1

    goto :goto_a

    :cond_a
    :goto_9
    const/4 v0, 0x0

    :goto_a
    if-eqz v0, :cond_d

    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->iKey:Ljava/lang/String;

    if-nez v0, :cond_b

    goto :goto_b

    :cond_b
    iget-object v3, p1, LMicrosoft/Telemetry/Envelope;->iKey:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_c

    :cond_c
    :goto_b
    const/4 v0, 0x1

    goto :goto_d

    :cond_d
    :goto_c
    const/4 v0, 0x0

    :goto_d
    if-eqz v0, :cond_10

    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->os:Ljava/lang/String;

    if-nez v0, :cond_e

    goto :goto_e

    :cond_e
    iget-object v3, p1, LMicrosoft/Telemetry/Envelope;->os:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_f

    :cond_f
    :goto_e
    const/4 v0, 0x1

    goto :goto_10

    :cond_10
    :goto_f
    const/4 v0, 0x0

    :goto_10
    if-eqz v0, :cond_13

    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->osVer:Ljava/lang/String;

    if-nez v0, :cond_11

    goto :goto_11

    :cond_11
    iget-object v3, p1, LMicrosoft/Telemetry/Envelope;->osVer:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_12

    :cond_12
    :goto_11
    const/4 v0, 0x1

    goto :goto_13

    :cond_13
    :goto_12
    const/4 v0, 0x0

    :goto_13
    if-eqz v0, :cond_16

    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->appId:Ljava/lang/String;

    if-nez v0, :cond_14

    goto :goto_14

    :cond_14
    iget-object v3, p1, LMicrosoft/Telemetry/Envelope;->appId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_15

    :cond_15
    :goto_14
    const/4 v0, 0x1

    goto :goto_16

    :cond_16
    :goto_15
    const/4 v0, 0x0

    :goto_16
    if-eqz v0, :cond_19

    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->appVer:Ljava/lang/String;

    if-nez v0, :cond_17

    goto :goto_17

    :cond_17
    iget-object v3, p1, LMicrosoft/Telemetry/Envelope;->appVer:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_18

    :cond_18
    :goto_17
    const/4 v0, 0x1

    goto :goto_19

    :cond_19
    :goto_18
    const/4 v0, 0x0

    :goto_19
    if-eqz v0, :cond_1c

    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->cV:Ljava/lang/String;

    if-nez v0, :cond_1a

    goto :goto_1a

    :cond_1a
    iget-object v3, p1, LMicrosoft/Telemetry/Envelope;->cV:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_1b

    :cond_1b
    :goto_1a
    const/4 v0, 0x1

    goto :goto_1c

    :cond_1c
    :goto_1b
    const/4 v0, 0x0

    :goto_1c
    if-eqz v0, :cond_29

    iget-object v3, p0, LMicrosoft/Telemetry/Envelope;->tags:Ljava/util/HashMap;

    if-eqz v3, :cond_29

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-eqz v3, :cond_29

    iget-object v3, p0, LMicrosoft/Telemetry/Envelope;->tags:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p1, LMicrosoft/Telemetry/Envelope;->tags:Ljava/util/HashMap;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v0, :cond_1e

    iget-object v0, p1, LMicrosoft/Telemetry/Envelope;->tags:Ljava/util/HashMap;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1e
    const/4 v0, 0x0

    :goto_1d
    if-eqz v0, :cond_28

    if-eqz v0, :cond_21

    if-nez v5, :cond_1f

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1f
    const/4 v0, 0x0

    :goto_1e
    if-nez v6, :cond_20

    const/4 v4, 0x1

    goto :goto_1f

    :cond_20
    const/4 v4, 0x0

    :goto_1f
    if-ne v0, v4, :cond_21

    const/4 v0, 0x1

    goto :goto_20

    :cond_21
    const/4 v0, 0x0

    :goto_20
    if-eqz v0, :cond_24

    if-nez v5, :cond_22

    goto :goto_21

    :cond_22
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v0, v4, :cond_23

    goto :goto_22

    :cond_23
    :goto_21
    const/4 v0, 0x1

    goto :goto_23

    :cond_24
    :goto_22
    const/4 v0, 0x0

    :goto_23
    if-eqz v0, :cond_27

    if-nez v5, :cond_25

    goto :goto_24

    :cond_25
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    goto :goto_25

    :cond_26
    :goto_24
    const/4 v0, 0x1

    goto :goto_26

    :cond_27
    :goto_25
    const/4 v0, 0x0

    :cond_28
    :goto_26
    if-nez v0, :cond_1d

    :cond_29
    if-eqz v0, :cond_33

    iget-object v3, p0, LMicrosoft/Telemetry/Envelope;->ext:Ljava/util/HashMap;

    if-eqz v3, :cond_33

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-eqz v3, :cond_33

    iget-object v3, p0, LMicrosoft/Telemetry/Envelope;->ext:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/microsoft/bond/Bonded;

    iget-object v6, p1, LMicrosoft/Telemetry/Envelope;->ext:Ljava/util/HashMap;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/microsoft/bond/Bonded;

    if-eqz v0, :cond_2b

    iget-object v0, p1, LMicrosoft/Telemetry/Envelope;->ext:Ljava/util/HashMap;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x1

    goto :goto_27

    :cond_2b
    const/4 v0, 0x0

    :goto_27
    if-eqz v0, :cond_32

    if-eqz v0, :cond_2e

    if-nez v5, :cond_2c

    const/4 v0, 0x1

    goto :goto_28

    :cond_2c
    const/4 v0, 0x0

    :goto_28
    if-nez v6, :cond_2d

    const/4 v4, 0x1

    goto :goto_29

    :cond_2d
    const/4 v4, 0x0

    :goto_29
    if-ne v0, v4, :cond_2e

    const/4 v0, 0x1

    goto :goto_2a

    :cond_2e
    const/4 v0, 0x0

    :goto_2a
    if-eqz v0, :cond_31

    if-nez v5, :cond_2f

    goto :goto_2b

    :cond_2f
    invoke-virtual {v5, v6}, Lcom/microsoft/bond/Bonded;->memberwiseCompare(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    goto :goto_2c

    :cond_30
    :goto_2b
    const/4 v0, 0x1

    goto :goto_2d

    :cond_31
    :goto_2c
    const/4 v0, 0x0

    :cond_32
    :goto_2d
    if-nez v0, :cond_2a

    :cond_33
    if-eqz v0, :cond_36

    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->data:Lcom/microsoft/bond/Bonded;

    if-nez v0, :cond_34

    goto :goto_2e

    :cond_34
    iget-object p1, p1, LMicrosoft/Telemetry/Envelope;->data:Lcom/microsoft/bond/Bonded;

    invoke-virtual {v0, p1}, Lcom/microsoft/bond/Bonded;->memberwiseCompare(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_35

    goto :goto_2f

    :cond_35
    :goto_2e
    return v1

    :cond_36
    :goto_2f
    return v2
.end method

.method public memberwiseCompareQuick(LMicrosoft/Telemetry/Envelope;)Z
    .registers 9

    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->ver:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v4, p1, LMicrosoft/Telemetry/Envelope;->ver:Ljava/lang/String;

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_5

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v3, p1, LMicrosoft/Telemetry/Envelope;->ver:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v0, v3, :cond_4

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_8

    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->name:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    :goto_6
    iget-object v3, p1, LMicrosoft/Telemetry/Envelope;->name:Ljava/lang/String;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_7

    :cond_7
    const/4 v3, 0x0

    :goto_7
    if-ne v0, v3, :cond_8

    const/4 v0, 0x1

    goto :goto_8

    :cond_8
    const/4 v0, 0x0

    :goto_8
    if-eqz v0, :cond_b

    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->name:Ljava/lang/String;

    if-nez v0, :cond_9

    goto :goto_9

    :cond_9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v3, p1, LMicrosoft/Telemetry/Envelope;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v0, v3, :cond_a

    goto :goto_a

    :cond_a
    :goto_9
    const/4 v0, 0x1

    goto :goto_b

    :cond_b
    :goto_a
    const/4 v0, 0x0

    :goto_b
    if-eqz v0, :cond_e

    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->time:Ljava/lang/String;

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_c

    :cond_c
    const/4 v0, 0x0

    :goto_c
    iget-object v3, p1, LMicrosoft/Telemetry/Envelope;->time:Ljava/lang/String;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_d

    :cond_d
    const/4 v3, 0x0

    :goto_d
    if-ne v0, v3, :cond_e

    const/4 v0, 0x1

    goto :goto_e

    :cond_e
    const/4 v0, 0x0

    :goto_e
    if-eqz v0, :cond_11

    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->time:Ljava/lang/String;

    if-nez v0, :cond_f

    goto :goto_f

    :cond_f
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v3, p1, LMicrosoft/Telemetry/Envelope;->time:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v0, v3, :cond_10

    goto :goto_10

    :cond_10
    :goto_f
    const/4 v0, 0x1

    goto :goto_11

    :cond_11
    :goto_10
    const/4 v0, 0x0

    :goto_11
    if-eqz v0, :cond_14

    iget-wide v3, p0, LMicrosoft/Telemetry/Envelope;->popSample:D

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-wide v3, p1, LMicrosoft/Telemetry/Envelope;->popSample:D

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_12

    :cond_12
    iget-wide v3, p0, LMicrosoft/Telemetry/Envelope;->popSample:D

    iget-wide v5, p1, LMicrosoft/Telemetry/Envelope;->popSample:D

    cmpl-double v0, v3, v5

    if-eqz v0, :cond_13

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

    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->epoch:Ljava/lang/String;

    if-nez v0, :cond_15

    const/4 v0, 0x1

    goto :goto_15

    :cond_15
    const/4 v0, 0x0

    :goto_15
    iget-object v3, p1, LMicrosoft/Telemetry/Envelope;->epoch:Ljava/lang/String;

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

    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->epoch:Ljava/lang/String;

    if-nez v0, :cond_18

    goto :goto_18

    :cond_18
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v3, p1, LMicrosoft/Telemetry/Envelope;->epoch:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v0, v3, :cond_19

    goto :goto_19

    :cond_19
    :goto_18
    const/4 v0, 0x1

    goto :goto_1a

    :cond_1a
    :goto_19
    const/4 v0, 0x0

    :goto_1a
    if-eqz v0, :cond_1b

    iget-wide v3, p0, LMicrosoft/Telemetry/Envelope;->seqNum:J

    iget-wide v5, p1, LMicrosoft/Telemetry/Envelope;->seqNum:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1b
    const/4 v0, 0x0

    :goto_1b
    if-eqz v0, :cond_1e

    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->iKey:Ljava/lang/String;

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1c
    const/4 v0, 0x0

    :goto_1c
    iget-object v3, p1, LMicrosoft/Telemetry/Envelope;->iKey:Ljava/lang/String;

    if-nez v3, :cond_1d

    const/4 v3, 0x1

    goto :goto_1d

    :cond_1d
    const/4 v3, 0x0

    :goto_1d
    if-ne v0, v3, :cond_1e

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1e
    const/4 v0, 0x0

    :goto_1e
    if-eqz v0, :cond_21

    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->iKey:Ljava/lang/String;

    if-nez v0, :cond_1f

    goto :goto_1f

    :cond_1f
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v3, p1, LMicrosoft/Telemetry/Envelope;->iKey:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v0, v3, :cond_20

    goto :goto_20

    :cond_20
    :goto_1f
    const/4 v0, 0x1

    goto :goto_21

    :cond_21
    :goto_20
    const/4 v0, 0x0

    :goto_21
    if-eqz v0, :cond_22

    iget-wide v3, p0, LMicrosoft/Telemetry/Envelope;->flags:J

    iget-wide v5, p1, LMicrosoft/Telemetry/Envelope;->flags:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_22

    const/4 v0, 0x1

    goto :goto_22

    :cond_22
    const/4 v0, 0x0

    :goto_22
    if-eqz v0, :cond_25

    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->os:Ljava/lang/String;

    if-nez v0, :cond_23

    const/4 v0, 0x1

    goto :goto_23

    :cond_23
    const/4 v0, 0x0

    :goto_23
    iget-object v3, p1, LMicrosoft/Telemetry/Envelope;->os:Ljava/lang/String;

    if-nez v3, :cond_24

    const/4 v3, 0x1

    goto :goto_24

    :cond_24
    const/4 v3, 0x0

    :goto_24
    if-ne v0, v3, :cond_25

    const/4 v0, 0x1

    goto :goto_25

    :cond_25
    const/4 v0, 0x0

    :goto_25
    if-eqz v0, :cond_28

    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->os:Ljava/lang/String;

    if-nez v0, :cond_26

    goto :goto_26

    :cond_26
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v3, p1, LMicrosoft/Telemetry/Envelope;->os:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v0, v3, :cond_27

    goto :goto_27

    :cond_27
    :goto_26
    const/4 v0, 0x1

    goto :goto_28

    :cond_28
    :goto_27
    const/4 v0, 0x0

    :goto_28
    if-eqz v0, :cond_2b

    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->osVer:Ljava/lang/String;

    if-nez v0, :cond_29

    const/4 v0, 0x1

    goto :goto_29

    :cond_29
    const/4 v0, 0x0

    :goto_29
    iget-object v3, p1, LMicrosoft/Telemetry/Envelope;->osVer:Ljava/lang/String;

    if-nez v3, :cond_2a

    const/4 v3, 0x1

    goto :goto_2a

    :cond_2a
    const/4 v3, 0x0

    :goto_2a
    if-ne v0, v3, :cond_2b

    const/4 v0, 0x1

    goto :goto_2b

    :cond_2b
    const/4 v0, 0x0

    :goto_2b
    if-eqz v0, :cond_2e

    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->osVer:Ljava/lang/String;

    if-nez v0, :cond_2c

    goto :goto_2c

    :cond_2c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v3, p1, LMicrosoft/Telemetry/Envelope;->osVer:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v0, v3, :cond_2d

    goto :goto_2d

    :cond_2d
    :goto_2c
    const/4 v0, 0x1

    goto :goto_2e

    :cond_2e
    :goto_2d
    const/4 v0, 0x0

    :goto_2e
    if-eqz v0, :cond_31

    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->appId:Ljava/lang/String;

    if-nez v0, :cond_2f

    const/4 v0, 0x1

    goto :goto_2f

    :cond_2f
    const/4 v0, 0x0

    :goto_2f
    iget-object v3, p1, LMicrosoft/Telemetry/Envelope;->appId:Ljava/lang/String;

    if-nez v3, :cond_30

    const/4 v3, 0x1

    goto :goto_30

    :cond_30
    const/4 v3, 0x0

    :goto_30
    if-ne v0, v3, :cond_31

    const/4 v0, 0x1

    goto :goto_31

    :cond_31
    const/4 v0, 0x0

    :goto_31
    if-eqz v0, :cond_34

    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->appId:Ljava/lang/String;

    if-nez v0, :cond_32

    goto :goto_32

    :cond_32
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v3, p1, LMicrosoft/Telemetry/Envelope;->appId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v0, v3, :cond_33

    goto :goto_33

    :cond_33
    :goto_32
    const/4 v0, 0x1

    goto :goto_34

    :cond_34
    :goto_33
    const/4 v0, 0x0

    :goto_34
    if-eqz v0, :cond_37

    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->appVer:Ljava/lang/String;

    if-nez v0, :cond_35

    const/4 v0, 0x1

    goto :goto_35

    :cond_35
    const/4 v0, 0x0

    :goto_35
    iget-object v3, p1, LMicrosoft/Telemetry/Envelope;->appVer:Ljava/lang/String;

    if-nez v3, :cond_36

    const/4 v3, 0x1

    goto :goto_36

    :cond_36
    const/4 v3, 0x0

    :goto_36
    if-ne v0, v3, :cond_37

    const/4 v0, 0x1

    goto :goto_37

    :cond_37
    const/4 v0, 0x0

    :goto_37
    if-eqz v0, :cond_3a

    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->appVer:Ljava/lang/String;

    if-nez v0, :cond_38

    goto :goto_38

    :cond_38
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v3, p1, LMicrosoft/Telemetry/Envelope;->appVer:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v0, v3, :cond_39

    goto :goto_39

    :cond_39
    :goto_38
    const/4 v0, 0x1

    goto :goto_3a

    :cond_3a
    :goto_39
    const/4 v0, 0x0

    :goto_3a
    if-eqz v0, :cond_3d

    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->cV:Ljava/lang/String;

    if-nez v0, :cond_3b

    const/4 v0, 0x1

    goto :goto_3b

    :cond_3b
    const/4 v0, 0x0

    :goto_3b
    iget-object v3, p1, LMicrosoft/Telemetry/Envelope;->cV:Ljava/lang/String;

    if-nez v3, :cond_3c

    const/4 v3, 0x1

    goto :goto_3c

    :cond_3c
    const/4 v3, 0x0

    :goto_3c
    if-ne v0, v3, :cond_3d

    const/4 v0, 0x1

    goto :goto_3d

    :cond_3d
    const/4 v0, 0x0

    :goto_3d
    if-eqz v0, :cond_40

    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->cV:Ljava/lang/String;

    if-nez v0, :cond_3e

    goto :goto_3e

    :cond_3e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v3, p1, LMicrosoft/Telemetry/Envelope;->cV:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v0, v3, :cond_3f

    goto :goto_3f

    :cond_3f
    :goto_3e
    const/4 v0, 0x1

    goto :goto_40

    :cond_40
    :goto_3f
    const/4 v0, 0x0

    :goto_40
    if-eqz v0, :cond_43

    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->tags:Ljava/util/HashMap;

    if-nez v0, :cond_41

    const/4 v0, 0x1

    goto :goto_41

    :cond_41
    const/4 v0, 0x0

    :goto_41
    iget-object v3, p1, LMicrosoft/Telemetry/Envelope;->tags:Ljava/util/HashMap;

    if-nez v3, :cond_42

    const/4 v3, 0x1

    goto :goto_42

    :cond_42
    const/4 v3, 0x0

    :goto_42
    if-ne v0, v3, :cond_43

    const/4 v0, 0x1

    goto :goto_43

    :cond_43
    const/4 v0, 0x0

    :goto_43
    if-eqz v0, :cond_46

    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->tags:Ljava/util/HashMap;

    if-nez v0, :cond_44

    goto :goto_44

    :cond_44
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget-object v3, p1, LMicrosoft/Telemetry/Envelope;->tags:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-eq v0, v3, :cond_45

    goto :goto_45

    :cond_45
    :goto_44
    const/4 v0, 0x1

    goto :goto_46

    :cond_46
    :goto_45
    const/4 v0, 0x0

    :goto_46
    if-eqz v0, :cond_49

    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->ext:Ljava/util/HashMap;

    if-nez v0, :cond_47

    const/4 v0, 0x1

    goto :goto_47

    :cond_47
    const/4 v0, 0x0

    :goto_47
    iget-object v3, p1, LMicrosoft/Telemetry/Envelope;->ext:Ljava/util/HashMap;

    if-nez v3, :cond_48

    const/4 v3, 0x1

    goto :goto_48

    :cond_48
    const/4 v3, 0x0

    :goto_48
    if-ne v0, v3, :cond_49

    const/4 v0, 0x1

    goto :goto_49

    :cond_49
    const/4 v0, 0x0

    :goto_49
    if-eqz v0, :cond_4c

    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->ext:Ljava/util/HashMap;

    if-nez v0, :cond_4a

    goto :goto_4a

    :cond_4a
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget-object p1, p1, LMicrosoft/Telemetry/Envelope;->ext:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-eq v0, p1, :cond_4b

    goto :goto_4b

    :cond_4b
    :goto_4a
    return v1

    :cond_4c
    :goto_4b
    return v2
.end method

.method public read(Lcom/microsoft/bond/ProtocolReader;)V
    .registers 2

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readBegin()V

    invoke-virtual {p0, p1}, LMicrosoft/Telemetry/Envelope;->readNested(Lcom/microsoft/bond/ProtocolReader;)V

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

    invoke-virtual {p0, p1, v1}, LMicrosoft/Telemetry/Envelope;->readUntagged(Lcom/microsoft/bond/ProtocolReader;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v1}, LMicrosoft/Telemetry/Envelope;->readTagged(Lcom/microsoft/bond/ProtocolReader;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/microsoft/bond/internal/ReadHelper;->skipPartialStruct(Lcom/microsoft/bond/ProtocolReader;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public readTagged(Lcom/microsoft/bond/ProtocolReader;Z)Z
    .registers 5

    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolReader;->readStructBegin(Z)V

    :goto_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldBegin()Lcom/microsoft/bond/ProtocolReader$FieldTag;

    move-result-object p2

    iget-object v0, p2, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STOP:Lcom/microsoft/bond/BondDataType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-ne v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget p2, p2, Lcom/microsoft/bond/ProtocolReader$FieldTag;->id:I

    sparse-switch p2, :sswitch_data_0

    invoke-virtual {p1, v0}, Lcom/microsoft/bond/ProtocolReader;->skip(Lcom/microsoft/bond/BondDataType;)V

    goto/16 :goto_1

    :sswitch_0
    sget-object p2, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    invoke-static {v0, p2}, Lcom/microsoft/bond/internal/ReadHelper;->validateType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    iget-object p2, p0, LMicrosoft/Telemetry/Envelope;->data:Lcom/microsoft/bond/Bonded;

    invoke-virtual {p2, p1}, Lcom/microsoft/bond/Bonded;->readNested(Lcom/microsoft/bond/ProtocolReader;)V

    goto/16 :goto_1

    :sswitch_1
    invoke-direct {p0, p1, v0}, LMicrosoft/Telemetry/Envelope;->readFieldImpl_ext(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)V

    goto :goto_1

    :sswitch_2
    invoke-direct {p0, p1, v0}, LMicrosoft/Telemetry/Envelope;->readFieldImpl_tags(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)V

    goto :goto_1

    :sswitch_3
    invoke-static {p1, v0}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, LMicrosoft/Telemetry/Envelope;->cV:Ljava/lang/String;

    goto :goto_1

    :sswitch_4
    invoke-static {p1, v0}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, LMicrosoft/Telemetry/Envelope;->appVer:Ljava/lang/String;

    goto :goto_1

    :sswitch_5
    invoke-static {p1, v0}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, LMicrosoft/Telemetry/Envelope;->appId:Ljava/lang/String;

    goto :goto_1

    :sswitch_6
    invoke-static {p1, v0}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, LMicrosoft/Telemetry/Envelope;->osVer:Ljava/lang/String;

    goto :goto_1

    :sswitch_7
    invoke-static {p1, v0}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, LMicrosoft/Telemetry/Envelope;->os:Ljava/lang/String;

    goto :goto_1

    :sswitch_8
    invoke-static {p1, v0}, Lcom/microsoft/bond/internal/ReadHelper;->readInt64(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)J

    move-result-wide v0

    iput-wide v0, p0, LMicrosoft/Telemetry/Envelope;->flags:J

    goto :goto_1

    :sswitch_9
    invoke-static {p1, v0}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, LMicrosoft/Telemetry/Envelope;->iKey:Ljava/lang/String;

    goto :goto_1

    :sswitch_a
    invoke-static {p1, v0}, Lcom/microsoft/bond/internal/ReadHelper;->readInt64(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)J

    move-result-wide v0

    iput-wide v0, p0, LMicrosoft/Telemetry/Envelope;->seqNum:J

    goto :goto_1

    :sswitch_b
    invoke-static {p1, v0}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, LMicrosoft/Telemetry/Envelope;->epoch:Ljava/lang/String;

    goto :goto_1

    :sswitch_c
    invoke-static {p1, v0}, Lcom/microsoft/bond/internal/ReadHelper;->readDouble(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)D

    move-result-wide v0

    iput-wide v0, p0, LMicrosoft/Telemetry/Envelope;->popSample:D

    goto :goto_1

    :sswitch_d
    invoke-static {p1, v0}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, LMicrosoft/Telemetry/Envelope;->time:Ljava/lang/String;

    goto :goto_1

    :sswitch_e
    invoke-static {p1, v0}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, LMicrosoft/Telemetry/Envelope;->name:Ljava/lang/String;

    goto :goto_1

    :sswitch_f
    invoke-static {p1, v0}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, LMicrosoft/Telemetry/Envelope;->ver:Ljava/lang/String;

    :goto_1
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldEnd()V

    goto/16 :goto_0

    :cond_1
    :goto_2
    sget-object p2, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-ne v0, p2, :cond_2

    const/4 p2, 0x1

    goto :goto_3

    :cond_2
    const/4 p2, 0x0

    :goto_3
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readStructEnd()V

    return p2

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_f
        0x14 -> :sswitch_e
        0x1e -> :sswitch_d
        0x28 -> :sswitch_c
        0x32 -> :sswitch_b
        0x3c -> :sswitch_a
        0x46 -> :sswitch_9
        0x50 -> :sswitch_8
        0x5a -> :sswitch_7
        0x64 -> :sswitch_6
        0x6e -> :sswitch_5
        0x78 -> :sswitch_4
        0x82 -> :sswitch_3
        0x1f4 -> :sswitch_2
        0x1fe -> :sswitch_1
        0x3e7 -> :sswitch_0
    .end sparse-switch
.end method

.method public readUntagged(Lcom/microsoft/bond/ProtocolReader;Z)V
    .registers 6

    sget-object v0, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v0}, Lcom/microsoft/bond/ProtocolReader;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolReader;->readStructBegin(Z)V

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, LMicrosoft/Telemetry/Envelope;->ver:Ljava/lang/String;

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_3

    :cond_2
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, LMicrosoft/Telemetry/Envelope;->name:Ljava/lang/String;

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_5

    :cond_4
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, LMicrosoft/Telemetry/Envelope;->time:Ljava/lang/String;

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_7

    :cond_6
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, LMicrosoft/Telemetry/Envelope;->popSample:D

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_9

    :cond_8
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, LMicrosoft/Telemetry/Envelope;->epoch:Ljava/lang/String;

    :cond_9
    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_b

    :cond_a
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, LMicrosoft/Telemetry/Envelope;->seqNum:J

    :cond_b
    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_d

    :cond_c
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, LMicrosoft/Telemetry/Envelope;->iKey:Ljava/lang/String;

    :cond_d
    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_f

    :cond_e
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, LMicrosoft/Telemetry/Envelope;->flags:J

    :cond_f
    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_11

    :cond_10
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, LMicrosoft/Telemetry/Envelope;->os:Ljava/lang/String;

    :cond_11
    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_13

    :cond_12
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, LMicrosoft/Telemetry/Envelope;->osVer:Ljava/lang/String;

    :cond_13
    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_15

    :cond_14
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, LMicrosoft/Telemetry/Envelope;->appId:Ljava/lang/String;

    :cond_15
    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_17

    :cond_16
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, LMicrosoft/Telemetry/Envelope;->appVer:Ljava/lang/String;

    :cond_17
    if-eqz v0, :cond_18

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_19

    :cond_18
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, LMicrosoft/Telemetry/Envelope;->cV:Ljava/lang/String;

    :cond_19
    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_1b

    :cond_1a
    sget-object p2, Lcom/microsoft/bond/BondDataType;->BT_MAP:Lcom/microsoft/bond/BondDataType;

    invoke-direct {p0, p1, p2}, LMicrosoft/Telemetry/Envelope;->readFieldImpl_tags(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)V

    :cond_1b
    if-eqz v0, :cond_1c

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_1d

    :cond_1c
    sget-object p2, Lcom/microsoft/bond/BondDataType;->BT_MAP:Lcom/microsoft/bond/BondDataType;

    invoke-direct {p0, p1, p2}, LMicrosoft/Telemetry/Envelope;->readFieldImpl_ext(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)V

    :cond_1d
    if-eqz v0, :cond_1e

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_1f

    :cond_1e
    iget-object p2, p0, LMicrosoft/Telemetry/Envelope;->data:Lcom/microsoft/bond/Bonded;

    invoke-virtual {p2, p1}, Lcom/microsoft/bond/Bonded;->read(Lcom/microsoft/bond/ProtocolReader;)V

    :cond_1f
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readStructEnd()V

    return-void
.end method

.method public reset()V
    .registers 3

    const-string v0, "Envelope"

    const-string v1, "Microsoft.Telemetry.Envelope"

    invoke-virtual {p0, v0, v1}, LMicrosoft/Telemetry/Envelope;->reset(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reset(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string p1, ""

    iput-object p1, p0, LMicrosoft/Telemetry/Envelope;->ver:Ljava/lang/String;

    iput-object p1, p0, LMicrosoft/Telemetry/Envelope;->name:Ljava/lang/String;

    iput-object p1, p0, LMicrosoft/Telemetry/Envelope;->time:Ljava/lang/String;

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    iput-wide v0, p0, LMicrosoft/Telemetry/Envelope;->popSample:D

    iput-object p1, p0, LMicrosoft/Telemetry/Envelope;->epoch:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LMicrosoft/Telemetry/Envelope;->seqNum:J

    iput-object p1, p0, LMicrosoft/Telemetry/Envelope;->iKey:Ljava/lang/String;

    iput-wide v0, p0, LMicrosoft/Telemetry/Envelope;->flags:J

    iput-object p1, p0, LMicrosoft/Telemetry/Envelope;->os:Ljava/lang/String;

    iput-object p1, p0, LMicrosoft/Telemetry/Envelope;->osVer:Ljava/lang/String;

    iput-object p1, p0, LMicrosoft/Telemetry/Envelope;->appId:Ljava/lang/String;

    iput-object p1, p0, LMicrosoft/Telemetry/Envelope;->appVer:Ljava/lang/String;

    iput-object p1, p0, LMicrosoft/Telemetry/Envelope;->cV:Ljava/lang/String;

    iget-object p1, p0, LMicrosoft/Telemetry/Envelope;->tags:Ljava/util/HashMap;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, LMicrosoft/Telemetry/Envelope;->tags:Ljava/util/HashMap;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    :goto_0
    iget-object p1, p0, LMicrosoft/Telemetry/Envelope;->ext:Ljava/util/HashMap;

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, LMicrosoft/Telemetry/Envelope;->ext:Ljava/util/HashMap;

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    :goto_1
    new-instance p1, Lcom/microsoft/bond/Bonded;

    invoke-direct {p1}, Lcom/microsoft/bond/Bonded;-><init>()V

    iput-object p1, p0, LMicrosoft/Telemetry/Envelope;->data:Lcom/microsoft/bond/Bonded;

    return-void
.end method

.method public final setAppId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, LMicrosoft/Telemetry/Envelope;->appId:Ljava/lang/String;

    return-void
.end method

.method public final setAppVer(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, LMicrosoft/Telemetry/Envelope;->appVer:Ljava/lang/String;

    return-void
.end method

.method public final setCV(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, LMicrosoft/Telemetry/Envelope;->cV:Ljava/lang/String;

    return-void
.end method

.method public final setData(Lcom/microsoft/bond/Bonded;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/bond/Bonded<",
            "LMicrosoft/Telemetry/Base;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LMicrosoft/Telemetry/Envelope;->data:Lcom/microsoft/bond/Bonded;

    return-void
.end method

.method public final setEpoch(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, LMicrosoft/Telemetry/Envelope;->epoch:Ljava/lang/String;

    return-void
.end method

.method public final setExt(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/microsoft/bond/Bonded<",
            "LMicrosoft/Telemetry/Extension;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, LMicrosoft/Telemetry/Envelope;->ext:Ljava/util/HashMap;

    return-void
.end method

.method public setField(Lcom/microsoft/bond/FieldDef;Ljava/lang/Object;)V
    .registers 3

    invoke-virtual {p1}, Lcom/microsoft/bond/FieldDef;->getId()S

    move-result p1

    sparse-switch p1, :sswitch_data_0

    return-void

    :sswitch_0
    check-cast p2, Lcom/microsoft/bond/Bonded;

    iput-object p2, p0, LMicrosoft/Telemetry/Envelope;->data:Lcom/microsoft/bond/Bonded;

    return-void

    :sswitch_1
    check-cast p2, Ljava/util/HashMap;

    iput-object p2, p0, LMicrosoft/Telemetry/Envelope;->ext:Ljava/util/HashMap;

    return-void

    :sswitch_2
    check-cast p2, Ljava/util/HashMap;

    iput-object p2, p0, LMicrosoft/Telemetry/Envelope;->tags:Ljava/util/HashMap;

    return-void

    :sswitch_3
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, LMicrosoft/Telemetry/Envelope;->cV:Ljava/lang/String;

    return-void

    :sswitch_4
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, LMicrosoft/Telemetry/Envelope;->appVer:Ljava/lang/String;

    return-void

    :sswitch_5
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, LMicrosoft/Telemetry/Envelope;->appId:Ljava/lang/String;

    return-void

    :sswitch_6
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, LMicrosoft/Telemetry/Envelope;->osVer:Ljava/lang/String;

    return-void

    :sswitch_7
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, LMicrosoft/Telemetry/Envelope;->os:Ljava/lang/String;

    return-void

    :sswitch_8
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, LMicrosoft/Telemetry/Envelope;->flags:J

    return-void

    :sswitch_9
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, LMicrosoft/Telemetry/Envelope;->iKey:Ljava/lang/String;

    return-void

    :sswitch_a
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, LMicrosoft/Telemetry/Envelope;->seqNum:J

    return-void

    :sswitch_b
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, LMicrosoft/Telemetry/Envelope;->epoch:Ljava/lang/String;

    return-void

    :sswitch_c
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    iput-wide p1, p0, LMicrosoft/Telemetry/Envelope;->popSample:D

    return-void

    :sswitch_d
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, LMicrosoft/Telemetry/Envelope;->time:Ljava/lang/String;

    return-void

    :sswitch_e
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, LMicrosoft/Telemetry/Envelope;->name:Ljava/lang/String;

    return-void

    :sswitch_f
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, LMicrosoft/Telemetry/Envelope;->ver:Ljava/lang/String;

    return-void

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_f
        0x14 -> :sswitch_e
        0x1e -> :sswitch_d
        0x28 -> :sswitch_c
        0x32 -> :sswitch_b
        0x3c -> :sswitch_a
        0x46 -> :sswitch_9
        0x50 -> :sswitch_8
        0x5a -> :sswitch_7
        0x64 -> :sswitch_6
        0x6e -> :sswitch_5
        0x78 -> :sswitch_4
        0x82 -> :sswitch_3
        0x1f4 -> :sswitch_2
        0x1fe -> :sswitch_1
        0x3e7 -> :sswitch_0
    .end sparse-switch
.end method

.method public final setFlags(J)V
    .registers 3

    iput-wide p1, p0, LMicrosoft/Telemetry/Envelope;->flags:J

    return-void
.end method

.method public final setIKey(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, LMicrosoft/Telemetry/Envelope;->iKey:Ljava/lang/String;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, LMicrosoft/Telemetry/Envelope;->name:Ljava/lang/String;

    return-void
.end method

.method public final setOs(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, LMicrosoft/Telemetry/Envelope;->os:Ljava/lang/String;

    return-void
.end method

.method public final setOsVer(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, LMicrosoft/Telemetry/Envelope;->osVer:Ljava/lang/String;

    return-void
.end method

.method public final setPopSample(D)V
    .registers 3

    iput-wide p1, p0, LMicrosoft/Telemetry/Envelope;->popSample:D

    return-void
.end method

.method public final setSeqNum(J)V
    .registers 3

    iput-wide p1, p0, LMicrosoft/Telemetry/Envelope;->seqNum:J

    return-void
.end method

.method public final setTags(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LMicrosoft/Telemetry/Envelope;->tags:Ljava/util/HashMap;

    return-void
.end method

.method public final setTime(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, LMicrosoft/Telemetry/Envelope;->time:Ljava/lang/String;

    return-void
.end method

.method public final setVer(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, LMicrosoft/Telemetry/Envelope;->ver:Ljava/lang/String;

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

    invoke-virtual {p0, v0, v1}, LMicrosoft/Telemetry/Envelope;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    :cond_0
    invoke-virtual {p0, p1, v1}, LMicrosoft/Telemetry/Envelope;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeEnd()V

    return-void
.end method

.method public writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V
    .registers 11

    sget-object v0, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v0}, Lcom/microsoft/bond/ProtocolWriter;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    sget-object v1, LMicrosoft/Telemetry/Envelope$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {p1, v1, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructBegin(Lcom/microsoft/bond/BondSerializable;Z)V

    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$000()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {p1, v1, v3, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget-object v2, p0, LMicrosoft/Telemetry/Envelope;->ver:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$100()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    const/16 v3, 0x14

    invoke-virtual {p1, v1, v3, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget-object v2, p0, LMicrosoft/Telemetry/Envelope;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$200()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    const/16 v3, 0x1e

    invoke-virtual {p1, v1, v3, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget-object v2, p0, LMicrosoft/Telemetry/Envelope;->time:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    const/16 v2, 0x28

    if-eqz v0, :cond_1

    iget-wide v3, p0, LMicrosoft/Telemetry/Envelope;->popSample:D

    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$300()Lcom/microsoft/bond/Metadata;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/bond/Variant;->getDouble_value()D

    move-result-wide v5

    cmpl-double v7, v3, v5

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_DOUBLE:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$300()Lcom/microsoft/bond/Metadata;

    move-result-object v4

    invoke-virtual {p1, v3, v2, v4}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_DOUBLE:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$300()Lcom/microsoft/bond/Metadata;

    move-result-object v4

    invoke-virtual {p1, v3, v2, v4}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget-wide v2, p0, LMicrosoft/Telemetry/Envelope;->popSample:D

    invoke-virtual {p1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeDouble(D)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    :goto_1
    const/16 v2, 0x32

    if-eqz v0, :cond_3

    iget-object v3, p0, LMicrosoft/Telemetry/Envelope;->epoch:Ljava/lang/String;

    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$400()Lcom/microsoft/bond/Metadata;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/bond/Variant;->getString_value()Ljava/lang/String;

    move-result-object v4

    if-eq v3, v4, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$400()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_3

    :cond_3
    :goto_2
    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$400()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget-object v2, p0, LMicrosoft/Telemetry/Envelope;->epoch:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    :goto_3
    const/16 v2, 0x3c

    if-eqz v0, :cond_5

    iget-wide v3, p0, LMicrosoft/Telemetry/Envelope;->seqNum:J

    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$500()Lcom/microsoft/bond/Metadata;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/bond/Variant;->getInt_value()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-eqz v7, :cond_4

    goto :goto_4

    :cond_4
    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_INT64:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$500()Lcom/microsoft/bond/Metadata;

    move-result-object v4

    invoke-virtual {p1, v3, v2, v4}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_5

    :cond_5
    :goto_4
    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_INT64:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$500()Lcom/microsoft/bond/Metadata;

    move-result-object v4

    invoke-virtual {p1, v3, v2, v4}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget-wide v2, p0, LMicrosoft/Telemetry/Envelope;->seqNum:J

    invoke-virtual {p1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeInt64(J)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    :goto_5
    const/16 v2, 0x46

    if-eqz v0, :cond_7

    iget-object v3, p0, LMicrosoft/Telemetry/Envelope;->iKey:Ljava/lang/String;

    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$600()Lcom/microsoft/bond/Metadata;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/bond/Variant;->getString_value()Ljava/lang/String;

    move-result-object v4

    if-eq v3, v4, :cond_6

    goto :goto_6

    :cond_6
    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$600()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_7

    :cond_7
    :goto_6
    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$600()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget-object v2, p0, LMicrosoft/Telemetry/Envelope;->iKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    :goto_7
    const/16 v2, 0x50

    if-eqz v0, :cond_9

    iget-wide v3, p0, LMicrosoft/Telemetry/Envelope;->flags:J

    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$700()Lcom/microsoft/bond/Metadata;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/bond/Variant;->getInt_value()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-eqz v7, :cond_8

    goto :goto_8

    :cond_8
    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_INT64:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$700()Lcom/microsoft/bond/Metadata;

    move-result-object v4

    invoke-virtual {p1, v3, v2, v4}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_9

    :cond_9
    :goto_8
    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_INT64:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$700()Lcom/microsoft/bond/Metadata;

    move-result-object v4

    invoke-virtual {p1, v3, v2, v4}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget-wide v2, p0, LMicrosoft/Telemetry/Envelope;->flags:J

    invoke-virtual {p1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeInt64(J)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    :goto_9
    const/16 v2, 0x5a

    if-eqz v0, :cond_b

    iget-object v3, p0, LMicrosoft/Telemetry/Envelope;->os:Ljava/lang/String;

    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$800()Lcom/microsoft/bond/Metadata;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/bond/Variant;->getString_value()Ljava/lang/String;

    move-result-object v4

    if-eq v3, v4, :cond_a

    goto :goto_a

    :cond_a
    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$800()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_b

    :cond_b
    :goto_a
    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$800()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget-object v2, p0, LMicrosoft/Telemetry/Envelope;->os:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    :goto_b
    const/16 v2, 0x64

    if-eqz v0, :cond_d

    iget-object v3, p0, LMicrosoft/Telemetry/Envelope;->osVer:Ljava/lang/String;

    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$900()Lcom/microsoft/bond/Metadata;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/bond/Variant;->getString_value()Ljava/lang/String;

    move-result-object v4

    if-eq v3, v4, :cond_c

    goto :goto_c

    :cond_c
    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$900()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_d

    :cond_d
    :goto_c
    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$900()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget-object v2, p0, LMicrosoft/Telemetry/Envelope;->osVer:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    :goto_d
    const/16 v2, 0x6e

    if-eqz v0, :cond_f

    iget-object v3, p0, LMicrosoft/Telemetry/Envelope;->appId:Ljava/lang/String;

    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$1000()Lcom/microsoft/bond/Metadata;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/bond/Variant;->getString_value()Ljava/lang/String;

    move-result-object v4

    if-eq v3, v4, :cond_e

    goto :goto_e

    :cond_e
    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$1000()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_f

    :cond_f
    :goto_e
    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$1000()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget-object v2, p0, LMicrosoft/Telemetry/Envelope;->appId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    :goto_f
    const/16 v2, 0x78

    if-eqz v0, :cond_11

    iget-object v3, p0, LMicrosoft/Telemetry/Envelope;->appVer:Ljava/lang/String;

    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$1100()Lcom/microsoft/bond/Metadata;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/bond/Variant;->getString_value()Ljava/lang/String;

    move-result-object v4

    if-eq v3, v4, :cond_10

    goto :goto_10

    :cond_10
    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$1100()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_11

    :cond_11
    :goto_10
    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$1100()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget-object v2, p0, LMicrosoft/Telemetry/Envelope;->appVer:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    :goto_11
    const/16 v2, 0x82

    if-eqz v0, :cond_13

    iget-object v3, p0, LMicrosoft/Telemetry/Envelope;->cV:Ljava/lang/String;

    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$1200()Lcom/microsoft/bond/Metadata;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/bond/Variant;->getString_value()Ljava/lang/String;

    move-result-object v4

    if-eq v3, v4, :cond_12

    goto :goto_12

    :cond_12
    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$1200()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_13

    :cond_13
    :goto_12
    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$1200()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget-object v2, p0, LMicrosoft/Telemetry/Envelope;->cV:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    :goto_13
    iget-object v2, p0, LMicrosoft/Telemetry/Envelope;->tags:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    const/16 v3, 0x1f4

    if-eqz v0, :cond_15

    if-eqz v2, :cond_14

    goto :goto_14

    :cond_14
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_MAP:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$1300()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v3, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_16

    :cond_15
    :goto_14
    sget-object v2, Lcom/microsoft/bond/BondDataType;->BT_MAP:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$1300()Lcom/microsoft/bond/Metadata;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget-object v2, p0, LMicrosoft/Telemetry/Envelope;->tags:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {p1, v2, v1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeContainerBegin(ILcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    iget-object v1, p0, LMicrosoft/Telemetry/Envelope;->tags:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    goto :goto_15

    :cond_16
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeContainerEnd()V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    :goto_16
    iget-object v1, p0, LMicrosoft/Telemetry/Envelope;->ext:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x1fe

    if-eqz v0, :cond_18

    if-eqz v1, :cond_17

    goto :goto_17

    :cond_17
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_MAP:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$1400()Lcom/microsoft/bond/Metadata;

    move-result-object v1

    invoke-virtual {p1, v0, v3, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_19

    :cond_18
    :goto_17
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_MAP:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$1400()Lcom/microsoft/bond/Metadata;

    move-result-object v1

    invoke-virtual {p1, v0, v3, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->ext:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {p1, v0, v1, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeContainerBegin(ILcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->ext:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/bond/Bonded;

    invoke-virtual {v1, p1, v2}, Lcom/microsoft/bond/Bonded;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    goto :goto_18

    :cond_19
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeContainerEnd()V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    :goto_19
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    const/16 v1, 0x3e7

    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$1500()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->data:Lcom/microsoft/bond/Bonded;

    invoke-virtual {v0, p1, v2}, Lcom/microsoft/bond/Bonded;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructEnd(Z)V

    return-void
.end method
