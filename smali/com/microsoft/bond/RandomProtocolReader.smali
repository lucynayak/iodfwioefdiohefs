.class public Lcom/microsoft/bond/RandomProtocolReader;
.super Lcom/microsoft/bond/ProtocolReader;
.source "SourceFile"


# static fields
.field private static final DEFAULT_MAX_CONTAINER_SIZE:I = 0xa

.field private static final DEFAULT_MAX_STRING_LENGTH:I = 0x14


# instance fields
.field private final maxContainerSize:I

.field private final maxStringLength:I

.field private final random:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/microsoft/bond/ProtocolReader;-><init>()V

    const/16 v0, 0x14

    iput v0, p0, Lcom/microsoft/bond/RandomProtocolReader;->maxStringLength:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/microsoft/bond/RandomProtocolReader;->maxContainerSize:I

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/microsoft/bond/RandomProtocolReader;->random:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(J)V
    .registers 5

    const/16 v0, 0x14

    const/16 v1, 0xa

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/microsoft/bond/RandomProtocolReader;-><init>(JII)V

    return-void
.end method

.method public constructor <init>(JII)V
    .registers 5

    invoke-direct {p0}, Lcom/microsoft/bond/ProtocolReader;-><init>()V

    iput p3, p0, Lcom/microsoft/bond/RandomProtocolReader;->maxStringLength:I

    iput p4, p0, Lcom/microsoft/bond/RandomProtocolReader;->maxContainerSize:I

    new-instance p3, Ljava/util/Random;

    invoke-direct {p3, p1, p2}, Ljava/util/Random;-><init>(J)V

    iput-object p3, p0, Lcom/microsoft/bond/RandomProtocolReader;->random:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public clone()Lcom/microsoft/bond/ProtocolReader;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/microsoft/bond/RandomProtocolReader;->clone()Lcom/microsoft/bond/ProtocolReader;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()I
    .registers 2

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public isProtocolSame(Lcom/microsoft/bond/ProtocolWriter;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public readBlob(I)Lcom/microsoft/bond/BondBlob;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public readBool()Z
    .registers 2

    iget-object v0, p0, Lcom/microsoft/bond/RandomProtocolReader;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    return v0
.end method

.method public readContainerBegin()Lcom/microsoft/bond/ProtocolReader$ListTag;
    .registers 4

    new-instance v0, Lcom/microsoft/bond/ProtocolReader$ListTag;

    iget-object v1, p0, Lcom/microsoft/bond/RandomProtocolReader;->random:Ljava/util/Random;

    iget v2, p0, Lcom/microsoft/bond/RandomProtocolReader;->maxContainerSize:I

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    sget-object v2, Lcom/microsoft/bond/BondDataType;->BT_UNAVAILABLE:Lcom/microsoft/bond/BondDataType;

    invoke-direct {v0, v1, v2}, Lcom/microsoft/bond/ProtocolReader$ListTag;-><init>(ILcom/microsoft/bond/BondDataType;)V

    return-object v0
.end method

.method public readContainerEnd()V
    .registers 1

    return-void
.end method

.method public readDouble()D
    .registers 5

    iget-object v0, p0, Lcom/microsoft/bond/RandomProtocolReader;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    long-to-double v0, v0

    iget-object v2, p0, Lcom/microsoft/bond/RandomProtocolReader;->random:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextDouble()D

    move-result-wide v2

    mul-double v2, v2, v0

    return-wide v2
.end method

.method public readFloat()F
    .registers 3

    iget-object v0, p0, Lcom/microsoft/bond/RandomProtocolReader;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    long-to-float v0, v0

    iget-object v1, p0, Lcom/microsoft/bond/RandomProtocolReader;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    mul-float v1, v1, v0

    return v1
.end method

.method public readInt16()S
    .registers 3

    iget-object v0, p0, Lcom/microsoft/bond/RandomProtocolReader;->random:Ljava/util/Random;

    const v1, 0xffff

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit16 v0, v0, -0x7fff

    int-to-short v0, v0

    return v0
.end method

.method public readInt32()I
    .registers 2

    iget-object v0, p0, Lcom/microsoft/bond/RandomProtocolReader;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    return v0
.end method

.method public readInt64()J
    .registers 3

    iget-object v0, p0, Lcom/microsoft/bond/RandomProtocolReader;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readInt8()B
    .registers 3

    iget-object v0, p0, Lcom/microsoft/bond/RandomProtocolReader;->random:Ljava/util/Random;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x7f

    int-to-byte v0, v0

    return v0
.end method

.method public readMapContainerBegin()Lcom/microsoft/bond/ProtocolReader$MapTag;
    .registers 4

    new-instance v0, Lcom/microsoft/bond/ProtocolReader$MapTag;

    iget-object v1, p0, Lcom/microsoft/bond/RandomProtocolReader;->random:Ljava/util/Random;

    iget v2, p0, Lcom/microsoft/bond/RandomProtocolReader;->maxContainerSize:I

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    sget-object v2, Lcom/microsoft/bond/BondDataType;->BT_UNAVAILABLE:Lcom/microsoft/bond/BondDataType;

    invoke-direct {v0, v1, v2, v2}, Lcom/microsoft/bond/ProtocolReader$MapTag;-><init>(ILcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    return-object v0
.end method

.method public readString()Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/microsoft/bond/RandomProtocolReader;->random:Ljava/util/Random;

    iget v1, p0, Lcom/microsoft/bond/RandomProtocolReader;->maxStringLength:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/microsoft/bond/RandomProtocolReader;->random:Ljava/util/Random;

    const/16 v4, 0x5e

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x20

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUInt16()S
    .registers 3

    iget-object v0, p0, Lcom/microsoft/bond/RandomProtocolReader;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public readUInt32()I
    .registers 2

    iget-object v0, p0, Lcom/microsoft/bond/RandomProtocolReader;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    return v0
.end method

.method public readUInt64()J
    .registers 3

    iget-object v0, p0, Lcom/microsoft/bond/RandomProtocolReader;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readUInt8()B
    .registers 3

    iget-object v0, p0, Lcom/microsoft/bond/RandomProtocolReader;->random:Ljava/util/Random;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public readWString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/microsoft/bond/RandomProtocolReader;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setPosition(I)V
    .registers 2

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
.end method

.method public skip(Lcom/microsoft/bond/BondDataType;)V
    .registers 2

    return-void
.end method
