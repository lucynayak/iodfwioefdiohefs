.class public Lcom/microsoft/bond/internal/Marshaler;
.super Ljava/lang/Object;
.source "Marshaler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static marshal(Lcom/microsoft/bond/BondSerializable;Lcom/microsoft/bond/ProtocolWriter;)V
    .registers 2
    .param p0, "obj"    # Lcom/microsoft/bond/BondSerializable;
    .param p1, "writer"    # Lcom/microsoft/bond/ProtocolWriter;

    .prologue
    .line 17
    return-void
.end method

.method public static unmarshal(Ljava/io/InputStream;Lcom/microsoft/bond/BondSerializable;)V
    .registers 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "obj"    # Lcom/microsoft/bond/BondSerializable;

    .prologue
    .line 11
    return-void
.end method

.method public static unmarshal(Ljava/io/InputStream;Lcom/microsoft/bond/BondSerializable;Lcom/microsoft/bond/BondSerializable;)V
    .registers 3
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "schema"    # Lcom/microsoft/bond/BondSerializable;
    .param p2, "obj"    # Lcom/microsoft/bond/BondSerializable;

    .prologue
    .line 14
    return-void
.end method
