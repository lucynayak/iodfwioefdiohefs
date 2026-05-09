.class public Lcom/microsoft/bond/GUID;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/bond/BondSerializable;
.implements Lcom/microsoft/bond/BondMirror;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/bond/GUID$Schema;
    }
.end annotation


# instance fields
.field private Data1:I

.field private Data2:S

.field private Data3:S

.field private Data4:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/microsoft/bond/GUID;->reset()V

    return-void
.end method

.method public static getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;
    .locals 1

    sget-object v0, Lcom/microsoft/bond/GUID$Schema;->schemaDef:Lcom/microsoft/bond/SchemaDef;

    return-object v0
.end method


# virtual methods
.method public clone()Lcom/microsoft/bond/BondSerializable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/bond/GUID;->clone()Lcom/microsoft/bond/BondSerializable;

    move-result-object v0

    return-object v0
.end method

.method public createInstance(Lcom/microsoft/bond/StructDef;)Lcom/microsoft/bond/BondMirror;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final getData1()I
    .locals 1

    iget v0, p0, Lcom/microsoft/bond/GUID;->Data1:I

    return v0
.end method

.method public final getData2()S
    .locals 1

    iget-short v0, p0, Lcom/microsoft/bond/GUID;->Data2:S

    return v0
.end method

.method public final getData3()S
    .locals 1

    iget-short v0, p0, Lcom/microsoft/bond/GUID;->Data3:S

    return v0
.end method

.method public final getData4()J
    .locals 2

    iget-wide v0, p0, Lcom/microsoft/bond/GUID;->Data4:J

    return-wide v0
.end method

.method public getField(Lcom/microsoft/bond/FieldDef;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1}, Lcom/microsoft/bond/FieldDef;->getId()S

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-wide v0, p0, Lcom/microsoft/bond/GUID;->Data4:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_1
    iget-short p1, p0, Lcom/microsoft/bond/GUID;->Data3:S

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1

    :cond_2
    iget-short p1, p0, Lcom/microsoft/bond/GUID;->Data2:S

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1

    :cond_3
    iget p1, p0, Lcom/microsoft/bond/GUID;->Data1:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getSchema()Lcom/microsoft/bond/SchemaDef;
    .locals 1

    invoke-static {}, Lcom/microsoft/bond/GUID;->getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;

    move-result-object v0

    return-object v0
.end method

