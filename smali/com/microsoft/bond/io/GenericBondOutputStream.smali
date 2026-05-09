.class public Lcom/microsoft/bond/io/GenericBondOutputStream;
.super Lcom/microsoft/bond/io/BondOutputStream;
.source "SourceFile"


# instance fields
.field private final stream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 2

    invoke-direct {p0}, Lcom/microsoft/bond/io/BondOutputStream;-><init>()V

    iput-object p1, p0, Lcom/microsoft/bond/io/GenericBondOutputStream;->stream:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Lcom/microsoft/bond/io/GenericBondOutputStream;->stream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public getPosition()I
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isSeekable()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public setPosition(I)I
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setPositionRelative(I)I
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public write(B)V
    .registers 3

    iget-object v0, p0, Lcom/microsoft/bond/io/GenericBondOutputStream;->stream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public write([B)V
    .registers 4

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/microsoft/bond/io/GenericBondOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .registers 5

    iget-object v0, p0, Lcom/microsoft/bond/io/GenericBondOutputStream;->stream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
