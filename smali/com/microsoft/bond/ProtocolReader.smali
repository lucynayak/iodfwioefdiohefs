.class public abstract Lcom/microsoft/bond/ProtocolReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/bond/ProtocolReader$FieldTag;,
        Lcom/microsoft/bond/ProtocolReader$ListTag;,
        Lcom/microsoft/bond/ProtocolReader$MapTag;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cloneReader()Lcom/microsoft/bond/ProtocolReader;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public close()V
    .registers 1

    return-void
.end method

.method public abstract getPosition()I
.end method

.method public hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public abstract isProtocolSame(Lcom/microsoft/bond/ProtocolWriter;)Z
.end method

.method public readBegin()V
    .registers 1

    return-void
.end method

.method public abstract readBlob(I)Lcom/microsoft/bond/BondBlob;
.end method

.method public abstract readBool()Z
.end method

.method public abstract readContainerBegin()Lcom/microsoft/bond/ProtocolReader$ListTag;
.end method

.method public abstract readContainerEnd()V
.end method

.method public abstract readDouble()D
.end method

.method public readEnd()V
    .registers 1

    return-void
.end method

.method public readFieldBegin()Lcom/microsoft/bond/ProtocolReader$FieldTag;
    .registers 4

    new-instance v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;

    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_UNAVAILABLE:Lcom/microsoft/bond/BondDataType;

    const/16 v2, 0x7fff

    invoke-direct {v0, v1, v2}, Lcom/microsoft/bond/ProtocolReader$FieldTag;-><init>(Lcom/microsoft/bond/BondDataType;I)V

    return-object v0
.end method

.method public readFieldEnd()V
    .registers 1

    return-void
.end method

.method public readFieldOmitted()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public abstract readFloat()F
.end method

.method public abstract readInt16()S
.end method

.method public abstract readInt32()I
.end method

.method public abstract readInt64()J
.end method

.method public abstract readInt8()B
.end method

.method public abstract readMapContainerBegin()Lcom/microsoft/bond/ProtocolReader$MapTag;
.end method

.method public abstract readString()Ljava/lang/String;
.end method

.method public readStructBegin(Z)V
    .registers 2

    return-void
.end method

.method public readStructEnd()V
    .registers 1

    return-void
.end method

.method public abstract readUInt16()S
.end method

.method public abstract readUInt32()I
.end method

.method public abstract readUInt64()J
.end method

.method public abstract readUInt8()B
.end method

.method public abstract readWString()Ljava/lang/String;
.end method

.method public abstract setPosition(I)V
.end method

.method public abstract skip(Lcom/microsoft/bond/BondDataType;)V
.end method
