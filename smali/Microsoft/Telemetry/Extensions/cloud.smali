.class public LMicrosoft/Telemetry/Extensions/cloud;
.super LMicrosoft/Telemetry/Extension;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LMicrosoft/Telemetry/Extensions/cloud$Schema;
    }
.end annotation


# instance fields
.field private deploymentUnit:Ljava/lang/String;

.field private environment:Ljava/lang/String;

.field private location:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private role:Ljava/lang/String;

.field private roleInstance:Ljava/lang/String;

.field private roleVer:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, LMicrosoft/Telemetry/Extension;-><init>()V

    return-void
.end method

.method public static getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;
    .registers 1

    sget-object v0, LMicrosoft/Telemetry/Extensions/cloud$Schema;->schemaDef:Lcom/microsoft/bond/SchemaDef;

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

    invoke-virtual {p0}, LMicrosoft/Telemetry/Extensions/cloud;->clone()Lcom/microsoft/bond/BondSerializable;

    move-result-object v0

    return-object v0
.end method

.method public createInstance(Lcom/microsoft/bond/StructDef;)Lcom/microsoft/bond/BondMirror;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public final getDeploymentUnit()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/cloud;->deploymentUnit:Ljava/lang/String;

    return-object v0
.end method

.method public final getEnvironment()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/cloud;->environment:Ljava/lang/String;

    return-object v0
.end method

.method public getField(Lcom/microsoft/bond/FieldDef;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p1}, Lcom/microsoft/bond/FieldDef;->getId()S

    move-result p1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_6

    const/16 v0, 0x14

    if-eq p1, v0, :cond_5

    const/16 v0, 0x1e

    if-eq p1, v0, :cond_4

    const/16 v0, 0x28

    if-eq p1, v0, :cond_3

    const/16 v0, 0x32

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x46

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p0, LMicrosoft/Telemetry/Extensions/cloud;->deploymentUnit:Ljava/lang/String;

    return-object p1

    :cond_1
    iget-object p1, p0, LMicrosoft/Telemetry/Extensions/cloud;->environment:Ljava/lang/String;

    return-object p1

    :cond_2
    iget-object p1, p0, LMicrosoft/Telemetry/Extensions/cloud;->roleVer:Ljava/lang/String;

    return-object p1

    :cond_3
    iget-object p1, p0, LMicrosoft/Telemetry/Extensions/cloud;->location:Ljava/lang/String;

    return-object p1

    :cond_4
    iget-object p1, p0, LMicrosoft/Telemetry/Extensions/cloud;->roleInstance:Ljava/lang/String;

    return-object p1

    :cond_5
    iget-object p1, p0, LMicrosoft/Telemetry/Extensions/cloud;->role:Ljava/lang/String;

    return-object p1

    :cond_6
    iget-object p1, p0, LMicrosoft/Telemetry/Extensions/cloud;->name:Ljava/lang/String;

    return-object p1
.end method

.method public final getLocation()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/cloud;->location:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/cloud;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getRole()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/cloud;->role:Ljava/lang/String;

    return-object v0
.end method

.method public final getRoleInstance()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/cloud;->roleInstance:Ljava/lang/String;

    return-object v0
.end method

.method public final getRoleVer()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/cloud;->roleVer:Ljava/lang/String;

    return-object v0
.end method

