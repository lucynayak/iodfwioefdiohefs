.class public Lcom/microsoft/cll/android/JsonProtocol;
.super Lcom/microsoft/bond/ProtocolWriter;
.source "SourceFile"


# static fields
.field private static final ESCAPE_CHAR:C = '\\'

.field private static final HEX_CHARACTERS:[C

.field private static final NUMERIC_ESCAPE_STRING:Ljava/lang/String; = "\\u"

.field private static final inContainerStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final keyTypes:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/microsoft/bond/BondDataType;",
            ">;"
        }
    .end annotation
.end field

.field private static final valueTypes:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/microsoft/bond/BondDataType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final containerIsTyped:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private inContainer:Z

.field private isKey:Z

.field private final stringBuilder:Ljava/lang/StringBuilder;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/microsoft/cll/android/JsonProtocol;->keyTypes:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/microsoft/cll/android/JsonProtocol;->valueTypes:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/microsoft/cll/android/JsonProtocol;->inContainerStack:Ljava/util/Stack;

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/microsoft/cll/android/JsonProtocol;->HEX_CHARACTERS:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/StringBuilder;)V
    .registers 3

    invoke-direct {p0}, Lcom/microsoft/bond/ProtocolWriter;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->containerIsTyped:Ljava/util/Stack;

    iput-object p1, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    return-void
.end method

