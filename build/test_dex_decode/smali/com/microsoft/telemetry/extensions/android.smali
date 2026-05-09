.class public Lcom/microsoft/telemetry/extensions/android;
.super Lcom/microsoft/telemetry/Extension;
.source "SourceFile"


# instance fields
.field private libVer:Ljava/lang/String;

.field private tickets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/telemetry/Extension;-><init>()V

    invoke-virtual {p0}, Lcom/microsoft/telemetry/extensions/android;->InitializeFields()V

    return-void
.end method


# virtual methods
.method public InitializeFields()V
    .locals 0

    return-void
.end method

.method public getLibVer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/telemetry/extensions/android;->libVer:Ljava/lang/String;

    return-object v0
.end method

.method public getTickets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/telemetry/extensions/android;->tickets:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/microsoft/telemetry/extensions/android;->tickets:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/microsoft/telemetry/extensions/android;->tickets:Ljava/util/List;

    return-object v0
.end method

.method public serializeContent(Ljava/io/Writer;)Ljava/lang/String;
    .locals 3

    invoke-super {p0, p1}, Lcom/microsoft/telemetry/Extension;->serializeContent(Ljava/io/Writer;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/telemetry/extensions/android;->libVer:Ljava/lang/String;

    const-string v2, ","

    if-eqz v1, :cond_0

    const-string v1, "\"libVer\":"

    .line 1
    invoke-static {v0, v1, p1}, La/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 2
    iget-object v0, p0, Lcom/microsoft/telemetry/extensions/android;->libVer:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget-object v1, p0, Lcom/microsoft/telemetry/extensions/android;->tickets:Ljava/util/List;

    if-eqz v1, :cond_1

    const-string v1, "\"tickets\":"

    .line 3
    invoke-static {v0, v1, p1}, La/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 4
    iget-object v0, p0, Lcom/microsoft/telemetry/extensions/android;->tickets:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/microsoft/telemetry/JsonHelper;->writeListString(Ljava/io/Writer;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    return-object v2
.end method

.method public setLibVer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/telemetry/extensions/android;->libVer:Ljava/lang/String;

    return-void
.end method

.method public setTickets(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/microsoft/telemetry/extensions/android;->tickets:Ljava/util/List;

    return-void
.end method
