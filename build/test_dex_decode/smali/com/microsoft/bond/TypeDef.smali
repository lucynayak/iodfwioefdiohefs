.class public Lcom/microsoft/bond/TypeDef;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/bond/BondSerializable;
.implements Lcom/microsoft/bond/BondMirror;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/bond/TypeDef$Schema;
    }
.end annotation


# instance fields
.field private bonded_type:Z

.field private element:Lcom/microsoft/bond/TypeDef;

.field private id:Lcom/microsoft/bond/BondDataType;

.field private key:Lcom/microsoft/bond/TypeDef;

.field private struct_def:S


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/microsoft/bond/TypeDef;->reset()V

    return-void
.end method

.method public static getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;
    .locals 1

    sget-object v0, Lcom/microsoft/bond/TypeDef$Schema;->schemaDef:Lcom/microsoft/bond/SchemaDef;

    return-object v0
.end method

.method private readFieldImpl_element(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)V
    .locals 2

    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_LIST:Lcom/microsoft/bond/BondDataType;

    invoke-static {p2, v0}, Lcom/microsoft/bond/internal/ReadHelper;->validateType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readContainerBegin()Lcom/microsoft/bond/ProtocolReader$ListTag;

    move-result-object p2

    iget-object v0, p2, Lcom/microsoft/bond/ProtocolReader$ListTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    invoke-static {v0, v1}, Lcom/microsoft/bond/internal/ReadHelper;->validateType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    iget p2, p2, Lcom/microsoft/bond/ProtocolReader$ListTag;->size:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/microsoft/bond/TypeDef;->element:Lcom/microsoft/bond/TypeDef;

    if-nez p2, :cond_0

    new-instance p2, Lcom/microsoft/bond/TypeDef;

    invoke-direct {p2}, Lcom/microsoft/bond/TypeDef;-><init>()V

    iput-object p2, p0, Lcom/microsoft/bond/TypeDef;->element:Lcom/microsoft/bond/TypeDef;

    :cond_0
    iget-object p2, p0, Lcom/microsoft/bond/TypeDef;->element:Lcom/microsoft/bond/TypeDef;

    invoke-virtual {p2, p1}, Lcom/microsoft/bond/TypeDef;->readNested(Lcom/microsoft/bond/ProtocolReader;)V

    :cond_1
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readContainerEnd()V

    return-void
.end method

.method private readFieldImpl_key(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)V
    .locals 2

    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_LIST:Lcom/microsoft/bond/BondDataType;

    invoke-static {p2, v0}, Lcom/microsoft/bond/internal/ReadHelper;->validateType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readContainerBegin()Lcom/microsoft/bond/ProtocolReader$ListTag;

    move-result-object p2

    iget-object v0, p2, Lcom/microsoft/bond/ProtocolReader$ListTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    invoke-static {v0, v1}, Lcom/microsoft/bond/internal/ReadHelper;->validateType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    iget p2, p2, Lcom/microsoft/bond/ProtocolReader$ListTag;->size:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/microsoft/bond/TypeDef;->key:Lcom/microsoft/bond/TypeDef;

    if-nez p2, :cond_0

    new-instance p2, Lcom/microsoft/bond/TypeDef;

    invoke-direct {p2}, Lcom/microsoft/bond/TypeDef;-><init>()V

    iput-object p2, p0, Lcom/microsoft/bond/TypeDef;->key:Lcom/microsoft/bond/TypeDef;

    :cond_0
    iget-object p2, p0, Lcom/microsoft/bond/TypeDef;->key:Lcom/microsoft/bond/TypeDef;

    invoke-virtual {p2, p1}, Lcom/microsoft/bond/TypeDef;->readNested(Lcom/microsoft/bond/ProtocolReader;)V

    :cond_1
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readContainerEnd()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/microsoft/bond/BondSerializable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/bond/TypeDef;->clone()Lcom/microsoft/bond/BondSerializable;

    move-result-object v0

    return-object v0
.end method

.method public createInstance(Lcom/microsoft/bond/StructDef;)Lcom/microsoft/bond/BondMirror;
    .locals 1

    sget-object v0, Lcom/microsoft/bond/TypeDef$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {p1}, Lcom/microsoft/bond/StructDef;->getMetadata()Lcom/microsoft/bond/Metadata;

    move-result-object p1

    if-ne v0, p1, :cond_0

    new-instance p1, Lcom/microsoft/bond/TypeDef;

    invoke-direct {p1}, Lcom/microsoft/bond/TypeDef;-><init>()V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getBonded_type()Z
    .locals 1

    iget-boolean v0, p0, Lcom/microsoft/bond/TypeDef;->bonded_type:Z

    return v0
