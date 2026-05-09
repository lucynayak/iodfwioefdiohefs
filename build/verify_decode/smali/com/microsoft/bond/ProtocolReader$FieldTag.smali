.class public Lcom/microsoft/bond/ProtocolReader$FieldTag;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/bond/ProtocolReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FieldTag"
.end annotation


# instance fields
.field public final id:I

.field public final type:Lcom/microsoft/bond/BondDataType;


# direct methods
.method public constructor <init>(Lcom/microsoft/bond/BondDataType;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    iput p2, p0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->id:I

    return-void
.end method