.method private actuallyWriteString(Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_0

    const-string p1, "null"

    invoke-direct {p0, p1}, Lcom/microsoft/cll/android/JsonProtocol;->appendEscaped(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0}, Lcom/microsoft/cll/android/JsonProtocol;->appendInContainer()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/microsoft/cll/android/JsonProtocol;->appendEscaped(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private appendComma()V
    .registers 3

    iget-object v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method private appendEscaped(Ljava/lang/String;)V
    .registers 8

    iget-object v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iget-object v1, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    :goto_0
    if-ge v0, p1, :cond_6

    iget-object v1, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x9

    const/16 v3, 0x5c

    if-eq v1, v2, :cond_5

    const/16 v2, 0xa

    if-eq v1, v2, :cond_4

    const/16 v2, 0xd

    if-eq v1, v2, :cond_3

    const/16 v2, 0x22

    if-eq v1, v2, :cond_2

    if-eq v1, v3, :cond_1

    invoke-static {v1}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    add-int/lit8 v3, v0, 0x1

    const-string v4, "\\u"

    invoke-virtual {v2, v0, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    add-int/lit8 v2, v3, 0x1

    sget-object v4, Lcom/microsoft/cll/android/JsonProtocol;->HEX_CHARACTERS:[C

    shr-int/lit8 v5, v1, 0xc

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v4, v5

    invoke-virtual {v0, v3, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    iget-object v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v5, v1, 0x8

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v4, v5

    invoke-virtual {v0, v2, v5}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    add-int/lit8 v2, v3, 0x1

    shr-int/lit8 v5, v1, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v4, v5

    invoke-virtual {v0, v3, v5}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    add-int/lit8 v3, v2, 0x1

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v4, v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x5

    move v0, v3

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v1, v0, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    add-int/lit8 v1, v4, 0x1

    invoke-virtual {v0, v4, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v0, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    add-int/lit8 v1, v2, 0x1

    const/16 v3, 0x72

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v0, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    add-int/lit8 v1, v2, 0x1

    const/16 v3, 0x6e

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v0, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    add-int/lit8 v1, v2, 0x1

    const/16 v3, 0x74

    :goto_1
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :goto_2
    add-int/lit8 p1, p1, 0x1

    move v0, v1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method private appendInContainer()V
    .registers 2

    iget-boolean v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->inContainer:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/microsoft/cll/android/JsonProtocol;->appendComma()V

    :cond_0
    return-void
.end method

.method private removeLastComma()V
    .registers 3

    iget-object v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method private writeJsonFieldName(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/microsoft/cll/android/JsonProtocol;->appendEscaped(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    const-string v0, "\":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z
    .registers 3

    sget-object v0, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Lcom/microsoft/bond/ProtocolWriter;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeBegin()V
    .registers 1

    return-void
.end method

.method public writeBlob(Lcom/microsoft/bond/BondBlob;)V
    .registers 4

    iget-object v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/microsoft/bond/BondBlob;->getBuffer()[B

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/microsoft/cll/android/JsonProtocol;->appendInContainer()V

    return-void
.end method

.method public writeBool(Z)V
    .registers 3

    iget-object v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/microsoft/cll/android/JsonProtocol;->appendInContainer()V

    return-void
.end method

.method public writeContainerBegin(ILcom/microsoft/bond/BondDataType;)V
    .registers 3

    iget-object p1, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 p2, 0x5b

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/microsoft/cll/android/JsonProtocol;->containerIsTyped:Ljava/util/Stack;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/microsoft/cll/android/JsonProtocol;->inContainerStack:Ljava/util/Stack;

    invoke-virtual {p1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public writeContainerBegin(ILcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V
    .registers 5

    iget-object p1, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/microsoft/cll/android/JsonProtocol;->containerIsTyped:Ljava/util/Stack;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/microsoft/cll/android/JsonProtocol;->inContainer:Z

    iput-boolean p1, p0, Lcom/microsoft/cll/android/JsonProtocol;->isKey:Z

    sget-object p1, Lcom/microsoft/cll/android/JsonProtocol;->keyTypes:Ljava/util/Stack;

    invoke-virtual {p1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/microsoft/cll/android/JsonProtocol;->valueTypes:Ljava/util/Stack;

    invoke-virtual {p1, p3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/microsoft/cll/android/JsonProtocol;->inContainerStack:Ljava/util/Stack;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public writeContainerEnd()V
    .registers 3

    invoke-direct {p0}, Lcom/microsoft/cll/android/JsonProtocol;->removeLastComma()V

    iget-object v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/cll/android/JsonProtocol;->containerIsTyped:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x5d

    goto :goto_0

    :cond_0
    const/16 v1, 0x7d

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->inContainer:Z

    iput-boolean v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->isKey:Z

    sget-object v0, Lcom/microsoft/cll/android/JsonProtocol;->keyTypes:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    sget-object v0, Lcom/microsoft/cll/android/JsonProtocol;->inContainerStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public writeDouble(D)V
    .registers 4

    iget-object v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/microsoft/cll/android/JsonProtocol;->appendInContainer()V

    return-void
.end method

.method public writeEnd()V
    .registers 1

    return-void
.end method

.method public writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V
    .registers 4

    instance-of p1, p3, Lcom/microsoft/bond/Metadata;

    if-eqz p1, :cond_0

    check-cast p3, Lcom/microsoft/bond/Metadata;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/microsoft/bond/Metadata;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/microsoft/cll/android/JsonProtocol;->writeJsonFieldName(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public writeFieldEnd()V
    .registers 1

    invoke-direct {p0}, Lcom/microsoft/cll/android/JsonProtocol;->appendComma()V

    return-void
.end method

.method public writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V
    .registers 4

    return-void
.end method

.method public writeFloat(F)V
    .registers 3

    iget-object v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/microsoft/cll/android/JsonProtocol;->appendInContainer()V

    return-void
.end method

.method public writeInt16(S)V
    .registers 3

    iget-object v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/microsoft/cll/android/JsonProtocol;->appendInContainer()V

    return-void
.end method

.method public writeInt32(I)V
    .registers 3

    iget-object v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/microsoft/cll/android/JsonProtocol;->appendInContainer()V

    return-void
.end method

.method public writeInt64(J)V
    .registers 4

    iget-object v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/microsoft/cll/android/JsonProtocol;->appendInContainer()V

    return-void
.end method

.method public writeInt8(B)V
    .registers 3

    iget-object v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/microsoft/cll/android/JsonProtocol;->appendInContainer()V

    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/microsoft/cll/android/JsonProtocol;->inContainerStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/microsoft/cll/android/JsonProtocol;->keyTypes:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->isKey:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/microsoft/cll/android/JsonProtocol;->writeJsonFieldName(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/microsoft/cll/android/JsonProtocol;->actuallyWriteString(Ljava/lang/String;)V

    :cond_1
    :goto_0
    sget-object p1, Lcom/microsoft/cll/android/JsonProtocol;->valueTypes:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    iget-boolean p1, p0, Lcom/microsoft/cll/android/JsonProtocol;->isKey:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/microsoft/cll/android/JsonProtocol;->isKey:Z

    :cond_2
    return-void

    :cond_3
    invoke-direct {p0, p1}, Lcom/microsoft/cll/android/JsonProtocol;->actuallyWriteString(Ljava/lang/String;)V

    return-void
.end method

.method public writeStructBegin(Lcom/microsoft/bond/BondSerializable;Z)V
    .registers 3

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 p2, 0x7b

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    sget-object p1, Lcom/microsoft/cll/android/JsonProtocol;->inContainerStack:Ljava/util/Stack;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public writeStructEnd(Z)V
    .registers 3

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/microsoft/cll/android/JsonProtocol;->removeLastComma()V

    iget-object p1, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/microsoft/cll/android/JsonProtocol;->inContainerStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    invoke-direct {p0}, Lcom/microsoft/cll/android/JsonProtocol;->appendComma()V

    :cond_0
    sget-object p1, Lcom/microsoft/cll/android/JsonProtocol;->inContainerStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public writeUInt16(S)V
    .registers 3

    iget-object v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/microsoft/cll/android/JsonProtocol;->appendInContainer()V

    return-void
.end method

.method public writeUInt32(I)V
    .registers 3

    iget-object v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/microsoft/cll/android/JsonProtocol;->appendInContainer()V

    return-void
.end method

.method public writeUInt64(J)V
    .registers 4

    iget-object v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/microsoft/cll/android/JsonProtocol;->appendInContainer()V

    return-void
.end method

.method public writeUInt8(B)V
    .registers 3

    iget-object v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/microsoft/cll/android/JsonProtocol;->appendInContainer()V

    return-void
.end method

.method public writeVersion()V
    .registers 1

    return-void
.end method

.method public writeWString(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/microsoft/cll/android/JsonProtocol;->writeString(Ljava/lang/String;)V

    return-void
.end method