.method public getSchema()Lcom/microsoft/bond/SchemaDef;
    .registers 2

    invoke-static {}, LMicrosoft/Telemetry/Extensions/cloud;->getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;

    move-result-object v0

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
    check-cast p1, LMicrosoft/Telemetry/Extensions/cloud;

    invoke-virtual {p0, p1}, LMicrosoft/Telemetry/Extensions/cloud;->memberwiseCompareQuick(LMicrosoft/Telemetry/Extensions/cloud;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, LMicrosoft/Telemetry/Extensions/cloud;->memberwiseCompareDeep(LMicrosoft/Telemetry/Extensions/cloud;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public memberwiseCompareDeep(LMicrosoft/Telemetry/Extensions/cloud;)Z
    .registers 6

    invoke-super {p0, p1}, LMicrosoft/Telemetry/Extension;->memberwiseCompareDeep(LMicrosoft/Telemetry/Extension;)Z

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

    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/cloud;->name:Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p1, LMicrosoft/Telemetry/Extensions/cloud;->name:Ljava/lang/String;

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

    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/cloud;->role:Ljava/lang/String;

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    iget-object v3, p1, LMicrosoft/Telemetry/Extensions/cloud;->role:Ljava/lang/String;

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

    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/cloud;->roleInstance:Ljava/lang/String;

    if-nez v0, :cond_7

    goto :goto_7

    :cond_7
    iget-object v3, p1, LMicrosoft/Telemetry/Extensions/cloud;->roleInstance:Ljava/lang/String;

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

    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/cloud;->location:Ljava/lang/String;

    if-nez v0, :cond_a

    goto :goto_a

    :cond_a
    iget-object v3, p1, LMicrosoft/Telemetry/Extensions/cloud;->location:Ljava/lang/String;

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

    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/cloud;->roleVer:Ljava/lang/String;

    if-nez v0, :cond_d

    goto :goto_d

    :cond_d
    iget-object v3, p1, LMicrosoft/Telemetry/Extensions/cloud;->roleVer:Ljava/lang/String;

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

    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/cloud;->environment:Ljava/lang/String;

    if-nez v0, :cond_10

    goto :goto_10

    :cond_10
    iget-object v3, p1, LMicrosoft/Telemetry/Extensions/cloud;->environment:Ljava/lang/String;

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

    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/cloud;->deploymentUnit:Ljava/lang/String;

    if-nez v0, :cond_13

    goto :goto_13

    :cond_13
    iget-object p1, p1, LMicrosoft/Telemetry/Extensions/cloud;->deploymentUnit:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    goto :goto_14

    :cond_14
    :goto_13
    return v1

    :cond_15
    :goto_14
    return v2
.end method

.method public memberwiseCompareQuick(LMicrosoft/Telemetry/Extensions/cloud;)Z
    .registers 6

    invoke-super {p0, p1}, LMicrosoft/Telemetry/Extension;->memberwiseCompareQuick(LMicrosoft/Telemetry/Extension;)Z

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

    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/cloud;->name:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p1, LMicrosoft/Telemetry/Extensions/cloud;->name:Ljava/lang/String;

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

    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/cloud;->name:Ljava/lang/String;

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v3, p1, LMicrosoft/Telemetry/Extensions/cloud;->name:Ljava/lang/String;

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

    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/cloud;->role:Ljava/lang/String;

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_7

    :cond_7
    const/4 v0, 0x0

    :goto_7
    iget-object v3, p1, LMicrosoft/Telemetry/Extensions/cloud;->role:Ljava/lang/String;

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

    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/cloud;->role:Ljava/lang/String;

    if-nez v0, :cond_a

    goto :goto_a

    :cond_a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v3, p1, LMicrosoft/Telemetry/Extensions/cloud;->role:Ljava/lang/String;

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

    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/cloud;->roleInstance:Ljava/lang/String;

    if-nez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_d

    :cond_d
    const/4 v0, 0x0

    :goto_d
    iget-object v3, p1, LMicrosoft/Telemetry/Extensions/cloud;->roleInstance:Ljava/lang/String;

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

    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/cloud;->roleInstance:Ljava/lang/String;

    if-nez v0, :cond_10

    goto :goto_10

    :cond_10
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v3, p1, LMicrosoft/Telemetry/Extensions/cloud;->roleInstance:Ljava/lang/String;

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

    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/cloud;->location:Ljava/lang/String;

    if-nez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_13

    :cond_13
    const/4 v0, 0x0

    :goto_13
    iget-object v3, p1, LMicrosoft/Telemetry/Extensions/cloud;->location:Ljava/lang/String;

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

    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/cloud;->location:Ljava/lang/String;

    if-nez v0, :cond_16

    goto :goto_16

    :cond_16
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v3, p1, LMicrosoft/Telemetry/Extensions/cloud;->location:Ljava/lang/String;

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

    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/cloud;->roleVer:Ljava/lang/String;

    if-nez v0, :cond_19

    const/4 v0, 0x1

    goto :goto_19

    :cond_19
    const/4 v0, 0x0

    :goto_19
    iget-object v3, p1, LMicrosoft/Telemetry/Extensions/cloud;->roleVer:Ljava/lang/String;

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

    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/cloud;->roleVer:Ljava/lang/String;

    if-nez v0, :cond_1c

    goto :goto_1c

    :cond_1c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v3, p1, LMicrosoft/Telemetry/Extensions/cloud;->roleVer:Ljava/lang/String;

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
    if-eqz v0, :cond_21

    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/cloud;->environment:Ljava/lang/String;

    if-nez v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1f
    const/4 v0, 0x0

    :goto_1f
    iget-object v3, p1, LMicrosoft/Telemetry/Extensions/cloud;->environment:Ljava/lang/String;

    if-nez v3, :cond_20

    const/4 v3, 0x1

    goto :goto_20

    :cond_20
    const/4 v3, 0x0

    :goto_20
    if-ne v0, v3, :cond_21

    const/4 v0, 0x1

    goto :goto_21

    :cond_21
    const/4 v0, 0x0

    :goto_21
    if-eqz v0, :cond_24

    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/cloud;->environment:Ljava/lang/String;

    if-nez v0, :cond_22

    goto :goto_22

    :cond_22
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v3, p1, LMicrosoft/Telemetry/Extensions/cloud;->environment:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v0, v3, :cond_23

    goto :goto_23

    :cond_23
    :goto_22
    const/4 v0, 0x1

    goto :goto_24

    :cond_24
    :goto_23
    const/4 v0, 0x0

    :goto_24
    if-eqz v0, :cond_27

    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/cloud;->deploymentUnit:Ljava/lang/String;

    if-nez v0, :cond_25

    const/4 v0, 0x1

    goto :goto_25

    :cond_25
    const/4 v0, 0x0

    :goto_25
    iget-object v3, p1, LMicrosoft/Telemetry/Extensions/cloud;->deploymentUnit:Ljava/lang/String;

    if-nez v3, :cond_26

    const/4 v3, 0x1

    goto :goto_26

    :cond_26
    const/4 v3, 0x0

    :goto_26
    if-ne v0, v3, :cond_27

    const/4 v0, 0x1

    goto :goto_27

    :cond_27
    const/4 v0, 0x0

    :goto_27
    if-eqz v0, :cond_2a

    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/cloud;->deploymentUnit:Ljava/lang/String;

    if-nez v0, :cond_28

    goto :goto_28

    :cond_28
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object p1, p1, LMicrosoft/Telemetry/Extensions/cloud;->deploymentUnit:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eq v0, p1, :cond_29

    goto :goto_29

    :cond_29
    :goto_28
    return v1

    :cond_2a
    :goto_29
    return v2
.end method

.method public read(Lcom/microsoft/bond/ProtocolReader;)V
    .registers 2

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readBegin()V

    invoke-virtual {p0, p1}, LMicrosoft/Telemetry/Extensions/cloud;->readNested(Lcom/microsoft/bond/ProtocolReader;)V

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

    invoke-virtual {p0, p1, v1}, LMicrosoft/Telemetry/Extensions/cloud;->readUntagged(Lcom/microsoft/bond/ProtocolReader;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v1}, LMicrosoft/Telemetry/Extensions/cloud;->readTagged(Lcom/microsoft/bond/ProtocolReader;Z)Z

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

    invoke-super {p0, p1, p2}, LMicrosoft/Telemetry/Extension;->readTagged(Lcom/microsoft/bond/ProtocolReader;Z)Z

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

    if-eq v2, v3, :cond_9

    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-ne v2, v3, :cond_1

    goto :goto_2

    :cond_1
    iget v0, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->id:I

    const/16 v3, 0xa

    if-eq v0, v3, :cond_8

    const/16 v3, 0x14

    if-eq v0, v3, :cond_7

    const/16 v3, 0x1e

    if-eq v0, v3, :cond_6

    const/16 v3, 0x28

    if-eq v0, v3, :cond_5

    const/16 v3, 0x32

    if-eq v0, v3, :cond_4

    const/16 v3, 0x3c

    if-eq v0, v3, :cond_3

    const/16 v3, 0x46

    if-eq v0, v3, :cond_2

    invoke-virtual {p1, v2}, Lcom/microsoft/bond/ProtocolReader;->skip(Lcom/microsoft/bond/BondDataType;)V

    goto :goto_1

    :cond_2
    invoke-static {p1, v2}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LMicrosoft/Telemetry/Extensions/cloud;->deploymentUnit:Ljava/lang/String;

    goto :goto_1

    :cond_3
    invoke-static {p1, v2}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LMicrosoft/Telemetry/Extensions/cloud;->environment:Ljava/lang/String;

    goto :goto_1

    :cond_4
    invoke-static {p1, v2}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LMicrosoft/Telemetry/Extensions/cloud;->roleVer:Ljava/lang/String;

    goto :goto_1

    :cond_5
    invoke-static {p1, v2}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LMicrosoft/Telemetry/Extensions/cloud;->location:Ljava/lang/String;

    goto :goto_1

    :cond_6
    invoke-static {p1, v2}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LMicrosoft/Telemetry/Extensions/cloud;->roleInstance:Ljava/lang/String;

    goto :goto_1

    :cond_7
    invoke-static {p1, v2}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LMicrosoft/Telemetry/Extensions/cloud;->role:Ljava/lang/String;

    goto :goto_1

    :cond_8
    invoke-static {p1, v2}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LMicrosoft/Telemetry/Extensions/cloud;->name:Ljava/lang/String;

    :goto_1
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldEnd()V

    goto :goto_0

    :cond_9
    :goto_2
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-ne v2, v0, :cond_a

    goto :goto_3

    :cond_a
    const/4 p2, 0x0

    :goto_3
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readStructEnd()V

    return p2
.end method

.method public readUntagged(Lcom/microsoft/bond/ProtocolReader;Z)V
    .registers 4

    sget-object v0, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v0}, Lcom/microsoft/bond/ProtocolReader;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolReader;->readStructBegin(Z)V

    const/4 p2, 0x1

    invoke-super {p0, p1, p2}, LMicrosoft/Telemetry/Extension;->readUntagged(Lcom/microsoft/bond/ProtocolReader;Z)V

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, LMicrosoft/Telemetry/Extensions/cloud;->name:Ljava/lang/String;

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_3

    :cond_2
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, LMicrosoft/Telemetry/Extensions/cloud;->role:Ljava/lang/String;

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_5

    :cond_4
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, LMicrosoft/Telemetry/Extensions/cloud;->roleInstance:Ljava/lang/String;

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_7

    :cond_6
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, LMicrosoft/Telemetry/Extensions/cloud;->location:Ljava/lang/String;

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_9

    :cond_8
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, LMicrosoft/Telemetry/Extensions/cloud;->roleVer:Ljava/lang/String;

    :cond_9
    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_b

    :cond_a
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, LMicrosoft/Telemetry/Extensions/cloud;->environment:Ljava/lang/String;

    :cond_b
    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_d

    :cond_c
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, LMicrosoft/Telemetry/Extensions/cloud;->deploymentUnit:Ljava/lang/String;

    :cond_d
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readStructEnd()V

    return-void
.end method

.method public reset()V
    .registers 3

    const-string v0, "cloud"

    const-string v1, "Microsoft.Telemetry.Extensions.cloud"

    invoke-virtual {p0, v0, v1}, LMicrosoft/Telemetry/Extensions/cloud;->reset(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reset(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-super {p0, p1, p2}, LMicrosoft/Telemetry/Extension;->reset(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    iput-object p1, p0, LMicrosoft/Telemetry/Extensions/cloud;->name:Ljava/lang/String;

    iput-object p1, p0, LMicrosoft/Telemetry/Extensions/cloud;->role:Ljava/lang/String;

    iput-object p1, p0, LMicrosoft/Telemetry/Extensions/cloud;->roleInstance:Ljava/lang/String;

    iput-object p1, p0, LMicrosoft/Telemetry/Extensions/cloud;->location:Ljava/lang/String;

    iput-object p1, p0, LMicrosoft/Telemetry/Extensions/cloud;->roleVer:Ljava/lang/String;

    iput-object p1, p0, LMicrosoft/Telemetry/Extensions/cloud;->environment:Ljava/lang/String;

    iput-object p1, p0, LMicrosoft/Telemetry/Extensions/cloud;->deploymentUnit:Ljava/lang/String;

    return-void
.end method

.method public final setDeploymentUnit(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, LMicrosoft/Telemetry/Extensions/cloud;->deploymentUnit:Ljava/lang/String;

    return-void
.end method

.method public final setEnvironment(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, LMicrosoft/Telemetry/Extensions/cloud;->environment:Ljava/lang/String;

    return-void
.end method

.method public setField(Lcom/microsoft/bond/FieldDef;Ljava/lang/Object;)V
    .registers 4

    invoke-virtual {p1}, Lcom/microsoft/bond/FieldDef;->getId()S

    move-result p1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_6

    const/16 v0, 0x14

    if-eq p1, v0, :cond_5

    const/16 v0, 0x1e

    if-eq p1, v0, :cond_4

    const/16 v0, 0x28

    if-eq p1, v0, :cond_3

    const/16 v0, 0x32

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x46

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, LMicrosoft/Telemetry/Extensions/cloud;->deploymentUnit:Ljava/lang/String;

    return-void

    :cond_1
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, LMicrosoft/Telemetry/Extensions/cloud;->environment:Ljava/lang/String;

    return-void

    :cond_2
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, LMicrosoft/Telemetry/Extensions/cloud;->roleVer:Ljava/lang/String;

    return-void

    :cond_3
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, LMicrosoft/Telemetry/Extensions/cloud;->location:Ljava/lang/String;

    return-void

    :cond_4
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, LMicrosoft/Telemetry/Extensions/cloud;->roleInstance:Ljava/lang/String;

    return-void

    :cond_5
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, LMicrosoft/Telemetry/Extensions/cloud;->role:Ljava/lang/String;

    return-void

    :cond_6
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, LMicrosoft/Telemetry/Extensions/cloud;->name:Ljava/lang/String;

    return-void
.end method

.method public final setLocation(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, LMicrosoft/Telemetry/Extensions/cloud;->location:Ljava/lang/String;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, LMicrosoft/Telemetry/Extensions/cloud;->name:Ljava/lang/String;

    return-void
.end method

.method public final setRole(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, LMicrosoft/Telemetry/Extensions/cloud;->role:Ljava/lang/String;

    return-void
.end method

.method public final setRoleInstance(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, LMicrosoft/Telemetry/Extensions/cloud;->roleInstance:Ljava/lang/String;

    return-void
.end method

.method public final setRoleVer(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, LMicrosoft/Telemetry/Extensions/cloud;->roleVer:Ljava/lang/String;

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

    invoke-virtual {p0, v0, v1}, LMicrosoft/Telemetry/Extensions/cloud;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    :cond_0
    invoke-virtual {p0, p1, v1}, LMicrosoft/Telemetry/Extensions/cloud;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeEnd()V

    return-void
.end method

.method public writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V
    .registers 8

    sget-object v0, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v0}, Lcom/microsoft/bond/ProtocolWriter;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    sget-object v1, LMicrosoft/Telemetry/Extensions/cloud$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {p1, v1, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructBegin(Lcom/microsoft/bond/BondSerializable;Z)V

    const/4 v1, 0x1

    invoke-super {p0, p1, v1}, LMicrosoft/Telemetry/Extension;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/cloud$Schema;->access$000()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {p1, v1, v3, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget-object v2, p0, LMicrosoft/Telemetry/Extensions/cloud;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    invoke-static {}, LMicrosoft/Telemetry/Extensions/cloud$Schema;->access$100()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    const/16 v3, 0x14

    invoke-virtual {p1, v1, v3, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget-object v2, p0, LMicrosoft/Telemetry/Extensions/cloud;->role:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    invoke-static {}, LMicrosoft/Telemetry/Extensions/cloud$Schema;->access$200()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    const/16 v3, 0x1e

    invoke-virtual {p1, v1, v3, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget-object v2, p0, LMicrosoft/Telemetry/Extensions/cloud;->roleInstance:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    invoke-static {}, LMicrosoft/Telemetry/Extensions/cloud$Schema;->access$300()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    const/16 v3, 0x28

    invoke-virtual {p1, v1, v3, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget-object v2, p0, LMicrosoft/Telemetry/Extensions/cloud;->location:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    const/16 v2, 0x32

    if-eqz v0, :cond_1

    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/cloud;->roleVer:Ljava/lang/String;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/cloud$Schema;->access$400()Lcom/microsoft/bond/Metadata;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/bond/Variant;->getString_value()Ljava/lang/String;

    move-result-object v4

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, LMicrosoft/Telemetry/Extensions/cloud$Schema;->access$400()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, LMicrosoft/Telemetry/Extensions/cloud$Schema;->access$400()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget-object v2, p0, LMicrosoft/Telemetry/Extensions/cloud;->roleVer:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    :goto_1
    const/16 v2, 0x3c

    if-eqz v0, :cond_3

    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/cloud;->environment:Ljava/lang/String;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/cloud$Schema;->access$500()Lcom/microsoft/bond/Metadata;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/bond/Variant;->getString_value()Ljava/lang/String;

    move-result-object v4

    if-eq v3, v4, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {}, LMicrosoft/Telemetry/Extensions/cloud$Schema;->access$500()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_3

    :cond_3
    :goto_2
    invoke-static {}, LMicrosoft/Telemetry/Extensions/cloud$Schema;->access$500()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget-object v2, p0, LMicrosoft/Telemetry/Extensions/cloud;->environment:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    :goto_3
    const/16 v2, 0x46

    if-eqz v0, :cond_5

    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/cloud;->deploymentUnit:Ljava/lang/String;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/cloud$Schema;->access$600()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/bond/Variant;->getString_value()Ljava/lang/String;

    move-result-object v3

    if-eq v0, v3, :cond_4

    goto :goto_4

    :cond_4
    invoke-static {}, LMicrosoft/Telemetry/Extensions/cloud$Schema;->access$600()Lcom/microsoft/bond/Metadata;

    move-result-object v0

    invoke-virtual {p1, v1, v2, v0}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_5

    :cond_5
    :goto_4
    invoke-static {}, LMicrosoft/Telemetry/Extensions/cloud$Schema;->access$600()Lcom/microsoft/bond/Metadata;

    move-result-object v0

    invoke-virtual {p1, v1, v2, v0}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/cloud;->deploymentUnit:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    :goto_5
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructEnd(Z)V

    return-void
.end method
