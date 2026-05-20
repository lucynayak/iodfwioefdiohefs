.class public Lcom/microsoft/bond/Bonded;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/bond/BondSerializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/microsoft/bond/BondSerializable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/microsoft/bond/BondSerializable;"
    }
.end annotation


# instance fields
.field private Data:Lcom/microsoft/bond/ProtocolReader;

.field private Value:Lcom/microsoft/bond/BondSerializable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/bond/BondSerializable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/bond/Bonded;->Value:Lcom/microsoft/bond/BondSerializable;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/bond/ProtocolReader;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/microsoft/bond/Bonded;->read(Lcom/microsoft/bond/ProtocolReader;)V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/SchemaDef;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/bond/Bonded;->read(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondSerializable;)V

    return-void
.end method


# virtual methods
.method public clone()Lcom/microsoft/bond/BondSerializable;
    .registers 3

    iget-object v0, p0, Lcom/microsoft/bond/Bonded;->Data:Lcom/microsoft/bond/ProtocolReader;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v1, Lcom/microsoft/bond/Bonded;

    invoke-virtual {v0}, Lcom/microsoft/bond/ProtocolReader;->cloneReader()Lcom/microsoft/bond/ProtocolReader;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/microsoft/bond/Bonded;-><init>(Lcom/microsoft/bond/ProtocolReader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lcom/microsoft/bond/Bonded;

    iget-object v1, p0, Lcom/microsoft/bond/Bonded;->Value:Lcom/microsoft/bond/BondSerializable;

    invoke-direct {v0, v1}, Lcom/microsoft/bond/Bonded;-><init>(Lcom/microsoft/bond/BondSerializable;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/microsoft/bond/Bonded;->clone()Lcom/microsoft/bond/BondSerializable;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/microsoft/bond/BondSerializable;)V
    .registers 3

    iget-object v0, p0, Lcom/microsoft/bond/Bonded;->Data:Lcom/microsoft/bond/ProtocolReader;

    invoke-interface {p1, v0}, Lcom/microsoft/bond/BondSerializable;->read(Lcom/microsoft/bond/ProtocolReader;)V

    return-void
.end method

.method public getValue()Lcom/microsoft/bond/BondSerializable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/bond/Bonded;->Value:Lcom/microsoft/bond/BondSerializable;

    return-object v0
.end method

.method public marshal(Lcom/microsoft/bond/ProtocolWriter;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/microsoft/bond/internal/Marshaler;->marshal(Lcom/microsoft/bond/BondSerializable;Lcom/microsoft/bond/ProtocolWriter;)V

    return-void
.end method

.method public memberwiseCompare(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/microsoft/bond/Bonded;->Value:Lcom/microsoft/bond/BondSerializable;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/microsoft/bond/BondSerializable;->memberwiseCompare(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public read(Lcom/microsoft/bond/ProtocolReader;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/microsoft/bond/Bonded;->readNested(Lcom/microsoft/bond/ProtocolReader;)V

    return-void
.end method

.method public read(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondSerializable;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/microsoft/bond/Bonded;->readNested(Lcom/microsoft/bond/ProtocolReader;)V

    return-void
.end method

.method public readNested(Lcom/microsoft/bond/ProtocolReader;)V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/bond/Bonded;->Value:Lcom/microsoft/bond/BondSerializable;

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->cloneReader()Lcom/microsoft/bond/ProtocolReader;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/bond/Bonded;->Data:Lcom/microsoft/bond/ProtocolReader;

    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {p1, v0}, Lcom/microsoft/bond/ProtocolReader;->skip(Lcom/microsoft/bond/BondDataType;)V

    return-void
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/bond/Bonded;->Value:Lcom/microsoft/bond/BondSerializable;

    iput-object v0, p0, Lcom/microsoft/bond/Bonded;->Data:Lcom/microsoft/bond/ProtocolReader;

    return-void
.end method

.method public unmarshal(Ljava/io/InputStream;)V
    .registers 2

    invoke-static {p1, p0}, Lcom/microsoft/bond/internal/Marshaler;->unmarshal(Ljava/io/InputStream;Lcom/microsoft/bond/BondSerializable;)V

    return-void
.end method

.method public unmarshal(Ljava/io/InputStream;Lcom/microsoft/bond/BondSerializable;)V
    .registers 3

    check-cast p2, Lcom/microsoft/bond/SchemaDef;

    invoke-static {p1, p2, p0}, Lcom/microsoft/bond/internal/Marshaler;->unmarshal(Ljava/io/InputStream;Lcom/microsoft/bond/BondSerializable;Lcom/microsoft/bond/BondSerializable;)V

    return-void
.end method

.method public write(Lcom/microsoft/bond/ProtocolWriter;)V
    .registers 3

    iget-object v0, p0, Lcom/microsoft/bond/Bonded;->Data:Lcom/microsoft/bond/ProtocolReader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/bond/ProtocolReader;->cloneReader()Lcom/microsoft/bond/ProtocolReader;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/microsoft/bond/Transcoder;->transcode(Lcom/microsoft/bond/ProtocolWriter;Lcom/microsoft/bond/ProtocolReader;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/microsoft/bond/Bonded;->Value:Lcom/microsoft/bond/BondSerializable;

    invoke-interface {v0, p1}, Lcom/microsoft/bond/BondSerializable;->write(Lcom/microsoft/bond/ProtocolWriter;)V

    return-void
.end method

.method public writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/microsoft/bond/Bonded;->write(Lcom/microsoft/bond/ProtocolWriter;)V

    return-void
.end method
