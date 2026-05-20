.class public Lcom/microsoft/telemetry/extensions/app;
.super Lcom/microsoft/telemetry/Extension;
.source "SourceFile"


# instance fields
.field private expId:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/microsoft/telemetry/Extension;-><init>()V

    invoke-virtual {p0}, Lcom/microsoft/telemetry/extensions/app;->InitializeFields()V

    return-void
.end method


# virtual methods
.method public InitializeFields()V
    .registers 1

    return-void
.end method

.method public getExpId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/telemetry/extensions/app;->expId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/telemetry/extensions/app;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public serializeContent(Ljava/io/Writer;)Ljava/lang/String;
    .registers 5

    invoke-super {p0, p1}, Lcom/microsoft/telemetry/Extension;->serializeContent(Ljava/io/Writer;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/telemetry/extensions/app;->expId:Ljava/lang/String;

    const-string v2, ","

    if-eqz v1, :cond_0

    const-string v1, "\"expId\":"

    .line 1
    invoke-static {v0, v1, p1}, La/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 2
    iget-object v0, p0, Lcom/microsoft/telemetry/extensions/app;->expId:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget-object v1, p0, Lcom/microsoft/telemetry/extensions/app;->userId:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "\"userId\":"

    .line 3
    invoke-static {v0, v1, p1}, La/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 4
    iget-object v0, p0, Lcom/microsoft/telemetry/extensions/app;->userId:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    return-object v2
.end method

.method public setExpId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/telemetry/extensions/app;->expId:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/telemetry/extensions/app;->userId:Ljava/lang/String;

    return-void
.end method
