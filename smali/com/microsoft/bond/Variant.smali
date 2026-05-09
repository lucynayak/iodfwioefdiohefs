.class public Lcom/microsoft/bond/Variant;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/bond/BondSerializable;
.implements Lcom/microsoft/bond/BondMirror;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/bond/Variant$Schema;
    }
.end annotation


# instance fields
.field private double_value:D

.field private int_value:J

.field private nothing:Z

.field private string_value:Ljava/lang/String;

.field private uint_value:J

.field private wstring_value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/microsoft/bond/Variant;->reset()V

    return-void
.end method

.method public static getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;
    .registers 1

    sget-object v0, Lcom/microsoft/bond/Variant$Schema;->schemaDef:Lcom/microsoft/bond/SchemaDef;

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

    invoke-virtual {p0}, Lcom/microsoft/bond/Variant;->clone()Lcom/microsoft/bond/BondSerializable;

    move-result-object v0

    return-object v0
.end method

.method public createInstance(Lcom/microsoft/bond/StructDef;)Lcom/microsoft/bond/BondMirror;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public final getDouble_value()D
    .registers 3

    iget-wide v0, p0, Lcom/microsoft/bond/Variant;->double_value:D

    return-wide v0
.end method

.method public getField(Lcom/microsoft/bond/FieldDef;)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p1}, Lcom/microsoft/bond/FieldDef;->getId()S

    move-result p1

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-boolean p1, p0, Lcom/microsoft/bond/Variant;->nothing:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/microsoft/bond/Variant;->wstring_value:Ljava/lang/String;

    return-object p1

    :cond_2
    iget-object p1, p0, Lcom/microsoft/bond/Variant;->string_value:Ljava/lang/String;

    return-object p1

    :cond_3
    iget-wide v0, p0, Lcom/microsoft/bond/Variant;->double_value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_4
    iget-wide v0, p0, Lcom/microsoft/bond/Variant;->int_value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_5
    iget-wide v0, p0, Lcom/microsoft/bond/Variant;->uint_value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final getInt_value()J
    .registers 3

    iget-wide v0, p0, Lcom/microsoft/bond/Variant;->int_value:J

    return-wide v0
.end method

.method public final getNothing()Z
    .registers 2

    iget-boolean v0, p0, Lcom/microsoft/bond/Variant;->nothing:Z

    return v0
.end method

.method public getSchema()Lcom/microsoft/bond/SchemaDef;
    .registers 2

    invoke-static {}, Lcom/microsoft/bond/Variant;->getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;

    move-result-object v0

    return-object v0
.end method

.method public final getString_value()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/bond/Variant;->string_value:Ljava/lang/String;

    return-object v0
.end method

.method public final getUint_value()J
    .registers 3

    iget-wide v0, p0, Lcom/microsoft/bond/Variant;->uint_value:J

    return-wide v0
.end method

