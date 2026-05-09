.class public LMicrosoft/Android/LoggingLibrary/Snapshot;
.super Lcom/microsoft/telemetry/Data;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/telemetry/Data<",
        "Lb/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/microsoft/telemetry/Data;-><init>()V

    invoke-virtual {p0}, LMicrosoft/Android/LoggingLibrary/Snapshot;->InitializeFields()V

    invoke-virtual {p0}, LMicrosoft/Android/LoggingLibrary/Snapshot;->SetupAttributes()V

    return-void
.end method


# virtual methods
.method public InitializeFields()V
    .registers 2

    const-string v0, "Microsoft.Android.LoggingLibrary.Snapshot"

    iput-object v0, p0, Lcom/microsoft/telemetry/Base;->QualifiedName:Ljava/lang/String;

    return-void
.end method

.method public SetupAttributes()V
    .registers 4

    iget-object v0, p0, Lcom/microsoft/telemetry/Base;->Attributes:Ljava/util/LinkedHashMap;

    const-string v1, "Description"

    const-string v2, "Android\'s Client Telemetry Snapshot"

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public serializeContent(Ljava/io/Writer;)Ljava/lang/String;
    .registers 2

    invoke-super {p0, p1}, Lcom/microsoft/telemetry/Data;->serializeContent(Ljava/io/Writer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
