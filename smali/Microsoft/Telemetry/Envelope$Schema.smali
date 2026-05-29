.class public LMicrosoft/Telemetry/Envelope$Schema;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LMicrosoft/Telemetry/Envelope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Schema"
.end annotation


# static fields
.field private static final appId_metadata:Lcom/microsoft/bond/Metadata;

.field private static final appVer_metadata:Lcom/microsoft/bond/Metadata;

.field private static final cV_metadata:Lcom/microsoft/bond/Metadata;

.field private static final data_metadata:Lcom/microsoft/bond/Metadata;

.field private static final epoch_metadata:Lcom/microsoft/bond/Metadata;

.field private static final ext_metadata:Lcom/microsoft/bond/Metadata;

.field private static final flags_metadata:Lcom/microsoft/bond/Metadata;

.field private static final iKey_metadata:Lcom/microsoft/bond/Metadata;

.field public static final metadata:Lcom/microsoft/bond/Metadata;

.field private static final name_metadata:Lcom/microsoft/bond/Metadata;

.field private static final osVer_metadata:Lcom/microsoft/bond/Metadata;

.field private static final os_metadata:Lcom/microsoft/bond/Metadata;

.field private static final popSample_metadata:Lcom/microsoft/bond/Metadata;

.field public static final schemaDef:Lcom/microsoft/bond/SchemaDef;

.field private static final seqNum_metadata:Lcom/microsoft/bond/Metadata;

.field private static final tags_metadata:Lcom/microsoft/bond/Metadata;

.field private static final time_metadata:Lcom/microsoft/bond/Metadata;

