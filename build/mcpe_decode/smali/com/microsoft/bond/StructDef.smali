.class public Lcom/microsoft/bond/StructDef;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/bond/BondSerializable;
.implements Lcom/microsoft/bond/BondMirror;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/bond/StructDef$Schema;
    }
.end annotation


# instance fields
.field private base_def:Lcom/microsoft/bond/TypeDef;

.field private fields:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/bond/FieldDef;",
            ">;"
        }
    .end annotation
.end field

.field private metadata:Lcom/microsoft/bond/Metadata;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/microsoft/bond/StructDef;->reset()V

    return-void
.end method

.method public static getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;
    .locals 1

    sget-object v0, Lcom/microsoft/bond/StructDef$Schema;->schemaDef:Lcom/microsoft/bond/SchemaDef;

    return-object v0
.end method

.method private readFieldImpl_base_def(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)V
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

    iget-object p2, p0, Lcom/microsoft/bond/StructDef;->base_def:Lcom/microsoft/bond/TypeDef;

    if-nez p2, :cond_0

    new-instance p2, Lcom/microsoft/bond/TypeDef;

    invoke-direct {p2}, Lcom/microsoft/bond/TypeDef;-><init>()V

    iput-object p2, p0, Lcom/microsoft/bond/StructDef;->base_def:Lcom/microsoft/bond/TypeDef;

    :cond_0
    iget-object p2, p0, Lcom/microsoft/bond/StructDef;->base_def:Lcom/microsoft/bond/TypeDef;

    invoke-virtual {p2, p1}, Lcom/microsoft/bond/TypeDef;->readNested(Lcom/microsoft/bond/ProtocolReader;)V

    :cond_1
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readContainerEnd()V

    return-void
.end method

.method private readFieldImpl_fields(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)V
    .locals 3

    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_LIST:Lcom/microsoft/bond/BondDataType;

    invoke-static {p2, v0}, Lcom/microsoft/bond/internal/ReadHelper;->validateType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readContainerBegin()Lcom/microsoft/bond/ProtocolReader$ListTag;

    move-result-object p2

    iget-object v0, p2, Lcom/microsoft/bond/ProtocolReader$ListTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    invoke-static {v0, v1}, Lcom/microsoft/bond/internal/ReadHelper;->validateType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    iget-object v0, p0, Lcom/microsoft/bond/StructDef;->fields:Ljava/util/ArrayList;

    iget v1, p2, Lcom/microsoft/bond/ProtocolReader$ListTag;->size:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p2, Lcom/microsoft/bond/ProtocolReader$ListTag;->size:I

    if-ge v0, v1, :cond_0

    new-instance v1, Lcom/microsoft/bond/FieldDef;

    invoke-direct {v1}, Lcom/microsoft/bond/FieldDef;-><init>()V

    invoke-virtual {v1, p1}, Lcom/microsoft/bond/FieldDef;->readNested(Lcom/microsoft/bond/ProtocolReader;)V

    iget-object v2, p0, Lcom/microsoft/bond/StructDef;->fields:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
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

    invoke-virtual {p0}, Lcom/microsoft/bond/StructDef;->clone()Lcom/microsoft/bond/BondSerializable;

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

    move-result-object v1

    if-ne v0, v1, :cond_1

    new-instance p1, Lcom/microsoft/bond/TypeDef;

    invoke-direct {p1}, Lcom/microsoft/bond/TypeDef;-><init>()V

    return-object p1

    :cond_1
    sget-object v0, Lcom/microsoft/bond/FieldDef$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {p1}, Lcom/microsoft/bond/StructDef;->getMetadata()Lcom/microsoft/bond/Metadata;

    move-result-object p1

    if-ne v0, p1, :cond_2

    new-instance p1, Lcom/microsoft/bond/FieldDef;

    invoke-direct {p1}, Lcom/microsoft/bond/FieldDef;-><init>()V

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getBase_def()Lcom/microsoft/bond/TypeDef;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/bond/StructDef;->base_def:Lcom/microsoft/bond/TypeDef;

    return-object v0
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
    iget-object p1, p0, Lcom/microsoft/bond/StructDef;->fields:Ljava/util/ArrayList;

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/microsoft/bond/StructDef;->base_def:Lcom/microsoft/bond/TypeDef;

    return-object p1

    :cond_2
    iget-object p1, p0, Lcom/microsoft/bond/StructDef;->metadata:Lcom/microsoft/bond/Metadata;

    return-object p1
.end method

