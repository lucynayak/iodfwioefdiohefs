.class public Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;
.super LMicrosoft/Telemetry/Base;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;
    }
.end annotation


# instance fields
.field private accessibilityInfo:Ljava/lang/String;

.field private additionalInfo:Ljava/lang/String;

.field private appName:Ljava/lang/String;

.field private appSessionId:Ljava/lang/String;

.field private clientLanguage:Ljava/lang/String;

.field private deviceModel:Ljava/lang/String;

.field private eventVersion:Ljava/lang/String;

.field private network:I

.field private sandboxId:Ljava/lang/String;

.field private titleDeviceId:Ljava/lang/String;

.field private titleSessionId:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private xsapiVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, LMicrosoft/Telemetry/Base;-><init>()V

    return-void
.end method

.method public static getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;
    .registers 1

    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->schemaDef:Lcom/microsoft/bond/SchemaDef;

    return-object v0
.end method


# virtual methods
.method public clone()Lcom/microsoft/bond/BondSerializable;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->clone()Lcom/microsoft/bond/BondSerializable;

    move-result-object v0

    return-object v0
.end method

.method public createInstance(Lcom/microsoft/bond/StructDef;)Lcom/microsoft/bond/BondMirror;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public final getAccessibilityInfo()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->accessibilityInfo:Ljava/lang/String;

    return-object v0
.end method

.method public final getAdditionalInfo()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->additionalInfo:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppSessionId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->appSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public final getClientLanguage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->clientLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceModel()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->deviceModel:Ljava/lang/String;

    return-object v0
.end method

.method public final getEventVersion()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->eventVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getField(Lcom/microsoft/bond/FieldDef;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p1}, Lcom/microsoft/bond/FieldDef;->getId()S

    move-result p1

    sparse-switch p1, :sswitch_data_0

    const/4 p1, 0x0

    return-object p1

    :sswitch_0
    iget-object p1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->titleSessionId:Ljava/lang/String;

    return-object p1

    :sswitch_1
    iget-object p1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->titleDeviceId:Ljava/lang/String;

    return-object p1

    :sswitch_2
    iget-object p1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->accessibilityInfo:Ljava/lang/String;

    return-object p1

    :sswitch_3
    iget-object p1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->additionalInfo:Ljava/lang/String;

    return-object p1

    :sswitch_4
    iget-object p1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->userId:Ljava/lang/String;

    return-object p1

    :sswitch_5
    iget-object p1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->appSessionId:Ljava/lang/String;

    return-object p1

    :sswitch_6
    iget-object p1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->sandboxId:Ljava/lang/String;

    return-object p1

    :sswitch_7
    iget p1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->network:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :sswitch_8
    iget-object p1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->clientLanguage:Ljava/lang/String;

    return-object p1

    :sswitch_9
    iget-object p1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->appName:Ljava/lang/String;

    return-object p1

    :sswitch_a
    iget-object p1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->xsapiVersion:Ljava/lang/String;

    return-object p1

    :sswitch_b
    iget-object p1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->deviceModel:Ljava/lang/String;

    return-object p1

    :sswitch_c
    iget-object p1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->eventVersion:Ljava/lang/String;

    return-object p1

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_c
        0x14 -> :sswitch_b
        0x1e -> :sswitch_a
        0x28 -> :sswitch_9
        0x32 -> :sswitch_8
        0x3c -> :sswitch_7
        0x46 -> :sswitch_6
        0x50 -> :sswitch_5
        0x5a -> :sswitch_4
        0x64 -> :sswitch_3
        0x6e -> :sswitch_2
        0x78 -> :sswitch_1
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method public final getNetwork()I
    .registers 2

    iget v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->network:I

    return v0
.end method

.method public final getSandboxId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->sandboxId:Ljava/lang/String;

    return-object v0
.end method

.method public getSchema()Lcom/microsoft/bond/SchemaDef;
    .registers 2

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;

    move-result-object v0

    return-object v0
.end method

