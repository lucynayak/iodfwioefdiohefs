.class public Lcom/microsoft/telemetry/extensions/device;
.super Lcom/microsoft/telemetry/Extension;
.source "SourceFile"


# instance fields
.field private authId:Ljava/lang/String;

.field private authSecId:Ljava/lang/String;

.field private deviceClass:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private localId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/telemetry/Extension;-><init>()V

    invoke-virtual {p0}, Lcom/microsoft/telemetry/extensions/device;->InitializeFields()V

    return-void
.end method


# virtual methods
.method public InitializeFields()V
    .locals 0

    return-void
.end method

.method public getAuthId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/telemetry/extensions/device;->authId:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthSecId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/telemetry/extensions/device;->authSecId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceClass()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/telemetry/extensions/device;->deviceClass:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/telemetry/extensions/device;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/telemetry/extensions/device;->localId:Ljava/lang/String;

    return-object v0
.end method

.method public serializeContent(Ljava/io/Writer;)Ljava/lang/String;
    .locals 3

    invoke-super {p0, p1}, Lcom/microsoft/telemetry/Extension;->serializeContent(Ljava/io/Writer;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/telemetry/extensions/device;->id:Ljava/lang/String;

    const-string v2, ","

    if-eqz v1, :cond_0

    const-string v1, "\"id\":"

    .line 1
    invoke-static {v0, v1, p1}, La/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 2
    iget-object v0, p0, Lcom/microsoft/telemetry/extensions/device;->id:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget-object v1, p0, Lcom/microsoft/telemetry/extensions/device;->localId:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "\"localId\":"

    .line 3
    invoke-static {v0, v1, p1}, La/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 4
    iget-object v0, p0, Lcom/microsoft/telemetry/extensions/device;->localId:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    iget-object v1, p0, Lcom/microsoft/telemetry/extensions/device;->authId:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "\"authId\":"

    .line 5
    invoke-static {v0, v1, p1}, La/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 6
    iget-object v0, p0, Lcom/microsoft/telemetry/extensions/device;->authId:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    iget-object v1, p0, Lcom/microsoft/telemetry/extensions/device;->authSecId:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, "\"authSecId\":"

    .line 7
    invoke-static {v0, v1, p1}, La/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 8
    iget-object v0, p0, Lcom/microsoft/telemetry/extensions/device;->authSecId:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3
    iget-object v1, p0, Lcom/microsoft/telemetry/extensions/device;->deviceClass:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v1, "\"deviceClass\":"

    .line 9
    invoke-static {v0, v1, p1}, La/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 10
    iget-object v0, p0, Lcom/microsoft/telemetry/extensions/device;->deviceClass:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v2, v0

    :goto_0
    return-object v2
.end method

.method public setAuthId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/telemetry/extensions/device;->authId:Ljava/lang/String;

    return-void
.end method

.method public setAuthSecId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/telemetry/extensions/device;->authSecId:Ljava/lang/String;

    return-void
.end method

.method public setDeviceClass(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/telemetry/extensions/device;->deviceClass:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/telemetry/extensions/device;->id:Ljava/lang/String;

    return-void
.end method

.method public setLocalId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/telemetry/extensions/device;->localId:Ljava/lang/String;

    return-void
.end method
