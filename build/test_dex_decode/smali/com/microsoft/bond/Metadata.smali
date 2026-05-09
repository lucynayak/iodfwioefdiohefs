.class public Lcom/microsoft/bond/Metadata;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/bond/BondSerializable;
.implements Lcom/microsoft/bond/BondMirror;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/bond/Metadata$Schema;
    }
.end annotation


# instance fields
.field private attributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private default_value:Lcom/microsoft/bond/Variant;

.field private modifier:Lcom/microsoft/bond/Modifier;

.field private name:Ljava/lang/String;

.field private qualified_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/microsoft/bond/Metadata;->reset()V

    return-void
.end method

.method public static getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;
    .locals 1

    sget-object v0, Lcom/microsoft/bond/Metadata$Schema;->schemaDef:Lcom/microsoft/bond/SchemaDef;

    return-object v0
.end method

.method private readFieldImpl_attributes(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)V
    .locals 4

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

    iget-object v3, p0, Lcom/microsoft/bond/Metadata;->attributes:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-virtual {p0}, Lcom/microsoft/bond/Metadata;->clone()Lcom/microsoft/bond/BondSerializable;

    move-result-object v0

    return-object v0
.end method

.method public createInstance(Lcom/microsoft/bond/StructDef;)Lcom/microsoft/bond/BondMirror;
    .locals 1

    sget-object v0, Lcom/microsoft/bond/Variant$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {p1}, Lcom/microsoft/bond/StructDef;->getMetadata()Lcom/microsoft/bond/Metadata;

    move-result-object p1

    if-ne v0, p1, :cond_0

    new-instance p1, Lcom/microsoft/bond/Variant;

    invoke-direct {p1}, Lcom/microsoft/bond/Variant;-><init>()V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getAttributes()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/bond/Metadata;->attributes:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getDefault_value()Lcom/microsoft/bond/Variant;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/bond/Metadata;->default_value:Lcom/microsoft/bond/Variant;

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
    iget-object p1, p0, Lcom/microsoft/bond/Metadata;->default_value:Lcom/microsoft/bond/Variant;

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/microsoft/bond/Metadata;->modifier:Lcom/microsoft/bond/Modifier;

    return-object p1

    :cond_2
    iget-object p1, p0, Lcom/microsoft/bond/Metadata;->attributes:Ljava/util/HashMap;

    return-object p1

    :cond_3
    iget-object p1, p0, Lcom/microsoft/bond/Metadata;->qualified_name:Ljava/lang/String;

    return-object p1

    :cond_4
    iget-object p1, p0, Lcom/microsoft/bond/Metadata;->name:Ljava/lang/String;

    return-object p1
.end method

.method public final getModifier()Lcom/microsoft/bond/Modifier;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/bond/Metadata;->modifier:Lcom/microsoft/bond/Modifier;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/bond/Metadata;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getQualified_name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/bond/Metadata;->qualified_name:Ljava/lang/String;

    return-object v0
.end method

