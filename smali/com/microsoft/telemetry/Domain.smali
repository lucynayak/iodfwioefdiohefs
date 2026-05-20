.class public Lcom/microsoft/telemetry/Domain;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/telemetry/IJsonSerializable;


# instance fields
.field public Attributes:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public QualifiedName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/telemetry/Domain;->Attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Lcom/microsoft/telemetry/Domain;->InitializeFields()V

    return-void
.end method


# virtual methods
.method public InitializeFields()V
    .registers 1

    return-void
.end method

.method public serialize(Ljava/io/Writer;)V
    .registers 3

    if-eqz p1, :cond_0

    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    invoke-virtual {p0, p1}, Lcom/microsoft/telemetry/Domain;->serializeContent(Ljava/io/Writer;)Ljava/lang/String;

    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "writer"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public serializeContent(Ljava/io/Writer;)Ljava/lang/String;
    .registers 2

    const-string p1, ""

    return-object p1
.end method
