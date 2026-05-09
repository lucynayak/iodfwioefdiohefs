.class public Lcom/microsoft/bond/BondBlob;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final buffer:[B

.field private final length:I

.field private final offset:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/bond/BondBlob;->buffer:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/microsoft/bond/BondBlob;->length:I

    iput v0, p0, Lcom/microsoft/bond/BondBlob;->offset:I

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/bond/BondBlob;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/microsoft/bond/BondBlob;->buffer:[B

    iput-object v0, p0, Lcom/microsoft/bond/BondBlob;->buffer:[B

    iget v0, p1, Lcom/microsoft/bond/BondBlob;->offset:I

    iput v0, p0, Lcom/microsoft/bond/BondBlob;->offset:I

    iget p1, p1, Lcom/microsoft/bond/BondBlob;->length:I

    iput p1, p0, Lcom/microsoft/bond/BondBlob;->length:I

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/bond/io/BondInputStream;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p2, [B

    iput-object v0, p0, Lcom/microsoft/bond/BondBlob;->buffer:[B

    iput p2, p0, Lcom/microsoft/bond/BondBlob;->length:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/microsoft/bond/BondBlob;->offset:I

    invoke-virtual {p1, v0, v1, p2}, Lcom/microsoft/bond/io/BondInputStream;->read([BII)I

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/bond/BondBlob;->buffer:[B

    iput p2, p0, Lcom/microsoft/bond/BondBlob;->offset:I

    iput p3, p0, Lcom/microsoft/bond/BondBlob;->length:I

    return-void
.end method


# virtual methods
.method public equals(Lcom/microsoft/bond/BondBlob;)Z
    .locals 5

    iget v0, p0, Lcom/microsoft/bond/BondBlob;->length:I

    iget v1, p1, Lcom/microsoft/bond/BondBlob;->length:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/microsoft/bond/BondBlob;->length:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/microsoft/bond/BondBlob;->buffer:[B

    iget v3, p0, Lcom/microsoft/bond/BondBlob;->offset:I

    add-int/2addr v3, v0

    aget-byte v1, v1, v3

    iget-object v3, p1, Lcom/microsoft/bond/BondBlob;->buffer:[B

    iget v4, p1, Lcom/microsoft/bond/BondBlob;->offset:I

    add-int/2addr v4, v0

    aget-byte v3, v3, v4

    if-ne v1, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v2

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public getBuffer()[B
    .locals 1

    iget-object v0, p0, Lcom/microsoft/bond/BondBlob;->buffer:[B

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    iget v0, p0, Lcom/microsoft/bond/BondBlob;->offset:I

    return v0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/microsoft/bond/BondBlob;->length:I

    return v0
.end method
