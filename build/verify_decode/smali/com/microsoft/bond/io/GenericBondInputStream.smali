.class public Lcom/microsoft/bond/io/GenericBondInputStream;
.super Lcom/microsoft/bond/io/BondInputStream;
.source "SourceFile"


# instance fields
.field private final stream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/bond/io/BondInputStream;-><init>()V

    iput-object p1, p0, Lcom/microsoft/bond/io/GenericBondInputStream;->stream:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public clone(Z)Lcom/microsoft/bond/io/BondInputStream;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/bond/io/GenericBondInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public getPosition()I
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isCloneable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSeekable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read()B
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/microsoft/bond/io/GenericBondInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-byte v0, v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/microsoft/bond/BondException;

    invoke-direct {v1, v0}, Lcom/microsoft/bond/BondException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public read([BII)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/microsoft/bond/io/GenericBondInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Lcom/microsoft/bond/BondException;

    invoke-direct {p2, p1}, Lcom/microsoft/bond/BondException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public readBlob(I)Lcom/microsoft/bond/BondBlob;
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPosition(I)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setPositionRelative(I)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
