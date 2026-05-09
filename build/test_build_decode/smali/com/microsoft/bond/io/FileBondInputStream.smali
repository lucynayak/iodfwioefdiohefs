.class public Lcom/microsoft/bond/io/FileBondInputStream;
.super Lcom/microsoft/bond/io/BondInputStream;
.source "SourceFile"


# instance fields
.field private final file:Ljava/io/File;

.field private fileLength:I

.field private position:I

.field private stream:Ljava/io/FileInputStream;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/bond/io/BondInputStream;-><init>()V

    iput-object p1, p0, Lcom/microsoft/bond/io/FileBondInputStream;->file:Ljava/io/File;

    invoke-direct {p0}, Lcom/microsoft/bond/io/FileBondInputStream;->resetStream()V

    return-void
.end method

.method private resetStream()V
    .locals 2

    iget-object v0, p0, Lcom/microsoft/bond/io/FileBondInputStream;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v1, v0

    iput v1, p0, Lcom/microsoft/bond/io/FileBondInputStream;->fileLength:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/microsoft/bond/io/FileBondInputStream;->position:I

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/microsoft/bond/io/FileBondInputStream;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/microsoft/bond/io/FileBondInputStream;->stream:Ljava/io/FileInputStream;

    return-void
.end method


# virtual methods
.method public clone(Z)Lcom/microsoft/bond/io/BondInputStream;
    .locals 1

    new-instance p1, Lcom/microsoft/bond/io/FileBondInputStream;

    iget-object v0, p0, Lcom/microsoft/bond/io/FileBondInputStream;->file:Ljava/io/File;

    invoke-direct {p1, v0}, Lcom/microsoft/bond/io/FileBondInputStream;-><init>(Ljava/io/File;)V

    iget v0, p0, Lcom/microsoft/bond/io/FileBondInputStream;->position:I

    invoke-virtual {p1, v0}, Lcom/microsoft/bond/io/FileBondInputStream;->setPosition(I)I

    return-object p1
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/bond/io/FileBondInputStream;->stream:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-void
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lcom/microsoft/bond/io/FileBondInputStream;->position:I

    return v0
.end method

.method public isCloneable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSeekable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public read()B
    .locals 1

    iget v0, p0, Lcom/microsoft/bond/io/FileBondInputStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/microsoft/bond/io/FileBondInputStream;->position:I

    iget-object v0, p0, Lcom/microsoft/bond/io/FileBondInputStream;->stream:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public read([BII)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/microsoft/bond/io/FileBondInputStream;->stream:Ljava/io/FileInputStream;

    add-int v2, p2, v0

    sub-int v3, p3, v0

    invoke-virtual {v1, p1, v2, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    iget p2, p0, Lcom/microsoft/bond/io/FileBondInputStream;->position:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/microsoft/bond/io/FileBondInputStream;->position:I

    throw p1

    :cond_0
    iget p1, p0, Lcom/microsoft/bond/io/FileBondInputStream;->position:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/microsoft/bond/io/FileBondInputStream;->position:I

    return v0
.end method

.method public readBlob(I)Lcom/microsoft/bond/BondBlob;
    .locals 1

    new-instance v0, Lcom/microsoft/bond/BondBlob;

    invoke-direct {v0, p0, p1}, Lcom/microsoft/bond/BondBlob;-><init>(Lcom/microsoft/bond/io/BondInputStream;I)V

    return-object v0
.end method

.method public setPosition(I)I
    .locals 2

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/microsoft/bond/io/FileBondInputStream;->fileLength:I

    if-gt p1, v0, :cond_1

    iget v0, p0, Lcom/microsoft/bond/io/FileBondInputStream;->position:I

    if-lt p1, v0, :cond_0

    sub-int v0, p1, v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/microsoft/bond/io/FileBondInputStream;->resetStream()V

    move v0, p1

    :goto_0
    iput p1, p0, Lcom/microsoft/bond/io/FileBondInputStream;->position:I

    iget-object p1, p0, Lcom/microsoft/bond/io/FileBondInputStream;->stream:Ljava/io/FileInputStream;

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Ljava/io/FileInputStream;->skip(J)J

    iget p1, p0, Lcom/microsoft/bond/io/FileBondInputStream;->position:I

    return p1

    :cond_1
    new-instance v0, Lcom/microsoft/bond/BondException;

    const-string v1, "Invalid position: "

    .line 1
    invoke-static {v1, p1}, La/c;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {v0, p1}, Lcom/microsoft/bond/BondException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPositionRelative(I)I
    .locals 1

    iget v0, p0, Lcom/microsoft/bond/io/FileBondInputStream;->position:I

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/microsoft/bond/io/FileBondInputStream;->setPosition(I)I

    iget p1, p0, Lcom/microsoft/bond/io/FileBondInputStream;->position:I

    return p1
.end method