.method public marshal(Lcom/microsoft/bond/ProtocolWriter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/microsoft/bond/internal/Marshaler;->marshal(Lcom/microsoft/bond/BondSerializable;Lcom/microsoft/bond/ProtocolWriter;)V

    return-void
.end method

.method public memberwiseCompare(Ljava/lang/Object;)Z
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/microsoft/bond/GUID;

    invoke-virtual {p0, p1}, Lcom/microsoft/bond/GUID;->memberwiseCompareQuick(Lcom/microsoft/bond/GUID;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/microsoft/bond/GUID;->memberwiseCompareDeep(Lcom/microsoft/bond/GUID;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public memberwiseCompareDeep(Lcom/microsoft/bond/GUID;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public memberwiseCompareQuick(Lcom/microsoft/bond/GUID;)Z
    .locals 6

    iget v0, p0, Lcom/microsoft/bond/GUID;->Data1:I

    iget v1, p1, Lcom/microsoft/bond/GUID;->Data1:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-short v0, p0, Lcom/microsoft/bond/GUID;->Data2:S

    iget-short v1, p1, Lcom/microsoft/bond/GUID;->Data2:S

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    iget-short v0, p0, Lcom/microsoft/bond/GUID;->Data3:S

    iget-short v1, p1, Lcom/microsoft/bond/GUID;->Data3:S

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/microsoft/bond/GUID;->Data4:J

    iget-wide v4, p1, Lcom/microsoft/bond/GUID;->Data4:J

    cmp-long p1, v0, v4

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v3
.end method

.method public read(Lcom/microsoft/bond/ProtocolReader;)V
    .locals 0

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readBegin()V

    invoke-virtual {p0, p1}, Lcom/microsoft/bond/GUID;->readNested(Lcom/microsoft/bond/ProtocolReader;)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readEnd()V

    return-void
.end method

.method public read(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondSerializable;)V
    .locals 0

    return-void
.end method

.method public readNested(Lcom/microsoft/bond/ProtocolReader;)V
    .locals 2

    sget-object v0, Lcom/microsoft/bond/ProtocolCapability;->TAGGED:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v0}, Lcom/microsoft/bond/ProtocolReader;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, v1}, Lcom/microsoft/bond/GUID;->readUntagged(Lcom/microsoft/bond/ProtocolReader;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/bond/GUID;->readTagged(Lcom/microsoft/bond/ProtocolReader;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/microsoft/bond/internal/ReadHelper;->skipPartialStruct(Lcom/microsoft/bond/ProtocolReader;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public readTagged(Lcom/microsoft/bond/ProtocolReader;Z)Z
    .locals 3

    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolReader;->readStructBegin(Z)V

    :goto_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldBegin()Lcom/microsoft/bond/ProtocolReader$FieldTag;

    move-result-object p2

    iget-object v0, p2, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STOP:Lcom/microsoft/bond/BondDataType;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_5

    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-ne v0, v1, :cond_0

    goto :goto_2

    :cond_0
    iget p2, p2, Lcom/microsoft/bond/ProtocolReader$FieldTag;->id:I

    if-eqz p2, :cond_4

    if-eq p2, v2, :cond_3

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    const/4 v1, 0x3

    if-eq p2, v1, :cond_1

    invoke-virtual {p1, v0}, Lcom/microsoft/bond/ProtocolReader;->skip(Lcom/microsoft/bond/BondDataType;)V

    goto :goto_1

    :cond_1
    invoke-static {p1, v0}, Lcom/microsoft/bond/internal/ReadHelper;->readUInt64(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/microsoft/bond/GUID;->Data4:J

    goto :goto_1

    :cond_2
    invoke-static {p1, v0}, Lcom/microsoft/bond/internal/ReadHelper;->readUInt16(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)S

    move-result p2

    iput-short p2, p0, Lcom/microsoft/bond/GUID;->Data3:S

    goto :goto_1

    :cond_3
    invoke-static {p1, v0}, Lcom/microsoft/bond/internal/ReadHelper;->readUInt16(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)S

    move-result p2

    iput-short p2, p0, Lcom/microsoft/bond/GUID;->Data2:S

    goto :goto_1

    :cond_4
    invoke-static {p1, v0}, Lcom/microsoft/bond/internal/ReadHelper;->readUInt32(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)I

    move-result p2

    iput p2, p0, Lcom/microsoft/bond/GUID;->Data1:I

    :goto_1
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldEnd()V

    goto :goto_0

    :cond_5
    :goto_2
    sget-object p2, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-ne v0, p2, :cond_6

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readStructEnd()V

    return v2
.end method

.method public readUntagged(Lcom/microsoft/bond/ProtocolReader;Z)V
    .locals 2

    sget-object v0, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v0}, Lcom/microsoft/bond/ProtocolReader;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolReader;->readStructBegin(Z)V

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readUInt32()I

    move-result p2

    iput p2, p0, Lcom/microsoft/bond/GUID;->Data1:I

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_3

    :cond_2
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readUInt16()S

    move-result p2

    iput-short p2, p0, Lcom/microsoft/bond/GUID;->Data2:S

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_5

    :cond_4
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readUInt16()S

    move-result p2

    iput-short p2, p0, Lcom/microsoft/bond/GUID;->Data3:S

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_7

    :cond_6
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readUInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/microsoft/bond/GUID;->Data4:J

    :cond_7
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readStructEnd()V

    return-void
.end method

.method public reset()V
    .locals 2

    const-string v0, "GUID"

    const-string v1, "com.microsoft.bond.GUID"

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/bond/GUID;->reset(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reset(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Lcom/microsoft/bond/GUID;->Data1:I

    iput-short p1, p0, Lcom/microsoft/bond/GUID;->Data2:S

    iput-short p1, p0, Lcom/microsoft/bond/GUID;->Data3:S

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/microsoft/bond/GUID;->Data4:J

    return-void
.end method

.method public final setData1(I)V
    .locals 0

    iput p1, p0, Lcom/microsoft/bond/GUID;->Data1:I

    return-void
.end method

.method public final setData2(S)V
    .locals 0

    iput-short p1, p0, Lcom/microsoft/bond/GUID;->Data2:S

    return-void
.end method

.method public final setData3(S)V
    .locals 0

    iput-short p1, p0, Lcom/microsoft/bond/GUID;->Data3:S

    return-void
.end method

.method public final setData4(J)V
    .locals 0

    iput-wide p1, p0, Lcom/microsoft/bond/GUID;->Data4:J

    return-void
.end method

.method public setField(Lcom/microsoft/bond/FieldDef;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p1}, Lcom/microsoft/bond/FieldDef;->getId()S

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/microsoft/bond/GUID;->Data4:J

    return-void

    :cond_1
    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p1

    iput-short p1, p0, Lcom/microsoft/bond/GUID;->Data3:S

    return-void

    :cond_2
    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p1

    iput-short p1, p0, Lcom/microsoft/bond/GUID;->Data2:S

    return-void

    :cond_3
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/microsoft/bond/GUID;->Data1:I

    return-void
.end method

.method public unmarshal(Ljava/io/InputStream;)V
    .locals 0

    invoke-static {p1, p0}, Lcom/microsoft/bond/internal/Marshaler;->unmarshal(Ljava/io/InputStream;Lcom/microsoft/bond/BondSerializable;)V

    return-void
.end method

.method public unmarshal(Ljava/io/InputStream;Lcom/microsoft/bond/BondSerializable;)V
    .locals 0

    check-cast p2, Lcom/microsoft/bond/SchemaDef;

    invoke-static {p1, p2, p0}, Lcom/microsoft/bond/internal/Marshaler;->unmarshal(Ljava/io/InputStream;Lcom/microsoft/bond/BondSerializable;Lcom/microsoft/bond/BondSerializable;)V

    return-void
.end method

.method public write(Lcom/microsoft/bond/ProtocolWriter;)V
    .locals 2

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeBegin()V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->getFirstPassWriter()Lcom/microsoft/bond/ProtocolWriter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/bond/GUID;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/bond/GUID;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeEnd()V

    return-void
.end method

.method public writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V
    .locals 7

    sget-object v0, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v0}, Lcom/microsoft/bond/ProtocolWriter;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    sget-object v1, Lcom/microsoft/bond/GUID$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {p1, v1, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructBegin(Lcom/microsoft/bond/BondSerializable;Z)V

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v2, p0, Lcom/microsoft/bond/GUID;->Data1:I

    int-to-long v2, v2

    invoke-static {}, Lcom/microsoft/bond/GUID$Schema;->access$000()Lcom/microsoft/bond/Metadata;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/bond/Variant;->getUint_value()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/microsoft/bond/BondDataType;->BT_UINT32:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/GUID$Schema;->access$000()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v2, v1, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v2, Lcom/microsoft/bond/BondDataType;->BT_UINT32:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/GUID$Schema;->access$000()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v2, v1, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget v1, p0, Lcom/microsoft/bond/GUID;->Data1:I

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeUInt32(I)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    :goto_1
    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-short v2, p0, Lcom/microsoft/bond/GUID;->Data2:S

    int-to-long v2, v2

    invoke-static {}, Lcom/microsoft/bond/GUID$Schema;->access$100()Lcom/microsoft/bond/Metadata;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/bond/Variant;->getUint_value()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    sget-object v2, Lcom/microsoft/bond/BondDataType;->BT_UINT16:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/GUID$Schema;->access$100()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v2, v1, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_3

    :cond_3
    :goto_2
    sget-object v2, Lcom/microsoft/bond/BondDataType;->BT_UINT16:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/GUID$Schema;->access$100()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v2, v1, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget-short v1, p0, Lcom/microsoft/bond/GUID;->Data2:S

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeUInt16(S)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    :goto_3
    const/4 v1, 0x2

    if-eqz v0, :cond_5

    iget-short v2, p0, Lcom/microsoft/bond/GUID;->Data3:S

    int-to-long v2, v2

    invoke-static {}, Lcom/microsoft/bond/GUID$Schema;->access$200()Lcom/microsoft/bond/Metadata;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/bond/Variant;->getUint_value()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-eqz v6, :cond_4

    goto :goto_4

    :cond_4
    sget-object v2, Lcom/microsoft/bond/BondDataType;->BT_UINT16:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/GUID$Schema;->access$200()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v2, v1, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_5

    :cond_5
    :goto_4
    sget-object v2, Lcom/microsoft/bond/BondDataType;->BT_UINT16:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/GUID$Schema;->access$200()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v2, v1, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget-short v1, p0, Lcom/microsoft/bond/GUID;->Data3:S

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeUInt16(S)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    :goto_5
    const/4 v1, 0x3

    if-eqz v0, :cond_7

    iget-wide v2, p0, Lcom/microsoft/bond/GUID;->Data4:J

    invoke-static {}, Lcom/microsoft/bond/GUID$Schema;->access$300()Lcom/microsoft/bond/Metadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/bond/Variant;->getUint_value()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_6

    goto :goto_6

    :cond_6
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_UINT64:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/GUID$Schema;->access$300()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_7

    :cond_7
    :goto_6
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_UINT64:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/GUID$Schema;->access$300()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget-wide v0, p0, Lcom/microsoft/bond/GUID;->Data4:J

    invoke-virtual {p1, v0, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeUInt64(J)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    :goto_7
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructEnd(Z)V

    return-void
.end method
