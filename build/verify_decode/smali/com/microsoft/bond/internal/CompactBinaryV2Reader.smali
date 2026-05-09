.class public Lcom/microsoft/bond/internal/CompactBinaryV2Reader;
.super Lcom/microsoft/bond/CompactBinaryReader;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/microsoft/bond/io/BondInputStream;)V
    .locals 1

    sget-object v0, Lcom/microsoft/bond/ProtocolVersion;->TWO:Lcom/microsoft/bond/ProtocolVersion;

    invoke-direct {p0, v0, p1}, Lcom/microsoft/bond/CompactBinaryReader;-><init>(Lcom/microsoft/bond/ProtocolVersion;Lcom/microsoft/bond/io/BondInputStream;)V

    return-void
.end method


# virtual methods
.method public readContainerBegin()Lcom/microsoft/bond/ProtocolReader$ListTag;
    .locals 3

    invoke-virtual {p0}, Lcom/microsoft/bond/CompactBinaryReader;->readUInt8()B

    move-result v0

    and-int/lit8 v1, v0, 0x1f

    invoke-static {v1}, Lcom/microsoft/bond/BondDataType;->fromValue(I)Lcom/microsoft/bond/BondDataType;

    move-result-object v1

    and-int/lit16 v2, v0, 0xe0

    if-eqz v2, :cond_0

    new-instance v2, Lcom/microsoft/bond/ProtocolReader$ListTag;

    shr-int/lit8 v0, v0, 0x5

    int-to-byte v0, v0

    and-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, -0x1

    invoke-direct {v2, v0, v1}, Lcom/microsoft/bond/ProtocolReader$ListTag;-><init>(ILcom/microsoft/bond/BondDataType;)V

    return-object v2

    :cond_0
    new-instance v0, Lcom/microsoft/bond/ProtocolReader$ListTag;

    invoke-virtual {p0}, Lcom/microsoft/bond/CompactBinaryReader;->readUInt32()I

    move-result v2

    invoke-direct {v0, v2, v1}, Lcom/microsoft/bond/ProtocolReader$ListTag;-><init>(ILcom/microsoft/bond/BondDataType;)V

    return-object v0
.end method

.method public readStructBegin(Z)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/microsoft/bond/CompactBinaryReader;->readUInt32()I

    :cond_0
    return-void
.end method

.method public skip(Lcom/microsoft/bond/BondDataType;)V
    .locals 2

    sget-object v0, Lcom/microsoft/bond/internal/CompactBinaryV2Reader$1;->$SwitchMap$com$microsoft$bond$BondDataType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/microsoft/bond/CompactBinaryReader;->skip(Lcom/microsoft/bond/BondDataType;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/bond/CompactBinaryReader;->readUInt32()I

    move-result p1

    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryReader;->stream:Lcom/microsoft/bond/io/BondInputStream;

    invoke-interface {v0, p1}, Lcom/microsoft/bond/io/Seekable;->setPositionRelative(I)I

    return-void
.end method
