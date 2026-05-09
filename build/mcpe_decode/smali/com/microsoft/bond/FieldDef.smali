.class public Lcom/microsoft/bond/FieldDef;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/bond/BondSerializable;
.implements Lcom/microsoft/bond/BondMirror;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/bond/FieldDef$Schema;
    }
.end annotation


# instance fields
.field private id:S

.field private metadata:Lcom/microsoft/bond/Metadata;

.field private type:Lcom/microsoft/bond/TypeDef;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/microsoft/bond/FieldDef;->reset()V

    return-void
.end method

.method public static getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;
    .locals 1

    sget-object v0, Lcom/microsoft/bond/FieldDef$Schema;->schemaDef:Lcom/microsoft/bond/SchemaDef;

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

    invoke-virtual {p0}, Lcom/microsoft/bond/FieldDef;->clone()Lcom/microsoft/bond/BondSerializable;

    move-result-object v0

    return-object v0
.end method

.method public createInstance(Lcom/microsoft/bond/StructDef;)Lcom/microsoft/bond/BondMirror;
    .locals 2

    sget-object v0, Lcom/microsoft/bond/Metadata$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {p1}, Lcom/microsoft/bond/StructDef;->getMetadata()Lcom/microsoft/bond/Metadata;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance p1, Lcom/microsoft/bond/Metadata;

    invoke-direct {p1}, Lcom/microsoft/bond/Metadata;-><init>()V

    return-object p1

    :cond_0
    sget-object v0, Lcom/microsoft/bond/TypeDef$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {p1}, Lcom/microsoft/bond/StructDef;->getMetadata()Lcom/microsoft/bond/Metadata;

    move-result-object p1

    if-ne v0, p1, :cond_1

    new-instance p1, Lcom/microsoft/bond/TypeDef;

    invoke-direct {p1}, Lcom/microsoft/bond/TypeDef;-><init>()V

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getField(Lcom/microsoft/bond/FieldDef;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1}, Lcom/microsoft/bond/FieldDef;->getId()S

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/microsoft/bond/FieldDef;->type:Lcom/microsoft/bond/TypeDef;

    return-object p1

    :cond_1
    iget-short p1, p0, Lcom/microsoft/bond/FieldDef;->id:S

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object p1, p0, Lcom/microsoft/bond/FieldDef;->metadata:Lcom/microsoft/bond/Metadata;

    return-object p1
.end method

.method public final getId()S
    .locals 1

    iget-short v0, p0, Lcom/microsoft/bond/FieldDef;->id:S

    return v0
.end method

.method public final getMetadata()Lcom/microsoft/bond/Metadata;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/bond/FieldDef;->metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method public getSchema()Lcom/microsoft/bond/SchemaDef;
    .locals 1

    invoke-static {}, Lcom/microsoft/bond/FieldDef;->getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;

    move-result-object v0

    return-object v0
.end method

