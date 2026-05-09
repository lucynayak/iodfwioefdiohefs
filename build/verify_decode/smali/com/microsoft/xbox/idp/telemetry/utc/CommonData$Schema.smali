.class public Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Schema"
.end annotation


# static fields
.field private static final accessibilityInfo_metadata:Lcom/microsoft/bond/Metadata;

.field private static final additionalInfo_metadata:Lcom/microsoft/bond/Metadata;

.field private static final appName_metadata:Lcom/microsoft/bond/Metadata;

.field private static final appSessionId_metadata:Lcom/microsoft/bond/Metadata;

.field private static final clientLanguage_metadata:Lcom/microsoft/bond/Metadata;

.field private static final deviceModel_metadata:Lcom/microsoft/bond/Metadata;

.field private static final eventVersion_metadata:Lcom/microsoft/bond/Metadata;

.field public static final metadata:Lcom/microsoft/bond/Metadata;

.field private static final network_metadata:Lcom/microsoft/bond/Metadata;

.field private static final sandboxId_metadata:Lcom/microsoft/bond/Metadata;

.field public static final schemaDef:Lcom/microsoft/bond/SchemaDef;

.field private static final titleDeviceId_metadata:Lcom/microsoft/bond/Metadata;

.field private static final titleSessionId_metadata:Lcom/microsoft/bond/Metadata;

.field private static final userId_metadata:Lcom/microsoft/bond/Metadata;

