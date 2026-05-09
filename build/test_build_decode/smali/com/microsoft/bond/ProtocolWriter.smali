.class public abstract Lcom/microsoft/bond/ProtocolWriter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public getFirstPassWriter()Lcom/microsoft/bond/ProtocolWriter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public writeBegin()V
    .locals 0

    return-void
.end method

.method public abstract writeBlob(Lcom/microsoft/bond/BondBlob;)V
.end method

.method public abstract writeBool(Z)V
.end method

.method public abstract writeContainerBegin(ILcom/microsoft/bond/BondDataType;)V
.end method

.method public abstract writeContainerBegin(ILcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V
.end method

.method public abstract writeContainerEnd()V
.end method

.method public abstract writeDouble(D)V
.end method

.method public writeEnd()V
    .locals 0

    return-void
.end method

.method public writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V
    .locals 0

    return-void
.end method

.method public writeFieldEnd()V
    .locals 0

    return-void
.end method

.method public writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V
    .locals 0

    return-void
.end method

.method public abstract writeFloat(F)V
.end method

.method public abstract writeInt16(S)V
.end method

.method public abstract writeInt32(I)V
.end method

.method public abstract writeInt64(J)V
.end method

.method public abstract writeInt8(B)V
.end method

.method public abstract writeString(Ljava/lang/String;)V
.end method

.method public writeStructBegin(Lcom/microsoft/bond/BondSerializable;Z)V
    .locals 0

    return-void
.end method

.method public writeStructEnd(Z)V
    .locals 0

    return-void
.end method

.method public abstract writeUInt16(S)V
.end method

.method public abstract writeUInt32(I)V
.end method

.method public abstract writeUInt64(J)V
.end method

.method public abstract writeUInt8(B)V
.end method

.method public abstract writeVersion()V
.end method

.method public abstract writeWString(Ljava/lang/String;)V
.end method
