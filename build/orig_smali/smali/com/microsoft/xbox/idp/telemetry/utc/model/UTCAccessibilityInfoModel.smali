.class public Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAccessibilityInfoModel;
.super Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCJsonBase;
.source "SourceFile"


# instance fields
.field private info:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCJsonBase;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAccessibilityInfoModel;->info:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public addValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAccessibilityInfoModel;->info:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAccessibilityInfoModel;->info:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public getInfo()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAccessibilityInfoModel;->info:Ljava/util/HashMap;

    return-object v0
.end method

.method public setInfo(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAccessibilityInfoModel;->info:Ljava/util/HashMap;

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAccessibilityInfoModel;->getInfo()Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Lp1/k;

    invoke-direct {v1}, Lp1/k;-><init>()V

    const/4 v2, 0x1

    .line 1
    iput-boolean v2, v1, Lp1/k;->i:Z

    .line 2
    invoke-virtual {v1}, Lp1/k;->a()Lp1/e;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1, v0}, Lp1/e;->i(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lp1/q; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Error in json serialization"

    .line 3
    invoke-static {v3}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "UTCJsonSerializer"

    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, ""

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAccessibilityInfoModel;->toJson()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
