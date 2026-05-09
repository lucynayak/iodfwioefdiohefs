.class public Lcom/microsoft/bond/io/MemoryBondOutputStream;
.super Lcom/microsoft/bond/io/BondOutputStream;
.source "SourceFile"


# static fields
.field private static final DEFAULT_CAPACITY_BYTES:I = 0x400


# instance fields
.field private buffer:[B

.field private position:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lcom/microsoft/bond/io/MemoryBondOutputStream;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/bond/io/BondOutputStream;-><init>()V

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/microsoft/bond/io/MemoryBondOutputStream;->buffer:[B

    const/4 p1, 0x0

    iput p1, p0, Lcom/microsoft/bond/io/MemoryBondOutputStream;->position:I

    return-void
.end method

.method private ensureBufferSizeForExtraBytes(I)V
    .locals 4

    iget-object v0, p0, Lcom/microsoft/bond/io/MemoryBondOutputStream;->buffer:[B

    array-length v1, v0

    iget v2, p0, Lcom/microsoft/bond/io/MemoryBondOutputStream;->position:I

    add-int v3, p1, v2

    if-lt v1, v3, :cond_0

    return-void

    :cond_0
    array-length v1, v0

    array-length v3, v0

    shr-int/lit8 v3, v3, 0x1

    add-int/2addr v1, v3

    add-int v3, p1, v2

    if-ge v1, v3, :cond_1

    add-int v1, p1, v2

    :cond_1
    new-array p1, v1, [B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lcom/microsoft/bond/io/MemoryBondOutputStream;->buffer:[B

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/bond/io/MemoryBondOutputStream;->buffer:[B

    const/4 v0, -0x1

    iput v0, p0, Lcom/microsoft/bond/io/MemoryBondOutputStream;->position:I

    return-void
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lcom/microsoft/bond/io/MemoryBondOutputStream;->position:I

    return v0
.end method

.method public isSeekable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setPosition(I)I
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/microsoft/bond/io/MemoryBondOutputStream;->buffer:[B

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iput p1, p0, Lcom/microsoft/bond/io/MemoryBondOutputStream;->position:I

    return p1

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p1

    const/4 p1, 0x2

    iget-object v1, p0, Lcom/microsoft/bond/io/MemoryBondOutputStream;->buffer:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot jump to position [%d]. Valid positions are from [%d] to [%d] inclusive."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPositionRelative(I)I
    .locals 1

    iget v0, p0, Lcom/microsoft/bond/io/MemoryBondOutputStream;->position:I

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/microsoft/bond/io/MemoryBondOutputStream;->setPosition(I)I

    move-result p1

    return p1
.end method

.method public toBondBlod()Lcom/microsoft/bond/BondBlob;
    .locals 4

    new-instance v0, Lcom/microsoft/bond/BondBlob;

    iget-object v1, p0, Lcom/microsoft/bond/io/MemoryBondOutputStream;->buffer:[B

    iget v2, p0, Lcom/microsoft/bond/io/MemoryBondOutputStream;->position:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/microsoft/bond/BondBlob;-><init>([BII)V

    return-object v0
.end method

.method public toByteArray()[B
    .locals 4

    iget v0, p0, Lcom/microsoft/bond/io/MemoryBondOutputStream;->position:I

    new-array v1, v0, [B

    iget-object v2, p0, Lcom/microsoft/bond/io/MemoryBondOutputStream;->buffer:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public write(B)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/microsoft/bond/io/MemoryBondOutputStream;->ensureBufferSizeForExtraBytes(I)V

    iget-object v1, p0, Lcom/microsoft/bond/io/MemoryBondOutputStream;->buffer:[B

    iget v2, p0, Lcom/microsoft/bond/io/MemoryBondOutputStream;->position:I

    aput-byte p1, v1, v2

    add-int/2addr v2, v0

    iput v2, p0, Lcom/microsoft/bond/io/MemoryBondOutputStream;->position:I

    return-void
.end method

.method public write([B)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/microsoft/bond/io/MemoryBondOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 2

    invoke-direct {p0, p3}, Lcom/microsoft/bond/io/MemoryBondOutputStream;->ensureBufferSizeForExtraBytes(I)V

    iget-object v0, p0, Lcom/microsoft/bond/io/MemoryBondOutputStream;->buffer:[B

    iget v1, p0, Lcom/microsoft/bond/io/MemoryBondOutputStream;->position:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/microsoft/bond/io/MemoryBondOutputStream;->position:I

    add-int/2addr p3, p1

    iput p3, p0, Lcom/microsoft/bond/io/MemoryBondOutputStream;->position:I

    return-void
.end method
