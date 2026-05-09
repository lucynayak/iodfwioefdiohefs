.class public Lcom/microsoft/bond/ProtocolReader$MapTag;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/bond/ProtocolReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MapTag"
.end annotation


# instance fields
.field public final keyType:Lcom/microsoft/bond/BondDataType;

.field public final size:I

.field public final valueType:Lcom/microsoft/bond/BondDataType;


# direct methods
.method public constructor <init>(ILcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/microsoft/bond/ProtocolReader$MapTag;->size:I

    iput-object p2, p0, Lcom/microsoft/bond/ProtocolReader$MapTag;->keyType:Lcom/microsoft/bond/BondDataType;

    iput-object p3, p0, Lcom/microsoft/bond/ProtocolReader$MapTag;->valueType:Lcom/microsoft/bond/BondDataType;

    return-void
.end method
