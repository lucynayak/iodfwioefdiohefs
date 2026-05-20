.class public Lcom/microsoft/bond/CompactBinaryWriter;
.super Lcom/microsoft/bond/ProtocolWriter;
.source "SourceFile"


# static fields
.field public static final MAGIC:S


# instance fields
.field private final stream:Lcom/microsoft/bond/io/BondOutputStream;

.field private final version:Lcom/microsoft/bond/ProtocolVersion;

.field private final writeBuffer:[B


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/microsoft/bond/ProtocolType;->COMPACT_PROTOCOL:Lcom/microsoft/bond/ProtocolType;

    invoke-virtual {v0}, Lcom/microsoft/bond/ProtocolType;->getValue()I

    move-result v0

    int-to-short v0, v0

    sput-short v0, Lcom/microsoft/bond/CompactBinaryWriter;->MAGIC:S

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/bond/ProtocolVersion;Lcom/microsoft/bond/io/BondOutputStream;)V
    .registers 3

    invoke-direct {p0}, Lcom/microsoft/bond/ProtocolWriter;-><init>()V

    iput-object p1, p0, Lcom/microsoft/bond/CompactBinaryWriter;->version:Lcom/microsoft/bond/ProtocolVersion;

    iput-object p2, p0, Lcom/microsoft/bond/CompactBinaryWriter;->stream:Lcom/microsoft/bond/io/BondOutputStream;

    const/16 p1, 0xa

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/microsoft/bond/CompactBinaryWriter;->writeBuffer:[B

    return-void
.end method

.method public static createV1(Lcom/microsoft/bond/io/BondOutputStream;)Lcom/microsoft/bond/CompactBinaryWriter;
    .registers 3

    new-instance v0, Lcom/microsoft/bond/CompactBinaryWriter;

    sget-object v1, Lcom/microsoft/bond/ProtocolVersion;->ONE:Lcom/microsoft/bond/ProtocolVersion;

    invoke-direct {v0, v1, p0}, Lcom/microsoft/bond/CompactBinaryWriter;-><init>(Lcom/microsoft/bond/ProtocolVersion;Lcom/microsoft/bond/io/BondOutputStream;)V

    return-object v0
.end method

.method public static createV2(Lcom/microsoft/bond/io/BondOutputStream;)Lcom/microsoft/bond/CompactBinaryWriter;
    .registers 2

    new-instance v0, Lcom/microsoft/bond/internal/CompactBinaryV2Writer;

    invoke-direct {v0, p0}, Lcom/microsoft/bond/internal/CompactBinaryV2Writer;-><init>(Lcom/microsoft/bond/io/BondOutputStream;)V

    return-object v0
.end method


# virtual methods
.method public getVersion()Lcom/microsoft/bond/ProtocolVersion;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryWriter;->version:Lcom/microsoft/bond/ProtocolVersion;

    return-object v0
.end method

.method public hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z
    .registers 5

    sget-object v0, Lcom/microsoft/bond/CompactBinaryWriter$1;->$SwitchMap$com$microsoft$bond$ProtocolCapability:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    invoke-super {p0, p1}, Lcom/microsoft/bond/ProtocolWriter;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/microsoft/bond/CompactBinaryWriter;->version:Lcom/microsoft/bond/ProtocolVersion;

    invoke-virtual {v1}, Lcom/microsoft/bond/ProtocolVersion;->getValue()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "[%s version=%d]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeBlob(Lcom/microsoft/bond/BondBlob;)V
    .registers 5

    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryWriter;->stream:Lcom/microsoft/bond/io/BondOutputStream;

    invoke-virtual {p1}, Lcom/microsoft/bond/BondBlob;->getBuffer()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/microsoft/bond/BondBlob;->getOffset()I

    move-result v2

    invoke-virtual {p1}, Lcom/microsoft/bond/BondBlob;->size()I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/microsoft/bond/io/BondOutputStream;->write([BII)V

    return-void
.end method

.method public writeBool(Z)V
    .registers 2

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lcom/microsoft/bond/CompactBinaryWriter;->writeUInt8(B)V

    return-void
.end method

.method public writeContainerBegin(ILcom/microsoft/bond/BondDataType;)V
    .registers 3

    invoke-virtual {p2}, Lcom/microsoft/bond/BondDataType;->getValue()I

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p0, p2}, Lcom/microsoft/bond/CompactBinaryWriter;->writeUInt8(B)V

    invoke-virtual {p0, p1}, Lcom/microsoft/bond/CompactBinaryWriter;->writeUInt32(I)V

    return-void
.end method

.method public writeContainerBegin(ILcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V
    .registers 4

    invoke-virtual {p2}, Lcom/microsoft/bond/BondDataType;->getValue()I

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p0, p2}, Lcom/microsoft/bond/CompactBinaryWriter;->writeUInt8(B)V

    invoke-virtual {p3}, Lcom/microsoft/bond/BondDataType;->getValue()I

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p0, p2}, Lcom/microsoft/bond/CompactBinaryWriter;->writeUInt8(B)V

    invoke-virtual {p0, p1}, Lcom/microsoft/bond/CompactBinaryWriter;->writeUInt32(I)V

    return-void
