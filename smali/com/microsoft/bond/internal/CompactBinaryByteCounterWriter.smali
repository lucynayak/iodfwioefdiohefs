.class public Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;
.super Lcom/microsoft/bond/ProtocolWriter;
.source "SourceFile"


# instance fields
.field private byteLengths:Lcom/microsoft/bond/internal/IntArrayStack;

.field private byteLengthsIndexes:Lcom/microsoft/bond/internal/IntArrayStack;

.field private positionBytes:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/microsoft/bond/ProtocolWriter;-><init>()V

    new-instance v0, Lcom/microsoft/bond/internal/IntArrayStack;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/microsoft/bond/internal/IntArrayStack;-><init>(I)V

    iput-object v0, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->byteLengthsIndexes:Lcom/microsoft/bond/internal/IntArrayStack;

    new-instance v0, Lcom/microsoft/bond/internal/IntArrayStack;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/microsoft/bond/internal/IntArrayStack;-><init>(I)V

    iput-object v0, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->byteLengths:Lcom/microsoft/bond/internal/IntArrayStack;

    return-void
.end method


# virtual methods
.method public getByteLength(I)I
    .registers 3

    iget-object v0, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->byteLengths:Lcom/microsoft/bond/internal/IntArrayStack;

    invoke-virtual {v0, p1}, Lcom/microsoft/bond/internal/IntArrayStack;->get(I)I

    move-result p1

    return p1
.end method

.method public hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z
    .registers 5

    sget-object v0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter$1;->$SwitchMap$com$microsoft$bond$ProtocolCapability:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    invoke-super {p0, p1}, Lcom/microsoft/bond/ProtocolWriter;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v1

    :cond_0
    return v1
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    iget-object v0, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->byteLengths:Lcom/microsoft/bond/internal/IntArrayStack;

    invoke-virtual {v0}, Lcom/microsoft/bond/internal/IntArrayStack;->clear()V

    iget-object v0, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->byteLengthsIndexes:Lcom/microsoft/bond/internal/IntArrayStack;

    invoke-virtual {v0}, Lcom/microsoft/bond/internal/IntArrayStack;->clear()V

    return-void
.end method

.method public writeBlob(Lcom/microsoft/bond/BondBlob;)V
    .registers 3

    iget v0, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    invoke-virtual {p1}, Lcom/microsoft/bond/BondBlob;->size()I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    return-void
.end method

.method public writeBool(Z)V
    .registers 2

    iget p1, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    return-void
.end method

.method public writeContainerBegin(ILcom/microsoft/bond/BondDataType;)V
    .registers 4

    iget p2, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    const/4 v0, 0x7

    if-ge p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/microsoft/bond/internal/IntegerHelper;->getVarUInt32Size(I)I

    move-result p1

    :goto_0
    add-int/lit8 p1, p1, 0x1

    add-int/2addr p1, p2

    iput p1, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    return-void
.end method