.field private static final ver_metadata:Lcom/microsoft/bond/Metadata;


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, LMicrosoft/Telemetry/Envelope$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "Envelope"

    const-string v2, "Microsoft.Telemetry.Envelope"

    const-string v3, "Description"

    const-string v4, "System variables for a telemetry item (Part A)"

    .line 1
    invoke-static {v0, v1, v2, v3, v4}, La/a;->b(Lcom/microsoft/bond/Metadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/bond/Metadata;

    move-result-object v0

    .line 2
    sput-object v0, LMicrosoft/Telemetry/Envelope$Schema;->ver_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "ver"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    sget-object v1, Lcom/microsoft/bond/Modifier;->Required:Lcom/microsoft/bond/Modifier;

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setModifier(Lcom/microsoft/bond/Modifier;)V

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "Name"

    const-string v3, "SchemaVersion"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, LMicrosoft/Telemetry/Envelope$Schema;->name_metadata:Lcom/microsoft/bond/Metadata;

    const-string v3, "name"

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setModifier(Lcom/microsoft/bond/Modifier;)V

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v0

    const-string v3, "DataTypeName"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, LMicrosoft/Telemetry/Envelope$Schema;->time_metadata:Lcom/microsoft/bond/Metadata;

    const-string v3, "time"

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setModifier(Lcom/microsoft/bond/Modifier;)V

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "DateTime"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, LMicrosoft/Telemetry/Envelope$Schema;->popSample_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "popSample"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v1

    const-string v3, "SamplingRate"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v0

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    invoke-virtual {v0, v3, v4}, Lcom/microsoft/bond/Variant;->setDouble_value(D)V

    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, LMicrosoft/Telemetry/Envelope$Schema;->epoch_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "epoch"

    const-string v3, "Epoch"

    .line 3
    invoke-static {v0, v1, v2, v3}, La/a;->a(Lcom/microsoft/bond/Metadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/bond/Metadata;

    move-result-object v0

    .line 4
    sput-object v0, LMicrosoft/Telemetry/Envelope$Schema;->seqNum_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "seqNum"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v1

    const-string v3, "SequenceNumber"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v0

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/microsoft/bond/Variant;->setInt_value(J)V

    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, LMicrosoft/Telemetry/Envelope$Schema;->iKey_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "iKey"

    const-string v5, "InstrumentationKey"

    .line 5
    invoke-static {v0, v1, v2, v5}, La/a;->a(Lcom/microsoft/bond/Metadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/bond/Metadata;

    move-result-object v0

    .line 6
    sput-object v0, LMicrosoft/Telemetry/Envelope$Schema;->flags_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "flags"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v1

    const-string v5, "TelemetryProperties"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/microsoft/bond/Variant;->setInt_value(J)V

    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, LMicrosoft/Telemetry/Envelope$Schema;->os_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "os"

    const-string v3, "OsPlatform"

    .line 7
    invoke-static {v0, v1, v2, v3}, La/a;->a(Lcom/microsoft/bond/Metadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/bond/Metadata;

    move-result-object v0

    .line 8
    sput-object v0, LMicrosoft/Telemetry/Envelope$Schema;->osVer_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "osVer"

    const-string v3, "OsVersion"

    .line 9
    invoke-static {v0, v1, v2, v3}, La/a;->a(Lcom/microsoft/bond/Metadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/bond/Metadata;

    move-result-object v0

    .line 10
    sput-object v0, LMicrosoft/Telemetry/Envelope$Schema;->appId_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "appId"

    const-string v3, "ApplicationId"

    .line 11
    invoke-static {v0, v1, v2, v3}, La/a;->a(Lcom/microsoft/bond/Metadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/bond/Metadata;

    move-result-object v0

    .line 12
    sput-object v0, LMicrosoft/Telemetry/Envelope$Schema;->appVer_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "appVer"

    const-string v3, "ApplicationVersion"

    .line 13
    invoke-static {v0, v1, v2, v3}, La/a;->a(Lcom/microsoft/bond/Metadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/bond/Metadata;

    move-result-object v0

    .line 14
    sput-object v0, LMicrosoft/Telemetry/Envelope$Schema;->cV_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "cV"

    const-string v3, "CorrelationVector"

    .line 15
    invoke-static {v0, v1, v2, v3}, La/a;->a(Lcom/microsoft/bond/Metadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/bond/Metadata;

    move-result-object v0

    .line 16
    sput-object v0, LMicrosoft/Telemetry/Envelope$Schema;->tags_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "tags"

    const-string v3, "Tags"

    .line 17
    invoke-static {v0, v1, v2, v3}, La/a;->a(Lcom/microsoft/bond/Metadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/bond/Metadata;

    move-result-object v0

    .line 18
    sput-object v0, LMicrosoft/Telemetry/Envelope$Schema;->ext_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "ext"

    const-string v3, "Extensions"

    .line 19
    invoke-static {v0, v1, v2, v3}, La/a;->a(Lcom/microsoft/bond/Metadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/bond/Metadata;

    move-result-object v0

    .line 20
    sput-object v0, LMicrosoft/Telemetry/Envelope$Schema;->data_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "TelemetryData"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/microsoft/bond/SchemaDef;

    invoke-direct {v0}, Lcom/microsoft/bond/SchemaDef;-><init>()V

    sput-object v0, LMicrosoft/Telemetry/Envelope$Schema;->schemaDef:Lcom/microsoft/bond/SchemaDef;

    invoke-static {v0}, LMicrosoft/Telemetry/Envelope$Schema;->getTypeDef(Lcom/microsoft/bond/SchemaDef;)Lcom/microsoft/bond/TypeDef;

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

    sget-object v0, LMicrosoft/Telemetry/Envelope$Schema;->ver_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method public static synthetic access$100()Lcom/microsoft/bond/Metadata;
    .registers 1

    sget-object v0, LMicrosoft/Telemetry/Envelope$Schema;->name_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method public static synthetic access$1000()Lcom/microsoft/bond/Metadata;
    .registers 1

    sget-object v0, LMicrosoft/Telemetry/Envelope$Schema;->appId_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method public static synthetic access$1100()Lcom/microsoft/bond/Metadata;
    .registers 1

    sget-object v0, LMicrosoft/Telemetry/Envelope$Schema;->appVer_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method public static synthetic access$1200()Lcom/microsoft/bond/Metadata;
    .registers 1

    sget-object v0, LMicrosoft/Telemetry/Envelope$Schema;->cV_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method public static synthetic access$1300()Lcom/microsoft/bond/Metadata;
    .registers 1

    sget-object v0, LMicrosoft/Telemetry/Envelope$Schema;->tags_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method public static synthetic access$1400()Lcom/microsoft/bond/Metadata;
    .registers 1

    sget-object v0, LMicrosoft/Telemetry/Envelope$Schema;->ext_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method public static synthetic access$1500()Lcom/microsoft/bond/Metadata;
    .registers 1

    sget-object v0, LMicrosoft/Telemetry/Envelope$Schema;->data_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method public static synthetic access$200()Lcom/microsoft/bond/Metadata;
    .registers 1

    sget-object v0, LMicrosoft/Telemetry/Envelope$Schema;->time_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method public static synthetic access$300()Lcom/microsoft/bond/Metadata;
    .registers 1

    sget-object v0, LMicrosoft/Telemetry/Envelope$Schema;->popSample_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method public static synthetic access$400()Lcom/microsoft/bond/Metadata;
    .registers 1

    sget-object v0, LMicrosoft/Telemetry/Envelope$Schema;->epoch_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method public static synthetic access$500()Lcom/microsoft/bond/Metadata;
    .registers 1

    sget-object v0, LMicrosoft/Telemetry/Envelope$Schema;->seqNum_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method public static synthetic access$600()Lcom/microsoft/bond/Metadata;
    .registers 1

    sget-object v0, LMicrosoft/Telemetry/Envelope$Schema;->iKey_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method public static synthetic access$700()Lcom/microsoft/bond/Metadata;
    .registers 1

    sget-object v0, LMicrosoft/Telemetry/Envelope$Schema;->flags_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method public static synthetic access$800()Lcom/microsoft/bond/Metadata;
    .registers 1

    sget-object v0, LMicrosoft/Telemetry/Envelope$Schema;->os_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method public static synthetic access$900()Lcom/microsoft/bond/Metadata;
    .registers 1

    sget-object v0, LMicrosoft/Telemetry/Envelope$Schema;->osVer_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method private static getStructDef(Lcom/microsoft/bond/SchemaDef;)S
    .registers 8

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

    sget-object v2, LMicrosoft/Telemetry/Envelope$Schema;->metadata:Lcom/microsoft/bond/Metadata;

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

    sget-object v2, LMicrosoft/Telemetry/Envelope$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v1, v2}, Lcom/microsoft/bond/StructDef;->setMetadata(Lcom/microsoft/bond/Metadata;)V

    new-instance v2, Lcom/microsoft/bond/FieldDef;

    invoke-direct {v2}, Lcom/microsoft/bond/FieldDef;-><init>()V

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    sget-object v3, LMicrosoft/Telemetry/Envelope$Schema;->ver_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v2, v3}, Lcom/microsoft/bond/FieldDef;->setMetadata(Lcom/microsoft/bond/Metadata;)V

    invoke-virtual {v2}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    const/16 v5, 0x14

    .line 1
    invoke-static {v3, v4, v1, v2, v5}, La/c;->b(Lcom/microsoft/bond/TypeDef;Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/StructDef;Lcom/microsoft/bond/FieldDef;S)Lcom/microsoft/bond/FieldDef;

    move-result-object v2

    .line 2
    sget-object v3, LMicrosoft/Telemetry/Envelope$Schema;->name_metadata:Lcom/microsoft/bond/Metadata;

    .line 3
    invoke-static {v2, v3, v4, v1, v2}, La/b;->b(Lcom/microsoft/bond/FieldDef;Lcom/microsoft/bond/Metadata;Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/StructDef;Lcom/microsoft/bond/FieldDef;)Lcom/microsoft/bond/FieldDef;

    move-result-object v2

    const/16 v3, 0x1e

    .line 4
    invoke-virtual {v2, v3}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    sget-object v3, LMicrosoft/Telemetry/Envelope$Schema;->time_metadata:Lcom/microsoft/bond/Metadata;

    .line 5
    invoke-static {v2, v3, v4, v1, v2}, La/b;->b(Lcom/microsoft/bond/FieldDef;Lcom/microsoft/bond/Metadata;Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/StructDef;Lcom/microsoft/bond/FieldDef;)Lcom/microsoft/bond/FieldDef;

    move-result-object v2

    const/16 v3, 0x28

    .line 6
    invoke-virtual {v2, v3}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    sget-object v3, LMicrosoft/Telemetry/Envelope$Schema;->popSample_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v2, v3}, Lcom/microsoft/bond/FieldDef;->setMetadata(Lcom/microsoft/bond/Metadata;)V

    invoke-virtual {v2}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    sget-object v5, Lcom/microsoft/bond/BondDataType;->BT_DOUBLE:Lcom/microsoft/bond/BondDataType;

    const/16 v6, 0x32

    .line 7
    invoke-static {v3, v5, v1, v2, v6}, La/c;->b(Lcom/microsoft/bond/TypeDef;Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/StructDef;Lcom/microsoft/bond/FieldDef;S)Lcom/microsoft/bond/FieldDef;

    move-result-object v2

    .line 8
    sget-object v3, LMicrosoft/Telemetry/Envelope$Schema;->epoch_metadata:Lcom/microsoft/bond/Metadata;

    .line 9
    invoke-static {v2, v3, v4, v1, v2}, La/b;->b(Lcom/microsoft/bond/FieldDef;Lcom/microsoft/bond/Metadata;Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/StructDef;Lcom/microsoft/bond/FieldDef;)Lcom/microsoft/bond/FieldDef;

    move-result-object v2

    const/16 v3, 0x3c

    .line 10
    invoke-virtual {v2, v3}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    sget-object v3, LMicrosoft/Telemetry/Envelope$Schema;->seqNum_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v2, v3}, Lcom/microsoft/bond/FieldDef;->setMetadata(Lcom/microsoft/bond/Metadata;)V

    invoke-virtual {v2}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    sget-object v5, Lcom/microsoft/bond/BondDataType;->BT_INT64:Lcom/microsoft/bond/BondDataType;

    const/16 v6, 0x46

    .line 11
    invoke-static {v3, v5, v1, v2, v6}, La/c;->b(Lcom/microsoft/bond/TypeDef;Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/StructDef;Lcom/microsoft/bond/FieldDef;S)Lcom/microsoft/bond/FieldDef;

    move-result-object v2

    .line 12
    sget-object v3, LMicrosoft/Telemetry/Envelope$Schema;->iKey_metadata:Lcom/microsoft/bond/Metadata;

    .line 13
    invoke-static {v2, v3, v4, v1, v2}, La/b;->b(Lcom/microsoft/bond/FieldDef;Lcom/microsoft/bond/Metadata;Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/StructDef;Lcom/microsoft/bond/FieldDef;)Lcom/microsoft/bond/FieldDef;

    move-result-object v2

    const/16 v3, 0x50

    .line 14
    invoke-virtual {v2, v3}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    sget-object v3, LMicrosoft/Telemetry/Envelope$Schema;->flags_metadata:Lcom/microsoft/bond/Metadata;

    .line 15
    invoke-static {v2, v3, v5, v1, v2}, La/b;->b(Lcom/microsoft/bond/FieldDef;Lcom/microsoft/bond/Metadata;Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/StructDef;Lcom/microsoft/bond/FieldDef;)Lcom/microsoft/bond/FieldDef;

    move-result-object v2

    const/16 v3, 0x5a

    .line 16
    invoke-virtual {v2, v3}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    sget-object v3, LMicrosoft/Telemetry/Envelope$Schema;->os_metadata:Lcom/microsoft/bond/Metadata;

    .line 17
    invoke-static {v2, v3, v4, v1, v2}, La/b;->b(Lcom/microsoft/bond/FieldDef;Lcom/microsoft/bond/Metadata;Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/StructDef;Lcom/microsoft/bond/FieldDef;)Lcom/microsoft/bond/FieldDef;

    move-result-object v2

    const/16 v3, 0x64

    .line 18
    invoke-virtual {v2, v3}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    sget-object v3, LMicrosoft/Telemetry/Envelope$Schema;->osVer_metadata:Lcom/microsoft/bond/Metadata;

    .line 19
    invoke-static {v2, v3, v4, v1, v2}, La/b;->b(Lcom/microsoft/bond/FieldDef;Lcom/microsoft/bond/Metadata;Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/StructDef;Lcom/microsoft/bond/FieldDef;)Lcom/microsoft/bond/FieldDef;

    move-result-object v2

    const/16 v3, 0x6e

    .line 20
    invoke-virtual {v2, v3}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    sget-object v3, LMicrosoft/Telemetry/Envelope$Schema;->appId_metadata:Lcom/microsoft/bond/Metadata;

    .line 21
    invoke-static {v2, v3, v4, v1, v2}, La/b;->b(Lcom/microsoft/bond/FieldDef;Lcom/microsoft/bond/Metadata;Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/StructDef;Lcom/microsoft/bond/FieldDef;)Lcom/microsoft/bond/FieldDef;

    move-result-object v2

    const/16 v3, 0x78

    .line 22
    invoke-virtual {v2, v3}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    sget-object v3, LMicrosoft/Telemetry/Envelope$Schema;->appVer_metadata:Lcom/microsoft/bond/Metadata;

    .line 23
    invoke-static {v2, v3, v4, v1, v2}, La/b;->b(Lcom/microsoft/bond/FieldDef;Lcom/microsoft/bond/Metadata;Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/StructDef;Lcom/microsoft/bond/FieldDef;)Lcom/microsoft/bond/FieldDef;

    move-result-object v2

    const/16 v3, 0x82

    .line 24
    invoke-virtual {v2, v3}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    sget-object v3, LMicrosoft/Telemetry/Envelope$Schema;->cV_metadata:Lcom/microsoft/bond/Metadata;

    .line 25
    invoke-static {v2, v3, v4, v1, v2}, La/b;->b(Lcom/microsoft/bond/FieldDef;Lcom/microsoft/bond/Metadata;Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/StructDef;Lcom/microsoft/bond/FieldDef;)Lcom/microsoft/bond/FieldDef;

    move-result-object v2

    const/16 v3, 0x1f4

    .line 26
    invoke-virtual {v2, v3}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    sget-object v3, LMicrosoft/Telemetry/Envelope$Schema;->tags_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v2, v3}, Lcom/microsoft/bond/FieldDef;->setMetadata(Lcom/microsoft/bond/Metadata;)V

    invoke-virtual {v2}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    sget-object v5, Lcom/microsoft/bond/BondDataType;->BT_MAP:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {v3, v5}, Lcom/microsoft/bond/TypeDef;->setId(Lcom/microsoft/bond/BondDataType;)V

    invoke-virtual {v2}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    new-instance v6, Lcom/microsoft/bond/TypeDef;

    invoke-direct {v6}, Lcom/microsoft/bond/TypeDef;-><init>()V

    invoke-virtual {v3, v6}, Lcom/microsoft/bond/TypeDef;->setKey(Lcom/microsoft/bond/TypeDef;)V

    invoke-virtual {v2}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    new-instance v6, Lcom/microsoft/bond/TypeDef;

    invoke-direct {v6}, Lcom/microsoft/bond/TypeDef;-><init>()V

    invoke-virtual {v3, v6}, Lcom/microsoft/bond/TypeDef;->setElement(Lcom/microsoft/bond/TypeDef;)V

    invoke-virtual {v2}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/bond/TypeDef;->getKey()Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/microsoft/bond/TypeDef;->setId(Lcom/microsoft/bond/BondDataType;)V

    invoke-virtual {v2}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/bond/TypeDef;->getElement()Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/microsoft/bond/TypeDef;->setId(Lcom/microsoft/bond/BondDataType;)V

    invoke-virtual {v1}, Lcom/microsoft/bond/StructDef;->getFields()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/microsoft/bond/FieldDef;

    invoke-direct {v2}, Lcom/microsoft/bond/FieldDef;-><init>()V

    const/16 v3, 0x1fe

    invoke-virtual {v2, v3}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    sget-object v3, LMicrosoft/Telemetry/Envelope$Schema;->ext_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v2, v3}, Lcom/microsoft/bond/FieldDef;->setMetadata(Lcom/microsoft/bond/Metadata;)V

    invoke-virtual {v2}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/microsoft/bond/TypeDef;->setId(Lcom/microsoft/bond/BondDataType;)V

    invoke-virtual {v2}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    new-instance v5, Lcom/microsoft/bond/TypeDef;

    invoke-direct {v5}, Lcom/microsoft/bond/TypeDef;-><init>()V

    invoke-virtual {v3, v5}, Lcom/microsoft/bond/TypeDef;->setKey(Lcom/microsoft/bond/TypeDef;)V

    invoke-virtual {v2}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    new-instance v5, Lcom/microsoft/bond/TypeDef;

    invoke-direct {v5}, Lcom/microsoft/bond/TypeDef;-><init>()V

    invoke-virtual {v3, v5}, Lcom/microsoft/bond/TypeDef;->setElement(Lcom/microsoft/bond/TypeDef;)V

    invoke-virtual {v2}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/bond/TypeDef;->getKey()Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/microsoft/bond/TypeDef;->setId(Lcom/microsoft/bond/BondDataType;)V

    invoke-virtual {v2}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    invoke-static {p0}, LMicrosoft/Telemetry/Extension$Schema;->getTypeDef(Lcom/microsoft/bond/SchemaDef;)Lcom/microsoft/bond/TypeDef;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/microsoft/bond/TypeDef;->setElement(Lcom/microsoft/bond/TypeDef;)V

    invoke-virtual {v1}, Lcom/microsoft/bond/StructDef;->getFields()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/microsoft/bond/FieldDef;

    invoke-direct {v2}, Lcom/microsoft/bond/FieldDef;-><init>()V

    const/16 v3, 0x3e7

    invoke-virtual {v2, v3}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    sget-object v3, LMicrosoft/Telemetry/Envelope$Schema;->data_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v2, v3}, Lcom/microsoft/bond/FieldDef;->setMetadata(Lcom/microsoft/bond/Metadata;)V

    invoke-static {p0}, LMicrosoft/Telemetry/Base$Schema;->getTypeDef(Lcom/microsoft/bond/SchemaDef;)Lcom/microsoft/bond/TypeDef;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/microsoft/bond/FieldDef;->setType(Lcom/microsoft/bond/TypeDef;)V

    invoke-virtual {v1}, Lcom/microsoft/bond/StructDef;->getFields()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v0
.end method

.method public static getTypeDef(Lcom/microsoft/bond/SchemaDef;)Lcom/microsoft/bond/TypeDef;
    .registers 3

    new-instance v0, Lcom/microsoft/bond/TypeDef;

    invoke-direct {v0}, Lcom/microsoft/bond/TypeDef;-><init>()V

    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/TypeDef;->setId(Lcom/microsoft/bond/BondDataType;)V

    invoke-static {p0}, LMicrosoft/Telemetry/Envelope$Schema;->getStructDef(Lcom/microsoft/bond/SchemaDef;)S

    move-result p0

    invoke-virtual {v0, p0}, Lcom/microsoft/bond/TypeDef;->setStruct_def(S)V

    return-object v0
.end method
