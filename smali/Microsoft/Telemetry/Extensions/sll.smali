.class public LMicrosoft/Telemetry/Extensions/sll;
.super LMicrosoft/Telemetry/Extension;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LMicrosoft/Telemetry/Extensions/sll$Schema;
    }
.end annotation


# instance fields
.field private level:LMicrosoft/Telemetry/Extensions/TracingEventLevel;

.field private libVer:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, LMicrosoft/Telemetry/Extension;-><init>()V

    return-void
.end method

.method public static getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;
    .registers 1

    sget-object v0, LMicrosoft/Telemetry/Extensions/sll$Schema;->schemaDef:Lcom/microsoft/bond/SchemaDef;

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

    invoke-virtual {p0}, LMicrosoft/Telemetry/Extensions/sll;->clone()Lcom/microsoft/bond/BondSerializable;

    move-result-object v0

    return-object v0
.end method

.method public createInstance(Lcom/microsoft/bond/StructDef;)Lcom/microsoft/bond/BondMirror;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public getField(Lcom/microsoft/bond/FieldDef;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p1}, Lcom/microsoft/bond/FieldDef;->getId()S

    move-result p1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0x14

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p0, LMicrosoft/Telemetry/Extensions/sll;->level:LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    return-object p1

    :cond_1
    iget-object p1, p0, LMicrosoft/Telemetry/Extensions/sll;->libVer:Ljava/lang/String;

    return-object p1
.end method

.method public final getLevel()LMicrosoft/Telemetry/Extensions/TracingEventLevel;
    .registers 2

    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/sll;->level:LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    return-object v0
.end method

.method public final getLibVer()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/sll;->libVer:Ljava/lang/String;

    return-object v0
.end method

