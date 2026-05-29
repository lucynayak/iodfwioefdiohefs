.class public abstract Lcom/microsoft/bond/io/BondOutputStream;
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
.method public abstract write(B)V
.end method

.method public abstract write([B)V
.end method

.method public abstract write([BII)V
.end method
