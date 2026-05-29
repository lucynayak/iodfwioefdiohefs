.class public abstract Lcom/microsoft/bond/io/BondInputStream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/bond/io/BondStream;
.implements Lcom/microsoft/bond/io/Seekable;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract clone(Z)Lcom/microsoft/bond/io/BondInputStream;
.end method

.method public abstract isCloneable()Z
.end method

.method public abstract read()B
.end method

.method public abstract read([BII)I
.end method

.method public abstract readBlob(I)Lcom/microsoft/bond/BondBlob;
.end method