.method public getSchema()Lcom/microsoft/bond/SchemaDef;
    .registers 2

    invoke-static {}, LMicrosoft/Telemetry/Extensions/sll;->getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;

    move-result-object v0

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
    check-cast p1, LMicrosoft/Telemetry/Extensions/sll;

    invoke-virtual {p0, p1}, LMicrosoft/Telemetry/Extensions/sll;->memberwiseCompareQuick(LMicrosoft/Telemetry/Extensions/sll;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, LMicrosoft/Telemetry/Extensions/sll;->memberwiseCompareDeep(LMicrosoft/Telemetry/Extensions/sll;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public memberwiseCompareDeep(LMicrosoft/Telemetry/Extensions/sll;)Z
    .registers 5

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

    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/sll;->libVer:Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p1, LMicrosoft/Telemetry/Extensions/sll;->libVer:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    return v1

    :cond_3
    :goto_2
    return v2
.end method

.method public memberwiseCompareQuick(LMicrosoft/Telemetry/Extensions/sll;)Z
    .registers 6

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

    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/sll;->libVer:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p1, LMicrosoft/Telemetry/Extensions/sll;->libVer:Ljava/lang/String;

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

    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/sll;->libVer:Ljava/lang/String;

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v3, p1, LMicrosoft/Telemetry/Extensions/sll;->libVer:Ljava/lang/String;

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
    if-eqz v0, :cond_7

    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/sll;->level:LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    iget-object p1, p1, LMicrosoft/Telemetry/Extensions/sll;->level:LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    if-ne v0, p1, :cond_7

    return v1

    :cond_7
    return v2
.end method

.method public read(Lcom/microsoft/bond/ProtocolReader;)V
    .registers 2

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readBegin()V

    invoke-virtual {p0, p1}, LMicrosoft/Telemetry/Extensions/sll;->readNested(Lcom/microsoft/bond/ProtocolReader;)V

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

    invoke-virtual {p0, p1, v1}, LMicrosoft/Telemetry/Extensions/sll;->readUntagged(Lcom/microsoft/bond/ProtocolReader;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v1}, LMicrosoft/Telemetry/Extensions/sll;->readTagged(Lcom/microsoft/bond/ProtocolReader;Z)Z

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

    if-eq v2, v3, :cond_4

    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-ne v2, v3, :cond_1

    goto :goto_2

    :cond_1
    iget v0, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->id:I

    const/16 v3, 0xa

    if-eq v0, v3, :cond_3

    const/16 v3, 0x14

    if-eq v0, v3, :cond_2

    invoke-virtual {p1, v2}, Lcom/microsoft/bond/ProtocolReader;->skip(Lcom/microsoft/bond/BondDataType;)V

    goto :goto_1

    :cond_2
    invoke-static {p1, v2}, Lcom/microsoft/bond/internal/ReadHelper;->readInt32(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)I

    move-result v0

    invoke-static {v0}, LMicrosoft/Telemetry/Extensions/TracingEventLevel;->fromValue(I)LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    move-result-object v0

    iput-object v0, p0, LMicrosoft/Telemetry/Extensions/sll;->level:LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    goto :goto_1

    :cond_3
    invoke-static {p1, v2}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LMicrosoft/Telemetry/Extensions/sll;->libVer:Ljava/lang/String;

    :goto_1
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldEnd()V

    goto :goto_0

    :cond_4
    :goto_2
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-ne v2, v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 p2, 0x0

    :goto_3
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readStructEnd()V

    return p2
.end method

.method public readUntagged(Lcom/microsoft/bond/ProtocolReader;Z)V
    .registers 4

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

    iput-object p2, p0, LMicrosoft/Telemetry/Extensions/sll;->libVer:Ljava/lang/String;

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_3

    :cond_2
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readInt32()I

    move-result p2

    invoke-static {p2}, LMicrosoft/Telemetry/Extensions/TracingEventLevel;->fromValue(I)LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    move-result-object p2

    iput-object p2, p0, LMicrosoft/Telemetry/Extensions/sll;->level:LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    :cond_3
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readStructEnd()V

    return-void
.end method

.method public reset()V
    .registers 3

    const-string v0, "sll"

    const-string v1, "Microsoft.Telemetry.Extensions.sll"

    invoke-virtual {p0, v0, v1}, LMicrosoft/Telemetry/Extensions/sll;->reset(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reset(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-super {p0, p1, p2}, LMicrosoft/Telemetry/Extension;->reset(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    iput-object p1, p0, LMicrosoft/Telemetry/Extensions/sll;->libVer:Ljava/lang/String;

    sget-object p1, LMicrosoft/Telemetry/Extensions/TracingEventLevel;->None:LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    iput-object p1, p0, LMicrosoft/Telemetry/Extensions/sll;->level:LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    return-void
.end method

.method public setField(Lcom/microsoft/bond/FieldDef;Ljava/lang/Object;)V
    .registers 4

    invoke-virtual {p1}, Lcom/microsoft/bond/FieldDef;->getId()S

    move-result p1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0x14

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    check-cast p2, LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    iput-object p2, p0, LMicrosoft/Telemetry/Extensions/sll;->level:LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    return-void

    :cond_1
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, LMicrosoft/Telemetry/Extensions/sll;->libVer:Ljava/lang/String;

    return-void
.end method

.method public final setLevel(LMicrosoft/Telemetry/Extensions/TracingEventLevel;)V
    .registers 2

    iput-object p1, p0, LMicrosoft/Telemetry/Extensions/sll;->level:LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    return-void
.end method

.method public final setLibVer(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, LMicrosoft/Telemetry/Extensions/sll;->libVer:Ljava/lang/String;

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

    invoke-virtual {p0, v0, v1}, LMicrosoft/Telemetry/Extensions/sll;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    :cond_0
    invoke-virtual {p0, p1, v1}, LMicrosoft/Telemetry/Extensions/sll;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeEnd()V

    return-void
.end method

.method public writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V
    .registers 6

    sget-object v0, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v0}, Lcom/microsoft/bond/ProtocolWriter;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    sget-object v1, LMicrosoft/Telemetry/Extensions/sll$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {p1, v1, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructBegin(Lcom/microsoft/bond/BondSerializable;Z)V

    const/4 v1, 0x1

    invoke-super {p0, p1, v1}, LMicrosoft/Telemetry/Extension;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    const/16 v1, 0xa

    if-eqz v0, :cond_1

    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/sll;->libVer:Ljava/lang/String;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/sll$Schema;->access$000()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Variant;->getString_value()Ljava/lang/String;

    move-result-object v2

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/sll$Schema;->access$000()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/sll$Schema;->access$000()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/sll;->libVer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    :goto_1
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_INT32:Lcom/microsoft/bond/BondDataType;

    const/16 v1, 0x14

    invoke-static {}, LMicrosoft/Telemetry/Extensions/sll$Schema;->access$100()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/sll;->level:LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    invoke-virtual {v0}, LMicrosoft/Telemetry/Extensions/TracingEventLevel;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/microsoft/bond/ProtocolWriter;->writeInt32(I)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructEnd(Z)V

    return-void
.end method
