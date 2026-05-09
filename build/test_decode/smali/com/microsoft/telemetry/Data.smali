.class public Lcom/microsoft/telemetry/Data;
.super Lcom/microsoft/telemetry/Base;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/telemetry/ITelemetryData;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TDomain:",
        "Lcom/microsoft/telemetry/Domain;",
        ">",
        "Lcom/microsoft/telemetry/Base;",
        "Lcom/microsoft/telemetry/ITelemetryData;"
    }
.end annotation


# instance fields
.field private baseData:Lcom/microsoft/telemetry/Domain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTDomain;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/telemetry/Base;-><init>()V

    invoke-virtual {p0}, Lcom/microsoft/telemetry/Data;->InitializeFields()V

    invoke-virtual {p0}, Lcom/microsoft/telemetry/Data;->SetupAttributes()V

    return-void
.end method


# virtual methods
.method public InitializeFields()V
    .locals 1

    const-string v0, "com.microsoft.telemetry.Data"

    iput-object v0, p0, Lcom/microsoft/telemetry/Base;->QualifiedName:Ljava/lang/String;

    return-void
.end method

.method public SetupAttributes()V
    .locals 3

    iget-object v0, p0, Lcom/microsoft/telemetry/Base;->Attributes:Ljava/util/LinkedHashMap;

    const-string v1, "Description"

    const-string v2, "Data struct to contain both B and C sections."

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getBaseData()Lcom/microsoft/telemetry/Domain;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTDomain;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/telemetry/Data;->baseData:Lcom/microsoft/telemetry/Domain;

    return-object v0
.end method

.method public serializeContent(Ljava/io/Writer;)Ljava/lang/String;
    .locals 2

    invoke-super {p0, p1}, Lcom/microsoft/telemetry/Base;->serializeContent(Ljava/io/Writer;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\"baseData\":"

    .line 1
    invoke-static {v0, v1, p1}, La/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 2
    iget-object v0, p0, Lcom/microsoft/telemetry/Data;->baseData:Lcom/microsoft/telemetry/Domain;

    invoke-static {p1, v0}, Lcom/microsoft/telemetry/JsonHelper;->writeJsonSerializable(Ljava/io/Writer;Lcom/microsoft/telemetry/IJsonSerializable;)V

    const-string p1, ","

    return-object p1
.end method

.method public setBaseData(Lcom/microsoft/telemetry/Domain;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTDomain;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/microsoft/telemetry/Data;->baseData:Lcom/microsoft/telemetry/Domain;

    return-void
.end method
