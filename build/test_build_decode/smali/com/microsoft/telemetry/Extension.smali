.class public Lcom/microsoft/telemetry/Extension;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/telemetry/IJsonSerializable;


# instance fields
.field private ver:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "1.0"

    iput-object v0, p0, Lcom/microsoft/telemetry/Extension;->ver:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/microsoft/telemetry/Extension;->InitializeFields()V

    return-void
.end method


# virtual methods
.method public InitializeFields()V
    .locals 0

    return-void
.end method

.method public getVer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/telemetry/Extension;->ver:Ljava/lang/String;

    return-object v0
.end method

.method public serialize(Ljava/io/Writer;)V
    .locals 1

    if-eqz p1, :cond_0

    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    invoke-virtual {p0, p1}, Lcom/microsoft/telemetry/Extension;->serializeContent(Ljava/io/Writer;)Ljava/lang/String;

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
    .locals 1

    iget-object v0, p0, Lcom/microsoft/telemetry/Extension;->ver:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "\"ver\":"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/microsoft/telemetry/Extension;->ver:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p1, ","

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public setVer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/telemetry/Extension;->ver:Ljava/lang/String;

    return-void
.end method
