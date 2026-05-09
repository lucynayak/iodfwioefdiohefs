.class public final Lcom/microsoft/bond/internal/ReadHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static invalideType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V
    .locals 0

    return-void
.end method

.method public static readBlob(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Lcom/microsoft/bond/BondBlob;
    .locals 2

    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_LIST:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v0}, Lcom/microsoft/bond/internal/ReadHelper;->validateType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readContainerBegin()Lcom/microsoft/bond/ProtocolReader$ListTag;

    move-result-object p1

    iget-object v1, p1, Lcom/microsoft/bond/ProtocolReader$ListTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {v1, v0}, Lcom/microsoft/bond/internal/ReadHelper;->validateType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    iget p1, p1, Lcom/microsoft/bond/ProtocolReader$ListTag;->size:I

    if-nez p1, :cond_0

    new-instance p1, Lcom/microsoft/bond/BondBlob;

    invoke-direct {p1}, Lcom/microsoft/bond/BondBlob;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/microsoft/bond/BondBlob;

    invoke-virtual {p0, p1}, Lcom/microsoft/bond/ProtocolReader;->readBlob(I)Lcom/microsoft/bond/BondBlob;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/microsoft/bond/BondBlob;-><init>(Lcom/microsoft/bond/BondBlob;)V

    move-object p1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readContainerEnd()V

    return-object p1
.end method

.method public static readBool(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Z
    .locals 1

    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_BOOL:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v0}, Lcom/microsoft/bond/internal/ReadHelper;->validateType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readBool()Z

    move-result p0

    return p0
.end method

.method public static readDouble(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)D
    .locals 2

    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_DOUBLE:Lcom/microsoft/bond/BondDataType;

    if-eq p1, v0, :cond_2

    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_UNAVAILABLE:Lcom/microsoft/bond/BondDataType;

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_FLOAT:Lcom/microsoft/bond/BondDataType;

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readFloat()F

    move-result p0

    float-to-double p0, p0

    return-wide p0

    :cond_1
    invoke-static {p1, v0}, Lcom/microsoft/bond/internal/ReadHelper;->invalideType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readDouble()D

    move-result-wide p0

    return-wide p0
.end method

.method public static readFloat(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)F
    .locals 1

    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_FLOAT:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v0}, Lcom/microsoft/bond/internal/ReadHelper;->validateType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readFloat()F

    move-result p0

    return p0
.end method

.method public static readInt16(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)S
    .locals 2

    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_INT16:Lcom/microsoft/bond/BondDataType;

    if-eq p1, v0, :cond_2

    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_UNAVAILABLE:Lcom/microsoft/bond/BondDataType;

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_INT8:Lcom/microsoft/bond/BondDataType;

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readInt8()B

    move-result p0

    int-to-short p0, p0

    return p0

    :cond_1
    invoke-static {p1, v0}, Lcom/microsoft/bond/internal/ReadHelper;->invalideType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readInt16()S

    move-result p0

    return p0
.end method

.method public static readInt32(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)I
    .locals 2

    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_INT32:Lcom/microsoft/bond/BondDataType;

    if-eq p1, v0, :cond_3

    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_UNAVAILABLE:Lcom/microsoft/bond/BondDataType;

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_INT16:Lcom/microsoft/bond/BondDataType;

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readInt16()S

    move-result p0

    return p0

    :cond_1
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_INT8:Lcom/microsoft/bond/BondDataType;

    if-ne p1, v1, :cond_2

    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readInt8()B

    move-result p0

    return p0

    :cond_2
    invoke-static {p1, v0}, Lcom/microsoft/bond/internal/ReadHelper;->invalideType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readInt32()I

    move-result p0

    return p0
.end method

.method public static readInt64(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)J
    .locals 2

    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_INT64:Lcom/microsoft/bond/BondDataType;

    if-eq p1, v0, :cond_4

    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_UNAVAILABLE:Lcom/microsoft/bond/BondDataType;

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_INT32:Lcom/microsoft/bond/BondDataType;

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readInt32()I

    move-result p0

    int-to-long p0, p0

    return-wide p0

    :cond_1
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_INT16:Lcom/microsoft/bond/BondDataType;

    if-ne p1, v1, :cond_2

    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readInt16()S

    move-result p0

    int-to-long p0, p0

    return-wide p0

    :cond_2
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_INT8:Lcom/microsoft/bond/BondDataType;

    if-ne p1, v1, :cond_3

    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readInt8()B

    move-result p0

    int-to-long p0, p0

    return-wide p0

    :cond_3
    invoke-static {p1, v0}, Lcom/microsoft/bond/internal/ReadHelper;->invalideType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readInt64()J

    move-result-wide p0

    return-wide p0