.method public final getWstring_value()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/bond/Variant;->wstring_value:Ljava/lang/String;

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
    check-cast p1, Lcom/microsoft/bond/Variant;

    invoke-virtual {p0, p1}, Lcom/microsoft/bond/Variant;->memberwiseCompareQuick(Lcom/microsoft/bond/Variant;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/microsoft/bond/Variant;->memberwiseCompareDeep(Lcom/microsoft/bond/Variant;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public memberwiseCompareDeep(Lcom/microsoft/bond/Variant;)Z
    .registers 6

    iget-object v0, p0, Lcom/microsoft/bond/Variant;->string_value:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p1, Lcom/microsoft/bond/Variant;->string_value:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/microsoft/bond/Variant;->wstring_value:Ljava/lang/String;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object p1, p1, Lcom/microsoft/bond/Variant;->wstring_value:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    :goto_2
    return v1

    :cond_4
    :goto_3
    return v2
.end method

.method public memberwiseCompareQuick(Lcom/microsoft/bond/Variant;)Z
    .registers 9

    iget-wide v0, p0, Lcom/microsoft/bond/Variant;->uint_value:J

    iget-wide v2, p1, Lcom/microsoft/bond/Variant;->uint_value:J

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-nez v6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/microsoft/bond/Variant;->int_value:J

    iget-wide v2, p1, Lcom/microsoft/bond/Variant;->int_value:J

    cmp-long v6, v0, v2

    if-nez v6, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    iget-wide v0, p0, Lcom/microsoft/bond/Variant;->double_value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v0, p1, Lcom/microsoft/bond/Variant;->double_value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_2
    iget-wide v0, p0, Lcom/microsoft/bond/Variant;->double_value:D

    iget-wide v2, p1, Lcom/microsoft/bond/Variant;->double_value:D

    cmpl-double v6, v0, v2

    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/microsoft/bond/Variant;->string_value:Ljava/lang/String;

    if-nez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_5
    iget-object v1, p1, Lcom/microsoft/bond/Variant;->string_value:Ljava/lang/String;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_7

    :cond_7
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/microsoft/bond/Variant;->string_value:Ljava/lang/String;

    if-nez v0, :cond_8

    goto :goto_8

    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p1, Lcom/microsoft/bond/Variant;->string_value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_9

    goto :goto_9

    :cond_9
    :goto_8
    const/4 v0, 0x1

    goto :goto_a

    :cond_a
    :goto_9
    const/4 v0, 0x0

    :goto_a
    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/microsoft/bond/Variant;->wstring_value:Ljava/lang/String;

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_b

    :cond_b
    const/4 v0, 0x0

    :goto_b
    iget-object v1, p1, Lcom/microsoft/bond/Variant;->wstring_value:Ljava/lang/String;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_c

    :cond_c
    const/4 v1, 0x0

    :goto_c
    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_d

    :cond_d
    const/4 v0, 0x0

    :goto_d
    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/microsoft/bond/Variant;->wstring_value:Ljava/lang/String;

    if-nez v0, :cond_e

    goto :goto_e

    :cond_e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p1, Lcom/microsoft/bond/Variant;->wstring_value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_f

    goto :goto_f

    :cond_f
    :goto_e
    const/4 v0, 0x1

    goto :goto_10

    :cond_10
    :goto_f
    const/4 v0, 0x0

    :goto_10
    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/microsoft/bond/Variant;->nothing:Z

    iget-boolean p1, p1, Lcom/microsoft/bond/Variant;->nothing:Z

    if-ne v0, p1, :cond_11

    return v4

    :cond_11
    return v5
.end method

.method public read(Lcom/microsoft/bond/ProtocolReader;)V
    .registers 2

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readBegin()V

    invoke-virtual {p0, p1}, Lcom/microsoft/bond/Variant;->readNested(Lcom/microsoft/bond/ProtocolReader;)V

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

    invoke-virtual {p0, p1, v1}, Lcom/microsoft/bond/Variant;->readUntagged(Lcom/microsoft/bond/ProtocolReader;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/bond/Variant;->readTagged(Lcom/microsoft/bond/ProtocolReader;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/microsoft/bond/internal/ReadHelper;->skipPartialStruct(Lcom/microsoft/bond/ProtocolReader;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public readTagged(Lcom/microsoft/bond/ProtocolReader;Z)Z
    .registers 6

    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolReader;->readStructBegin(Z)V

    :goto_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldBegin()Lcom/microsoft/bond/ProtocolReader$FieldTag;

    move-result-object p2

    iget-object v0, p2, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STOP:Lcom/microsoft/bond/BondDataType;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_7

    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-ne v0, v1, :cond_0

    goto :goto_2

    :cond_0
    iget p2, p2, Lcom/microsoft/bond/ProtocolReader$FieldTag;->id:I

    if-eqz p2, :cond_6

    if-eq p2, v2, :cond_5

    const/4 v1, 0x2

    if-eq p2, v1, :cond_4

    const/4 v1, 0x3

    if-eq p2, v1, :cond_3

    const/4 v1, 0x4

    if-eq p2, v1, :cond_2

    const/4 v1, 0x5

    if-eq p2, v1, :cond_1

    invoke-virtual {p1, v0}, Lcom/microsoft/bond/ProtocolReader;->skip(Lcom/microsoft/bond/BondDataType;)V

    goto :goto_1

    :cond_1
    invoke-static {p1, v0}, Lcom/microsoft/bond/internal/ReadHelper;->readBool(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/microsoft/bond/Variant;->nothing:Z

    goto :goto_1

    :cond_2
    invoke-static {p1, v0}, Lcom/microsoft/bond/internal/ReadHelper;->readWString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/microsoft/bond/Variant;->wstring_value:Ljava/lang/String;

    goto :goto_1

    :cond_3
    invoke-static {p1, v0}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/microsoft/bond/Variant;->string_value:Ljava/lang/String;

    goto :goto_1

    :cond_4
    invoke-static {p1, v0}, Lcom/microsoft/bond/internal/ReadHelper;->readDouble(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/microsoft/bond/Variant;->double_value:D

    goto :goto_1

    :cond_5
    invoke-static {p1, v0}, Lcom/microsoft/bond/internal/ReadHelper;->readInt64(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/microsoft/bond/Variant;->int_value:J

    goto :goto_1

    :cond_6
    invoke-static {p1, v0}, Lcom/microsoft/bond/internal/ReadHelper;->readUInt64(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/microsoft/bond/Variant;->uint_value:J

    :goto_1
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldEnd()V

    goto :goto_0

    :cond_7
    :goto_2
    sget-object p2, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-ne v0, p2, :cond_8

    goto :goto_3

    :cond_8
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readStructEnd()V

    return v2
.end method

.method public readUntagged(Lcom/microsoft/bond/ProtocolReader;Z)V
    .registers 6

    sget-object v0, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v0}, Lcom/microsoft/bond/ProtocolReader;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolReader;->readStructBegin(Z)V

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readUInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/microsoft/bond/Variant;->uint_value:J

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_3

    :cond_2
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/microsoft/bond/Variant;->int_value:J

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_5

    :cond_4
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/microsoft/bond/Variant;->double_value:D

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_7

    :cond_6
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/microsoft/bond/Variant;->string_value:Ljava/lang/String;

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_9

    :cond_8
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readWString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/microsoft/bond/Variant;->wstring_value:Ljava/lang/String;

    :cond_9
    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result p2

    if-nez p2, :cond_b

    :cond_a
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readBool()Z

    move-result p2

    iput-boolean p2, p0, Lcom/microsoft/bond/Variant;->nothing:Z

    :cond_b
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readStructEnd()V

    return-void
.end method

.method public reset()V
    .registers 3

    const-string v0, "Variant"

    const-string v1, "com.microsoft.bond.Variant"

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/bond/Variant;->reset(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reset(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/microsoft/bond/Variant;->uint_value:J

    iput-wide p1, p0, Lcom/microsoft/bond/Variant;->int_value:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/microsoft/bond/Variant;->double_value:D

    const-string p1, ""

    iput-object p1, p0, Lcom/microsoft/bond/Variant;->string_value:Ljava/lang/String;

    iput-object p1, p0, Lcom/microsoft/bond/Variant;->wstring_value:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/microsoft/bond/Variant;->nothing:Z

    return-void
.end method

.method public final setDouble_value(D)V
    .registers 3

    iput-wide p1, p0, Lcom/microsoft/bond/Variant;->double_value:D

    return-void
.end method

.method public setField(Lcom/microsoft/bond/FieldDef;Ljava/lang/Object;)V
    .registers 4

    invoke-virtual {p1}, Lcom/microsoft/bond/FieldDef;->getId()S

    move-result p1

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/microsoft/bond/Variant;->nothing:Z

    return-void

    :cond_1
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/microsoft/bond/Variant;->wstring_value:Ljava/lang/String;

    return-void

    :cond_2
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/microsoft/bond/Variant;->string_value:Ljava/lang/String;

    return-void

    :cond_3
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    iput-wide p1, p0, Lcom/microsoft/bond/Variant;->double_value:D

    return-void

    :cond_4
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/microsoft/bond/Variant;->int_value:J

    return-void

    :cond_5
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/microsoft/bond/Variant;->uint_value:J

    return-void
.end method

.method public final setInt_value(J)V
    .registers 3

    iput-wide p1, p0, Lcom/microsoft/bond/Variant;->int_value:J

    return-void
.end method

.method public final setNothing(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/microsoft/bond/Variant;->nothing:Z

    return-void
.end method

.method public final setString_value(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/bond/Variant;->string_value:Ljava/lang/String;

    return-void
.end method

.method public final setUint_value(J)V
    .registers 3

    iput-wide p1, p0, Lcom/microsoft/bond/Variant;->uint_value:J

    return-void
.end method

.method public final setWstring_value(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/bond/Variant;->wstring_value:Ljava/lang/String;

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

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/bond/Variant;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/bond/Variant;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeEnd()V

    return-void
.end method

.method public writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V
    .registers 12

    sget-object v0, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v0}, Lcom/microsoft/bond/ProtocolWriter;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    sget-object v1, Lcom/microsoft/bond/Variant$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {p1, v1, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructBegin(Lcom/microsoft/bond/BondSerializable;Z)V

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-wide v2, p0, Lcom/microsoft/bond/Variant;->uint_value:J

    invoke-static {}, Lcom/microsoft/bond/Variant$Schema;->access$000()Lcom/microsoft/bond/Metadata;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/bond/Variant;->getUint_value()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/microsoft/bond/BondDataType;->BT_UINT64:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/Variant$Schema;->access$000()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v2, v1, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v2, Lcom/microsoft/bond/BondDataType;->BT_UINT64:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/Variant$Schema;->access$000()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v2, v1, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget-wide v2, p0, Lcom/microsoft/bond/Variant;->uint_value:J

    invoke-virtual {p1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeUInt64(J)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    :goto_1
    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-wide v3, p0, Lcom/microsoft/bond/Variant;->int_value:J

    invoke-static {}, Lcom/microsoft/bond/Variant$Schema;->access$100()Lcom/microsoft/bond/Metadata;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/bond/Variant;->getInt_value()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_INT64:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/Variant$Schema;->access$100()Lcom/microsoft/bond/Metadata;

    move-result-object v4

    invoke-virtual {p1, v3, v2, v4}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_3

    :cond_3
    :goto_2
    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_INT64:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/Variant$Schema;->access$100()Lcom/microsoft/bond/Metadata;

    move-result-object v4

    invoke-virtual {p1, v3, v2, v4}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget-wide v3, p0, Lcom/microsoft/bond/Variant;->int_value:J

    invoke-virtual {p1, v3, v4}, Lcom/microsoft/bond/ProtocolWriter;->writeInt64(J)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    :goto_3
    const/4 v3, 0x2

    if-eqz v0, :cond_5

    iget-wide v4, p0, Lcom/microsoft/bond/Variant;->double_value:D

    invoke-static {}, Lcom/microsoft/bond/Variant$Schema;->access$200()Lcom/microsoft/bond/Metadata;

    move-result-object v6

    invoke-virtual {v6}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v6

    invoke-virtual {v6}, Lcom/microsoft/bond/Variant;->getDouble_value()D

    move-result-wide v6

    cmpl-double v8, v4, v6

    if-eqz v8, :cond_4

    goto :goto_4

    :cond_4
    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_DOUBLE:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/Variant$Schema;->access$200()Lcom/microsoft/bond/Metadata;

    move-result-object v5

    invoke-virtual {p1, v4, v3, v5}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_5

    :cond_5
    :goto_4
    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_DOUBLE:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/Variant$Schema;->access$200()Lcom/microsoft/bond/Metadata;

    move-result-object v5

    invoke-virtual {p1, v4, v3, v5}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget-wide v3, p0, Lcom/microsoft/bond/Variant;->double_value:D

    invoke-virtual {p1, v3, v4}, Lcom/microsoft/bond/ProtocolWriter;->writeDouble(D)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    :goto_5
    const/4 v3, 0x3

    if-eqz v0, :cond_7

    iget-object v4, p0, Lcom/microsoft/bond/Variant;->string_value:Ljava/lang/String;

    invoke-static {}, Lcom/microsoft/bond/Variant$Schema;->access$300()Lcom/microsoft/bond/Metadata;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/bond/Variant;->getString_value()Ljava/lang/String;

    move-result-object v5

    if-eq v4, v5, :cond_6

    goto :goto_6

    :cond_6
    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/Variant$Schema;->access$300()Lcom/microsoft/bond/Metadata;

    move-result-object v5

    invoke-virtual {p1, v4, v3, v5}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_7

    :cond_7
    :goto_6
    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/Variant$Schema;->access$300()Lcom/microsoft/bond/Metadata;

    move-result-object v5

    invoke-virtual {p1, v4, v3, v5}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget-object v3, p0, Lcom/microsoft/bond/Variant;->string_value:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    :goto_7
    const/4 v3, 0x4

    if-eqz v0, :cond_9

    iget-object v4, p0, Lcom/microsoft/bond/Variant;->wstring_value:Ljava/lang/String;

    invoke-static {}, Lcom/microsoft/bond/Variant$Schema;->access$400()Lcom/microsoft/bond/Metadata;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/bond/Variant;->getWstring_value()Ljava/lang/String;

    move-result-object v5

    if-eq v4, v5, :cond_8

    goto :goto_8

    :cond_8
    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_WSTRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/Variant$Schema;->access$400()Lcom/microsoft/bond/Metadata;

    move-result-object v5

    invoke-virtual {p1, v4, v3, v5}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_9

    :cond_9
    :goto_8
    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_WSTRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/Variant$Schema;->access$400()Lcom/microsoft/bond/Metadata;

    move-result-object v5

    invoke-virtual {p1, v4, v3, v5}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget-object v3, p0, Lcom/microsoft/bond/Variant;->wstring_value:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeWString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    :goto_9
    const/4 v3, 0x5

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/microsoft/bond/Variant;->nothing:Z

    invoke-static {}, Lcom/microsoft/bond/Variant$Schema;->access$500()Lcom/microsoft/bond/Metadata;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/bond/Variant;->getUint_value()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_a

    const/4 v1, 0x1

    :cond_a
    if-eq v0, v1, :cond_b

    goto :goto_a

    :cond_b
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_BOOL:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/Variant$Schema;->access$500()Lcom/microsoft/bond/Metadata;

    move-result-object v1

    invoke-virtual {p1, v0, v3, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_b

    :cond_c
    :goto_a
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_BOOL:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/Variant$Schema;->access$500()Lcom/microsoft/bond/Metadata;

    move-result-object v1

    invoke-virtual {p1, v0, v3, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    iget-boolean v0, p0, Lcom/microsoft/bond/Variant;->nothing:Z

    invoke-virtual {p1, v0}, Lcom/microsoft/bond/ProtocolWriter;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    :goto_b
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructEnd(Z)V

    return-void
.end method
