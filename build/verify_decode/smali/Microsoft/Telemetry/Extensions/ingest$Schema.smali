.class public LMicrosoft/Telemetry/Extensions/ingest$Schema;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LMicrosoft/Telemetry/Extensions/ingest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Schema"
.end annotation


# static fields
.field private static final auth_metadata:Lcom/microsoft/bond/Metadata;

.field private static final clientIp_metadata:Lcom/microsoft/bond/Metadata;

.field public static final metadata:Lcom/microsoft/bond/Metadata;

.field private static final quality_metadata:Lcom/microsoft/bond/Metadata;

.field public static final schemaDef:Lcom/microsoft/bond/SchemaDef;

.field private static final time_metadata:Lcom/microsoft/bond/Metadata;

.field private static final uploadTime_metadata:Lcom/microsoft/bond/Metadata;

.field private static final userAgent_metadata:Lcom/microsoft/bond/Metadata;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, LMicrosoft/Telemetry/Extensions/ingest$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "ingest"

    const-string v2, "Microsoft.Telemetry.Extensions.ingest"

    const-string v3, "Description"

    const-string v4, "Describes the fields added dynamically by the service. Clients should NOT use this section since it is adding dynamically by the service."

    .line 1
    invoke-static {v0, v1, v2, v3, v4}, La/a;->b(Lcom/microsoft/bond/Metadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/bond/Metadata;

    move-result-object v0

    .line 2
    sput-object v0, LMicrosoft/Telemetry/Extensions/ingest$Schema;->time_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "time"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    sget-object v1, Lcom/microsoft/bond/Modifier;->Required:Lcom/microsoft/bond/Modifier;

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setModifier(Lcom/microsoft/bond/Modifier;)V

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "Name"

    const-string v3, "IngestDateTime"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, LMicrosoft/Telemetry/Extensions/ingest$Schema;->clientIp_metadata:Lcom/microsoft/bond/Metadata;

    const-string v3, "clientIp"

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setModifier(Lcom/microsoft/bond/Modifier;)V

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "ClientIp"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, LMicrosoft/Telemetry/Extensions/ingest$Schema;->auth_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "auth"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v1

    const-string v3, "DataAuthorization"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v0

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/microsoft/bond/Variant;->setInt_value(J)V

    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, LMicrosoft/Telemetry/Extensions/ingest$Schema;->quality_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "quality"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v1

    const-string v5, "DataQuality"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/microsoft/bond/Variant;->setInt_value(J)V

    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, LMicrosoft/Telemetry/Extensions/ingest$Schema;->uploadTime_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "uploadTime"

    const-string v3, "UploadDateTime"

    .line 3
    invoke-static {v0, v1, v2, v3}, La/a;->a(Lcom/microsoft/bond/Metadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/bond/Metadata;

    move-result-object v0

    .line 4
    sput-object v0, LMicrosoft/Telemetry/Extensions/ingest$Schema;->userAgent_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "userAgent"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "UserAgent"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/microsoft/bond/SchemaDef;

    invoke-direct {v0}, Lcom/microsoft/bond/SchemaDef;-><init>()V

    sput-object v0, LMicrosoft/Telemetry/Extensions/ingest$Schema;->schemaDef:Lcom/microsoft/bond/SchemaDef;

    invoke-static {v0}, LMicrosoft/Telemetry/Extensions/ingest$Schema;->getTypeDef(Lcom/microsoft/bond/SchemaDef;)Lcom/microsoft/bond/TypeDef;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/SchemaDef;->setRoot(Lcom/microsoft/bond/TypeDef;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/microsoft/bond/Metadata;
    .locals 1

    sget-object v0, LMicrosoft/Telemetry/Extensions/ingest$Schema;->time_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method public static synthetic access$100()Lcom/microsoft/bond/Metadata;
    .locals 1

    sget-object v0, LMicrosoft/Telemetry/Extensions/ingest$Schema;->clientIp_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method public static synthetic access$200()Lcom/microsoft/bond/Metadata;
    .locals 1

    sget-object v0, LMicrosoft/Telemetry/Extensions/ingest$Schema;->auth_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method public static synthetic access$300()Lcom/microsoft/bond/Metadata;
    .locals 1

    sget-object v0, LMicrosoft/Telemetry/Extensions/ingest$Schema;->quality_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method public static synthetic access$400()Lcom/microsoft/bond/Metadata;
    .locals 1

    sget-object v0, LMicrosoft/Telemetry/Extensions/ingest$Schema;->uploadTime_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method public static synthetic access$500()Lcom/microsoft/bond/Metadata;
    .locals 1

    sget-object v0, LMicrosoft/Telemetry/Extensions/ingest$Schema;->userAgent_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method private static getStructDef(Lcom/microsoft/bond/SchemaDef;)S
    .locals 6

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/bond/SchemaDef;->getStructs()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/microsoft/bond/SchemaDef;->getStructs()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/bond/StructDef;

    invoke-virtual {v1}, Lcom/microsoft/bond/StructDef;->getMetadata()Lcom/microsoft/bond/Metadata;

    move-result-object v1

    sget-object v2, LMicrosoft/Telemetry/Extensions/ingest$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    if-ne v1, v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/microsoft/bond/StructDef;

    invoke-direct {v1}, Lcom/microsoft/bond/StructDef;-><init>()V

    invoke-virtual {p0}, Lcom/microsoft/bond/SchemaDef;->getStructs()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, LMicrosoft/Telemetry/Extensions/ingest$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v1, v2}, Lcom/microsoft/bond/StructDef;->setMetadata(Lcom/microsoft/bond/Metadata;)V

    invoke-static {p0}, LMicrosoft/Telemetry/Extension$Schema;->getTypeDef(Lcom/microsoft/bond/SchemaDef;)Lcom/microsoft/bond/TypeDef;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/microsoft/bond/StructDef;->setBase_def(Lcom/microsoft/bond/TypeDef;)V

    new-instance p0, Lcom/microsoft/bond/FieldDef;

    invoke-direct {p0}, Lcom/microsoft/bond/FieldDef;-><init>()V

    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    sget-object v2, LMicrosoft/Telemetry/Extensions/ingest$Schema;->time_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {p0, v2}, Lcom/microsoft/bond/FieldDef;->setMetadata(Lcom/microsoft/bond/Metadata;)V

    invoke-virtual {p0}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v2

    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    const/16 v4, 0x14

    .line 1
    invoke-static {v2, v3, v1, p0, v4}, La/c;->b(Lcom/microsoft/bond/TypeDef;Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/StructDef;Lcom/microsoft/bond/FieldDef;S)Lcom/microsoft/bond/FieldDef;

    move-result-object p0

    .line 2
    sget-object v2, LMicrosoft/Telemetry/Extensions/ingest$Schema;->clientIp_metadata:Lcom/microsoft/bond/Metadata;

    .line 3
    invoke-static {p0, v2, v3, v1, p0}, La/b;->b(Lcom/microsoft/bond/FieldDef;Lcom/microsoft/bond/Metadata;Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/StructDef;Lcom/microsoft/bond/FieldDef;)Lcom/microsoft/bond/FieldDef;

    move-result-object p0

    const/16 v2, 0x1e

    .line 4
    invoke-virtual {p0, v2}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    sget-object v2, LMicrosoft/Telemetry/Extensions/ingest$Schema;->auth_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {p0, v2}, Lcom/microsoft/bond/FieldDef;->setMetadata(Lcom/microsoft/bond/Metadata;)V

    invoke-virtual {p0}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v2

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_INT64:Lcom/microsoft/bond/BondDataType;

    const/16 v5, 0x28

    .line 5
    invoke-static {v2, v4, v1, p0, v5}, La/c;->b(Lcom/microsoft/bond/TypeDef;Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/StructDef;Lcom/microsoft/bond/FieldDef;S)Lcom/microsoft/bond/FieldDef;

    move-result-object p0

    .line 6
    sget-object v2, LMicrosoft/Telemetry/Extensions/ingest$Schema;->quality_metadata:Lcom/microsoft/bond/Metadata;

    .line 7
    invoke-static {p0, v2, v4, v1, p0}, La/b;->b(Lcom/microsoft/bond/FieldDef;Lcom/microsoft/bond/Metadata;Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/StructDef;Lcom/microsoft/bond/FieldDef;)Lcom/microsoft/bond/FieldDef;

    move-result-object p0

    const/16 v2, 0x32

    .line 8
    invoke-virtual {p0, v2}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    sget-object v2, LMicrosoft/Telemetry/Extensions/ingest$Schema;->uploadTime_metadata:Lcom/microsoft/bond/Metadata;

    .line 9
    invoke-static {p0, v2, v3, v1, p0}, La/b;->b(Lcom/microsoft/bond/FieldDef;Lcom/microsoft/bond/Metadata;Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/StructDef;Lcom/microsoft/bond/FieldDef;)Lcom/microsoft/bond/FieldDef;

    move-result-object p0

    const/16 v2, 0x3c

    .line 10
    invoke-virtual {p0, v2}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    sget-object v2, LMicrosoft/Telemetry/Extensions/ingest$Schema;->userAgent_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {p0, v2}, Lcom/microsoft/bond/FieldDef;->setMetadata(Lcom/microsoft/bond/Metadata;)V

    invoke-virtual {p0}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/microsoft/bond/TypeDef;->setId(Lcom/microsoft/bond/BondDataType;)V

    invoke-virtual {v1}, Lcom/microsoft/bond/StructDef;->getFields()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v0
.end method

.method public static getTypeDef(Lcom/microsoft/bond/SchemaDef;)Lcom/microsoft/bond/TypeDef;
    .locals 2

    new-instance v0, Lcom/microsoft/bond/TypeDef;

    invoke-direct {v0}, Lcom/microsoft/bond/TypeDef;-><init>()V

    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/TypeDef;->setId(Lcom/microsoft/bond/BondDataType;)V

    invoke-static {p0}, LMicrosoft/Telemetry/Extensions/ingest$Schema;->getStructDef(Lcom/microsoft/bond/SchemaDef;)S

    move-result p0

    invoke-virtual {v0, p0}, Lcom/microsoft/bond/TypeDef;->setStruct_def(S)V

    return-object v0
.end method
