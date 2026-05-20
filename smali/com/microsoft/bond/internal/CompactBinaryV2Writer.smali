.class public Lcom/microsoft/bond/internal/CompactBinaryV2Writer;
.super Lcom/microsoft/bond/CompactBinaryWriter;
.source "SourceFile"


# instance fields
.field private final byteCounterWriter:Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;

.field private currentIndex:I


# direct methods
.method public constructor <init>(Lcom/microsoft/bond/io/BondOutputStream;)V
    .registers 3

    sget-object v0, Lcom/microsoft/bond/ProtocolVersion;->TWO:Lcom/microsoft/bond/ProtocolVersion;

    invoke-direct {p0, v0, p1}, Lcom/microsoft/bond/CompactBinaryWriter;-><init>(Lcom/microsoft/bond/ProtocolVersion;Lcom/microsoft/bond/io/BondOutputStream;)V

    new-instance p1, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;

    invoke-direct {p1}, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;-><init>()V

    iput-object p1, p0, Lcom/microsoft/bond/internal/CompactBinaryV2Writer;->byteCounterWriter:Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;

    const/4 p1, 0x0

    iput p1, p0, Lcom/microsoft/bond/internal/CompactBinaryV2Writer;->currentIndex:I

    return-void
.end method


# virtual methods
.method public getFirstPassWriter()Lcom/microsoft/bond/ProtocolWriter;
    .registers 2

    iget v0, p0, Lcom/microsoft/bond/internal/CompactBinaryV2Writer;->currentIndex:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/bond/internal/CompactBinaryV2Writer;->byteCounterWriter:Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public writeContainerBegin(ILcom/microsoft/bond/BondDataType;)V
    .registers 4

    const/4 v0, 0x7

    if-ge p1, v0, :cond_0

    invoke-virtual {p2}, Lcom/microsoft/bond/BondDataType;->getValue()I

    move-result p2

    add-int/lit8 p1, p1, 0x1

    shl-int/lit8 p1, p1, 0x5

    or-int/2addr p1, p2

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lcom/microsoft/bond/CompactBinaryWriter;->writeUInt8(B)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/microsoft/bond/CompactBinaryWriter;->writeContainerBegin(ILcom/microsoft/bond/BondDataType;)V

    return-void
.end method

.method public writeEnd()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/microsoft/bond/internal/CompactBinaryV2Writer;->currentIndex:I

    iget-object v0, p0, Lcom/microsoft/bond/internal/CompactBinaryV2Writer;->byteCounterWriter:Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;

    invoke-virtual {v0}, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->reset()V

    return-void
.end method

.method public writeStructBegin(Lcom/microsoft/bond/BondSerializable;Z)V
    .registers 3

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/microsoft/bond/internal/CompactBinaryV2Writer;->byteCounterWriter:Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;

    iget p2, p0, Lcom/microsoft/bond/internal/CompactBinaryV2Writer;->currentIndex:I

    invoke-virtual {p1, p2}, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->getByteLength(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/microsoft/bond/CompactBinaryWriter;->writeUInt32(I)V

    iget p1, p0, Lcom/microsoft/bond/internal/CompactBinaryV2Writer;->currentIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/microsoft/bond/internal/CompactBinaryV2Writer;->currentIndex:I

    :cond_0
    return-void
.end method
