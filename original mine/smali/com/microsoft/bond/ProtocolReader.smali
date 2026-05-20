.class public abstract Lcom/microsoft/bond/ProtocolReader;
.super Ljava/lang/Object;
.source "ProtocolReader.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/bond/ProtocolReader$MapTag;,
        Lcom/microsoft/bond/ProtocolReader$ListTag;,
        Lcom/microsoft/bond/ProtocolReader$FieldTag;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    return-void
.end method


# virtual methods
.method public cloneReader()Lcom/microsoft/bond/ProtocolReader;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    const/4 v0, 0x0

    return-object v0
.end method

.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13
    return-void
.end method

.method public abstract getPosition()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z
    .registers 3
    .param p1, "capability"    # Lcom/microsoft/bond/ProtocolCapability;

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isProtocolSame(Lcom/microsoft/bond/ProtocolWriter;)Z
.end method

.method public readBegin()V
    .registers 1

    .prologue
    .line 18
    return-void
.end method

.method public abstract readBlob(I)Lcom/microsoft/bond/BondBlob;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readBool()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readContainerBegin()Lcom/microsoft/bond/ProtocolReader$ListTag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readContainerEnd()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readDouble()D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public readEnd()V
    .registers 1

    .prologue
    .line 23
    return-void
.end method

.method public readFieldBegin()Lcom/microsoft/bond/ProtocolReader$FieldTag;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    new-instance v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;

    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_UNAVAILABLE:Lcom/microsoft/bond/BondDataType;

    const/16 v2, 0x7fff

    invoke-direct {v0, v1, v2}, Lcom/microsoft/bond/ProtocolReader$FieldTag;-><init>(Lcom/microsoft/bond/BondDataType;I)V

    return-object v0
.end method

.method public readFieldEnd()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    return-void
.end method

.method public readFieldOmitted()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public abstract readFloat()F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readInt16()S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readInt32()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readInt64()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readInt8()B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readMapContainerBegin()Lcom/microsoft/bond/ProtocolReader$MapTag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readString()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public readStructBegin(Z)V
    .registers 2
    .param p1, "isBase"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    return-void
.end method

.method public readStructEnd()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    return-void
.end method

.method public abstract readUInt16()S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readUInt32()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readUInt64()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readUInt8()B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readWString()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setPosition(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract skip(Lcom/microsoft/bond/BondDataType;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