.method public final getTitleDeviceId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->titleDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitleSessionId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->titleSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public final getXsapiVersion()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->xsapiVersion:Ljava/lang/String;

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
    check-cast p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->memberwiseCompareQuick(Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->memberwiseCompareDeep(Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public memberwiseCompareDeep(Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;)Z
    .registers 6

    invoke-super {p0, p1}, LMicrosoft/Telemetry/Base;->memberwiseCompareDeep(LMicrosoft/Telemetry/Base;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->eventVersion:Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->eventVersion:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->deviceModel:Ljava/lang/String;

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    iget-object v3, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->deviceModel:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v0, 0x1

    goto :goto_6

    :cond_6
    :goto_5
    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->xsapiVersion:Ljava/lang/String;

    if-nez v0, :cond_7

    goto :goto_7

    :cond_7
    iget-object v3, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->xsapiVersion:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_8

    :cond_8
    :goto_7
    const/4 v0, 0x1

    goto :goto_9

    :cond_9
    :goto_8
    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->appName:Ljava/lang/String;

    if-nez v0, :cond_a

    goto :goto_a

    :cond_a
    iget-object v3, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->appName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_b

    :cond_b
    :goto_a
    const/4 v0, 0x1

    goto :goto_c

    :cond_c
    :goto_b
    const/4 v0, 0x0

    :goto_c
    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->clientLanguage:Ljava/lang/String;

    if-nez v0, :cond_d

    goto :goto_d

    :cond_d
    iget-object v3, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->clientLanguage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_e

    :cond_e
    :goto_d
    const/4 v0, 0x1

    goto :goto_f

    :cond_f
    :goto_e
    const/4 v0, 0x0

    :goto_f
    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->sandboxId:Ljava/lang/String;

    if-nez v0, :cond_10

    goto :goto_10

    :cond_10
    iget-object v3, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->sandboxId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_11

    :cond_11
    :goto_10
    const/4 v0, 0x1

    goto :goto_12

    :cond_12
    :goto_11
    const/4 v0, 0x0

    :goto_12
    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->appSessionId:Ljava/lang/String;

    if-nez v0, :cond_13

    goto :goto_13

    :cond_13
    iget-object v3, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->appSessionId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_14

    :cond_14
    :goto_13
    const/4 v0, 0x1

    goto :goto_15

    :cond_15
    :goto_14
    const/4 v0, 0x0

    :goto_15
    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->userId:Ljava/lang/String;

    if-nez v0, :cond_16

    goto :goto_16

    :cond_16
    iget-object v3, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->userId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_17

    :cond_17
    :goto_16
    const/4 v0, 0x1

    goto :goto_18

    :cond_18
    :goto_17
    const/4 v0, 0x0

    :goto_18
    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->additionalInfo:Ljava/lang/String;

    if-nez v0, :cond_19

    goto :goto_19

    :cond_19
    iget-object v3, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->additionalInfo:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_1a

    :cond_1a
    :goto_19
    const/4 v0, 0x1

    goto :goto_1b

    :cond_1b
    :goto_1a
    const/4 v0, 0x0

    :goto_1b
    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->accessibilityInfo:Ljava/lang/String;

    if-nez v0, :cond_1c

    goto :goto_1c

    :cond_1c
    iget-object v3, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->accessibilityInfo:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_1d

    :cond_1d
    :goto_1c
    const/4 v0, 0x1

    goto :goto_1e

    :cond_1e
    :goto_1d
    const/4 v0, 0x0

    :goto_1e
    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->titleDeviceId:Ljava/lang/String;

    if-nez v0, :cond_1f

    goto :goto_1f

    :cond_1f
    iget-object v3, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->titleDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_20

    :cond_20
    :goto_1f
    const/4 v0, 0x1

    goto :goto_21

    :cond_21
    :goto_20
    const/4 v0, 0x0

    :goto_21
    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->titleSessionId:Ljava/lang/String;

    if-nez v0, :cond_22

    goto :goto_22

    :cond_22
    iget-object p1, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->titleSessionId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_23

    goto :goto_23

    :cond_23
    :goto_22
    return v1

    :cond_24
    :goto_23
    return v2
.end method

.method public memberwiseCompareQuick(Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;)Z
    .registers 6

    invoke-super {p0, p1}, LMicrosoft/Telemetry/Base;->memberwiseCompareQuick(LMicrosoft/Telemetry/Base;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->eventVersion:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->eventVersion:Ljava/lang/String;

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-ne v0, v3, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->eventVersion:Ljava/lang/String;

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v3, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->eventVersion:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v0, v3, :cond_5

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v0, 0x1

    goto :goto_6

    :cond_6
    :goto_5
    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->deviceModel:Ljava/lang/String;

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_7

    :cond_7
    const/4 v0, 0x0

    :goto_7
    iget-object v3, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->deviceModel:Ljava/lang/String;

    if-nez v3, :cond_8

    const/4 v3, 0x1

    goto :goto_8

    :cond_8
    const/4 v3, 0x0

    :goto_8
    if-ne v0, v3, :cond_9

    const/4 v0, 0x1

    goto :goto_9

    :cond_9
    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->deviceModel:Ljava/lang/String;

    if-nez v0, :cond_a

    goto :goto_a

    :cond_a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v3, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->deviceModel:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v0, v3, :cond_b

    goto :goto_b

    :cond_b
    :goto_a
    const/4 v0, 0x1

    goto :goto_c

    :cond_c
    :goto_b
    const/4 v0, 0x0

    :goto_c
    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->xsapiVersion:Ljava/lang/String;

    if-nez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_d

    :cond_d
    const/4 v0, 0x0

    :goto_d
    iget-object v3, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->xsapiVersion:Ljava/lang/String;

    if-nez v3, :cond_e

    const/4 v3, 0x1

    goto :goto_e

    :cond_e
    const/4 v3, 0x0

    :goto_e
    if-ne v0, v3, :cond_f

    const/4 v0, 0x1

    goto :goto_f

    :cond_f
    const/4 v0, 0x0

    :goto_f
    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->xsapiVersion:Ljava/lang/String;

    if-nez v0, :cond_10

    goto :goto_10

    :cond_10
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v3, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->xsapiVersion:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v0, v3, :cond_11

    goto :goto_11

    :cond_11
    :goto_10
    const/4 v0, 0x1

    goto :goto_12

    :cond_12
    :goto_11
    const/4 v0, 0x0

    :goto_12
    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->appName:Ljava/lang/String;

    if-nez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_13

    :cond_13
    const/4 v0, 0x0

    :goto_13
    iget-object v3, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->appName:Ljava/lang/String;

    if-nez v3, :cond_14

    const/4 v3, 0x1

    goto :goto_14

    :cond_14
    const/4 v3, 0x0

    :goto_14
    if-ne v0, v3, :cond_15

    const/4 v0, 0x1

    goto :goto_15

    :cond_15
    const/4 v0, 0x0

    :goto_15
    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->appName:Ljava/lang/String;

    if-nez v0, :cond_16

    goto :goto_16

    :cond_16
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v3, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->appName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v0, v3, :cond_17

    goto :goto_17

    :cond_17
    :goto_16
    const/4 v0, 0x1

    goto :goto_18

    :cond_18
    :goto_17
    const/4 v0, 0x0

    :goto_18
    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->clientLanguage:Ljava/lang/String;

    if-nez v0, :cond_19

    const/4 v0, 0x1

    goto :goto_19

    :cond_19
    const/4 v0, 0x0

    :goto_19
    iget-object v3, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->clientLanguage:Ljava/lang/String;

    if-nez v3, :cond_1a

    const/4 v3, 0x1

    goto :goto_1a

    :cond_1a
    const/4 v3, 0x0

    :goto_1a
    if-ne v0, v3, :cond_1b

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1b
    const/4 v0, 0x0

    :goto_1b
    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->clientLanguage:Ljava/lang/String;

    if-nez v0, :cond_1c

    goto :goto_1c

    :cond_1c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v3, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->clientLanguage:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v0, v3, :cond_1d

    goto :goto_1d

    :cond_1d
    :goto_1c
    const/4 v0, 0x1

    goto :goto_1e

    :cond_1e
    :goto_1d
    const/4 v0, 0x0

    :goto_1e
    if-eqz v0, :cond_1f

    iget v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->network:I

    iget v3, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->network:I

    if-ne v0, v3, :cond_1f

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1f
    const/4 v0, 0x0

    :goto_1f
    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->sandboxId:Ljava/lang/String;

    if-nez v0, :cond_20

    const/4 v0, 0x1

    goto :goto_20

    :cond_20
    const/4 v0, 0x0

    :goto_20
    iget-object v3, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->sandboxId:Ljava/lang/String;

    if-nez v3, :cond_21

    const/4 v3, 0x1

    goto :goto_21

    :cond_21
    const/4 v3, 0x0

    :goto_21
    if-ne v0, v3, :cond_22

    const/4 v0, 0x1

    goto :goto_22

    :cond_22
    const/4 v0, 0x0

    :goto_22
    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->sandboxId:Ljava/lang/String;

    if-nez v0, :cond_23

    goto :goto_23

    :cond_23
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v3, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->sandboxId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v0, v3, :cond_24

    goto :goto_24

    :cond_24
    :goto_23
    const/4 v0, 0x1

    goto :goto_25

    :cond_25
    :goto_24
    const/4 v0, 0x0

    :goto_25
    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->appSessionId:Ljava/lang/String;

    if-nez v0, :cond_26

    const/4 v0, 0x1

    goto :goto_26

    :cond_26
    const/4 v0, 0x0

    :goto_26
    iget-object v3, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->appSessionId:Ljava/lang/String;

    if-nez v3, :cond_27

    const/4 v3, 0x1

    goto :goto_27

    :cond_27
    const/4 v3, 0x0

    :goto_27
    if-ne v0, v3, :cond_28

    const/4 v0, 0x1

    goto :goto_28

    :cond_28
    const/4 v0, 0x0

    :goto_28
    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->appSessionId:Ljava/lang/String;

    if-nez v0, :cond_29

    goto :goto_29

    :cond_29
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v3, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->appSessionId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v0, v3, :cond_2a

    goto :goto_2a

    :cond_2a
    :goto_29
    const/4 v0, 0x1

    goto :goto_2b

    :cond_2b
    :goto_2a
    const/4 v0, 0x0

    :goto_2b
    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->userId:Ljava/lang/String;

    if-nez v0, :cond_2c

    const/4 v0, 0x1

    goto :goto_2c

    :cond_2c
    const/4 v0, 0x0

    :goto_2c
    iget-object v3, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->userId:Ljava/lang/String;

    if-nez v3, :cond_2d

    const/4 v3, 0x1

    goto :goto_2d

    :cond_2d
    const/4 v3, 0x0

    :goto_2d
    if-ne v0, v3, :cond_2e

    const/4 v0, 0x1

    goto :goto_2e

    :cond_2e
    const/4 v0, 0x0

    :goto_2e
    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->userId:Ljava/lang/String;

    if-nez v0, :cond_2f

    goto :goto_2f

    :cond_2f
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v3, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->userId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v0, v3, :cond_30

    goto :goto_30

    :cond_30
    :goto_2f
    const/4 v0, 0x1

    goto :goto_31

    :cond_31
    :goto_30
    const/4 v0, 0x0

    :goto_31
    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->additionalInfo:Ljava/lang/String;

    if-nez v0, :cond_32

    const/4 v0, 0x1

    goto :goto_32

    :cond_32
    const/4 v0, 0x0

    :goto_32
    iget-object v3, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->additionalInfo:Ljava/lang/String;

    if-nez v3, :cond_33

    const/4 v3, 0x1

    goto :goto_33

    :cond_33
    const/4 v3, 0x0

    :goto_33
    if-ne v0, v3, :cond_34

    const/4 v0, 0x1

    goto :goto_34

    :cond_34
    const/4 v0, 0x0

    :goto_34
    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->additionalInfo:Ljava/lang/String;

    if-nez v0, :cond_35

    goto :goto_35

    :cond_35
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v3, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->additionalInfo:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v0, v3, :cond_36

    goto :goto_36

    :cond_36
    :goto_35
    const/4 v0, 0x1

    goto :goto_37

    :cond_37
    :goto_36
    const/4 v0, 0x0

    :goto_37
    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->accessibilityInfo:Ljava/lang/String;

    if-nez v0, :cond_38

    const/4 v0, 0x1

    goto :goto_38

    :cond_38
    const/4 v0, 0x0

    :goto_38
    iget-object v3, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->accessibilityInfo:Ljava/lang/String;

    if-nez v3, :cond_39

    const/4 v3, 0x1

    goto :goto_39

    :cond_39
    const/4 v3, 0x0

    :goto_39
    if-ne v0, v3, :cond_3a

    const/4 v0, 0x1

    goto :goto_3a

    :cond_3a
    const/4 v0, 0x0

    :goto_3a
    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->accessibilityInfo:Ljava/lang/String;

    if-nez v0, :cond_3b

    goto :goto_3b

    :cond_3b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v3, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->accessibilityInfo:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v0, v3, :cond_3c

    goto :goto_3c

    :cond_3c
    :goto_3b
    const/4 v0, 0x1

    goto :goto_3d

    :cond_3d
    :goto_3c
    const/4 v0, 0x0

    :goto_3d
    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->titleDeviceId:Ljava/lang/String;

    if-nez v0, :cond_3e

    const/4 v0, 0x1

    goto :goto_3e

    :cond_3e
    const/4 v0, 0x0

    :goto_3e
    iget-object v3, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->titleDeviceId:Ljava/lang/String;

    if-nez v3, :cond_3f

    const/4 v3, 0x1

    goto :goto_3f

    :cond_3f
    const/4 v3, 0x0

    :goto_3f
    if-ne v0, v3, :cond_40

    const/4 v0, 0x1

    goto :goto_40

    :cond_40
    const/4 v0, 0x0

    :goto_40
    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->titleDeviceId:Ljava/lang/String;

    if-nez v0, :cond_41

    goto :goto_41

    :cond_41
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v3, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->titleDeviceId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v0, v3, :cond_42

    goto :goto_42

    :cond_42
    :goto_41
    const/4 v0, 0x1

    goto :goto_43

    :cond_43
    :goto_42
    const/4 v0, 0x0

    :goto_43
    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->titleSessionId:Ljava/lang/String;

    if-nez v0, :cond_44

    const/4 v0, 0x1

    goto :goto_44

    :cond_44
    const/4 v0, 0x0

    :goto_44
    iget-object v3, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->titleSessionId:Ljava/lang/String;

    if-nez v3, :cond_45

    const/4 v3, 0x1

    goto :goto_45

    :cond_45
    const/4 v3, 0x0

    :goto_45
    if-ne v0, v3, :cond_46

    const/4 v0, 0x1

    goto :goto_46

    :cond_46
    const/4 v0, 0x0

    :goto_46
    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->titleSessionId:Ljava/lang/String;

    if-nez v0, :cond_47

    goto :goto_47

    :cond_47
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object p1, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->titleSessionId:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eq v0, p1, :cond_48

    goto :goto_48

    :cond_48
    :goto_47
    return v1

    :cond_49
    :goto_48
    return v2
.end method

.method public read(Lcom/microsoft/bond/ProtocolReader;)V
    .registers 2

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readBegin()V

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->readNested(Lcom/microsoft/bond/ProtocolReader;)V

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

    invoke-virtual {p0, p1, v1}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->readUntagged(Lcom/microsoft/bond/ProtocolReader;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->readTagged(Lcom/microsoft/bond/ProtocolReader;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/microsoft/bond/internal/ReadHelper;->skipPartialStruct(Lcom/microsoft/bond/ProtocolReader;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public readTagged(Lcom/microsoft/bond/ProtocolReader;Z)Z
    .registers 7

    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolReader;->readStructBegin(Z)V

    const/4 p2, 0x1

    invoke-super {p0, p1, p2}, LMicrosoft/Telemetry/Base;->readTagged(Lcom/microsoft/bond/ProtocolReader;Z)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldBegin()Lcom/microsoft/bond/ProtocolReader$FieldTag;

    move-result-object v0

    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_STOP:Lcom/microsoft/bond/BondDataType;

    if-eq v2, v3, :cond_2

    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-ne v2, v3, :cond_1

    goto/16 :goto_2

    :cond_1
    iget v0, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->id:I

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p1, v2}, Lcom/microsoft/bond/ProtocolReader;->skip(Lcom/microsoft/bond/BondDataType;)V

    goto :goto_1

    :sswitch_0
    invoke-static {p1, v2}, Lcom/microsoft/bond/internal/ReadHelper;->readWString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->titleSessionId:Ljava/lang/String;

    goto :goto_1

    :sswitch_1
    invoke-static {p1, v2}, Lcom/microsoft/bond/internal/ReadHelper;->readWString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->titleDeviceId:Ljava/lang/String;

    goto :goto_1

    :sswitch_2
    invoke-static {p1, v2}, Lcom/microsoft/bond/internal/ReadHelper;->readWString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->accessibilityInfo:Ljava/lang/String;

    goto :goto_1

    :sswitch_3
    invoke-static {p1, v2}, Lcom/microsoft/bond/internal/ReadHelper;->readWString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->additionalInfo:Ljava/lang/String;

    goto :goto_1

    :sswitch_4
    invoke-static {p1, v2}, Lcom/microsoft/bond/internal/ReadHelper;->readWString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->userId:Ljava/lang/String;

    goto :goto_1

    :sswitch_5
    invoke-static {p1, v2}, Lcom/microsoft/bond/internal/ReadHelper;->readWString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->appSessionId:Ljava/lang/String;

    goto :goto_1

    :sswitch_6
    invoke-static {p1, v2}, Lcom/microsoft/bond/internal/ReadHelper;->readWString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->sandboxId:Ljava/lang/String;

    goto :goto_1

    :sswitch_7
    invoke-static {p1, v2}, Lcom/microsoft/bond/internal/ReadHelper;->readUInt32(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)I

    move-result v0

    iput v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->network:I

    goto :goto_1

    :sswitch_8
    invoke-static {p1, v2}, Lcom/microsoft/bond/internal/ReadHelper;->readWString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->clientLanguage:Ljava/lang/String;

    goto :goto_1

    :sswitch_9
    invoke-static {p1, v2}, Lcom/microsoft/bond/internal/ReadHelper;->readWString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->appName:Ljava/lang/String;

    goto :goto_1

    :sswitch_a
    invoke-static {p1, v2}, Lcom/microsoft/bond/internal/ReadHelper;->readWString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->xsapiVersion:Ljava/lang/String;

    goto :goto_1

    :sswitch_b
    invoke-static {p1, v2}, Lcom/microsoft/bond/internal/ReadHelper;->readWString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->deviceModel:Ljava/lang/String;

    goto :goto_1

    :sswitch_c
    invoke-static {p1, v2}, Lcom/microsoft/bond/internal/ReadHelper;->readWString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->eventVersion:Ljava/lang/String;

    :goto_1
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldEnd()V

    goto :goto_0

    :cond_2
    :goto_2
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-ne v2, v0, :cond_3

    goto :goto_3

    :cond_3
    const/4 p2, 0x0

    :goto_3
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readStructEnd()V

    return p2

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_c
        0x14 -> :sswitch_b
        0x1e -> :sswitch_a
        0x28 -> :sswitch_9
        0x32 -> :sswitch_8
        0x3c -> :sswitch_7
        0x46 -> :sswitch_6
        0x50 -> :sswitch_5
        0x5a -> :sswitch_4
        0x64 -> :sswitch_3
        0x6e -> :sswitch_2
        0x78 -> :sswitch_1
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method public readUntagged(Lcom/microsoft/bond/ProtocolReader;Z)V
    .registers 4

    sget-object v0, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v0}, Lcom/microsoft/bond/ProtocolReader;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolReader;->readStructBegin(Z)V

    const/4 p2, 0x1

    invoke-super {p0, p1, p2}, LMicrosoft/Telemetry/Base;->readUntagged(Lcom/microsoft/bond/ProtocolReader;Z)V

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readWString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->eventVersion:Ljava/lang/String;

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_3

    :cond_2
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readWString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->deviceModel:Ljava/lang/String;

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_5

    :cond_4
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readWString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->xsapiVersion:Ljava/lang/String;

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_7

    :cond_6
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readWString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->appName:Ljava/lang/String;

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_9

    :cond_8
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readWString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->clientLanguage:Ljava/lang/String;

    :cond_9
    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_b

    :cond_a
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readUInt32()I

    move-result p2

    iput p2, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->network:I

    :cond_b
    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_d

    :cond_c
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readWString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->sandboxId:Ljava/lang/String;

    :cond_d
    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_f

    :cond_e
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readWString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->appSessionId:Ljava/lang/String;

    :cond_f
    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_11

    :cond_10
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readWString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->userId:Ljava/lang/String;

    :cond_11
    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_13

    :cond_12
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readWString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->additionalInfo:Ljava/lang/String;

    :cond_13
    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_15

    :cond_14
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readWString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->accessibilityInfo:Ljava/lang/String;

    :cond_15
    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_17

    :cond_16
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readWString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->titleDeviceId:Ljava/lang/String;

    :cond_17
    if-eqz v0, :cond_18

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_19

    :cond_18
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readWString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->titleSessionId:Ljava/lang/String;

    :cond_19
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readStructEnd()V

    return-void
.end method

.method public reset()V
    .registers 3

    const-string v0, "CommonData"

    const-string v1, "com.microsoft.xbox.idp.telemetry.utc.CommonData"

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->reset(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reset(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-super {p0, p1, p2}, LMicrosoft/Telemetry/Base;->reset(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->eventVersion:Ljava/lang/String;

    iput-object p1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->deviceModel:Ljava/lang/String;

    iput-object p1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->xsapiVersion:Ljava/lang/String;

    iput-object p1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->appName:Ljava/lang/String;

    iput-object p1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->clientLanguage:Ljava/lang/String;

    const/4 p2, 0x0

    iput p2, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->network:I

    iput-object p1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->sandboxId:Ljava/lang/String;

    iput-object p1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->appSessionId:Ljava/lang/String;

    iput-object p1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->userId:Ljava/lang/String;

    iput-object p1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->additionalInfo:Ljava/lang/String;

    iput-object p1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->accessibilityInfo:Ljava/lang/String;

    iput-object p1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->titleDeviceId:Ljava/lang/String;

    iput-object p1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->titleSessionId:Ljava/lang/String;

    return-void
.end method

.method public final setAccessibilityInfo(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->accessibilityInfo:Ljava/lang/String;

    return-void
.end method

.method public final setAdditionalInfo(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->additionalInfo:Ljava/lang/String;

    return-void
.end method

.method public final setAppName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->appName:Ljava/lang/String;

    return-void
.end method

.method public final setAppSessionId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->appSessionId:Ljava/lang/String;

    return-void
.end method

.method public final setClientLanguage(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->clientLanguage:Ljava/lang/String;

    return-void
.end method

.method public final setDeviceModel(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->deviceModel:Ljava/lang/String;

    return-void
.end method

.method public final setEventVersion(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->eventVersion:Ljava/lang/String;

    return-void
.end method

.method public setField(Lcom/microsoft/bond/FieldDef;Ljava/lang/Object;)V
    .registers 3

    invoke-virtual {p1}, Lcom/microsoft/bond/FieldDef;->getId()S

    move-result p1

    sparse-switch p1, :sswitch_data_0

    return-void

    :sswitch_0
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->titleSessionId:Ljava/lang/String;

    return-void

    :sswitch_1
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->titleDeviceId:Ljava/lang/String;

    return-void

    :sswitch_2
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->accessibilityInfo:Ljava/lang/String;

    return-void

    :sswitch_3
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->additionalInfo:Ljava/lang/String;

    return-void

    :sswitch_4
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->userId:Ljava/lang/String;

    return-void

    :sswitch_5
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->appSessionId:Ljava/lang/String;

    return-void

    :sswitch_6
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->sandboxId:Ljava/lang/String;

    return-void

    :sswitch_7
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->network:I

    return-void

    :sswitch_8
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->clientLanguage:Ljava/lang/String;

    return-void

    :sswitch_9
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->appName:Ljava/lang/String;

    return-void

    :sswitch_a
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->xsapiVersion:Ljava/lang/String;

    return-void

    :sswitch_b
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->deviceModel:Ljava/lang/String;

    return-void

    :sswitch_c
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->eventVersion:Ljava/lang/String;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_c
        0x14 -> :sswitch_b
        0x1e -> :sswitch_a
        0x28 -> :sswitch_9
        0x32 -> :sswitch_8
        0x3c -> :sswitch_7
        0x46 -> :sswitch_6
        0x50 -> :sswitch_5
        0x5a -> :sswitch_4
        0x64 -> :sswitch_3
        0x6e -> :sswitch_2
        0x78 -> :sswitch_1
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method public final setNetwork(I)V
    .registers 2

    iput p1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->network:I

    return-void
.end method

.method public final setSandboxId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->sandboxId:Ljava/lang/String;

    return-void
.end method

.method public final setTitleDeviceId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->titleDeviceId:Ljava/lang/String;

    return-void
.end method

.method public final setTitleSessionId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->titleSessionId:Ljava/lang/String;

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->userId:Ljava/lang/String;

    return-void
.end method

.method public final setXsapiVersion(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->xsapiVersion:Ljava/lang/String;

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

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeEnd()V

    return-void
.end method

.method public writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V
    .registers 7

    sget-object v0, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v0}, Lcom/microsoft/bond/ProtocolWriter;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {p1, v0, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructBegin(Lcom/microsoft/bond/BondSerializable;Z)V

    const/4 v0, 0x1

    invoke-super {p0, p1, v0}, LMicrosoft/Telemetry/Base;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_WSTRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->access$000()Lcom/microsoft/bond/Metadata;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {p1, v0, v2, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->eventVersion:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeWString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->access$100()Lcom/microsoft/bond/Metadata;

    move-result-object v1

    const/16 v2, 0x14

    invoke-virtual {p1, v0, v2, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->deviceModel:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeWString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->access$200()Lcom/microsoft/bond/Metadata;

    move-result-object v1

    const/16 v2, 0x1e

    invoke-virtual {p1, v0, v2, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->xsapiVersion:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeWString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->access$300()Lcom/microsoft/bond/Metadata;

    move-result-object v1

    const/16 v2, 0x28

    invoke-virtual {p1, v0, v2, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->appName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeWString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->access$400()Lcom/microsoft/bond/Metadata;

    move-result-object v1

    const/16 v2, 0x32

    invoke-virtual {p1, v0, v2, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->clientLanguage:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeWString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_UINT32:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->access$500()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    const/16 v3, 0x3c

    invoke-virtual {p1, v1, v3, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->network:I

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeUInt32(I)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->access$600()Lcom/microsoft/bond/Metadata;

    move-result-object v1

    const/16 v2, 0x46

    invoke-virtual {p1, v0, v2, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->sandboxId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeWString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->access$700()Lcom/microsoft/bond/Metadata;

    move-result-object v1

    const/16 v2, 0x50

    invoke-virtual {p1, v0, v2, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->appSessionId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeWString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->access$800()Lcom/microsoft/bond/Metadata;

    move-result-object v1

    const/16 v2, 0x5a

    invoke-virtual {p1, v0, v2, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->userId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeWString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->access$900()Lcom/microsoft/bond/Metadata;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {p1, v0, v2, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->additionalInfo:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeWString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->access$1000()Lcom/microsoft/bond/Metadata;

    move-result-object v1

    const/16 v2, 0x6e

    invoke-virtual {p1, v0, v2, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->accessibilityInfo:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeWString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->access$1100()Lcom/microsoft/bond/Metadata;

    move-result-object v1

    const/16 v2, 0x78

    invoke-virtual {p1, v0, v2, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->titleDeviceId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeWString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->access$1200()Lcom/microsoft/bond/Metadata;

    move-result-object v1

    const/16 v2, 0x82

    invoke-virtual {p1, v0, v2, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->titleSessionId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/microsoft/bond/ProtocolWriter;->writeWString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructEnd(Z)V

    return-void
.end method