.end method

.method public final getElement()Lcom/microsoft/bond/TypeDef;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/bond/TypeDef;->element:Lcom/microsoft/bond/TypeDef;

    return-object v0
.end method

.method public getField(Lcom/microsoft/bond/FieldDef;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1}, Lcom/microsoft/bond/FieldDef;->getId()S

    move-result p1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-boolean p1, p0, Lcom/microsoft/bond/TypeDef;->bonded_type:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/microsoft/bond/TypeDef;->key:Lcom/microsoft/bond/TypeDef;

    return-object p1

    :cond_2
    iget-object p1, p0, Lcom/microsoft/bond/TypeDef;->element:Lcom/microsoft/bond/TypeDef;

    return-object p1

    :cond_3
    iget-short p1, p0, Lcom/microsoft/bond/TypeDef;->struct_def:S

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1

    :cond_4
    iget-object p1, p0, Lcom/microsoft/bond/TypeDef;->id:Lcom/microsoft/bond/BondDataType;

    return-object p1
.end method

.method public final getId()Lcom/microsoft/bond/BondDataType;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/bond/TypeDef;->id:Lcom/microsoft/bond/BondDataType;

    return-object v0
.end method

.method public final getKey()Lcom/microsoft/bond/TypeDef;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/bond/TypeDef;->key:Lcom/microsoft/bond/TypeDef;

    return-object v0
.end method

.method public getSchema()Lcom/microsoft/bond/SchemaDef;
    .locals 1

    invoke-static {}, Lcom/microsoft/bond/TypeDef;->getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;

    move-result-object v0

    return-object v0
.end method