.method public final getFields()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/bond/FieldDef;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/bond/StructDef;->fields:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getMetadata()Lcom/microsoft/bond/Metadata;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/bond/StructDef;->metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method public getSchema()Lcom/microsoft/bond/SchemaDef;
    .locals 1

    invoke-static {}, Lcom/microsoft/bond/StructDef;->getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;

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
    check-cast p1, Lcom/microsoft/bond/StructDef;

    invoke-virtual {p0, p1}, Lcom/microsoft/bond/StructDef;->memberwiseCompareQuick(Lcom/microsoft/bond/StructDef;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/microsoft/bond/StructDef;->memberwiseCompareDeep(Lcom/microsoft/bond/StructDef;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public memberwiseCompareDeep(Lcom/microsoft/bond/StructDef;)Z
    .locals 7

    iget-object v0, p0, Lcom/microsoft/bond/StructDef;->metadata:Lcom/microsoft/bond/Metadata;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p1, Lcom/microsoft/bond/StructDef;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/Metadata;->memberwiseCompare(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/microsoft/bond/StructDef;->base_def:Lcom/microsoft/bond/TypeDef;

    if-eqz v3, :cond_8

    if-eqz v0, :cond_4

    if-nez v3, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iget-object v4, p1, Lcom/microsoft/bond/StructDef;->base_def:Lcom/microsoft/bond/TypeDef;

    if-nez v4, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    if-ne v0, v4, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_7

    if-nez v3, :cond_5

    goto :goto_5

    :cond_5
    iget-object v0, p1, Lcom/microsoft/bond/StructDef;->base_def:Lcom/microsoft/bond/TypeDef;

    invoke-virtual {v3, v0}, Lcom/microsoft/bond/TypeDef;->memberwiseCompare(Ljava/lang/Object;)Z

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

    :cond_8
    :goto_7
    if-eqz v0, :cond_10

    iget-object v3, p0, Lcom/microsoft/bond/StructDef;->fields:Ljava/util/ArrayList;

    if-eqz v3, :cond_10

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_10

    const/4 v3, 0x0

    :goto_8
    iget-object v4, p0, Lcom/microsoft/bond/StructDef;->fields:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_10

    iget-object v4, p0, Lcom/microsoft/bond/StructDef;->fields:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/microsoft/bond/FieldDef;

    iget-object v5, p1, Lcom/microsoft/bond/StructDef;->fields:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/microsoft/bond/FieldDef;

    if-eqz v0, :cond_b

    if-nez v4, :cond_9

    const/4 v0, 0x1

    goto :goto_9

    :cond_9
    const/4 v0, 0x0

    :goto_9
    if-nez v5, :cond_a

    const/4 v6, 0x1

    goto :goto_a

    :cond_a
    const/4 v6, 0x0

    :goto_a
    if-ne v0, v6, :cond_b

    const/4 v0, 0x1

    goto :goto_b

    :cond_b
    const/4 v0, 0x0

    :goto_b
    if-eqz v0, :cond_e

    if-nez v4, :cond_c

    goto :goto_c

    :cond_c
    invoke-virtual {v4, v5}, Lcom/microsoft/bond/FieldDef;->memberwiseCompare(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_d

    :cond_d
    :goto_c
    const/4 v0, 0x1

    goto :goto_e

    :cond_e
    :goto_d
    const/4 v0, 0x0

    :goto_e
    if-nez v0, :cond_f

    goto :goto_f

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_10
    :goto_f
    return v0
.end method

.method public memberwiseCompareQuick(Lcom/microsoft/bond/StructDef;)Z
    .locals 4

    iget-object v0, p0, Lcom/microsoft/bond/StructDef;->base_def:Lcom/microsoft/bond/TypeDef;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p1, Lcom/microsoft/bond/StructDef;->base_def:Lcom/microsoft/bond/TypeDef;

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-ne v0, v3, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/microsoft/bond/StructDef;->fields:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    iget-object v3, p1, Lcom/microsoft/bond/StructDef;->fields:Ljava/util/ArrayList;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    :goto_4
    if-ne v0, v3, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/microsoft/bond/StructDef;->fields:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object p1, p1, Lcom/microsoft/bond/StructDef;->fields:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eq v0, p1, :cond_7

    goto :goto_7

    :cond_7
    :goto_6
    return v1

    :cond_8
    :goto_7
    return v2
.end method

.method public read(Lcom/microsoft/bond/ProtocolReader;)V
    .locals 0

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readBegin()V

    invoke-virtual {p0, p1}, Lcom/microsoft/bond/StructDef;->readNested(Lcom/microsoft/bond/ProtocolReader;)V

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

    invoke-virtual {p0, p1, v1}, Lcom/microsoft/bond/StructDef;->readUntagged(Lcom/microsoft/bond/ProtocolReader;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/bond/StructDef;->readTagged(Lcom/microsoft/bond/ProtocolReader;Z)Z

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
    invoke-direct {p0, p1, v0}, Lcom/microsoft/bond/StructDef;->readFieldImpl_fields(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/microsoft/bond/StructDef;->readFieldImpl_base_def(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)V

    goto :goto_1

    :cond_3
    sget-object p2, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    invoke-static {v0, p2}, Lcom/microsoft/bond/internal/ReadHelper;->validateType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    iget-object p2, p0, Lcom/microsoft/bond/StructDef;->metadata:Lcom/microsoft/bond/Metadata;

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
    iget-object p2, p0, Lcom/microsoft/bond/StructDef;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {p2, p1}, Lcom/microsoft/bond/Metadata;->read(Lcom/microsoft/bond/ProtocolReader;)V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_3

    :cond_2
    sget-object p2, Lcom/microsoft/bond/BondDataType;->BT_LIST:Lcom/microsoft/bond/BondDataType;

    invoke-direct {p0, p1, p2}, Lcom/microsoft/bond/StructDef;->readFieldImpl_base_def(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)V

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_5

    :cond_4
    sget-object p2, Lcom/microsoft/bond/BondDataType;->BT_LIST:Lcom/microsoft/bond/BondDataType;

    invoke-direct {p0, p1, p2}, Lcom/microsoft/bond/StructDef;->readFieldImpl_fields(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)V

    :cond_5
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readStructEnd()V

    return-void
.end method

.method public reset()V
    .locals 2

    const-string v0, "StructDef"

    const-string v1, "com.microsoft.bond.StructDef"

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/bond/StructDef;->reset(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reset(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    new-instance p1, Lcom/microsoft/bond/Metadata;

    invoke-direct {p1}, Lcom/microsoft/bond/Metadata;-><init>()V

    iput-object p1, p0, Lcom/microsoft/bond/StructDef;->metadata:Lcom/microsoft/bond/Metadata;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/microsoft/bond/StructDef;->base_def:Lcom/microsoft/bond/TypeDef;

    iget-object p1, p0, Lcom/microsoft/bond/StructDef;->fields:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/microsoft/bond/StructDef;->fields:Ljava/util/ArrayList;

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final setBase_def(Lcom/microsoft/bond/TypeDef;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/bond/StructDef;->base_def:Lcom/microsoft/bond/TypeDef;

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
    check-cast p2, Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/microsoft/bond/StructDef;->fields:Ljava/util/ArrayList;

    return-void

    :cond_1
    check-cast p2, Lcom/microsoft/bond/TypeDef;

    iput-object p2, p0, Lcom/microsoft/bond/StructDef;->base_def:Lcom/microsoft/bond/TypeDef;

    return-void

    :cond_2
    check-cast p2, Lcom/microsoft/bond/Metadata;

    iput-object p2, p0, Lcom/microsoft/bond/StructDef;->metadata:Lcom/microsoft/bond/Metadata;

    return-void
.end method

.method public final setFields(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/bond/FieldDef;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/microsoft/bond/StructDef;->fields:Ljava/util/ArrayList;

    return-void
.end method

.method public final setMetadata(Lcom/microsoft/bond/Metadata;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/bond/StructDef;->metadata:Lcom/microsoft/bond/Metadata;

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

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/bond/StructDef;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/bond/StructDef;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeEnd()V

    return-void
.end method

.method public writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V
    .locals 7

    sget-object v0, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v0}, Lcom/microsoft/bond/ProtocolWriter;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    sget-object v1, Lcom/microsoft/bond/StructDef$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {p1, v1, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructBegin(Lcom/microsoft/bond/BondSerializable;Z)V

    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/StructDef$Schema;->access$000()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget-object v2, p0, Lcom/microsoft/bond/StructDef;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v2, p1, v3}, Lcom/microsoft/bond/Metadata;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    iget-object v2, p0, Lcom/microsoft/bond/StructDef;->base_def:Lcom/microsoft/bond/TypeDef;

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/microsoft/bond/BondDataType;->BT_LIST:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/StructDef$Schema;->access$100()Lcom/microsoft/bond/Metadata;

    move-result-object v5

    invoke-virtual {p1, v2, v4, v5}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_2

    :cond_2
    :goto_1
    sget-object v5, Lcom/microsoft/bond/BondDataType;->BT_LIST:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/StructDef$Schema;->access$100()Lcom/microsoft/bond/Metadata;

    move-result-object v6

    invoke-virtual {p1, v5, v4, v6}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    invoke-virtual {p1, v2, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeContainerBegin(ILcom/microsoft/bond/BondDataType;)V

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/microsoft/bond/StructDef;->base_def:Lcom/microsoft/bond/TypeDef;

    invoke-virtual {v2, p1, v3}, Lcom/microsoft/bond/TypeDef;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    :cond_3
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeContainerEnd()V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    :goto_2
    iget-object v2, p0, Lcom/microsoft/bond/StructDef;->fields:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x2

    if-eqz v0, :cond_5

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_LIST:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/StructDef$Schema;->access$200()Lcom/microsoft/bond/Metadata;

    move-result-object v1

    invoke-virtual {p1, v0, v4, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_5

    :cond_5
    :goto_3
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_LIST:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/StructDef$Schema;->access$200()Lcom/microsoft/bond/Metadata;

    move-result-object v5

    invoke-virtual {p1, v0, v4, v5}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    invoke-virtual {p1, v2, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeContainerBegin(ILcom/microsoft/bond/BondDataType;)V

    iget-object v0, p0, Lcom/microsoft/bond/StructDef;->fields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/bond/FieldDef;

    invoke-virtual {v1, p1, v3}, Lcom/microsoft/bond/FieldDef;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeContainerEnd()V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    :goto_5
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructEnd(Z)V

    return-void
.end method
