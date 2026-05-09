.class public Lcom/microsoft/bond/internal/SkipHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static skip(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)V
    .registers 4

    sget-object v0, Lcom/microsoft/bond/internal/SkipHelper$1;->$SwitchMap$com$microsoft$bond$BondDataType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance p0, Lcom/microsoft/bond/BondException;

    const-string v0, "Unknown type to skip: "

    .line 1
    invoke-static {v0}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/microsoft/bond/BondException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readWString()Ljava/lang/String;

    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readInt64()J

    return-void

    :pswitch_2
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readInt32()I

    return-void

    :pswitch_3
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readInt16()S

    return-void

    :pswitch_4
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readInt8()B

    return-void

    :pswitch_5
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readMapContainerBegin()Lcom/microsoft/bond/ProtocolReader$MapTag;

    move-result-object p1

    :goto_0
    iget v0, p1, Lcom/microsoft/bond/ProtocolReader$MapTag;->size:I

    if-ge v1, v0, :cond_0

    iget-object v0, p1, Lcom/microsoft/bond/ProtocolReader$MapTag;->keyType:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {p0, v0}, Lcom/microsoft/bond/ProtocolReader;->skip(Lcom/microsoft/bond/BondDataType;)V

    iget-object v0, p1, Lcom/microsoft/bond/ProtocolReader$MapTag;->valueType:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {p0, v0}, Lcom/microsoft/bond/ProtocolReader;->skip(Lcom/microsoft/bond/BondDataType;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readContainerEnd()V

    return-void

    :pswitch_6
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readContainerBegin()Lcom/microsoft/bond/ProtocolReader$ListTag;

    move-result-object p1

    :goto_1
    iget v0, p1, Lcom/microsoft/bond/ProtocolReader$ListTag;->size:I

    if-ge v1, v0, :cond_1

    iget-object v0, p1, Lcom/microsoft/bond/ProtocolReader$ListTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {p0, v0}, Lcom/microsoft/bond/ProtocolReader;->skip(Lcom/microsoft/bond/BondDataType;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readContainerEnd()V

    return-void

    :pswitch_7
    new-instance p1, Lcom/microsoft/bond/Void;

    invoke-direct {p1}, Lcom/microsoft/bond/Void;-><init>()V

    invoke-virtual {p1, p0}, Lcom/microsoft/bond/Void;->readNested(Lcom/microsoft/bond/ProtocolReader;)V

    return-void

    :pswitch_8
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    return-void

    :pswitch_9
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readDouble()D

    return-void

    :pswitch_a
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readFloat()F

    return-void

    :pswitch_b
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readUInt64()J

    return-void

    :pswitch_c
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readUInt32()I

    return-void

    :pswitch_d
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readUInt16()S

    return-void

    :pswitch_e
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readUInt8()B

    return-void

    :pswitch_f
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readBool()Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
