.class public Lcom/microsoft/bond/CompactBinaryReader;
.super Lcom/microsoft/bond/ProtocolReader;
.source "SourceFile"


# instance fields
.field private readBuffer:[B

.field public final stream:Lcom/microsoft/bond/io/BondInputStream;

.field private final version:Lcom/microsoft/bond/ProtocolVersion;


# direct methods
.method public constructor <init>(Lcom/microsoft/bond/ProtocolVersion;Lcom/microsoft/bond/io/BondInputStream;)V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/bond/ProtocolReader;-><init>()V

    iput-object p1, p0, Lcom/microsoft/bond/CompactBinaryReader;->version:Lcom/microsoft/bond/ProtocolVersion;

    iput-object p2, p0, Lcom/microsoft/bond/CompactBinaryReader;->stream:Lcom/microsoft/bond/io/BondInputStream;

    const/16 p1, 0x40

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/microsoft/bond/CompactBinaryReader;->readBuffer:[B

    return-void
.end method

.method private SkipContainer()V
    .locals 3

    invoke-virtual {p0}, Lcom/microsoft/bond/CompactBinaryReader;->readContainerBegin()Lcom/microsoft/bond/ProtocolReader$ListTag;

    move-result-object v0

    iget-object v1, v0, Lcom/microsoft/bond/ProtocolReader$ListTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v2, Lcom/microsoft/bond/BondDataType;->BT_UINT8:Lcom/microsoft/bond/BondDataType;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/microsoft/bond/BondDataType;->BT_INT8:Lcom/microsoft/bond/BondDataType;

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v2, v0, Lcom/microsoft/bond/ProtocolReader$ListTag;->size:I

    if-ge v1, v2, :cond_2

    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$ListTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {p0, v2}, Lcom/microsoft/bond/CompactBinaryReader;->skip(Lcom/microsoft/bond/BondDataType;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/microsoft/bond/CompactBinaryReader;->stream:Lcom/microsoft/bond/io/BondInputStream;

    iget v0, v0, Lcom/microsoft/bond/ProtocolReader$ListTag;->size:I

    invoke-interface {v1, v0}, Lcom/microsoft/bond/io/Seekable;->setPositionRelative(I)I

    :cond_2
    invoke-virtual {p0}, Lcom/microsoft/bond/CompactBinaryReader;->readContainerEnd()V

    return-void
.end method

.method public static createV1(Lcom/microsoft/bond/io/BondInputStream;)Lcom/microsoft/bond/CompactBinaryReader;
    .locals 2

    new-instance v0, Lcom/microsoft/bond/CompactBinaryReader;

    sget-object v1, Lcom/microsoft/bond/ProtocolVersion;->ONE:Lcom/microsoft/bond/ProtocolVersion;

    invoke-direct {v0, v1, p0}, Lcom/microsoft/bond/CompactBinaryReader;-><init>(Lcom/microsoft/bond/ProtocolVersion;Lcom/microsoft/bond/io/BondInputStream;)V

    return-object v0
.end method

.method public static createV1([B)Lcom/microsoft/bond/CompactBinaryReader;
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/microsoft/bond/CompactBinaryReader;->createV1([BII)Lcom/microsoft/bond/CompactBinaryReader;

    move-result-object p0

    return-object p0
.end method

.method public static createV1([BII)Lcom/microsoft/bond/CompactBinaryReader;
    .locals 1

    new-instance v0, Lcom/microsoft/bond/io/MemoryBondInputStream;

    invoke-direct {v0, p0, p1, p2}, Lcom/microsoft/bond/io/MemoryBondInputStream;-><init>([BII)V

    invoke-static {v0}, Lcom/microsoft/bond/CompactBinaryReader;->createV1(Lcom/microsoft/bond/io/BondInputStream;)Lcom/microsoft/bond/CompactBinaryReader;

    move-result-object p0

    return-object p0
.end method

.method public static createV2(Lcom/microsoft/bond/io/BondInputStream;)Lcom/microsoft/bond/CompactBinaryReader;
    .locals 1

    new-instance v0, Lcom/microsoft/bond/internal/CompactBinaryV2Reader;

    invoke-direct {v0, p0}, Lcom/microsoft/bond/internal/CompactBinaryV2Reader;-><init>(Lcom/microsoft/bond/io/BondInputStream;)V

    return-object v0
.end method

.method public static createV2([B)Lcom/microsoft/bond/CompactBinaryReader;
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/microsoft/bond/CompactBinaryReader;->createV2([BII)Lcom/microsoft/bond/CompactBinaryReader;

    move-result-object p0

    return-object p0
.end method

.method public static createV2([BII)Lcom/microsoft/bond/CompactBinaryReader;
    .locals 1

    new-instance v0, Lcom/microsoft/bond/io/MemoryBondInputStream;

    invoke-direct {v0, p0, p1, p2}, Lcom/microsoft/bond/io/MemoryBondInputStream;-><init>([BII)V

    invoke-static {v0}, Lcom/microsoft/bond/CompactBinaryReader;->createV2(Lcom/microsoft/bond/io/BondInputStream;)Lcom/microsoft/bond/CompactBinaryReader;

    move-result-object p0

    return-object p0
.end method

.method private ensureReadBufferCapacity(I)V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryReader;->readBuffer:[B

    array-length v0, v0

    if-ge v0, p1, :cond_0

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/microsoft/bond/CompactBinaryReader;->readBuffer:[B

    :cond_0
    return-void
.end method


# virtual methods
.method public cloneReader()Lcom/microsoft/bond/ProtocolReader;
    .locals 3

    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryReader;->stream:Lcom/microsoft/bond/io/BondInputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/io/BondInputStream;->clone(Z)Lcom/microsoft/bond/io/BondInputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/bond/CompactBinaryReader;->version:Lcom/microsoft/bond/ProtocolVersion;

    sget-object v2, Lcom/microsoft/bond/ProtocolVersion;->ONE:Lcom/microsoft/bond/ProtocolVersion;

    if-ne v1, v2, :cond_0

    invoke-static {v0}, Lcom/microsoft/bond/CompactBinaryReader;->createV1(Lcom/microsoft/bond/io/BondInputStream;)Lcom/microsoft/bond/CompactBinaryReader;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v2, Lcom/microsoft/bond/ProtocolVersion;->TWO:Lcom/microsoft/bond/ProtocolVersion;

    if-ne v1, v2, :cond_1

    invoke-static {v0}, Lcom/microsoft/bond/CompactBinaryReader;->createV2(Lcom/microsoft/bond/io/BondInputStream;)Lcom/microsoft/bond/CompactBinaryReader;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryReader;->stream:Lcom/microsoft/bond/io/BondInputStream;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method public getPosition()I
    .locals 1

    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryReader;->stream:Lcom/microsoft/bond/io/BondInputStream;

    invoke-interface {v0}, Lcom/microsoft/bond/io/Seekable;->getPosition()I

    move-result v0

    return v0
.end method

.method public hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z
    .locals 3

    sget-object v0, Lcom/microsoft/bond/CompactBinaryReader$1;->$SwitchMap$com$microsoft$bond$ProtocolCapability:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/microsoft/bond/ProtocolReader;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result p1

    return p1

    :cond_0
    iget-object p1, p0, Lcom/microsoft/bond/CompactBinaryReader;->stream:Lcom/microsoft/bond/io/BondInputStream;

    invoke-interface {p1}, Lcom/microsoft/bond/io/Seekable;->isSeekable()Z

    move-result p1

    return p1

    :cond_1
    return v1

    :cond_2
    iget-object p1, p0, Lcom/microsoft/bond/CompactBinaryReader;->stream:Lcom/microsoft/bond/io/BondInputStream;

    invoke-virtual {p1}, Lcom/microsoft/bond/io/BondInputStream;->isCloneable()Z

    move-result p1

    return p1
.end method

.method public isProtocolSame(Lcom/microsoft/bond/ProtocolWriter;)Z
    .locals 2

    instance-of v0, p1, Lcom/microsoft/bond/CompactBinaryWriter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/microsoft/bond/CompactBinaryWriter;

    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryReader;->version:Lcom/microsoft/bond/ProtocolVersion;

    invoke-virtual {p1}, Lcom/microsoft/bond/CompactBinaryWriter;->getVersion()Lcom/microsoft/bond/ProtocolVersion;

    move-result-object p1

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public readBlob(I)Lcom/microsoft/bond/BondBlob;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryReader;->stream:Lcom/microsoft/bond/io/BondInputStream;

    invoke-virtual {v0, p1}, Lcom/microsoft/bond/io/BondInputStream;->readBlob(I)Lcom/microsoft/bond/BondBlob;

    move-result-object p1

    return-object p1
.end method

.method public readBool()Z
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/bond/CompactBinaryReader;->readUInt8()B

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public readContainerBegin()Lcom/microsoft/bond/ProtocolReader$ListTag;
    .locals 3

    invoke-virtual {p0}, Lcom/microsoft/bond/CompactBinaryReader;->readUInt8()B

    move-result v0

    invoke-static {v0}, Lcom/microsoft/bond/BondDataType;->fromValue(I)Lcom/microsoft/bond/BondDataType;

    move-result-object v0

    new-instance v1, Lcom/microsoft/bond/ProtocolReader$ListTag;

    invoke-virtual {p0}, Lcom/microsoft/bond/CompactBinaryReader;->readUInt32()I

    move-result v2

    invoke-direct {v1, v2, v0}, Lcom/microsoft/bond/ProtocolReader$ListTag;-><init>(ILcom/microsoft/bond/BondDataType;)V

    return-object v1
.end method

.method public readContainerEnd()V
    .locals 0

    return-void
.end method

.method public readDouble()D
    .locals 4

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/microsoft/bond/CompactBinaryReader;->ensureReadBufferCapacity(I)V

    iget-object v1, p0, Lcom/microsoft/bond/CompactBinaryReader;->stream:Lcom/microsoft/bond/io/BondInputStream;

    iget-object v2, p0, Lcom/microsoft/bond/CompactBinaryReader;->readBuffer:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/microsoft/bond/io/BondInputStream;->read([BII)I

    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryReader;->readBuffer:[B

    invoke-static {v0}, Lcom/microsoft/bond/internal/DecimalHelper;->decodeDouble([B)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFieldBegin()Lcom/microsoft/bond/ProtocolReader$FieldTag;
    .locals 3

    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_STOP:Lcom/microsoft/bond/BondDataType;

    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryReader;->stream:Lcom/microsoft/bond/io/BondInputStream;

    invoke-virtual {v0}, Lcom/microsoft/bond/io/BondInputStream;->read()B

    move-result v0

    and-int/lit8 v1, v0, 0x1f

    invoke-static {v1}, Lcom/microsoft/bond/BondDataType;->fromValue(I)Lcom/microsoft/bond/BondDataType;

    move-result-object v1

    const/16 v2, 0xe0

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryReader;->stream:Lcom/microsoft/bond/io/BondInputStream;

    invoke-virtual {v0}, Lcom/microsoft/bond/io/BondInputStream;->read()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iget-object v2, p0, Lcom/microsoft/bond/CompactBinaryReader;->stream:Lcom/microsoft/bond/io/BondInputStream;

    invoke-virtual {v2}, Lcom/microsoft/bond/io/BondInputStream;->read()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    goto :goto_0

    :cond_0
    const/16 v2, 0xc0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryReader;->stream:Lcom/microsoft/bond/io/BondInputStream;

    invoke-virtual {v0}, Lcom/microsoft/bond/io/BondInputStream;->read()B

    move-result v0

    goto :goto_0

    :cond_1
    shr-int/lit8 v0, v0, 0x5

    :goto_0
    new-instance v2, Lcom/microsoft/bond/ProtocolReader$FieldTag;

    invoke-direct {v2, v1, v0}, Lcom/microsoft/bond/ProtocolReader$FieldTag;-><init>(Lcom/microsoft/bond/BondDataType;I)V

    return-object v2
.end method

.method public readFloat()F
    .locals 4

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/microsoft/bond/CompactBinaryReader;->ensureReadBufferCapacity(I)V

    iget-object v1, p0, Lcom/microsoft/bond/CompactBinaryReader;->stream:Lcom/microsoft/bond/io/BondInputStream;

    iget-object v2, p0, Lcom/microsoft/bond/CompactBinaryReader;->readBuffer:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/microsoft/bond/io/BondInputStream;->read([BII)I

    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryReader;->readBuffer:[B

    invoke-static {v0}, Lcom/microsoft/bond/internal/DecimalHelper;->decodeFloat([B)F

    move-result v0

    return v0
.end method

.method public readInt16()S
    .locals 1

    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryReader;->stream:Lcom/microsoft/bond/io/BondInputStream;

    invoke-static {v0}, Lcom/microsoft/bond/internal/IntegerHelper;->decodeVarInt16(Lcom/microsoft/bond/io/BondInputStream;)S

    move-result v0

    invoke-static {v0}, Lcom/microsoft/bond/internal/IntegerHelper;->decodeZigzag16(S)S

    move-result v0

    return v0
.end method

.method public readInt32()I
    .locals 1

    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryReader;->stream:Lcom/microsoft/bond/io/BondInputStream;

    invoke-static {v0}, Lcom/microsoft/bond/internal/IntegerHelper;->decodeVarInt32(Lcom/microsoft/bond/io/BondInputStream;)I

    move-result v0

    invoke-static {v0}, Lcom/microsoft/bond/internal/IntegerHelper;->decodeZigzag32(I)I

    move-result v0

    return v0
.end method

.method public readInt64()J
    .locals 2

    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryReader;->stream:Lcom/microsoft/bond/io/BondInputStream;

    invoke-static {v0}, Lcom/microsoft/bond/internal/IntegerHelper;->decodeVarInt64(Lcom/microsoft/bond/io/BondInputStream;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/microsoft/bond/internal/IntegerHelper;->decodeZigzag64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readInt8()B
    .locals 1

    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryReader;->stream:Lcom/microsoft/bond/io/BondInputStream;

    invoke-virtual {v0}, Lcom/microsoft/bond/io/BondInputStream;->read()B

    move-result v0

    return v0
.end method

.method public readMapContainerBegin()Lcom/microsoft/bond/ProtocolReader$MapTag;
    .locals 4

    invoke-virtual {p0}, Lcom/microsoft/bond/CompactBinaryReader;->readUInt8()B

    move-result v0

    invoke-static {v0}, Lcom/microsoft/bond/BondDataType;->fromValue(I)Lcom/microsoft/bond/BondDataType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/microsoft/bond/CompactBinaryReader;->readUInt8()B

    move-result v1

    invoke-static {v1}, Lcom/microsoft/bond/BondDataType;->fromValue(I)Lcom/microsoft/bond/BondDataType;

    move-result-object v1

    new-instance v2, Lcom/microsoft/bond/ProtocolReader$MapTag;

    invoke-virtual {p0}, Lcom/microsoft/bond/CompactBinaryReader;->readUInt32()I

    move-result v3

    invoke-direct {v2, v3, v0, v1}, Lcom/microsoft/bond/ProtocolReader$MapTag;-><init>(ILcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    return-object v2
.end method

.method public readString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryReader;->stream:Lcom/microsoft/bond/io/BondInputStream;

    invoke-static {v0}, Lcom/microsoft/bond/internal/IntegerHelper;->decodeVarInt32(Lcom/microsoft/bond/io/BondInputStream;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/microsoft/bond/CompactBinaryReader;->ensureReadBufferCapacity(I)V

    iget-object v1, p0, Lcom/microsoft/bond/CompactBinaryReader;->stream:Lcom/microsoft/bond/io/BondInputStream;

    iget-object v2, p0, Lcom/microsoft/bond/CompactBinaryReader;->readBuffer:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/microsoft/bond/io/BondInputStream;->read([BII)I

    iget-object v1, p0, Lcom/microsoft/bond/CompactBinaryReader;->readBuffer:[B

    invoke-static {v1, v3, v0}, Lcom/microsoft/bond/internal/StringHelper;->decodeFromUtf8([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUInt16()S
    .locals 1

    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryReader;->stream:Lcom/microsoft/bond/io/BondInputStream;

    invoke-static {v0}, Lcom/microsoft/bond/internal/IntegerHelper;->decodeVarInt16(Lcom/microsoft/bond/io/BondInputStream;)S

    move-result v0

    return v0
.end method

.method public readUInt32()I
    .locals 1

    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryReader;->stream:Lcom/microsoft/bond/io/BondInputStream;

    invoke-static {v0}, Lcom/microsoft/bond/internal/IntegerHelper;->decodeVarInt32(Lcom/microsoft/bond/io/BondInputStream;)I

    move-result v0

    return v0
.end method

.method public readUInt64()J
    .locals 2

    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryReader;->stream:Lcom/microsoft/bond/io/BondInputStream;

    invoke-static {v0}, Lcom/microsoft/bond/internal/IntegerHelper;->decodeVarInt64(Lcom/microsoft/bond/io/BondInputStream;)J

    move-result-wide v0

    return-wide v0
.end method

.method public readUInt8()B
    .locals 1

    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryReader;->stream:Lcom/microsoft/bond/io/BondInputStream;

    invoke-virtual {v0}, Lcom/microsoft/bond/io/BondInputStream;->read()B

    move-result v0

    return v0
.end method

.method public readWString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryReader;->stream:Lcom/microsoft/bond/io/BondInputStream;

    invoke-static {v0}, Lcom/microsoft/bond/internal/IntegerHelper;->decodeVarInt32(Lcom/microsoft/bond/io/BondInputStream;)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/microsoft/bond/CompactBinaryReader;->ensureReadBufferCapacity(I)V

    iget-object v1, p0, Lcom/microsoft/bond/CompactBinaryReader;->stream:Lcom/microsoft/bond/io/BondInputStream;

    iget-object v2, p0, Lcom/microsoft/bond/CompactBinaryReader;->readBuffer:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/microsoft/bond/io/BondInputStream;->read([BII)I

    iget-object v1, p0, Lcom/microsoft/bond/CompactBinaryReader;->readBuffer:[B

    invoke-static {v1, v3, v0}, Lcom/microsoft/bond/internal/StringHelper;->decodeFromUtf16([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setPosition(I)V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryReader;->stream:Lcom/microsoft/bond/io/BondInputStream;

    invoke-interface {v0, p1}, Lcom/microsoft/bond/io/Seekable;->setPosition(I)I

    return-void
.end method

.method public skip(Lcom/microsoft/bond/BondDataType;)V
    .locals 3

    sget-object v0, Lcom/microsoft/bond/CompactBinaryReader$1;->$SwitchMap$com$microsoft$bond$BondDataType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    invoke-static {p0, p1}, Lcom/microsoft/bond/internal/SkipHelper;->skip(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)V

    return-void

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/bond/CompactBinaryReader;->readFieldBegin()Lcom/microsoft/bond/ProtocolReader$FieldTag;

    move-result-object p1

    iget-object p1, p1, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_STOP:Lcom/microsoft/bond/BondDataType;

    if-eq p1, v0, :cond_1

    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-eq p1, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/microsoft/bond/CompactBinaryReader;->skip(Lcom/microsoft/bond/BondDataType;)V

    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readFieldEnd()V

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_0

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/microsoft/bond/CompactBinaryReader;->SkipContainer()V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/microsoft/bond/CompactBinaryReader;->readUInt32()I

    move-result p1

    shl-int/2addr p1, v1

    :goto_1
    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryReader;->stream:Lcom/microsoft/bond/io/BondInputStream;

    invoke-interface {v0, p1}, Lcom/microsoft/bond/io/Seekable;->setPositionRelative(I)I

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/microsoft/bond/CompactBinaryReader;->readUInt32()I

    move-result p1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/microsoft/bond/CompactBinaryReader;->version:Lcom/microsoft/bond/ProtocolVersion;

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