.field private static final xsapiVersion_metadata:Lcom/microsoft/bond/Metadata;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "CommonData"

    const-string v2, "com.microsoft.xbox.idp.telemetry.utc.CommonData"

    const-string v3, "Description"

    const-string v4, "OnlineId base event with required fields"

    .line 1
    invoke-static {v0, v1, v2, v3, v4}, La/a;->b(Lcom/microsoft/bond/Metadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/bond/Metadata;

    move-result-object v0

    .line 2
    sput-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->eventVersion_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "eventVersion"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    sget-object v1, Lcom/microsoft/bond/Modifier;->Required:Lcom/microsoft/bond/Modifier;

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setModifier(Lcom/microsoft/bond/Modifier;)V

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "The event\'s version in the form of A.B.C where each subfield is the version for Part A, B, or C respectively.  This helps the backend cookers and processers adjust to different versions of the event schema"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->deviceModel_metadata:Lcom/microsoft/bond/Metadata;

    const-string v2, "deviceModel"

    invoke-virtual {v0, v2}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setModifier(Lcom/microsoft/bond/Modifier;)V

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "The specific model of the device.  On Android this is from the constant: android.os.Build.MODEL.  NOTE: For completeness, one should prepend android.os.Build.MANUFACTURER to this value if the MFG name is not part of the model name."

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->xsapiVersion_metadata:Lcom/microsoft/bond/Metadata;

    const-string v2, "xsapiVersion"

    invoke-virtual {v0, v2}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setModifier(Lcom/microsoft/bond/Modifier;)V

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "The xsapi version.  Should get this from the xsapi build properties"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->appName_metadata:Lcom/microsoft/bond/Metadata;

    const-string v2, "appName"

    invoke-virtual {v0, v2}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setModifier(Lcom/microsoft/bond/Modifier;)V

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "The application name"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->clientLanguage_metadata:Lcom/microsoft/bond/Metadata;

    const-string v2, "clientLanguage"

    invoke-virtual {v0, v2}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setModifier(Lcom/microsoft/bond/Modifier;)V

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "The system language-region (for example, en-US = english in USA)."

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->network_metadata:Lcom/microsoft/bond/Metadata;

    const-string v2, "network"

    invoke-virtual {v0, v2}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setModifier(Lcom/microsoft/bond/Modifier;)V

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v2

    const-string v4, "The network connection being used (0 = unknown | 1 = wifi | 2 = cellular | 3 = wired)"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/microsoft/bond/Variant;->setUint_value(J)V

    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->sandboxId_metadata:Lcom/microsoft/bond/Metadata;

    const-string v2, "sandboxId"

    invoke-virtual {v0, v2}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setModifier(Lcom/microsoft/bond/Modifier;)V

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "The xsapi sandbox for service calls"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->appSessionId_metadata:Lcom/microsoft/bond/Metadata;

    const-string v2, "appSessionId"

    invoke-virtual {v0, v2}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setModifier(Lcom/microsoft/bond/Modifier;)V

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "The sessionId for the app; gets set on first use of telemetry -- useful for binding events together into scenarios and analyzing flow"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->userId_metadata:Lcom/microsoft/bond/Metadata;

    const-string v2, "userId"

    invoke-virtual {v0, v2}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setModifier(Lcom/microsoft/bond/Modifier;)V

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "The User Id"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->additionalInfo_metadata:Lcom/microsoft/bond/Metadata;

    const-string v2, "additionalInfo"

    invoke-virtual {v0, v2}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setModifier(Lcom/microsoft/bond/Modifier;)V

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "The json key-value collection of data that gives greater meaning to the event"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->accessibilityInfo_metadata:Lcom/microsoft/bond/Metadata;

    const-string v2, "accessibilityInfo"

    invoke-virtual {v0, v2}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setModifier(Lcom/microsoft/bond/Modifier;)V

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "The json key-value collection of accessibility settings -- information within will differ by platform"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->titleDeviceId_metadata:Lcom/microsoft/bond/Metadata;

    const-string v2, "titleDeviceId"

    invoke-virtual {v0, v2}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setModifier(Lcom/microsoft/bond/Modifier;)V

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "The device guid from the title hosting xsapi idp or tcui"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->titleSessionId_metadata:Lcom/microsoft/bond/Metadata;

    const-string v2, "titleSessionId"

    invoke-virtual {v0, v2}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setModifier(Lcom/microsoft/bond/Modifier;)V

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "The session guid from the title hosting xsapi idp or tcui"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/microsoft/bond/SchemaDef;

    invoke-direct {v0}, Lcom/microsoft/bond/SchemaDef;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->schemaDef:Lcom/microsoft/bond/SchemaDef;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->getTypeDef(Lcom/microsoft/bond/SchemaDef;)Lcom/microsoft/bond/TypeDef;

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

    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->eventVersion_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method public static synthetic access$100()Lcom/microsoft/bond/Metadata;
    .locals 1

    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->deviceModel_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method public static synthetic access$1000()Lcom/microsoft/bond/Metadata;
    .locals 1

    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->accessibilityInfo_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method public static synthetic access$1100()Lcom/microsoft/bond/Metadata;
    .locals 1

    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->titleDeviceId_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method public static synthetic access$1200()Lcom/microsoft/bond/Metadata;
    .locals 1

    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->titleSessionId_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method public static synthetic access$200()Lcom/microsoft/bond/Metadata;
    .locals 1

    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->xsapiVersion_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method public static synthetic access$300()Lcom/microsoft/bond/Metadata;
    .locals 1

    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->appName_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method public static synthetic access$400()Lcom/microsoft/bond/Metadata;
    .locals 1

    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->clientLanguage_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method public static synthetic access$500()Lcom/microsoft/bond/Metadata;
    .locals 1

    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->network_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method public static synthetic access$600()Lcom/microsoft/bond/Metadata;
    .locals 1

    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->sandboxId_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method public static synthetic access$700()Lcom/microsoft/bond/Metadata;
    .locals 1

    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->appSessionId_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method public static synthetic access$800()Lcom/microsoft/bond/Metadata;
    .locals 1

    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->userId_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method public static synthetic access$900()Lcom/microsoft/bond/Metadata;
    .locals 1

    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->additionalInfo_metadata:Lcom/microsoft/bond/Metadata;

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

    sget-object v2, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->metadata:Lcom/microsoft/bond/Metadata;

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

    sget-object v2, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v1, v2}, Lcom/microsoft/bond/StructDef;->setMetadata(Lcom/microsoft/bond/Metadata;)V

    invoke-static {p0}, LMicrosoft/Telemetry/Base$Schema;->getTypeDef(Lcom/microsoft/bond/SchemaDef;)Lcom/microsoft/bond/TypeDef;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/microsoft/bond/StructDef;->setBase_def(Lcom/microsoft/bond/TypeDef;)V

    new-instance p0, Lcom/microsoft/bond/FieldDef;

    invoke-direct {p0}, Lcom/microsoft/bond/FieldDef;-><init>()V

    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    sget-object v2, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->eventVersion_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {p0, v2}, Lcom/microsoft/bond/FieldDef;->setMetadata(Lcom/microsoft/bond/Metadata;)V

    invoke-virtual {p0}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v2

    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_WSTRING:Lcom/microsoft/bond/BondDataType;

    const/16 v4, 0x14

    .line 1
    invoke-static {v2, v3, v1, p0, v4}, La/c;->b(Lcom/microsoft/bond/TypeDef;Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/StructDef;Lcom/microsoft/bond/FieldDef;S)Lcom/microsoft/bond/FieldDef;

    move-result-object p0

    .line 2
    sget-object v2, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->deviceModel_metadata:Lcom/microsoft/bond/Metadata;

    .line 3
    invoke-static {p0, v2, v3, v1, p0}, La/b;->b(Lcom/microsoft/bond/FieldDef;Lcom/microsoft/bond/Metadata;Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/StructDef;Lcom/microsoft/bond/FieldDef;)Lcom/microsoft/bond/FieldDef;

    move-result-object p0

    const/16 v2, 0x1e

    .line 4
    invoke-virtual {p0, v2}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    sget-object v2, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->xsapiVersion_metadata:Lcom/microsoft/bond/Metadata;

    .line 5
    invoke-static {p0, v2, v3, v1, p0}, La/b;->b(Lcom/microsoft/bond/FieldDef;Lcom/microsoft/bond/Metadata;Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/StructDef;Lcom/microsoft/bond/FieldDef;)Lcom/microsoft/bond/FieldDef;

    move-result-object p0

    const/16 v2, 0x28

    .line 6
    invoke-virtual {p0, v2}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    sget-object v2, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->appName_metadata:Lcom/microsoft/bond/Metadata;

    .line 7
    invoke-static {p0, v2, v3, v1, p0}, La/b;->b(Lcom/microsoft/bond/FieldDef;Lcom/microsoft/bond/Metadata;Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/StructDef;Lcom/microsoft/bond/FieldDef;)Lcom/microsoft/bond/FieldDef;

    move-result-object p0

    const/16 v2, 0x32

    .line 8
    invoke-virtual {p0, v2}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    sget-object v2, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->clientLanguage_metadata:Lcom/microsoft/bond/Metadata;

    .line 9
    invoke-static {p0, v2, v3, v1, p0}, La/b;->b(Lcom/microsoft/bond/FieldDef;Lcom/microsoft/bond/Metadata;Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/StructDef;Lcom/microsoft/bond/FieldDef;)Lcom/microsoft/bond/FieldDef;

    move-result-object p0

    const/16 v2, 0x3c

    .line 10
    invoke-virtual {p0, v2}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    sget-object v2, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->network_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {p0, v2}, Lcom/microsoft/bond/FieldDef;->setMetadata(Lcom/microsoft/bond/Metadata;)V

    invoke-virtual {p0}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v2

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_UINT32:Lcom/microsoft/bond/BondDataType;

    const/16 v5, 0x46

    .line 11
    invoke-static {v2, v4, v1, p0, v5}, La/c;->b(Lcom/microsoft/bond/TypeDef;Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/StructDef;Lcom/microsoft/bond/FieldDef;S)Lcom/microsoft/bond/FieldDef;

    move-result-object p0

    .line 12
    sget-object v2, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->sandboxId_metadata:Lcom/microsoft/bond/Metadata;

    .line 13
    invoke-static {p0, v2, v3, v1, p0}, La/b;->b(Lcom/microsoft/bond/FieldDef;Lcom/microsoft/bond/Metadata;Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/StructDef;Lcom/microsoft/bond/FieldDef;)Lcom/microsoft/bond/FieldDef;

    move-result-object p0

    const/16 v2, 0x50

    .line 14
    invoke-virtual {p0, v2}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    sget-object v2, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->appSessionId_metadata:Lcom/microsoft/bond/Metadata;

    .line 15
    invoke-static {p0, v2, v3, v1, p0}, La/b;->b(Lcom/microsoft/bond/FieldDef;Lcom/microsoft/bond/Metadata;Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/StructDef;Lcom/microsoft/bond/FieldDef;)Lcom/microsoft/bond/FieldDef;

    move-result-object p0

    const/16 v2, 0x5a

    .line 16
    invoke-virtual {p0, v2}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    sget-object v2, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->userId_metadata:Lcom/microsoft/bond/Metadata;

    .line 17
    invoke-static {p0, v2, v3, v1, p0}, La/b;->b(Lcom/microsoft/bond/FieldDef;Lcom/microsoft/bond/Metadata;Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/StructDef;Lcom/microsoft/bond/FieldDef;)Lcom/microsoft/bond/FieldDef;

    move-result-object p0

    const/16 v2, 0x64

    .line 18
    invoke-virtual {p0, v2}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    sget-object v2, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->additionalInfo_metadata:Lcom/microsoft/bond/Metadata;

    .line 19
    invoke-static {p0, v2, v3, v1, p0}, La/b;->b(Lcom/microsoft/bond/FieldDef;Lcom/microsoft/bond/Metadata;Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/StructDef;Lcom/microsoft/bond/FieldDef;)Lcom/microsoft/bond/FieldDef;

    move-result-object p0

    const/16 v2, 0x6e

    .line 20
    invoke-virtual {p0, v2}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    sget-object v2, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->accessibilityInfo_metadata:Lcom/microsoft/bond/Metadata;

    .line 21
    invoke-static {p0, v2, v3, v1, p0}, La/b;->b(Lcom/microsoft/bond/FieldDef;Lcom/microsoft/bond/Metadata;Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/StructDef;Lcom/microsoft/bond/FieldDef;)Lcom/microsoft/bond/FieldDef;

    move-result-object p0

    const/16 v2, 0x78

    .line 22
    invoke-virtual {p0, v2}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    sget-object v2, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->titleDeviceId_metadata:Lcom/microsoft/bond/Metadata;

    .line 23
    invoke-static {p0, v2, v3, v1, p0}, La/b;->b(Lcom/microsoft/bond/FieldDef;Lcom/microsoft/bond/Metadata;Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/StructDef;Lcom/microsoft/bond/FieldDef;)Lcom/microsoft/bond/FieldDef;

    move-result-object p0

    const/16 v2, 0x82

    .line 24
    invoke-virtual {p0, v2}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    sget-object v2, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->titleSessionId_metadata:Lcom/microsoft/bond/Metadata;

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

    invoke-static {p0}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->getStructDef(Lcom/microsoft/bond/SchemaDef;)S

    move-result p0

    invoke-virtual {v0, p0}, Lcom/microsoft/bond/TypeDef;->setStruct_def(S)V

    return-object v0
.end method
