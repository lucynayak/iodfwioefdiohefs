.class public Lcom/microsoft/bond/List;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/bond/BondSerializable;
.implements Lcom/microsoft/bond/BondMirror;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/bond/List$Schema;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/microsoft/bond/BondSerializable;",
        "U::",
        "Lcom/microsoft/bond/BondSerializable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/microsoft/bond/BondSerializable;",
        "Lcom/microsoft/bond/BondMirror;"
    }
.end annotation


# instance fields
.field private generic_type_T:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private generic_type_U:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TU;>;"
        }
    .end annotation
.end field

.field private value:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/microsoft/bond/List;->getGenericTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Class;

    iput-object v1, p0, Lcom/microsoft/bond/List;->generic_type_T:Ljava/lang/Class;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/microsoft/bond/List;->generic_type_U:Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/microsoft/bond/List;->reset()V

    return-void
.end method

.method private getGenericTypeArguments()[Ljava/lang/reflect/Type;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public static getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;
    .registers 1

    sget-object v0, Lcom/microsoft/bond/List$Schema;->schemaDef:Lcom/microsoft/bond/SchemaDef;

    return-object v0
.end method

.method private readFieldImpl_value(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)V
    .registers 6

    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_LIST:Lcom/microsoft/bond/BondDataType;

    invoke-static {p2, v0}, Lcom/microsoft/bond/internal/ReadHelper;->validateType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readContainerBegin()Lcom/microsoft/bond/ProtocolReader$ListTag;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    iget v1, p2, Lcom/microsoft/bond/ProtocolReader$ListTag;->size:I

    if-ge v0, v1, :cond_0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/microsoft/bond/List;->generic_type_T:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/bond/BondSerializable;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-interface {v2, p1}, Lcom/microsoft/bond/BondSerializable;->readNested(Lcom/microsoft/bond/ProtocolReader;)V
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-object v1, v2

    :catch_1
    move-object v2, v1

    :goto_1
    iget-object v1, p0, Lcom/microsoft/bond/List;->value:Ljava/util/LinkedList;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

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

    invoke-virtual {p0}, Lcom/microsoft/bond/List;->clone()Lcom/microsoft/bond/BondSerializable;

    move-result-object v0

    return-object v0
.end method

.method public createInstance(Lcom/microsoft/bond/StructDef;)Lcom/microsoft/bond/BondMirror;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public getField(Lcom/microsoft/bond/FieldDef;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p1}, Lcom/microsoft/bond/FieldDef;->getId()S

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/microsoft/bond/List;->value:Ljava/util/LinkedList;

    return-object p1
.end method

.method public getSchema()Lcom/microsoft/bond/SchemaDef;
    .registers 2

    invoke-static {}, Lcom/microsoft/bond/List;->getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;

    move-result-object v0

    return-object v0
.end method

.method public final getValue()Ljava/util/LinkedList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/bond/List;->value:Ljava/util/LinkedList;

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
    check-cast p1, Lcom/microsoft/bond/List;

    invoke-virtual {p0, p1}, Lcom/microsoft/bond/List;->memberwiseCompareQuick(Lcom/microsoft/bond/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/microsoft/bond/List;->memberwiseCompareDeep(Lcom/microsoft/bond/List;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public memberwiseCompareDeep(Lcom/microsoft/bond/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/bond/List<",
            "TT;TU;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/bond/List;->value:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/microsoft/bond/List;->value:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/microsoft/bond/List;->value:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/bond/BondSerializable;

    iget-object v1, p1, Lcom/microsoft/bond/List;->value:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/bond/BondSerializable;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public memberwiseCompareQuick(Lcom/microsoft/bond/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/bond/List<",
            "TT;TU;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/bond/List;->value:Ljava/util/LinkedList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v4, p1, Lcom/microsoft/bond/List;->value:Ljava/util/LinkedList;

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
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget-object p1, p1, Lcom/microsoft/bond/List;->value:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

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

    invoke-virtual {p0, p1}, Lcom/microsoft/bond/List;->readNested(Lcom/microsoft/bond/ProtocolReader;)V

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

    invoke-virtual {p0, p1, v1}, Lcom/microsoft/bond/List;->readUntagged(Lcom/microsoft/bond/ProtocolReader;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/bond/List;->readTagged(Lcom/microsoft/bond/ProtocolReader;Z)Z

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

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-ne v0, v1, :cond_0

    goto :goto_2

    :cond_0
    iget p2, p2, Lcom/microsoft/bond/ProtocolReader$FieldTag;->id:I

    if-eqz p2, :cond_1

    invoke-virtual {p1, v0}, Lcom/microsoft/bond/ProtocolReader;->skip(Lcom/microsoft/bond/BondDataType;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/microsoft/bond/List;->readFieldImpl_value(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)V

    :goto_1
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldEnd()V

    goto :goto_0

    :cond_2
    :goto_2
    sget-object p2, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-ne v0, p2, :cond_3

    const/4 p2, 0x1

    goto :goto_3

    :cond_3
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

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    sget-object p2, Lcom/microsoft/bond/BondDataType;->BT_LIST:Lcom/microsoft/bond/BondDataType;

    invoke-direct {p0, p1, p2}, Lcom/microsoft/bond/List;->readFieldImpl_value(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)V

    :cond_1
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readStructEnd()V

    return-void
.end method

.method public reset()V
    .registers 3

    const-string v0, "List"

    const-string v1, "com.microsoft.bond.List"

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/bond/List;->reset(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reset(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    iget-object p1, p0, Lcom/microsoft/bond/List;->value:Ljava/util/LinkedList;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/microsoft/bond/List;->value:Ljava/util/LinkedList;

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method public setField(Lcom/microsoft/bond/FieldDef;Ljava/lang/Object;)V
    .registers 3

    invoke-virtual {p1}, Lcom/microsoft/bond/FieldDef;->getId()S

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    check-cast p2, Ljava/util/LinkedList;

    iput-object p2, p0, Lcom/microsoft/bond/List;->value:Ljava/util/LinkedList;

    return-void
.end method

.method public final setValue(Ljava/util/LinkedList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/microsoft/bond/List;->value:Ljava/util/LinkedList;

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

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/bond/List;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/bond/List;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeEnd()V

    return-void
.end method

.method public writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V
    .registers 7

    sget-object v0, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v0}, Lcom/microsoft/bond/ProtocolWriter;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    sget-object v1, Lcom/microsoft/bond/List$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {p1, v1, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructBegin(Lcom/microsoft/bond/BondSerializable;Z)V

    iget-object v1, p0, Lcom/microsoft/bond/List;->value:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_LIST:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/List$Schema;->access$000()Lcom/microsoft/bond/Metadata;

    move-result-object v1

    invoke-virtual {p1, v0, v2, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_2

    :cond_1
    :goto_0
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_LIST:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/List$Schema;->access$000()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v0, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {p1, v1, v0}, Lcom/microsoft/bond/ProtocolWriter;->writeContainerBegin(ILcom/microsoft/bond/BondDataType;)V

    iget-object v0, p0, Lcom/microsoft/bond/List;->value:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/bond/BondSerializable;

    invoke-interface {v1, p1, v2}, Lcom/microsoft/bond/BondSerializable;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeContainerEnd()V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    :goto_2
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructEnd(Z)V

    return-void
.end method