.method public final getStruct_def()S
    .locals 1

    iget-short v0, p0, Lcom/microsoft/bond/TypeDef;->struct_def:S

    return v0
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
    check-cast p1, Lcom/microsoft/bond/TypeDef;

    invoke-virtual {p0, p1}, Lcom/microsoft/bond/TypeDef;->memberwiseCompareQuick(Lcom/microsoft/bond/TypeDef;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/microsoft/bond/TypeDef;->memberwiseCompareDeep(Lcom/microsoft/bond/TypeDef;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public memberwiseCompareDeep(Lcom/microsoft/bond/TypeDef;)Z
    .locals 6

    iget-object v0, p0, Lcom/microsoft/bond/TypeDef;->element:Lcom/microsoft/bond/TypeDef;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    if-nez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v4, p1, Lcom/microsoft/bond/TypeDef;->element:Lcom/microsoft/bond/TypeDef;

    if-nez v4, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-ne v3, v5, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_4

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0, v4}, Lcom/microsoft/bond/TypeDef;->memberwiseCompare(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    const/4 v0, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v0, 0x1

    :goto_4
    if-eqz v0, :cond_b

    iget-object v3, p0, Lcom/microsoft/bond/TypeDef;->key:Lcom/microsoft/bond/TypeDef;

    if-eqz v3, :cond_b

    if-eqz v0, :cond_8

    if-nez v3, :cond_6

    const/4 v0, 0x1

    goto :goto_5

    :cond_6
    const/4 v0, 0x0

    :goto_5
    iget-object v4, p1, Lcom/microsoft/bond/TypeDef;->key:Lcom/microsoft/bond/TypeDef;

    if-nez v4, :cond_7

    const/4 v4, 0x1

    goto :goto_6

    :cond_7
    const/4 v4, 0x0

    :goto_6
    if-ne v0, v4, :cond_8

    const/4 v0, 0x1

    goto :goto_7

    :cond_8
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_a

    if-nez v3, :cond_9

    goto :goto_8

    :cond_9
    iget-object p1, p1, Lcom/microsoft/bond/TypeDef;->key:Lcom/microsoft/bond/TypeDef;

    invoke-virtual {v3, p1}, Lcom/microsoft/bond/TypeDef;->memberwiseCompare(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    :cond_a
    return v1

    :cond_b
    move v2, v0

    :cond_c
    :goto_8
    return v2
.end method

.method public memberwiseCompareQuick(Lcom/microsoft/bond/TypeDef;)Z
    .locals 4

    iget-object v0, p0, Lcom/microsoft/bond/TypeDef;->id:Lcom/microsoft/bond/BondDataType;

    iget-object v1, p1, Lcom/microsoft/bond/TypeDef;->id:Lcom/microsoft/bond/BondDataType;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-short v0, p0, Lcom/microsoft/bond/TypeDef;->struct_def:S

    iget-short v1, p1, Lcom/microsoft/bond/TypeDef;->struct_def:S

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/microsoft/bond/TypeDef;->element:Lcom/microsoft/bond/TypeDef;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p1, Lcom/microsoft/bond/TypeDef;->element:Lcom/microsoft/bond/TypeDef;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/microsoft/bond/TypeDef;->key:Lcom/microsoft/bond/TypeDef;

    if-nez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_5
    iget-object v1, p1, Lcom/microsoft/bond/TypeDef;->key:Lcom/microsoft/bond/TypeDef;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_7

    :cond_7
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/microsoft/bond/TypeDef;->bonded_type:Z

    iget-boolean p1, p1, Lcom/microsoft/bond/TypeDef;->bonded_type:Z

    if-ne v0, p1, :cond_8

    return v2

    :cond_8
    return v3
.end method

.method public read(Lcom/microsoft/bond/ProtocolReader;)V
    .locals 0

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readBegin()V

    invoke-virtual {p0, p1}, Lcom/microsoft/bond/TypeDef;->readNested(Lcom/microsoft/bond/ProtocolReader;)V

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

    invoke-virtual {p0, p1, v1}, Lcom/microsoft/bond/TypeDef;->readUntagged(Lcom/microsoft/bond/ProtocolReader;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/bond/TypeDef;->readTagged(Lcom/microsoft/bond/ProtocolReader;Z)Z

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

    if-eq v0, v1, :cond_6

    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-ne v0, v1, :cond_0

    goto :goto_2

    :cond_0
    iget p2, p2, Lcom/microsoft/bond/ProtocolReader$FieldTag;->id:I

    if-eqz p2, :cond_5

    if-eq p2, v2, :cond_4

    const/4 v1, 0x2

    if-eq p2, v1, :cond_3

    const/4 v1, 0x3

    if-eq p2, v1, :cond_2

    const/4 v1, 0x4

    if-eq p2, v1, :cond_1

    invoke-virtual {p1, v0}, Lcom/microsoft/bond/ProtocolReader;->skip(Lcom/microsoft/bond/BondDataType;)V

    goto :goto_1

    :cond_1
    invoke-static {p1, v0}, Lcom/microsoft/bond/internal/ReadHelper;->readBool(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/microsoft/bond/TypeDef;->bonded_type:Z

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/microsoft/bond/TypeDef;->readFieldImpl_key(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/microsoft/bond/TypeDef;->readFieldImpl_element(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)V

    goto :goto_1

    :cond_4
    invoke-static {p1, v0}, Lcom/microsoft/bond/internal/ReadHelper;->readUInt16(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)S

    move-result p2

    iput-short p2, p0, Lcom/microsoft/bond/TypeDef;->struct_def:S

    goto :goto_1

    :cond_5
    invoke-static {p1, v0}, Lcom/microsoft/bond/internal/ReadHelper;->readInt32(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)I

    move-result p2

    invoke-static {p2}, Lcom/microsoft/bond/BondDataType;->fromValue(I)Lcom/microsoft/bond/BondDataType;

    move-result-object p2

    iput-object p2, p0, Lcom/microsoft/bond/TypeDef;->id:Lcom/microsoft/bond/BondDataType;

    :goto_1
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldEnd()V

    goto :goto_0

    :cond_6
    :goto_2
    sget-object p2, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-ne v0, p2, :cond_7

    goto :goto_3

    :cond_7
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
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readInt32()I

    move-result p2

    invoke-static {p2}, Lcom/microsoft/bond/BondDataType;->fromValue(I)Lcom/microsoft/bond/BondDataType;

    move-result-object p2

    iput-object p2, p0, Lcom/microsoft/bond/TypeDef;->id:Lcom/microsoft/bond/BondDataType;

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_3

    :cond_2
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readUInt16()S

    move-result p2

    iput-short p2, p0, Lcom/microsoft/bond/TypeDef;->struct_def:S

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_5

    :cond_4
    sget-object p2, Lcom/microsoft/bond/BondDataType;->BT_LIST:Lcom/microsoft/bond/BondDataType;

    invoke-direct {p0, p1, p2}, Lcom/microsoft/bond/TypeDef;->readFieldImpl_element(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)V

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_7

    :cond_6
    sget-object p2, Lcom/microsoft/bond/BondDataType;->BT_LIST:Lcom/microsoft/bond/BondDataType;

    invoke-direct {p0, p1, p2}, Lcom/microsoft/bond/TypeDef;->readFieldImpl_key(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)V

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_9

    :cond_8
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readBool()Z

    move-result p2

    iput-boolean p2, p0, Lcom/microsoft/bond/TypeDef;->bonded_type:Z

    :cond_9
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readStructEnd()V

    return-void
.end method

.method public reset()V
    .locals 2

    const-string v0, "TypeDef"

    const-string v1, "com.microsoft.bond.TypeDef"

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/bond/TypeDef;->reset(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reset(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    sget-object p1, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    iput-object p1, p0, Lcom/microsoft/bond/TypeDef;->id:Lcom/microsoft/bond/BondDataType;

    const/4 p1, 0x0

    iput-short p1, p0, Lcom/microsoft/bond/TypeDef;->struct_def:S

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/microsoft/bond/TypeDef;->element:Lcom/microsoft/bond/TypeDef;

    iput-object p2, p0, Lcom/microsoft/bond/TypeDef;->key:Lcom/microsoft/bond/TypeDef;

    iput-boolean p1, p0, Lcom/microsoft/bond/TypeDef;->bonded_type:Z

    return-void
.end method

.method public final setBonded_type(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/microsoft/bond/TypeDef;->bonded_type:Z

    return-void
.end method

.method public final setElement(Lcom/microsoft/bond/TypeDef;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/bond/TypeDef;->element:Lcom/microsoft/bond/TypeDef;

    return-void
.end method

.method public setField(Lcom/microsoft/bond/FieldDef;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p1}, Lcom/microsoft/bond/FieldDef;->getId()S

    move-result p1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/microsoft/bond/TypeDef;->bonded_type:Z

    return-void

    :cond_1
    check-cast p2, Lcom/microsoft/bond/TypeDef;

    iput-object p2, p0, Lcom/microsoft/bond/TypeDef;->key:Lcom/microsoft/bond/TypeDef;

    return-void

    :cond_2
    check-cast p2, Lcom/microsoft/bond/TypeDef;

    iput-object p2, p0, Lcom/microsoft/bond/TypeDef;->element:Lcom/microsoft/bond/TypeDef;

    return-void

    :cond_3
    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p1

    iput-short p1, p0, Lcom/microsoft/bond/TypeDef;->struct_def:S

    return-void

    :cond_4
    check-cast p2, Lcom/microsoft/bond/BondDataType;

    iput-object p2, p0, Lcom/microsoft/bond/TypeDef;->id:Lcom/microsoft/bond/BondDataType;

    return-void
.end method

.method public final setId(Lcom/microsoft/bond/BondDataType;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/bond/TypeDef;->id:Lcom/microsoft/bond/BondDataType;

    return-void
.end method

.method public final setKey(Lcom/microsoft/bond/TypeDef;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/bond/TypeDef;->key:Lcom/microsoft/bond/TypeDef;

    return-void
.end method

.method public final setStruct_def(S)V
    .locals 0

    iput-short p1, p0, Lcom/microsoft/bond/TypeDef;->struct_def:S

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

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/bond/TypeDef;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/bond/TypeDef;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeEnd()V

    return-void
.end method

.method public writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V
    .locals 9

    sget-object v0, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v0}, Lcom/microsoft/bond/ProtocolWriter;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    sget-object v1, Lcom/microsoft/bond/TypeDef$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {p1, v1, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructBegin(Lcom/microsoft/bond/BondSerializable;Z)V

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/microsoft/bond/TypeDef;->id:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {v2}, Lcom/microsoft/bond/BondDataType;->getValue()I

    move-result v2

    int-to-long v2, v2

    invoke-static {}, Lcom/microsoft/bond/TypeDef$Schema;->access$000()Lcom/microsoft/bond/Metadata;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/bond/Variant;->getInt_value()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/microsoft/bond/BondDataType;->BT_INT32:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/TypeDef$Schema;->access$000()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v2, v1, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v2, Lcom/microsoft/bond/BondDataType;->BT_INT32:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/TypeDef$Schema;->access$000()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v2, v1, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget-object v2, p0, Lcom/microsoft/bond/TypeDef;->id:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {v2}, Lcom/microsoft/bond/BondDataType;->getValue()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeInt32(I)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    :goto_1
    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-short v3, p0, Lcom/microsoft/bond/TypeDef;->struct_def:S

    int-to-long v3, v3

    invoke-static {}, Lcom/microsoft/bond/TypeDef$Schema;->access$100()Lcom/microsoft/bond/Metadata;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/bond/Variant;->getUint_value()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_UINT16:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/TypeDef$Schema;->access$100()Lcom/microsoft/bond/Metadata;

    move-result-object v4

    invoke-virtual {p1, v3, v2, v4}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_3

    :cond_3
    :goto_2
    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_UINT16:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/TypeDef$Schema;->access$100()Lcom/microsoft/bond/Metadata;

    move-result-object v4

    invoke-virtual {p1, v3, v2, v4}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget-short v3, p0, Lcom/microsoft/bond/TypeDef;->struct_def:S

    invoke-virtual {p1, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeUInt16(S)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    :goto_3
    iget-object v3, p0, Lcom/microsoft/bond/TypeDef;->element:Lcom/microsoft/bond/TypeDef;

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    :goto_4
    const/4 v4, 0x2

    if-eqz v0, :cond_6

    if-eqz v3, :cond_5

    goto :goto_5

    :cond_5
    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_LIST:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/TypeDef$Schema;->access$200()Lcom/microsoft/bond/Metadata;

    move-result-object v5

    invoke-virtual {p1, v3, v4, v5}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_6

    :cond_6
    :goto_5
    sget-object v5, Lcom/microsoft/bond/BondDataType;->BT_LIST:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/TypeDef$Schema;->access$200()Lcom/microsoft/bond/Metadata;

    move-result-object v6

    invoke-virtual {p1, v5, v4, v6}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {p1, v3, v4}, Lcom/microsoft/bond/ProtocolWriter;->writeContainerBegin(ILcom/microsoft/bond/BondDataType;)V

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/microsoft/bond/TypeDef;->element:Lcom/microsoft/bond/TypeDef;

    invoke-virtual {v3, p1, v1}, Lcom/microsoft/bond/TypeDef;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    :cond_7
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeContainerEnd()V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    :goto_6
    iget-object v3, p0, Lcom/microsoft/bond/TypeDef;->key:Lcom/microsoft/bond/TypeDef;

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    goto :goto_7

    :cond_8
    const/4 v3, 0x0

    :goto_7
    const/4 v4, 0x3

    if-eqz v0, :cond_a

    if-eqz v3, :cond_9

    goto :goto_8

    :cond_9
    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_LIST:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/TypeDef$Schema;->access$300()Lcom/microsoft/bond/Metadata;

    move-result-object v5

    invoke-virtual {p1, v3, v4, v5}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_9

    :cond_a
    :goto_8
    sget-object v5, Lcom/microsoft/bond/BondDataType;->BT_LIST:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/TypeDef$Schema;->access$300()Lcom/microsoft/bond/Metadata;

    move-result-object v6

    invoke-virtual {p1, v5, v4, v6}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {p1, v3, v4}, Lcom/microsoft/bond/ProtocolWriter;->writeContainerBegin(ILcom/microsoft/bond/BondDataType;)V

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/microsoft/bond/TypeDef;->key:Lcom/microsoft/bond/TypeDef;

    invoke-virtual {v3, p1, v1}, Lcom/microsoft/bond/TypeDef;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    :cond_b
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeContainerEnd()V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    :goto_9
    const/4 v3, 0x4

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/microsoft/bond/TypeDef;->bonded_type:Z

    invoke-static {}, Lcom/microsoft/bond/TypeDef$Schema;->access$400()Lcom/microsoft/bond/Metadata;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/bond/Variant;->getUint_value()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_c

    const/4 v1, 0x1

    :cond_c
    if-eq v0, v1, :cond_d

    goto :goto_a

    :cond_d
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_BOOL:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/TypeDef$Schema;->access$400()Lcom/microsoft/bond/Metadata;

    move-result-object v1

    invoke-virtual {p1, v0, v3, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_b

    :cond_e
    :goto_a
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_BOOL:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/TypeDef$Schema;->access$400()Lcom/microsoft/bond/Metadata;

    move-result-object v1

    invoke-virtual {p1, v0, v3, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget-boolean v0, p0, Lcom/microsoft/bond/TypeDef;->bonded_type:Z

    invoke-virtual {p1, v0}, Lcom/microsoft/bond/ProtocolWriter;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    :goto_b
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructEnd(Z)V

    return-void
.end method
