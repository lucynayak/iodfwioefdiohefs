.class public Lcom/microsoft/bond/io/MemoryBondInputStream;
.super Lcom/microsoft/bond/io/BondInputStream;
.source "SourceFile"


# instance fields
.field private final buffer:[B

.field private final bufferLength:I

.field private final bufferOffset:I

.field private readPosition:I


# direct methods
.method public constructor <init>([B)V
    .registers 4

    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/microsoft/bond/io/MemoryBondInputStream;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .registers 4

    invoke-direct {p0}, Lcom/microsoft/bond/io/BondInputStream;-><init>()V

    iput-object p1, p0, Lcom/microsoft/bond/io/MemoryBondInputStream;->buffer:[B

    iput p2, p0, Lcom/microsoft/bond/io/MemoryBondInputStream;->bufferOffset:I

    iput p3, p0, Lcom/microsoft/bond/io/MemoryBondInputStream;->bufferLength:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/microsoft/bond/io/MemoryBondInputStream;->readPosition:I

    return-void
.end method

.method private validateNewPosition(I)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_1

    iget v2, p0, Lcom/microsoft/bond/io/MemoryBondInputStream;->bufferLength:I

    if-gt p1, v2, :cond_0

    return-void

    :cond_0
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    new-instance p1, Lcom/microsoft/bond/BondException;

    const-string v0, "Position [%s] is past the end of the buffer."

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/microsoft/bond/BondException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    new-instance p1, Lcom/microsoft/bond/BondException;

    const-string v0, "Invalid stream position [%s]."

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/microsoft/bond/BondException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private validateRead(I)V
    .registers 4

    iget v0, p0, Lcom/microsoft/bond/io/MemoryBondInputStream;->readPosition:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/microsoft/bond/io/MemoryBondInputStream;->bufferLength:I

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    new-instance p1, Ljava/io/EOFException;

    const-string v1, "EOF reached. Trying to read [%d] bytes"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public clone(Z)Lcom/microsoft/bond/io/BondInputStream;
    .registers 5

    new-instance p1, Lcom/microsoft/bond/io/MemoryBondInputStream;

    iget-object v0, p0, Lcom/microsoft/bond/io/MemoryBondInputStream;->buffer:[B

    iget v1, p0, Lcom/microsoft/bond/io/MemoryBondInputStream;->bufferOffset:I

    iget v2, p0, Lcom/microsoft/bond/io/MemoryBondInputStream;->bufferLength:I

    invoke-direct {p1, v0, v1, v2}, Lcom/microsoft/bond/io/MemoryBondInputStream;-><init>([BII)V

    iget v0, p0, Lcom/microsoft/bond/io/MemoryBondInputStream;->readPosition:I

    iput v0, p1, Lcom/microsoft/bond/io/MemoryBondInputStream;->readPosition:I

    return-object p1
.end method

.method public close()V
    .registers 1

    return-void
.end method

.method public getPosition()I
    .registers 2

    iget v0, p0, Lcom/microsoft/bond/io/MemoryBondInputStream;->readPosition:I

    return v0
.end method

.method public isCloneable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isSeekable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public read()B
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/microsoft/bond/io/MemoryBondInputStream;->validateRead(I)V

    iget v1, p0, Lcom/microsoft/bond/io/MemoryBondInputStream;->readPosition:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/microsoft/bond/io/MemoryBondInputStream;->readPosition:I

    iget-object v0, p0, Lcom/microsoft/bond/io/MemoryBondInputStream;->buffer:[B

    iget v2, p0, Lcom/microsoft/bond/io/MemoryBondInputStream;->bufferOffset:I

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-byte v0, v0, v2

    return v0
.end method

.method public read([BII)I
    .registers 7

    invoke-direct {p0, p3}, Lcom/microsoft/bond/io/MemoryBondInputStream;->validateRead(I)V

    iget-object v0, p0, Lcom/microsoft/bond/io/MemoryBondInputStream;->buffer:[B

    iget v1, p0, Lcom/microsoft/bond/io/MemoryBondInputStream;->bufferOffset:I

    iget v2, p0, Lcom/microsoft/bond/io/MemoryBondInputStream;->readPosition:I

    add-int/2addr v1, v2

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/microsoft/bond/io/MemoryBondInputStream;->readPosition:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/microsoft/bond/io/MemoryBondInputStream;->readPosition:I

    return p3
.end method

.method public readBlob(I)Lcom/microsoft/bond/BondBlob;
    .registers 3

    new-instance v0, Lcom/microsoft/bond/BondBlob;

    invoke-direct {v0, p0, p1}, Lcom/microsoft/bond/BondBlob;-><init>(Lcom/microsoft/bond/io/BondInputStream;I)V

    return-object v0
.end method

.method public setPosition(I)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/microsoft/bond/io/MemoryBondInputStream;->validateNewPosition(I)V

    iput p1, p0, Lcom/microsoft/bond/io/MemoryBondInputStream;->readPosition:I

    return p1
.end method

.method public setPositionRelative(I)I
    .registers 3

    iget v0, p0, Lcom/microsoft/bond/io/MemoryBondInputStream;->readPosition:I

    add-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/microsoft/bond/io/MemoryBondInputStream;->validateNewPosition(I)V

    iput p1, p0, Lcom/microsoft/bond/io/MemoryBondInputStream;->readPosition:I

    return p1
.end method