.end method

.method public static readInt8(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)B
    .locals 1

    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_INT8:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v0}, Lcom/microsoft/bond/internal/ReadHelper;->validateType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readInt8()B

    move-result p0

    return p0
.end method

.method public static readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v0}, Lcom/microsoft/bond/internal/ReadHelper;->validateType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static readUInt16(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)S
    .locals 2

    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_UINT16:Lcom/microsoft/bond/BondDataType;

    if-eq p1, v0, :cond_2

    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_UNAVAILABLE:Lcom/microsoft/bond/BondDataType;

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_UINT8:Lcom/microsoft/bond/BondDataType;

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readUInt8()B

    move-result p0

    int-to-short p0, p0

    return p0

    :cond_1
    invoke-static {p1, v0}, Lcom/microsoft/bond/internal/ReadHelper;->invalideType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readUInt16()S

    move-result p0

    return p0
.end method

.method public static readUInt32(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)I
    .locals 2

    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_UINT32:Lcom/microsoft/bond/BondDataType;

    if-eq p1, v0, :cond_3

    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_UNAVAILABLE:Lcom/microsoft/bond/BondDataType;

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_UINT16:Lcom/microsoft/bond/BondDataType;

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readUInt16()S

    move-result p0

    return p0

    :cond_1
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_UINT8:Lcom/microsoft/bond/BondDataType;

    if-ne p1, v1, :cond_2

    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readUInt8()B

    move-result p0

    return p0

    :cond_2
    invoke-static {p1, v0}, Lcom/microsoft/bond/internal/ReadHelper;->invalideType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readUInt32()I

    move-result p0

    return p0
.end method

.method public static readUInt64(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)J
    .locals 2

    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_UINT64:Lcom/microsoft/bond/BondDataType;

    if-eq p1, v0, :cond_4

    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_UNAVAILABLE:Lcom/microsoft/bond/BondDataType;

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_UINT32:Lcom/microsoft/bond/BondDataType;

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readUInt32()I

    move-result p0

    int-to-long p0, p0

    return-wide p0

    :cond_1
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_UINT16:Lcom/microsoft/bond/BondDataType;

    if-ne p1, v1, :cond_2

    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readUInt16()S

    move-result p0

    int-to-long p0, p0

    return-wide p0

    :cond_2
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_UINT8:Lcom/microsoft/bond/BondDataType;

    if-ne p1, v1, :cond_3

    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readUInt8()B

    move-result p0

    int-to-long p0, p0

    return-wide p0

    :cond_3
    invoke-static {p1, v0}, Lcom/microsoft/bond/internal/ReadHelper;->invalideType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readUInt64()J

    move-result-wide p0

    return-wide p0
.end method

.method public static readUInt8(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)B
    .locals 1

    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_UINT8:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v0}, Lcom/microsoft/bond/internal/ReadHelper;->validateType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readUInt8()B

    move-result p0

    return p0
.end method

.method public static readWString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_WSTRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v0}, Lcom/microsoft/bond/internal/ReadHelper;->validateType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readWString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static skipPartialStruct(Lcom/microsoft/bond/ProtocolReader;)V
    .locals 4

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/microsoft/bond/ProtocolReader;->readStructBegin(Z)V

    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readFieldBegin()Lcom/microsoft/bond/ProtocolReader$FieldTag;

    move-result-object v0

    iget-object v1, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v2, Lcom/microsoft/bond/BondDataType;->BT_STOP:Lcom/microsoft/bond/BondDataType;

    if-eq v1, v2, :cond_1

    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-eq v1, v3, :cond_1

    invoke-virtual {p0, v1}, Lcom/microsoft/bond/ProtocolReader;->skip(Lcom/microsoft/bond/BondDataType;)V

    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readFieldEnd()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readStructEnd()V

    iget-object v0, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    if-ne v2, v0, :cond_0

    return-void
.end method

.method public static validateType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V
    .locals 1

    if-eq p0, p1, :cond_0

    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_UNAVAILABLE:Lcom/microsoft/bond/BondDataType;

    if-eq p0, v0, :cond_0

    invoke-static {p0, p1}, Lcom/microsoft/bond/internal/ReadHelper;->invalideType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    :cond_0
    return-void
.end method
