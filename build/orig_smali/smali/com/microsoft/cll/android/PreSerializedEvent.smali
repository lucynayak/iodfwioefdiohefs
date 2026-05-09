.class public Lcom/microsoft/cll/android/PreSerializedEvent;
.super Lcom/microsoft/telemetry/Data;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidCll-PreSerializedEvent"


# instance fields
.field public serializedData:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/microsoft/telemetry/Data;-><init>()V

    iput-object p2, p0, Lcom/microsoft/cll/android/PreSerializedEvent;->serializedData:Ljava/lang/String;

    new-instance p2, Lcom/microsoft/telemetry/Domain;

    invoke-direct {p2}, Lcom/microsoft/telemetry/Domain;-><init>()V

    invoke-virtual {p0, p2}, Lcom/microsoft/telemetry/Data;->setBaseData(Lcom/microsoft/telemetry/Domain;)V

    invoke-virtual {p0}, Lcom/microsoft/telemetry/Data;->getBaseData()Lcom/microsoft/telemetry/Domain;

    move-result-object p2

    iput-object p3, p2, Lcom/microsoft/telemetry/Domain;->QualifiedName:Ljava/lang/String;

    iput-object p1, p0, Lcom/microsoft/telemetry/Base;->QualifiedName:Ljava/lang/String;

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/microsoft/telemetry/Base;->Attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, p4}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public static createFromDynamicEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/cll/android/PreSerializedEvent;
    .locals 3

    new-instance v0, Lcom/microsoft/cll/android/PreSerializedEvent;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/microsoft/cll/android/PreSerializedEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public static createFromStaticEvent(Lcom/microsoft/cll/android/ILogger;LMicrosoft/Telemetry/Base;)Lcom/microsoft/cll/android/PreSerializedEvent;
    .locals 4

    invoke-static {p1}, Lcom/microsoft/cll/android/PreSerializedEvent;->getPartCName(LMicrosoft/Telemetry/Base;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/microsoft/cll/android/PreSerializedEvent;->getPartBName(Lcom/microsoft/cll/android/ILogger;LMicrosoft/Telemetry/Base;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/microsoft/cll/android/PreSerializedEvent;->getAttributes(LMicrosoft/Telemetry/Base;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1, v1}, LMicrosoft/Telemetry/Base;->setBaseType(Ljava/lang/String;)V

    :cond_0
    new-instance v3, Lcom/microsoft/cll/android/PreSerializedEvent;

    invoke-static {p0, p1}, Lcom/microsoft/cll/android/PreSerializedEvent;->serializeEvent(Lcom/microsoft/cll/android/ILogger;LMicrosoft/Telemetry/Base;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, v0, p0, v1, v2}, Lcom/microsoft/cll/android/PreSerializedEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v3
.end method

.method private static getAttributes(LMicrosoft/Telemetry/Base;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LMicrosoft/Telemetry/Base;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, LMicrosoft/Telemetry/Base;->getSchema()Lcom/microsoft/bond/SchemaDef;

    move-result-object p0

    invoke-virtual {p0}, Lcom/microsoft/bond/SchemaDef;->getStructs()Ljava/util/ArrayList;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/microsoft/bond/StructDef;

    invoke-virtual {p0}, Lcom/microsoft/bond/StructDef;->getMetadata()Lcom/microsoft/bond/Metadata;

    move-result-object p0

    invoke-virtual {p0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method private static getPartBName(Lcom/microsoft/cll/android/ILogger;LMicrosoft/Telemetry/Base;)Ljava/lang/String;
    .locals 1

    :try_start_0
    check-cast p1, LMicrosoft/Telemetry/Data;

    invoke-virtual {p1}, LMicrosoft/Telemetry/Data;->getBaseData()Lcom/microsoft/bond/BondSerializable;

    move-result-object p1

    check-cast p1, LMicrosoft/Telemetry/Domain;

    invoke-virtual {p1}, LMicrosoft/Telemetry/Domain;->getSchema()Lcom/microsoft/bond/SchemaDef;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/bond/SchemaDef;->getStructs()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/bond/StructDef;

    invoke-virtual {p1}, Lcom/microsoft/bond/StructDef;->getMetadata()Lcom/microsoft/bond/Metadata;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/bond/Metadata;->getQualified_name()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p1, "AndroidCll-PreSerializedEvent"

    const-string v0, "This event doesn\'t extend data"

    invoke-interface {p0, p1, v0}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method private static getPartCName(LMicrosoft/Telemetry/Base;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, LMicrosoft/Telemetry/Base;->getSchema()Lcom/microsoft/bond/SchemaDef;

    move-result-object p0

    invoke-virtual {p0}, Lcom/microsoft/bond/SchemaDef;->getStructs()Ljava/util/ArrayList;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/microsoft/bond/StructDef;

    invoke-virtual {p0}, Lcom/microsoft/bond/StructDef;->getMetadata()Lcom/microsoft/bond/Metadata;

    move-result-object p0

    invoke-virtual {p0}, Lcom/microsoft/bond/Metadata;->getQualified_name()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static serializeEvent(Lcom/microsoft/cll/android/ILogger;LMicrosoft/Telemetry/Base;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/microsoft/cll/android/BondJsonSerializer;

    invoke-direct {v0, p0}, Lcom/microsoft/cll/android/BondJsonSerializer;-><init>(Lcom/microsoft/cll/android/ILogger;)V

    invoke-virtual {v0, p1}, Lcom/microsoft/cll/android/BondJsonSerializer;->serialize(Lcom/microsoft/bond/BondSerializable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public serialize(Ljava/io/Writer;)V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/cll/android/PreSerializedEvent;->serializedData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method