.method public final getType()Lcom/microsoft/bond/TypeDef;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/bond/FieldDef;->type:Lcom/microsoft/bond/TypeDef;

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
    check-cast p1, Lcom/microsoft/bond/FieldDef;

    invoke-virtual {p0, p1}, Lcom/microsoft/bond/FieldDef;->memberwiseCompareQuick(Lcom/microsoft/bond/FieldDef;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/microsoft/bond/FieldDef;->memberwiseCompareDeep(Lcom/microsoft/bond/FieldDef;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public memberwiseCompareDeep(Lcom/microsoft/bond/FieldDef;)Z
    .locals 4

    iget-object v0, p0, Lcom/microsoft/bond/FieldDef;->metadata:Lcom/microsoft/bond/Metadata;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p1, Lcom/microsoft/bond/FieldDef;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/Metadata;->memberwiseCompare(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/microsoft/bond/FieldDef;->type:Lcom/microsoft/bond/TypeDef;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object p1, p1, Lcom/microsoft/bond/FieldDef;->type:Lcom/microsoft/bond/TypeDef;

    invoke-virtual {v0, p1}, Lcom/microsoft/bond/TypeDef;->memberwiseCompare(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    :goto_2
    return v1

    :cond_4
    :goto_3
    return v2
.end method

.method public memberwiseCompareQuick(Lcom/microsoft/bond/FieldDef;)Z
    .locals 1

    iget-short v0, p0, Lcom/microsoft/bond/FieldDef;->id:S

    iget-short p1, p1, Lcom/microsoft/bond/FieldDef;->id:S

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public read(Lcom/microsoft/bond/ProtocolReader;)V
    .locals 0

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readBegin()V

    invoke-virtual {p0, p1}, Lcom/microsoft/bond/FieldDef;->readNested(Lcom/microsoft/bond/ProtocolReader;)V

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

    invoke-virtual {p0, p1, v1}, Lcom/microsoft/bond/FieldDef;->readUntagged(Lcom/microsoft/bond/ProtocolReader;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/bond/FieldDef;->readTagged(Lcom/microsoft/bond/ProtocolReader;Z)Z

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

    if-eq v0, v1, :cond_4

    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-ne v0, v1, :cond_0

    goto :goto_2

    :cond_0
    iget p2, p2, Lcom/microsoft/bond/ProtocolReader$FieldTag;->id:I

    if-eqz p2, :cond_3

    if-eq p2, v2, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    invoke-virtual {p1, v0}, Lcom/microsoft/bond/ProtocolReader;->skip(Lcom/microsoft/bond/BondDataType;)V

    goto :goto_1

    :cond_1
    sget-object p2, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    invoke-static {v0, p2}, Lcom/microsoft/bond/internal/ReadHelper;->validateType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    iget-object p2, p0, Lcom/microsoft/bond/FieldDef;->type:Lcom/microsoft/bond/TypeDef;

    invoke-virtual {p2, p1}, Lcom/microsoft/bond/TypeDef;->readNested(Lcom/microsoft/bond/ProtocolReader;)V

    goto :goto_1

    :cond_2
    invoke-static {p1, v0}, Lcom/microsoft/bond/internal/ReadHelper;->readUInt16(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)S

    move-result p2

    iput-short p2, p0, Lcom/microsoft/bond/FieldDef;->id:S

    goto :goto_1

    :cond_3
    sget-object p2, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    invoke-static {v0, p2}, Lcom/microsoft/bond/internal/ReadHelper;->validateType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    iget-object p2, p0, Lcom/microsoft/bond/FieldDef;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {p2, p1}, Lcom/microsoft/bond/Metadata;->readNested(Lcom/microsoft/bond/ProtocolReader;)V

    :goto_1
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldEnd()V

    goto :goto_0

    :cond_4
    :goto_2
    sget-object p2, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-ne v0, p2, :cond_5

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readStructEnd()V

    return v2
.end method

.method public readUntagged(Lcom/microsoft/bond/ProtocolReader;Z)V
    .locals 1

    sget-object v0, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v0}, Lcom/microsoft/bond/ProtocolReader;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolReader;->readStructBegin(Z)V

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    iget-object p2, p0, Lcom/microsoft/bond/FieldDef;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {p2, p1}, Lcom/microsoft/bond/Metadata;->read(Lcom/microsoft/bond/ProtocolReader;)V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_3

    :cond_2
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readUInt16()S

    move-result p2

    iput-short p2, p0, Lcom/microsoft/bond/FieldDef;->id:S

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_5

    :cond_4
    iget-object p2, p0, Lcom/microsoft/bond/FieldDef;->type:Lcom/microsoft/bond/TypeDef;

    invoke-virtual {p2, p1}, Lcom/microsoft/bond/TypeDef;->read(Lcom/microsoft/bond/ProtocolReader;)V

    :cond_5
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readStructEnd()V

    return-void
.end method

.method public reset()V
    .locals 2

    const-string v0, "FieldDef"

    const-string v1, "com.microsoft.bond.FieldDef"

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/bond/FieldDef;->reset(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reset(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    new-instance p1, Lcom/microsoft/bond/Metadata;

    invoke-direct {p1}, Lcom/microsoft/bond/Metadata;-><init>()V

    iput-object p1, p0, Lcom/microsoft/bond/FieldDef;->metadata:Lcom/microsoft/bond/Metadata;

    const/4 p1, 0x0

    iput-short p1, p0, Lcom/microsoft/bond/FieldDef;->id:S

    new-instance p1, Lcom/microsoft/bond/TypeDef;

    invoke-direct {p1}, Lcom/microsoft/bond/TypeDef;-><init>()V

    iput-object p1, p0, Lcom/microsoft/bond/FieldDef;->type:Lcom/microsoft/bond/TypeDef;

    return-void
.end method

.method public setField(Lcom/microsoft/bond/FieldDef;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p1}, Lcom/microsoft/bond/FieldDef;->getId()S

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    check-cast p2, Lcom/microsoft/bond/TypeDef;

    iput-object p2, p0, Lcom/microsoft/bond/FieldDef;->type:Lcom/microsoft/bond/TypeDef;

    return-void

    :cond_1
    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p1

    iput-short p1, p0, Lcom/microsoft/bond/FieldDef;->id:S

    return-void

    :cond_2
    check-cast p2, Lcom/microsoft/bond/Metadata;

    iput-object p2, p0, Lcom/microsoft/bond/FieldDef;->metadata:Lcom/microsoft/bond/Metadata;

    return-void
.end method

.method public final setId(S)V
    .locals 0

    iput-short p1, p0, Lcom/microsoft/bond/FieldDef;->id:S

    return-void
.end method

.method public final setMetadata(Lcom/microsoft/bond/Metadata;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/bond/FieldDef;->metadata:Lcom/microsoft/bond/Metadata;

    return-void
.end method

.method public final setType(Lcom/microsoft/bond/TypeDef;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/bond/FieldDef;->type:Lcom/microsoft/bond/TypeDef;

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

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/bond/FieldDef;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/bond/FieldDef;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeEnd()V

    return-void
.end method

.method public writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V
    .locals 8

    sget-object v0, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v0}, Lcom/microsoft/bond/ProtocolWriter;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    sget-object v1, Lcom/microsoft/bond/FieldDef$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {p1, v1, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructBegin(Lcom/microsoft/bond/BondSerializable;Z)V

    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/FieldDef$Schema;->access$000()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget-object v2, p0, Lcom/microsoft/bond/FieldDef;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v2, p1, v3}, Lcom/microsoft/bond/Metadata;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-short v0, p0, Lcom/microsoft/bond/FieldDef;->id:S

    int-to-long v4, v0

    invoke-static {}, Lcom/microsoft/bond/FieldDef$Schema;->access$100()Lcom/microsoft/bond/Metadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/bond/Variant;->getUint_value()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_UINT16:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/FieldDef$Schema;->access$100()Lcom/microsoft/bond/Metadata;

    move-result-object v4

    invoke-virtual {p1, v0, v2, v4}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_UINT16:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/FieldDef$Schema;->access$100()Lcom/microsoft/bond/Metadata;

    move-result-object v4

    invoke-virtual {p1, v0, v2, v4}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget-short v0, p0, Lcom/microsoft/bond/FieldDef;->id:S

    invoke-virtual {p1, v0}, Lcom/microsoft/bond/ProtocolWriter;->writeUInt16(S)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    :goto_1
    const/4 v0, 0x2

    invoke-static {}, Lcom/microsoft/bond/FieldDef$Schema;->access$200()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v0, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget-object v0, p0, Lcom/microsoft/bond/FieldDef;->type:Lcom/microsoft/bond/TypeDef;

    invoke-virtual {v0, p1, v3}, Lcom/microsoft/bond/TypeDef;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructEnd(Z)V

    return-void
.end method
