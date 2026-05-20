.class public Lcom/microsoft/bond/SchemaDef;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/bond/BondSerializable;
.implements Lcom/microsoft/bond/BondMirror;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/bond/SchemaDef$Schema;
    }
.end annotation


# instance fields
.field private root:Lcom/microsoft/bond/TypeDef;

.field private structs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/bond/StructDef;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/microsoft/bond/SchemaDef;->reset()V

    return-void
.end method

.method public static getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;
    .registers 1

    sget-object v0, Lcom/microsoft/bond/SchemaDef$Schema;->schemaDef:Lcom/microsoft/bond/SchemaDef;

    return-object v0
.end method

.method private readFieldImpl_structs(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)V
    .registers 6

    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_LIST:Lcom/microsoft/bond/BondDataType;

    invoke-static {p2, v0}, Lcom/microsoft/bond/internal/ReadHelper;->validateType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readContainerBegin()Lcom/microsoft/bond/ProtocolReader$ListTag;

    move-result-object p2

    iget-object v0, p2, Lcom/microsoft/bond/ProtocolReader$ListTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    invoke-static {v0, v1}, Lcom/microsoft/bond/internal/ReadHelper;->validateType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    iget-object v0, p0, Lcom/microsoft/bond/SchemaDef;->structs:Ljava/util/ArrayList;

    iget v1, p2, Lcom/microsoft/bond/ProtocolReader$ListTag;->size:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p2, Lcom/microsoft/bond/ProtocolReader$ListTag;->size:I

    if-ge v0, v1, :cond_0

    new-instance v1, Lcom/microsoft/bond/StructDef;

    invoke-direct {v1}, Lcom/microsoft/bond/StructDef;-><init>()V

    invoke-virtual {v1, p1}, Lcom/microsoft/bond/StructDef;->readNested(Lcom/microsoft/bond/ProtocolReader;)V

    iget-object v2, p0, Lcom/microsoft/bond/SchemaDef;->structs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

    invoke-virtual {p0}, Lcom/microsoft/bond/SchemaDef;->clone()Lcom/microsoft/bond/BondSerializable;

    move-result-object v0

    return-object v0
.end method

.method public createInstance(Lcom/microsoft/bond/StructDef;)Lcom/microsoft/bond/BondMirror;
    .registers 4

    sget-object v0, Lcom/microsoft/bond/StructDef$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {p1}, Lcom/microsoft/bond/StructDef;->getMetadata()Lcom/microsoft/bond/Metadata;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance p1, Lcom/microsoft/bond/StructDef;

    invoke-direct {p1}, Lcom/microsoft/bond/StructDef;-><init>()V

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
    .registers 3

    invoke-virtual {p1}, Lcom/microsoft/bond/FieldDef;->getId()S

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/microsoft/bond/SchemaDef;->root:Lcom/microsoft/bond/TypeDef;

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/microsoft/bond/SchemaDef;->structs:Ljava/util/ArrayList;

    return-object p1
.end method

.method public final getRoot()Lcom/microsoft/bond/TypeDef;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/bond/SchemaDef;->root:Lcom/microsoft/bond/TypeDef;

    return-object v0
.end method

.method public getSchema()Lcom/microsoft/bond/SchemaDef;
    .registers 2

    invoke-static {}, Lcom/microsoft/bond/SchemaDef;->getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;

    move-result-object v0

    return-object v0
.end method

