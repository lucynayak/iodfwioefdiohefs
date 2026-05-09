.class public LMicrosoft/Telemetry/Extensions/xbox$Schema;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LMicrosoft/Telemetry/Extensions/xbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Schema"
.end annotation


# static fields
.field private static final deviceType_metadata:Lcom/microsoft/bond/Metadata;

.field private static final eventSequence_metadata:Lcom/microsoft/bond/Metadata;

.field private static final expiryTimestamp_metadata:Lcom/microsoft/bond/Metadata;

.field private static final isDevelopmentAccount_metadata:Lcom/microsoft/bond/Metadata;

.field private static final isTestAccount_metadata:Lcom/microsoft/bond/Metadata;

.field private static final issueTimestamp_metadata:Lcom/microsoft/bond/Metadata;

.field public static final metadata:Lcom/microsoft/bond/Metadata;

.field private static final sandboxId_metadata:Lcom/microsoft/bond/Metadata;

.field public static final schemaDef:Lcom/microsoft/bond/SchemaDef;

.field private static final signedInUsers_metadata:Lcom/microsoft/bond/Metadata;

.field private static final sti_metadata:Lcom/microsoft/bond/Metadata;

.field private static final titleId_metadata:Lcom/microsoft/bond/Metadata;

.field private static final xblDeviceId_metadata:Lcom/microsoft/bond/Metadata;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "xbox"

    const-string v2, "Microsoft.Telemetry.Extensions.xbox"

    const-string v3, "Description"

    const-string v4, "Describes the XBox related fields and might be populated by the console."

    .line 1
    invoke-static {v0, v1, v2, v3, v4}, La/a;->b(Lcom/microsoft/bond/Metadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/bond/Metadata;

    move-result-object v0

    .line 2
    sput-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->sti_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "sti"

    const-string v2, "XBox supporting token index."

    .line 3
    invoke-static {v0, v1, v3, v2}, La/a;->a(Lcom/microsoft/bond/Metadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/bond/Metadata;

    move-result-object v0

    .line 4
    sput-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->eventSequence_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "eventSequence"

    const-string v2, "XBox event sequence."

    .line 5
    invoke-static {v0, v1, v3, v2}, La/a;->a(Lcom/microsoft/bond/Metadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/bond/Metadata;

    move-result-object v0

    .line 6
    sput-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->issueTimestamp_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "issueTimestamp"

    const-string v2, "Xbox token issue timestamp."

    .line 7
    invoke-static {v0, v1, v3, v2}, La/a;->a(Lcom/microsoft/bond/Metadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/bond/Metadata;

    move-result-object v0

    .line 8
    sput-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->expiryTimestamp_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "expiryTimestamp"

    const-string v2, "XBox token expiry timestamp."

    .line 9
    invoke-static {v0, v1, v3, v2}, La/a;->a(Lcom/microsoft/bond/Metadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/bond/Metadata;

    move-result-object v0

    .line 10
    sput-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->sandboxId_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "sandboxId"

    const-string v2, "Xbox sandboxId."

    .line 11
    invoke-static {v0, v1, v3, v2}, La/a;->a(Lcom/microsoft/bond/Metadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/bond/Metadata;

    move-result-object v0

    .line 12
    sput-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->deviceType_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "deviceType"

    const-string v2, "XBox device type."

    .line 13
    invoke-static {v0, v1, v3, v2}, La/a;->a(Lcom/microsoft/bond/Metadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/bond/Metadata;

    move-result-object v0

    .line 14
    sput-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->xblDeviceId_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "xblDeviceId"

    const-string v2, "Xbox live deviceId."

    .line 15
    invoke-static {v0, v1, v3, v2}, La/a;->a(Lcom/microsoft/bond/Metadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/bond/Metadata;

    move-result-object v0

    .line 16
    sput-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->signedInUsers_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "signedInUsers"

    const-string v2, "XBox signed in Xuids."

    .line 17
    invoke-static {v0, v1, v3, v2}, La/a;->a(Lcom/microsoft/bond/Metadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/bond/Metadata;

    move-result-object v0

    .line 18
    sput-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->isDevelopmentAccount_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "isDevelopmentAccount"

    const-string v2, "XBox is development account."

    .line 19
    invoke-static {v0, v1, v3, v2}, La/a;->a(Lcom/microsoft/bond/Metadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/bond/Metadata;

    move-result-object v0

    .line 20
    sput-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->isTestAccount_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "isTestAccount"

    const-string v2, "XBox is test account."

    .line 21
    invoke-static {v0, v1, v3, v2}, La/a;->a(Lcom/microsoft/bond/Metadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/bond/Metadata;

    move-result-object v0

    .line 22
    sput-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->titleId_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "titleId"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "XBox titleId."

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/microsoft/bond/SchemaDef;

    invoke-direct {v0}, Lcom/microsoft/bond/SchemaDef;-><init>()V

    sput-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->schemaDef:Lcom/microsoft/bond/SchemaDef;

    invoke-static {v0}, LMicrosoft/Telemetry/Extensions/xbox$Schema;->getTypeDef(Lcom/microsoft/bond/SchemaDef;)Lcom/microsoft/bond/TypeDef;

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

    sget-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->sti_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method public static synthetic access$100()Lcom/microsoft/bond/Metadata;
    .registers 1

    sget-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->eventSequence_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method public static synthetic access$1000()Lcom/microsoft/bond/Metadata;
    .registers 1

    sget-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->titleId_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method public static synthetic access$200()Lcom/microsoft/bond/Metadata;
    .registers 1

    sget-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->issueTimestamp_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method public static synthetic access$300()Lcom/microsoft/bond/Metadata;
    .registers 1

    sget-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->expiryTimestamp_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method public static synthetic access$400()Lcom/microsoft/bond/Metadata;
    .registers 1

    sget-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->sandboxId_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method public static synthetic access$500()Lcom/microsoft/bond/Metadata;
    .registers 1

    sget-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->deviceType_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method public static synthetic access$600()Lcom/microsoft/bond/Metadata;
    .registers 1

    sget-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->xblDeviceId_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method public static synthetic access$700()Lcom/microsoft/bond/Metadata;
    .registers 1

    sget-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->signedInUsers_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method public static synthetic access$800()Lcom/microsoft/bond/Metadata;
    .registers 1

    sget-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->isDevelopmentAccount_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method public static synthetic access$900()Lcom/microsoft/bond/Metadata;
    .registers 1

    sget-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->isTestAccount_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method private static getStructDef(Lcom/microsoft/bond/SchemaDef;)S
    .registers 6

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

    sget-object v2, LMicrosoft/Telemetry/Extensions/xbox$Schema;->metadata:Lcom/microsoft/bond/Metadata;

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

    sget-object v2, LMicrosoft/Telemetry/Extensions/xbox$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v1, v2}, Lcom/microsoft/bond/StructDef;->setMetadata(Lcom/microsoft/bond/Metadata;)V

    invoke-static {p0}, LMicrosoft/Telemetry/Extension$Schema;->getTypeDef(Lcom/microsoft/bond/SchemaDef;)Lcom/microsoft/bond/TypeDef;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/microsoft/bond/StructDef;->setBase_def(Lcom/microsoft/bond/TypeDef;)V

    new-instance p0, Lcom/microsoft/bond/FieldDef;

    invoke-direct {p0}, Lcom/microsoft/bond/FieldDef;-><init>()V

    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    sget-object v2, LMicrosoft/Telemetry/Extensions/xbox$Schema;->sti_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {p0, v2}, Lcom/microsoft/bond/FieldDef;->setMetadata(Lcom/microsoft/bond/Metadata;)V

    invoke-virtual {p0}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v2

    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    const/16 v4, 0x14

    .line 1
    invoke-static {v2, v3, v1, p0, v4}, La/c;->b(Lcom/microsoft/bond/TypeDef;Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/StructDef;Lcom/microsoft/bond/FieldDef;S)Lcom/microsoft/bond/FieldDef;

    move-result-object p0

    .line 2
    sget-object v2, LMicrosoft/Telemetry/Extensions/xbox$Schema;->eventSequence_metadata:Lcom/microsoft/bond/Metadata;

    .line 3
    invoke-static {p0, v2, v3, v1, p0}, La/b;->b(Lcom/microsoft/bond/FieldDef;Lcom/microsoft/bond/Metadata;Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/StructDef;Lcom/microsoft/bond/FieldDef;)Lcom/microsoft/bond/FieldDef;

    move-result-object p0

    const/16 v2, 0x1e

    .line 4
    invoke-virtual {p0, v2}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    sget-object v2, LMicrosoft/Telemetry/Extensions/xbox$Schema;->issueTimestamp_metadata:Lcom/microsoft/bond/Metadata;

    .line 5
    invoke-static {p0, v2, v3, v1, p0}, La/b;->b(Lcom/microsoft/bond/FieldDef;Lcom/microsoft/bond/Metadata;Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/StructDef;Lcom/microsoft/bond/FieldDef;)Lcom/microsoft/bond/FieldDef;

    move-result-object p0

    const/16 v2, 0x28

    .line 6
    invoke-virtual {p0, v2}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    sget-object v2, LMicrosoft/Telemetry/Extensions/xbox$Schema;->expiryTimestamp_metadata:Lcom/microsoft/bond/Metadata;

    .line 7
    invoke-static {p0, v2, v3, v1, p0}, La/b;->b(Lcom/microsoft/bond/FieldDef;Lcom/microsoft/bond/Metadata;Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/StructDef;Lcom/microsoft/bond/FieldDef;)Lcom/microsoft/bond/FieldDef;

    move-result-object p0

    const/16 v2, 0x32

    .line 8
    invoke-virtual {p0, v2}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    sget-object v2, LMicrosoft/Telemetry/Extensions/xbox$Schema;->sandboxId_metadata:Lcom/microsoft/bond/Metadata;

    .line 9
    invoke-static {p0, v2, v3, v1, p0}, La/b;->b(Lcom/microsoft/bond/FieldDef;Lcom/microsoft/bond/Metadata;Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/StructDef;Lcom/microsoft/bond/FieldDef;)Lcom/microsoft/bond/FieldDef;

    move-result-object p0

    const/16 v2, 0x3c

    .line 10
    invoke-virtual {p0, v2}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    sget-object v2, LMicrosoft/Telemetry/Extensions/xbox$Schema;->deviceType_metadata:Lcom/microsoft/bond/Metadata;

    .line 11
    invoke-static {p0, v2, v3, v1, p0}, La/b;->b(Lcom/microsoft/bond/FieldDef;Lcom/microsoft/bond/Metadata;Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/StructDef;Lcom/microsoft/bond/FieldDef;)Lcom/microsoft/bond/FieldDef;

    move-result-object p0

    const/16 v2, 0x46

    .line 12
    invoke-virtual {p0, v2}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    sget-object v2, LMicrosoft/Telemetry/Extensions/xbox$Schema;->xblDeviceId_metadata:Lcom/microsoft/bond/Metadata;

    .line 13
    invoke-static {p0, v2, v3, v1, p0}, La/b;->b(Lcom/microsoft/bond/FieldDef;Lcom/microsoft/bond/Metadata;Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/StructDef;Lcom/microsoft/bond/FieldDef;)Lcom/microsoft/bond/FieldDef;

    move-result-object p0

    const/16 v2, 0x50

    .line 14
    invoke-virtual {p0, v2}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    sget-object v2, LMicrosoft/Telemetry/Extensions/xbox$Schema;->signedInUsers_metadata:Lcom/microsoft/bond/Metadata;

    .line 15
    invoke-static {p0, v2, v3, v1, p0}, La/b;->b(Lcom/microsoft/bond/FieldDef;Lcom/microsoft/bond/Metadata;Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/StructDef;Lcom/microsoft/bond/FieldDef;)Lcom/microsoft/bond/FieldDef;

    move-result-object p0

    const/16 v2, 0x5a

    .line 16
    invoke-virtual {p0, v2}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    sget-object v2, LMicrosoft/Telemetry/Extensions/xbox$Schema;->isDevelopmentAccount_metadata:Lcom/microsoft/bond/Metadata;

    .line 17
    invoke-static {p0, v2, v3, v1, p0}, La/b;->b(Lcom/microsoft/bond/FieldDef;Lcom/microsoft/bond/Metadata;Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/StructDef;Lcom/microsoft/bond/FieldDef;)Lcom/microsoft/bond/FieldDef;

    move-result-object p0

    const/16 v2, 0x64

    .line 18
    invoke-virtual {p0, v2}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    sget-object v2, LMicrosoft/Telemetry/Extensions/xbox$Schema;->isTestAccount_metadata:Lcom/microsoft/bond/Metadata;

    .line 19
    invoke-static {p0, v2, v3, v1, p0}, La/b;->b(Lcom/microsoft/bond/FieldDef;Lcom/microsoft/bond/Metadata;Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/StructDef;Lcom/microsoft/bond/FieldDef;)Lcom/microsoft/bond/FieldDef;

    move-result-object p0

    const/16 v2, 0x6e

    .line 20
    invoke-virtual {p0, v2}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    sget-object v2, LMicrosoft/Telemetry/Extensions/xbox$Schema;->titleId_metadata:Lcom/microsoft/bond/Metadata;

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
    .registers 3

    new-instance v0, Lcom/microsoft/bond/TypeDef;

    invoke-direct {v0}, Lcom/microsoft/bond/TypeDef;-><init>()V

    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/TypeDef;->setId(Lcom/microsoft/bond/BondDataType;)V

    invoke-static {p0}, LMicrosoft/Telemetry/Extensions/xbox$Schema;->getStructDef(Lcom/microsoft/bond/SchemaDef;)S

    move-result p0

    invoke-virtual {v0, p0}, Lcom/microsoft/bond/TypeDef;->setStruct_def(S)V

    return-object v0
.end method