.method public getSchema()Lcom/microsoft/bond/SchemaDef;
    .locals 1

    invoke-static {}, Lcom/microsoft/bond/Metadata;->getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;

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
    check-cast p1, Lcom/microsoft/bond/Metadata;

    invoke-virtual {p0, p1}, Lcom/microsoft/bond/Metadata;->memberwiseCompareQuick(Lcom/microsoft/bond/Metadata;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/microsoft/bond/Metadata;->memberwiseCompareDeep(Lcom/microsoft/bond/Metadata;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public memberwiseCompareDeep(Lcom/microsoft/bond/Metadata;)Z
    .locals 8

    iget-object v0, p0, Lcom/microsoft/bond/Metadata;->name:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p1, Lcom/microsoft/bond/Metadata;->name:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/microsoft/bond/Metadata;->qualified_name:Ljava/lang/String;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v3, p1, Lcom/microsoft/bond/Metadata;->qualified_name:Ljava/lang/String;

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
    if-eqz v0, :cond_11

    iget-object v3, p0, Lcom/microsoft/bond/Metadata;->attributes:Ljava/util/HashMap;

    if-eqz v3, :cond_11

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/microsoft/bond/Metadata;->attributes:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p1, Lcom/microsoft/bond/Metadata;->attributes:Ljava/util/HashMap;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/microsoft/bond/Metadata;->attributes:Ljava/util/HashMap;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_5

    :cond_6
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_10

    if-eqz v0, :cond_9

    if-nez v5, :cond_7

    const/4 v0, 0x1

    goto :goto_6

    :cond_7
    const/4 v0, 0x0

    :goto_6
    if-nez v6, :cond_8

    const/4 v4, 0x1

    goto :goto_7

    :cond_8
    const/4 v4, 0x0

    :goto_7
    if-ne v0, v4, :cond_9

    const/4 v0, 0x1

    goto :goto_8

    :cond_9
    const/4 v0, 0x0

    :goto_8
    if-eqz v0, :cond_c

    if-nez v5, :cond_a

    goto :goto_9

    :cond_a
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v0, v4, :cond_b

    goto :goto_a

    :cond_b
    :goto_9
    const/4 v0, 0x1

    goto :goto_b

    :cond_c
    :goto_a
    const/4 v0, 0x0

    :goto_b
    if-eqz v0, :cond_f

    if-nez v5, :cond_d

    goto :goto_c

    :cond_d
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_d

    :cond_e
    :goto_c
    const/4 v0, 0x1

    goto :goto_e

    :cond_f
    :goto_d
    const/4 v0, 0x0

    :cond_10
    :goto_e
    if-nez v0, :cond_5

    :cond_11
    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/microsoft/bond/Metadata;->default_value:Lcom/microsoft/bond/Variant;

    if-nez v0, :cond_12

    goto :goto_f

    :cond_12
    iget-object p1, p1, Lcom/microsoft/bond/Metadata;->default_value:Lcom/microsoft/bond/Variant;

    invoke-virtual {v0, p1}, Lcom/microsoft/bond/Variant;->memberwiseCompare(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    goto :goto_10

    :cond_13
    :goto_f
    return v1

    :cond_14
    :goto_10
    return v2
.end method

.method public memberwiseCompareQuick(Lcom/microsoft/bond/Metadata;)Z
    .locals 5

    iget-object v0, p0, Lcom/microsoft/bond/Metadata;->name:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v4, p1, Lcom/microsoft/bond/Metadata;->name:Ljava/lang/String;

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

    iget-object v3, p1, Lcom/microsoft/bond/Metadata;->name:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/microsoft/bond/Metadata;->qualified_name:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    :goto_6
    iget-object v3, p1, Lcom/microsoft/bond/Metadata;->qualified_name:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/microsoft/bond/Metadata;->qualified_name:Ljava/lang/String;

    if-nez v0, :cond_9

    goto :goto_9

    :cond_9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v3, p1, Lcom/microsoft/bond/Metadata;->qualified_name:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/microsoft/bond/Metadata;->attributes:Ljava/util/HashMap;

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_c

    :cond_c
    const/4 v0, 0x0

    :goto_c
    iget-object v3, p1, Lcom/microsoft/bond/Metadata;->attributes:Ljava/util/HashMap;

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

    iget-object v0, p0, Lcom/microsoft/bond/Metadata;->attributes:Ljava/util/HashMap;

    if-nez v0, :cond_f

    goto :goto_f

    :cond_f
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget-object v3, p1, Lcom/microsoft/bond/Metadata;->attributes:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

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
    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/microsoft/bond/Metadata;->modifier:Lcom/microsoft/bond/Modifier;

    iget-object p1, p1, Lcom/microsoft/bond/Metadata;->modifier:Lcom/microsoft/bond/Modifier;

    if-ne v0, p1, :cond_12

    return v1

    :cond_12
    return v2
.end method

.method public read(Lcom/microsoft/bond/ProtocolReader;)V
    .locals 0

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readBegin()V

    invoke-virtual {p0, p1}, Lcom/microsoft/bond/Metadata;->readNested(Lcom/microsoft/bond/ProtocolReader;)V

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

    invoke-virtual {p0, p1, v1}, Lcom/microsoft/bond/Metadata;->readUntagged(Lcom/microsoft/bond/ProtocolReader;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/bond/Metadata;->readTagged(Lcom/microsoft/bond/ProtocolReader;Z)Z

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
    sget-object p2, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    invoke-static {v0, p2}, Lcom/microsoft/bond/internal/ReadHelper;->validateType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    iget-object p2, p0, Lcom/microsoft/bond/Metadata;->default_value:Lcom/microsoft/bond/Variant;

    invoke-virtual {p2, p1}, Lcom/microsoft/bond/Variant;->readNested(Lcom/microsoft/bond/ProtocolReader;)V

    goto :goto_1

    :cond_2
    invoke-static {p1, v0}, Lcom/microsoft/bond/internal/ReadHelper;->readInt32(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)I

    move-result p2

    invoke-static {p2}, Lcom/microsoft/bond/Modifier;->fromValue(I)Lcom/microsoft/bond/Modifier;

    move-result-object p2

    iput-object p2, p0, Lcom/microsoft/bond/Metadata;->modifier:Lcom/microsoft/bond/Modifier;

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/microsoft/bond/Metadata;->readFieldImpl_attributes(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)V

    goto :goto_1

    :cond_4
    invoke-static {p1, v0}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/microsoft/bond/Metadata;->qualified_name:Ljava/lang/String;

    goto :goto_1

    :cond_5
    invoke-static {p1, v0}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/microsoft/bond/Metadata;->name:Ljava/lang/String;

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
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/microsoft/bond/Metadata;->name:Ljava/lang/String;

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_3

    :cond_2
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/microsoft/bond/Metadata;->qualified_name:Ljava/lang/String;

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_5

    :cond_4
    sget-object p2, Lcom/microsoft/bond/BondDataType;->BT_MAP:Lcom/microsoft/bond/BondDataType;

    invoke-direct {p0, p1, p2}, Lcom/microsoft/bond/Metadata;->readFieldImpl_attributes(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)V

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_7

    :cond_6
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readInt32()I

    move-result p2

    invoke-static {p2}, Lcom/microsoft/bond/Modifier;->fromValue(I)Lcom/microsoft/bond/Modifier;

    move-result-object p2

    iput-object p2, p0, Lcom/microsoft/bond/Metadata;->modifier:Lcom/microsoft/bond/Modifier;

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_9

    :cond_8
    iget-object p2, p0, Lcom/microsoft/bond/Metadata;->default_value:Lcom/microsoft/bond/Variant;

    invoke-virtual {p2, p1}, Lcom/microsoft/bond/Variant;->read(Lcom/microsoft/bond/ProtocolReader;)V

    :cond_9
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readStructEnd()V

    return-void
.end method

.method public reset()V
    .locals 2

    const-string v0, "Metadata"

    const-string v1, "com.microsoft.bond.Metadata"

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/bond/Metadata;->reset(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reset(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p1, ""

    iput-object p1, p0, Lcom/microsoft/bond/Metadata;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/microsoft/bond/Metadata;->qualified_name:Ljava/lang/String;

    iget-object p1, p0, Lcom/microsoft/bond/Metadata;->attributes:Ljava/util/HashMap;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/microsoft/bond/Metadata;->attributes:Ljava/util/HashMap;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    :goto_0
    sget-object p1, Lcom/microsoft/bond/Modifier;->Optional:Lcom/microsoft/bond/Modifier;

    iput-object p1, p0, Lcom/microsoft/bond/Metadata;->modifier:Lcom/microsoft/bond/Modifier;

    new-instance p1, Lcom/microsoft/bond/Variant;

    invoke-direct {p1}, Lcom/microsoft/bond/Variant;-><init>()V

    iput-object p1, p0, Lcom/microsoft/bond/Metadata;->default_value:Lcom/microsoft/bond/Variant;

    return-void
.end method

.method public final setAttributes(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/microsoft/bond/Metadata;->attributes:Ljava/util/HashMap;

    return-void
.end method

.method public final setDefault_value(Lcom/microsoft/bond/Variant;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/bond/Metadata;->default_value:Lcom/microsoft/bond/Variant;

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
    check-cast p2, Lcom/microsoft/bond/Variant;

    iput-object p2, p0, Lcom/microsoft/bond/Metadata;->default_value:Lcom/microsoft/bond/Variant;

    return-void

    :cond_1
    check-cast p2, Lcom/microsoft/bond/Modifier;

    iput-object p2, p0, Lcom/microsoft/bond/Metadata;->modifier:Lcom/microsoft/bond/Modifier;

    return-void

    :cond_2
    check-cast p2, Ljava/util/HashMap;

    iput-object p2, p0, Lcom/microsoft/bond/Metadata;->attributes:Ljava/util/HashMap;

    return-void

    :cond_3
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/microsoft/bond/Metadata;->qualified_name:Ljava/lang/String;

    return-void

    :cond_4
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/microsoft/bond/Metadata;->name:Ljava/lang/String;

    return-void
.end method

.method public final setModifier(Lcom/microsoft/bond/Modifier;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/bond/Metadata;->modifier:Lcom/microsoft/bond/Modifier;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/bond/Metadata;->name:Ljava/lang/String;

    return-void
.end method

.method public final setQualified_name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/bond/Metadata;->qualified_name:Ljava/lang/String;

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

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/bond/Metadata;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/bond/Metadata;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeEnd()V

    return-void
.end method

.method public writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V
    .locals 7

    sget-object v0, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v0}, Lcom/microsoft/bond/ProtocolWriter;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    sget-object v1, Lcom/microsoft/bond/Metadata$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {p1, v1, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructBegin(Lcom/microsoft/bond/BondSerializable;Z)V

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/microsoft/bond/Metadata;->name:Ljava/lang/String;

    invoke-static {}, Lcom/microsoft/bond/Metadata$Schema;->access$000()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/bond/Variant;->getString_value()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/Metadata$Schema;->access$000()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v2, v1, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v2, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/Metadata$Schema;->access$000()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v2, v1, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget-object v2, p0, Lcom/microsoft/bond/Metadata;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    :goto_1
    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/microsoft/bond/Metadata;->qualified_name:Ljava/lang/String;

    invoke-static {}, Lcom/microsoft/bond/Metadata$Schema;->access$100()Lcom/microsoft/bond/Metadata;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/bond/Variant;->getString_value()Ljava/lang/String;

    move-result-object v4

    if-eq v3, v4, :cond_2

    goto :goto_2

    :cond_2
    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/Metadata$Schema;->access$100()Lcom/microsoft/bond/Metadata;

    move-result-object v4

    invoke-virtual {p1, v3, v2, v4}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_3

    :cond_3
    :goto_2
    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/Metadata$Schema;->access$100()Lcom/microsoft/bond/Metadata;

    move-result-object v4

    invoke-virtual {p1, v3, v2, v4}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget-object v2, p0, Lcom/microsoft/bond/Metadata;->qualified_name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    :goto_3
    iget-object v2, p0, Lcom/microsoft/bond/Metadata;->attributes:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    const/4 v3, 0x2

    if-eqz v0, :cond_5

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    sget-object v2, Lcom/microsoft/bond/BondDataType;->BT_MAP:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/Metadata$Schema;->access$200()Lcom/microsoft/bond/Metadata;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_6

    :cond_5
    :goto_4
    sget-object v2, Lcom/microsoft/bond/BondDataType;->BT_MAP:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/Metadata$Schema;->access$200()Lcom/microsoft/bond/Metadata;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget-object v2, p0, Lcom/microsoft/bond/Metadata;->attributes:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {p1, v2, v3, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeContainerBegin(ILcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    iget-object v2, p0, Lcom/microsoft/bond/Metadata;->attributes:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeContainerEnd()V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    :goto_6
    const/4 v2, 0x3

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/microsoft/bond/Metadata;->modifier:Lcom/microsoft/bond/Modifier;

    invoke-virtual {v0}, Lcom/microsoft/bond/Modifier;->getValue()I

    move-result v0

    int-to-long v3, v0

    invoke-static {}, Lcom/microsoft/bond/Metadata$Schema;->access$300()Lcom/microsoft/bond/Metadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/bond/Variant;->getInt_value()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-eqz v0, :cond_7

    goto :goto_7

    :cond_7
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_INT32:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/Metadata$Schema;->access$300()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v0, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_8

    :cond_8
    :goto_7
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_INT32:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/Metadata$Schema;->access$300()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v0, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget-object v0, p0, Lcom/microsoft/bond/Metadata;->modifier:Lcom/microsoft/bond/Modifier;

    invoke-virtual {v0}, Lcom/microsoft/bond/Modifier;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/microsoft/bond/ProtocolWriter;->writeInt32(I)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    :goto_8
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    const/4 v2, 0x4

    invoke-static {}, Lcom/microsoft/bond/Metadata$Schema;->access$400()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v0, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget-object v0, p0, Lcom/microsoft/bond/Metadata;->default_value:Lcom/microsoft/bond/Variant;

    invoke-virtual {v0, p1, v1}, Lcom/microsoft/bond/Variant;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructEnd(Z)V

    return-void
.end method