.method public final getStructs()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/bond/StructDef;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/bond/SchemaDef;->structs:Ljava/util/ArrayList;

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
    check-cast p1, Lcom/microsoft/bond/SchemaDef;

    invoke-virtual {p0, p1}, Lcom/microsoft/bond/SchemaDef;->memberwiseCompareQuick(Lcom/microsoft/bond/SchemaDef;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/microsoft/bond/SchemaDef;->memberwiseCompareDeep(Lcom/microsoft/bond/SchemaDef;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public memberwiseCompareDeep(Lcom/microsoft/bond/SchemaDef;)Z
    .registers 9

    iget-object v0, p0, Lcom/microsoft/bond/SchemaDef;->structs:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    const/4 v3, 0x1

    :goto_0
    iget-object v4, p0, Lcom/microsoft/bond/SchemaDef;->structs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_8

    iget-object v4, p0, Lcom/microsoft/bond/SchemaDef;->structs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/microsoft/bond/StructDef;

    iget-object v5, p1, Lcom/microsoft/bond/SchemaDef;->structs:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/microsoft/bond/StructDef;

    if-eqz v3, :cond_2

    if-nez v4, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-nez v5, :cond_1

    const/4 v6, 0x1

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    :goto_2
    if-ne v3, v6, :cond_2

    const/4 v3, 0x1

    goto :goto_3

    :cond_2
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_5

    if-nez v4, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {v4, v5}, Lcom/microsoft/bond/StructDef;->memberwiseCompare(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_5

    :cond_4
    :goto_4
    const/4 v3, 0x1

    goto :goto_6

    :cond_5
    :goto_5
    const/4 v3, 0x0

    :goto_6
    if-nez v3, :cond_6

    goto :goto_7

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    const/4 v3, 0x1

    :cond_8
    :goto_7
    if-eqz v3, :cond_b

    iget-object v0, p0, Lcom/microsoft/bond/SchemaDef;->root:Lcom/microsoft/bond/TypeDef;

    if-nez v0, :cond_9

    goto :goto_8

    :cond_9
    iget-object p1, p1, Lcom/microsoft/bond/SchemaDef;->root:Lcom/microsoft/bond/TypeDef;

    invoke-virtual {v0, p1}, Lcom/microsoft/bond/TypeDef;->memberwiseCompare(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_9

    :cond_a
    :goto_8
    return v2

    :cond_b
    :goto_9
    return v1
.end method

.method public memberwiseCompareQuick(Lcom/microsoft/bond/SchemaDef;)Z
    .registers 7

    iget-object v0, p0, Lcom/microsoft/bond/SchemaDef;->structs:Ljava/util/ArrayList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v4, p1, Lcom/microsoft/bond/SchemaDef;->structs:Ljava/util/ArrayList;

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
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object p1, p1, Lcom/microsoft/bond/SchemaDef;->structs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eq v0, p1, :cond_4

    goto :goto_4

    :cond_4
    :goto_3
    return v1

    :cond_5
    :goto_4
    return v2
.end method

.method public read(Lcom/microsoft/bond/ProtocolReader;)V
    .registers 2

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readBegin()V

    invoke-virtual {p0, p1}, Lcom/microsoft/bond/SchemaDef;->readNested(Lcom/microsoft/bond/ProtocolReader;)V

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

    invoke-virtual {p0, p1, v1}, Lcom/microsoft/bond/SchemaDef;->readUntagged(Lcom/microsoft/bond/ProtocolReader;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/bond/SchemaDef;->readTagged(Lcom/microsoft/bond/ProtocolReader;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/microsoft/bond/internal/ReadHelper;->skipPartialStruct(Lcom/microsoft/bond/ProtocolReader;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public readTagged(Lcom/microsoft/bond/ProtocolReader;Z)Z
    .registers 6

    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolReader;->readStructBegin(Z)V

    :goto_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldBegin()Lcom/microsoft/bond/ProtocolReader$FieldTag;

    move-result-object p2

    iget-object v0, p2, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STOP:Lcom/microsoft/bond/BondDataType;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-ne v0, v1, :cond_0

    goto :goto_2

    :cond_0
    iget p2, p2, Lcom/microsoft/bond/ProtocolReader$FieldTag;->id:I

    if-eqz p2, :cond_2

    if-eq p2, v2, :cond_1

    invoke-virtual {p1, v0}, Lcom/microsoft/bond/ProtocolReader;->skip(Lcom/microsoft/bond/BondDataType;)V

    goto :goto_1

    :cond_1
    sget-object p2, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    invoke-static {v0, p2}, Lcom/microsoft/bond/internal/ReadHelper;->validateType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    iget-object p2, p0, Lcom/microsoft/bond/SchemaDef;->root:Lcom/microsoft/bond/TypeDef;

    invoke-virtual {p2, p1}, Lcom/microsoft/bond/TypeDef;->readNested(Lcom/microsoft/bond/ProtocolReader;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/microsoft/bond/SchemaDef;->readFieldImpl_structs(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)V

    :goto_1
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldEnd()V

    goto :goto_0

    :cond_3
    :goto_2
    sget-object p2, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-ne v0, p2, :cond_4

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readStructEnd()V

    return v2
.end method

.method public readUntagged(Lcom/microsoft/bond/ProtocolReader;Z)V
    .registers 4

    sget-object v0, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v0}, Lcom/microsoft/bond/ProtocolReader;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolReader;->readStructBegin(Z)V

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    sget-object p2, Lcom/microsoft/bond/BondDataType;->BT_LIST:Lcom/microsoft/bond/BondDataType;

    invoke-direct {p0, p1, p2}, Lcom/microsoft/bond/SchemaDef;->readFieldImpl_structs(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_3

    :cond_2
    iget-object p2, p0, Lcom/microsoft/bond/SchemaDef;->root:Lcom/microsoft/bond/TypeDef;

    invoke-virtual {p2, p1}, Lcom/microsoft/bond/TypeDef;->read(Lcom/microsoft/bond/ProtocolReader;)V

    :cond_3
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readStructEnd()V

    return-void
.end method

.method public reset()V
    .registers 3

    const-string v0, "SchemaDef"

    const-string v1, "com.microsoft.bond.SchemaDef"

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/bond/SchemaDef;->reset(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reset(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    iget-object p1, p0, Lcom/microsoft/bond/SchemaDef;->structs:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/microsoft/bond/SchemaDef;->structs:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :goto_0
    new-instance p1, Lcom/microsoft/bond/TypeDef;

    invoke-direct {p1}, Lcom/microsoft/bond/TypeDef;-><init>()V

    iput-object p1, p0, Lcom/microsoft/bond/SchemaDef;->root:Lcom/microsoft/bond/TypeDef;

    return-void
.end method

.method public setField(Lcom/microsoft/bond/FieldDef;Ljava/lang/Object;)V
    .registers 4

    invoke-virtual {p1}, Lcom/microsoft/bond/FieldDef;->getId()S

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    check-cast p2, Lcom/microsoft/bond/TypeDef;

    iput-object p2, p0, Lcom/microsoft/bond/SchemaDef;->root:Lcom/microsoft/bond/TypeDef;

    return-void

    :cond_1
    check-cast p2, Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/microsoft/bond/SchemaDef;->structs:Ljava/util/ArrayList;

    return-void
.end method

.method public final setRoot(Lcom/microsoft/bond/TypeDef;)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/bond/SchemaDef;->root:Lcom/microsoft/bond/TypeDef;

    return-void
.end method

.method public final setStructs(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/bond/StructDef;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/microsoft/bond/SchemaDef;->structs:Ljava/util/ArrayList;

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

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/bond/SchemaDef;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/bond/SchemaDef;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeEnd()V

    return-void
.end method

.method public writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V
    .registers 7

    sget-object v0, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v0}, Lcom/microsoft/bond/ProtocolWriter;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    sget-object v1, Lcom/microsoft/bond/SchemaDef$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {p1, v1, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructBegin(Lcom/microsoft/bond/BondSerializable;Z)V

    iget-object v1, p0, Lcom/microsoft/bond/SchemaDef;->structs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_LIST:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/SchemaDef$Schema;->access$000()Lcom/microsoft/bond/Metadata;

    move-result-object v1

    invoke-virtual {p1, v0, v2, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_2

    :cond_1
    :goto_0
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_LIST:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/SchemaDef$Schema;->access$000()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v0, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {p1, v1, v0}, Lcom/microsoft/bond/ProtocolWriter;->writeContainerBegin(ILcom/microsoft/bond/BondDataType;)V

    iget-object v0, p0, Lcom/microsoft/bond/SchemaDef;->structs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/bond/StructDef;

    invoke-virtual {v1, p1, v2}, Lcom/microsoft/bond/StructDef;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeContainerEnd()V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    :goto_2
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    const/4 v1, 0x1

    invoke-static {}, Lcom/microsoft/bond/SchemaDef$Schema;->access$100()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget-object v0, p0, Lcom/microsoft/bond/SchemaDef;->root:Lcom/microsoft/bond/TypeDef;

    invoke-virtual {v0, p1, v2}, Lcom/microsoft/bond/TypeDef;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructEnd(Z)V

    return-void
.end method