.end method

.method public writeContainerEnd()V
    .registers 1

    return-void
.end method

.method public writeDouble(D)V
    .registers 5

    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryWriter;->writeBuffer:[B

    invoke-static {p1, p2, v0}, Lcom/microsoft/bond/internal/DecimalHelper;->encodeDouble(D[B)V

    iget-object p1, p0, Lcom/microsoft/bond/CompactBinaryWriter;->stream:Lcom/microsoft/bond/io/BondOutputStream;

    iget-object p2, p0, Lcom/microsoft/bond/CompactBinaryWriter;->writeBuffer:[B

    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-virtual {p1, p2, v0, v1}, Lcom/microsoft/bond/io/BondOutputStream;->write([BII)V

    return-void
.end method

.method public writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V
    .registers 5

    invoke-virtual {p1}, Lcom/microsoft/bond/BondDataType;->getValue()I

    move-result p1

    int-to-byte p1, p1

    const/4 p3, 0x5

    if-gt p2, p3, :cond_0

    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryWriter;->stream:Lcom/microsoft/bond/io/BondOutputStream;

    shl-int/2addr p2, p3

    or-int/2addr p1, p2

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Lcom/microsoft/bond/io/BondOutputStream;->write(B)V

    return-void

    :cond_0
    const/16 p3, 0xff

    if-gt p2, p3, :cond_1

    iget-object p3, p0, Lcom/microsoft/bond/CompactBinaryWriter;->stream:Lcom/microsoft/bond/io/BondOutputStream;

    or-int/lit16 p1, p1, 0xc0

    int-to-byte p1, p1

    invoke-virtual {p3, p1}, Lcom/microsoft/bond/io/BondOutputStream;->write(B)V

    iget-object p1, p0, Lcom/microsoft/bond/CompactBinaryWriter;->stream:Lcom/microsoft/bond/io/BondOutputStream;

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Lcom/microsoft/bond/io/BondOutputStream;->write(B)V

    return-void

    :cond_1
    iget-object p3, p0, Lcom/microsoft/bond/CompactBinaryWriter;->stream:Lcom/microsoft/bond/io/BondOutputStream;

    or-int/lit16 p1, p1, 0xe0

    int-to-byte p1, p1

    invoke-virtual {p3, p1}, Lcom/microsoft/bond/io/BondOutputStream;->write(B)V

    iget-object p1, p0, Lcom/microsoft/bond/CompactBinaryWriter;->stream:Lcom/microsoft/bond/io/BondOutputStream;

    int-to-byte p3, p2

    invoke-virtual {p1, p3}, Lcom/microsoft/bond/io/BondOutputStream;->write(B)V

    iget-object p1, p0, Lcom/microsoft/bond/CompactBinaryWriter;->stream:Lcom/microsoft/bond/io/BondOutputStream;

    ushr-int/lit8 p2, p2, 0x8

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Lcom/microsoft/bond/io/BondOutputStream;->write(B)V

    return-void
.end method

.method public writeFloat(F)V
    .registers 5

    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryWriter;->writeBuffer:[B

    invoke-static {p1, v0}, Lcom/microsoft/bond/internal/DecimalHelper;->encodeFloat(F[B)V

    iget-object p1, p0, Lcom/microsoft/bond/CompactBinaryWriter;->stream:Lcom/microsoft/bond/io/BondOutputStream;

    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryWriter;->writeBuffer:[B

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/microsoft/bond/io/BondOutputStream;->write([BII)V

    return-void
.end method

.method public writeInt16(S)V
    .registers 5

    invoke-static {p1}, Lcom/microsoft/bond/internal/IntegerHelper;->encodeZigzag16(S)S

    move-result p1

    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryWriter;->writeBuffer:[B

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/microsoft/bond/internal/IntegerHelper;->encodeVarUInt16(S[BI)I

    move-result p1

    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryWriter;->stream:Lcom/microsoft/bond/io/BondOutputStream;

    iget-object v2, p0, Lcom/microsoft/bond/CompactBinaryWriter;->writeBuffer:[B

    invoke-virtual {v0, v2, v1, p1}, Lcom/microsoft/bond/io/BondOutputStream;->write([BII)V

    return-void
.end method

.method public writeInt32(I)V
    .registers 5

    invoke-static {p1}, Lcom/microsoft/bond/internal/IntegerHelper;->encodeZigzag32(I)I

    move-result p1

    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryWriter;->writeBuffer:[B

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/microsoft/bond/internal/IntegerHelper;->encodeVarUInt32(I[BI)I

    move-result p1

    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryWriter;->stream:Lcom/microsoft/bond/io/BondOutputStream;

    iget-object v2, p0, Lcom/microsoft/bond/CompactBinaryWriter;->writeBuffer:[B

    invoke-virtual {v0, v2, v1, p1}, Lcom/microsoft/bond/io/BondOutputStream;->write([BII)V

    return-void
.end method

.method public writeInt64(J)V
    .registers 5

    invoke-static {p1, p2}, Lcom/microsoft/bond/internal/IntegerHelper;->encodeZigzag64(J)J

    move-result-wide p1

    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryWriter;->writeBuffer:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lcom/microsoft/bond/internal/IntegerHelper;->encodeVarUInt64(J[BI)I

    move-result p1

    iget-object p2, p0, Lcom/microsoft/bond/CompactBinaryWriter;->stream:Lcom/microsoft/bond/io/BondOutputStream;

    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryWriter;->writeBuffer:[B

    invoke-virtual {p2, v0, v1, p1}, Lcom/microsoft/bond/io/BondOutputStream;->write([BII)V

    return-void
.end method

.method public writeInt8(B)V
    .registers 3

    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryWriter;->stream:Lcom/microsoft/bond/io/BondOutputStream;

    invoke-virtual {v0, p1}, Lcom/microsoft/bond/io/BondOutputStream;->write(B)V

    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/microsoft/bond/CompactBinaryWriter;->writeUInt32(I)V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/microsoft/bond/internal/StringHelper;->encodeToUtf8(Ljava/lang/String;)[B

    move-result-object p1

    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/microsoft/bond/CompactBinaryWriter;->writeUInt32(I)V

    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryWriter;->stream:Lcom/microsoft/bond/io/BondOutputStream;

    invoke-virtual {v0, p1}, Lcom/microsoft/bond/io/BondOutputStream;->write([B)V

    return-void
.end method

.method public writeStructEnd(Z)V
    .registers 2

    if-eqz p1, :cond_0

    sget-object p1, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/microsoft/bond/BondDataType;->BT_STOP:Lcom/microsoft/bond/BondDataType;

    :goto_0
    invoke-virtual {p1}, Lcom/microsoft/bond/BondDataType;->getValue()I

    move-result p1

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lcom/microsoft/bond/CompactBinaryWriter;->writeUInt8(B)V

    return-void
.end method

.method public writeUInt16(S)V
    .registers 5

    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryWriter;->writeBuffer:[B

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/microsoft/bond/internal/IntegerHelper;->encodeVarUInt16(S[BI)I

    move-result p1

    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryWriter;->stream:Lcom/microsoft/bond/io/BondOutputStream;

    iget-object v2, p0, Lcom/microsoft/bond/CompactBinaryWriter;->writeBuffer:[B

    invoke-virtual {v0, v2, v1, p1}, Lcom/microsoft/bond/io/BondOutputStream;->write([BII)V

    return-void
.end method

.method public writeUInt32(I)V
    .registers 5

    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryWriter;->writeBuffer:[B

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/microsoft/bond/internal/IntegerHelper;->encodeVarUInt32(I[BI)I

    move-result p1

    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryWriter;->stream:Lcom/microsoft/bond/io/BondOutputStream;

    iget-object v2, p0, Lcom/microsoft/bond/CompactBinaryWriter;->writeBuffer:[B

    invoke-virtual {v0, v2, v1, p1}, Lcom/microsoft/bond/io/BondOutputStream;->write([BII)V

    return-void
.end method

.method public writeUInt64(J)V
    .registers 5

    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryWriter;->writeBuffer:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lcom/microsoft/bond/internal/IntegerHelper;->encodeVarUInt64(J[BI)I

    move-result p1

    iget-object p2, p0, Lcom/microsoft/bond/CompactBinaryWriter;->stream:Lcom/microsoft/bond/io/BondOutputStream;

    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryWriter;->writeBuffer:[B

    invoke-virtual {p2, v0, v1, p1}, Lcom/microsoft/bond/io/BondOutputStream;->write([BII)V

    return-void
.end method

.method public writeUInt8(B)V
    .registers 3

    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryWriter;->stream:Lcom/microsoft/bond/io/BondOutputStream;

    invoke-virtual {v0, p1}, Lcom/microsoft/bond/io/BondOutputStream;->write(B)V

    return-void
.end method

.method public writeVersion()V
    .registers 2

    sget-short v0, Lcom/microsoft/bond/CompactBinaryWriter;->MAGIC:S

    invoke-virtual {p0, v0}, Lcom/microsoft/bond/CompactBinaryWriter;->writeUInt16(S)V

    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryWriter;->version:Lcom/microsoft/bond/ProtocolVersion;

    invoke-virtual {v0}, Lcom/microsoft/bond/ProtocolVersion;->getValue()S

    move-result v0

    invoke-virtual {p0, v0}, Lcom/microsoft/bond/CompactBinaryWriter;->writeUInt16(S)V

    return-void
.end method

.method public writeWString(Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/microsoft/bond/CompactBinaryWriter;->writeUInt32(I)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/microsoft/bond/CompactBinaryWriter;->writeUInt32(I)V

    invoke-static {p1}, Lcom/microsoft/bond/internal/StringHelper;->encodeToUtf16(Ljava/lang/String;)[B

    move-result-object p1

    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryWriter;->stream:Lcom/microsoft/bond/io/BondOutputStream;

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Lcom/microsoft/bond/io/BondOutputStream;->write([BII)V

    return-void
.end method
