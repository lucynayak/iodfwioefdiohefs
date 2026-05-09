.class public Lcom/microsoft/bond/Vector$Schema;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/bond/Vector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Schema"
.end annotation


# static fields
.field public static final metadata:Lcom/microsoft/bond/Metadata;

.field public static final schemaDef:Lcom/microsoft/bond/SchemaDef;

.field private static final value_metadata:Lcom/microsoft/bond/Metadata;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, Lcom/microsoft/bond/Vector$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "Vector"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    const-string v1, "com.microsoft.bond.Vector"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setQualified_name(Ljava/lang/String;)V

    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, Lcom/microsoft/bond/Vector$Schema;->value_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "value"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    new-instance v0, Lcom/microsoft/bond/SchemaDef;

    invoke-direct {v0}, Lcom/microsoft/bond/SchemaDef;-><init>()V

    sput-object v0, Lcom/microsoft/bond/Vector$Schema;->schemaDef:Lcom/microsoft/bond/SchemaDef;

    invoke-static {v0}, Lcom/microsoft/bond/Vector$Schema;->getTypeDef(Lcom/microsoft/bond/SchemaDef;)Lcom/microsoft/bond/TypeDef;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/SchemaDef;->setRoot(Lcom/microsoft/bond/TypeDef;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/microsoft/bond/Metadata;
    .registers 1

    sget-object v0, Lcom/microsoft/bond/Vector$Schema;->value_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method private static getStructDef(Lcom/microsoft/bond/SchemaDef;)S
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/bond/SchemaDef;->getStructs()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/microsoft/bond/SchemaDef;->getStructs()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/bond/StructDef;

    invoke-virtual {v2}, Lcom/microsoft/bond/StructDef;->getMetadata()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    sget-object v3, Lcom/microsoft/bond/Vector$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    if-ne v2, v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/microsoft/bond/StructDef;

    invoke-direct {v2}, Lcom/microsoft/bond/StructDef;-><init>()V

    invoke-virtual {p0}, Lcom/microsoft/bond/SchemaDef;->getStructs()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p0, Lcom/microsoft/bond/Vector$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v2, p0}, Lcom/microsoft/bond/StructDef;->setMetadata(Lcom/microsoft/bond/Metadata;)V

    new-instance p0, Lcom/microsoft/bond/FieldDef;

    invoke-direct {p0}, Lcom/microsoft/bond/FieldDef;-><init>()V

    invoke-virtual {p0, v0}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    sget-object v0, Lcom/microsoft/bond/Vector$Schema;->value_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {p0, v0}, Lcom/microsoft/bond/FieldDef;->setMetadata(Lcom/microsoft/bond/Metadata;)V

    invoke-virtual {p0}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v0

    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_LIST:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/TypeDef;->setId(Lcom/microsoft/bond/BondDataType;)V

    invoke-virtual {p0}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v0

    new-instance v3, Lcom/microsoft/bond/TypeDef;

    invoke-direct {v3}, Lcom/microsoft/bond/TypeDef;-><init>()V

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/TypeDef;->setElement(Lcom/microsoft/bond/TypeDef;)V

    invoke-virtual {p0}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/bond/TypeDef;->getElement()Lcom/microsoft/bond/TypeDef;

    move-result-object v0

    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/TypeDef;->setId(Lcom/microsoft/bond/BondDataType;)V

    invoke-virtual {v2}, Lcom/microsoft/bond/StructDef;->getFields()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v1
.end method

.method public static getTypeDef(Lcom/microsoft/bond/SchemaDef;)Lcom/microsoft/bond/TypeDef;
    .registers 3

    new-instance v0, Lcom/microsoft/bond/TypeDef;

    invoke-direct {v0}, Lcom/microsoft/bond/TypeDef;-><init>()V

    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/TypeDef;->setId(Lcom/microsoft/bond/BondDataType;)V

    invoke-static {p0}, Lcom/microsoft/bond/Vector$Schema;->getStructDef(Lcom/microsoft/bond/SchemaDef;)S

    move-result p0

    invoke-virtual {v0, p0}, Lcom/microsoft/bond/TypeDef;->setStruct_def(S)V

    return-object v0
.end method
