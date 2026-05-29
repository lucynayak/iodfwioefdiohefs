.class public Lcom/microsoft/bond/Transcoder;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static transcode(Lcom/microsoft/bond/ProtocolWriter;Lcom/microsoft/bond/ProtocolReader;)V
    .registers 4

    sget-object v0, Lcom/microsoft/bond/ProtocolCapability;->CAN_SEEK:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v0}, Lcom/microsoft/bond/ProtocolReader;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Lcom/microsoft/bond/ProtocolReader;->isProtocolSame(Lcom/microsoft/bond/ProtocolWriter;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->getPosition()I

    move-result v0

    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolReader;->skip(Lcom/microsoft/bond/BondDataType;)V

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->getPosition()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1, v0}, Lcom/microsoft/bond/ProtocolReader;->setPosition(I)V

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolReader;->readBlob(I)Lcom/microsoft/bond/BondBlob;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/bond/ProtocolWriter;->writeBlob(Lcom/microsoft/bond/BondBlob;)V

    :cond_0
    return-void
.end method