.method public writeContainerBegin(ILcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V
    .registers 4

    iget p2, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    invoke-static {p1}, Lcom/microsoft/bond/internal/IntegerHelper;->getVarUInt32Size(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    return-void
.end method

.method public writeContainerEnd()V
    .registers 1

    return-void
.end method

.method public writeDouble(D)V
    .registers 3

    iget p1, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    add-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    return-void
.end method

.method public writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V
    .registers 4

    const/4 p1, 0x5

    if-gt p2, p1, :cond_0

    iget p1, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    add-int/lit8 p1, p1, 0x1

    :goto_0
    iput p1, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    return-void

    :cond_0
    const/16 p1, 0xff

    if-gt p2, p1, :cond_1

    iget p1, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    add-int/lit8 p1, p1, 0x3

    goto :goto_0
.end method

.method public writeFieldEnd()V
    .registers 1

    return-void
.end method

.method public writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V
    .registers 4

    return-void
.end method

.method public writeFloat(F)V
    .registers 2

    iget p1, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    return-void
.end method

.method public writeInt16(S)V
    .registers 2

    invoke-static {p1}, Lcom/microsoft/bond/internal/IntegerHelper;->encodeZigzag16(S)S

    move-result p1

    invoke-virtual {p0, p1}, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->writeUInt16(S)V

    return-void
.end method

.method public writeInt32(I)V
    .registers 2

    invoke-static {p1}, Lcom/microsoft/bond/internal/IntegerHelper;->encodeZigzag32(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->writeUInt32(I)V

    return-void
.end method

.method public writeInt64(J)V
    .registers 3

    invoke-static {p1, p2}, Lcom/microsoft/bond/internal/IntegerHelper;->encodeZigzag64(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->writeUInt64(J)V

    return-void
.end method

.method public writeInt8(B)V
    .registers 2

    iget p1, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/microsoft/bond/internal/StringHelper;->encodeToUtf8(Ljava/lang/String;)[B

    move-result-object p1

    array-length p1, p1

    iget v0, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    invoke-static {p1}, Lcom/microsoft/bond/internal/IntegerHelper;->getVarUInt32Size(I)I

    move-result v1

    add-int/2addr v1, p1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    return-void

    :cond_1
    :goto_0
    iget p1, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    return-void
.end method

.method public writeStructBegin(Lcom/microsoft/bond/BondSerializable;Z)V
    .registers 3

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->byteLengthsIndexes:Lcom/microsoft/bond/internal/IntArrayStack;

    iget-object p2, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->byteLengths:Lcom/microsoft/bond/internal/IntArrayStack;

    invoke-virtual {p2}, Lcom/microsoft/bond/internal/IntArrayStack;->getSize()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/microsoft/bond/internal/IntArrayStack;->push(I)V

    iget-object p1, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->byteLengths:Lcom/microsoft/bond/internal/IntArrayStack;

    iget p2, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    invoke-virtual {p1, p2}, Lcom/microsoft/bond/internal/IntArrayStack;->push(I)V

    :cond_0
    return-void
.end method

.method public writeStructEnd(Z)V
    .registers 4

    iget v0, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->byteLengthsIndexes:Lcom/microsoft/bond/internal/IntArrayStack;

    invoke-virtual {p1}, Lcom/microsoft/bond/internal/IntArrayStack;->pop()I

    move-result p1

    iget v0, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    iget-object v1, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->byteLengths:Lcom/microsoft/bond/internal/IntArrayStack;

    invoke-virtual {v1, p1}, Lcom/microsoft/bond/internal/IntArrayStack;->get(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->byteLengths:Lcom/microsoft/bond/internal/IntArrayStack;

    invoke-virtual {v1, p1, v0}, Lcom/microsoft/bond/internal/IntArrayStack;->set(II)V

    iget p1, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    invoke-static {v0}, Lcom/microsoft/bond/internal/IntegerHelper;->getVarUInt32Size(I)I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    :cond_0
    return-void
.end method

.method public writeUInt16(S)V
    .registers 3

    iget v0, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    invoke-static {p1}, Lcom/microsoft/bond/internal/IntegerHelper;->getVarUInt16Size(S)I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    return-void
.end method

.method public writeUInt32(I)V
    .registers 3

    iget v0, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    invoke-static {p1}, Lcom/microsoft/bond/internal/IntegerHelper;->getVarUInt32Size(I)I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    return-void
.end method

.method public writeUInt64(J)V
    .registers 4

    iget v0, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    invoke-static {p1, p2}, Lcom/microsoft/bond/internal/IntegerHelper;->getVarUInt64Size(J)I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    return-void
.end method

.method public writeUInt8(B)V
    .registers 2

    iget p1, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    return-void
.end method

.method public writeVersion()V
    .registers 2

    iget v0, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    return-void
.end method

.method public writeWString(Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    add-int/lit8 p1, p1, 0x1

    :goto_0
    iput p1, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    return-void

    :cond_0
    invoke-static {p1}, Lcom/microsoft/bond/internal/StringHelper;->encodeToUtf16(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0

    iget v1, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Lcom/microsoft/bond/internal/IntegerHelper;->getVarUInt32Size(I)I

    move-result p1

    add-int/2addr p1, v0

    add-int/2addr p1, v1

    goto :goto_0
.end method
